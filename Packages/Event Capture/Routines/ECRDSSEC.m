ECRDSSEC ;ALB/DAN - Event capture screen for DSS unit report ;1/25/16  12:02
 ;;2.0;EVENT CAPTURE;**112,131**;8 May 96;Build 13
 ;
STRPT ;Main entry point for report
 N NODE,PRO,CNT,LOC,CAT,IEN,PX,PN,CATD,LOCDS,ECL,ECSYN,ACT,DEFCL
 K ^TMP($J,"ECRPT")
 S (CNT,LOC)=0
 S CNT=CNT+1,^TMP($J,"ECRPT",CNT)="SYNONYM^PROCEDURE^LOCATION^DEFAULT ASSOCIATED CLINIC^CATEGORY^STATUS"
 F  S LOC=$O(^ECJ("AP",LOC)) Q:'LOC  S CAT="" D
 .I ECD'="" D:$D(^ECJ("AP",LOC,ECD)) GETSCN Q 
 I ECPTYP="E" Q  ;Stop if exporting and not printing.
 U IO
 D HDR
 S CNT=1
 F  S CNT=$O(^TMP($J,"ECRPT",CNT)) Q:'+CNT  D
 .S NODE=^TMP($J,"ECRPT",CNT)
 .W $E($P(NODE,U),1,20),?22,$E($P(NODE,U,2),1,25),?49,$E($P(NODE,U,3),1,25),?76,$E($P(NODE,U,4),1,25),?103,$E($P(NODE,U,5),1,25),?123,$P(NODE,U,6),!
 .I $Y>(IOSL-5) D HDR
 Q
GETSCN F  S CAT=$O(^ECJ("AP",LOC,ECD,CAT)) Q:CAT=""  S PX="" D
 .I CAT,'$P(^ECD(ECD,0),U,11) Q  ;131 Don't show screen if it has a category and the DSS Unit is set to "no categories"
 .F  S PX=$O(^ECJ("AP",LOC,ECD,CAT,PX)) Q:PX=""  S IEN=0 D
 ..F  S IEN=$O(^ECJ("AP",LOC,ECD,CAT,PX,IEN)) Q:'IEN  D
 ...S NODE=$G(^ECJ(IEN,0)) I NODE="" Q
 ...S ACT=$P(NODE,U,2)
 ...I $S(STAT="A"&(ACT'=""):1,STAT="I"&(ACT=""):1,1:0) Q  ;filter by status
 ...S PRO=$G(^ECJ(IEN,"PRO")),ECSYN=$P(PRO,U,2),PN=$P($P(PRO,U),";"),DEFCL=$P(PRO,U,4)
 ...I PN="" Q
 ...I $P(PRO,U)["EC" S PN=$G(^EC(725,PN,0)),PRO=$P(PN,U,2)_" "_$P(PN,U)
 ...E  S PN=$$CPT^ICPTCOD(PN) S PRO=$P(PN,U,2)_" "_$P(PN,U,3)
 ...S ACT=$S(ACT'="":"Inactive",1:"Active")
 ...S CATD=$S('CAT:"None",1:$P($G(^EC(726,CAT,0)),U))
 ...S LOCDS=$$GET1^DIQ(4,LOC,.01,"I"),CNT=CNT+1
 ...I DEFCL'="" S DEFCL=$$GET1^DIQ(44,DEFCL,".01")
 ...S ^TMP($J,"ECRPT",CNT)=ECSYN_U_PRO_U_LOCDS_U_DEFCL_U_CATD_U_ACT
 Q
 ;
HDR ;
 I $D(IOF) W @IOF
 W !,"EVENT SCREENS FOR DSS UNIT:",$$GET1^DIQ(724,ECD,".01"),?$S($G(IOM):(IOM-18),1:62),$$FMTE^XLFDT($$NOW^XLFDT,"1M"),!!
 W !,"SYNONYM",?22,"PROCEDURE",?49,"LOCATION",?76,"ASSOC. CLINIC",?103,"CATEGORY",?123,"STATUS",!,$$REPEAT^XLFSTR("-",$S($G(IOM):IOM,1:132)),!
