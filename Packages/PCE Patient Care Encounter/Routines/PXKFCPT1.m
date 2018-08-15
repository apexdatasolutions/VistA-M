PXKFCPT1 ;ISL/JVS,SCK - PROCEDURES Routine #2 ;10/20/2071
 ;;1.0;PCE PATIENT CARE ENCOUNTER;**11,73,124,194,209,215,211**;Aug 12, 1996;Build 244
 ;
 ;
IMM ;
 N PXKSEQ1
 I PXKFGAD=1 D IMMADD
 I PXKFGDE=1 D IMMDEL
 Q
IMMADD ;
 S PXKKK=""
 S PXKSEQ1=PXKSEQ+PXKXX
 S PXKCPT=$P($P(PXKPXD(PXKX),"^",2),";")
POVNAR ;
 N EVENTDT,PXK1
 ;K ^UTILITY("DIQ1",$J) 
 ;S DIC=81,DA=PXKCPT,DR=2 D EN^DIQ1
 ;S PXKCPTN=$G(^UTILITY("DIQ1",$J,81,DA,2))
 ;K ^UTILITY("DIQ1",$J),DIC,DA,DR D
 S EVENTDT=$G(PXKAV(12,0))
 I EVENTDT="" S EVENTDT=$P(^AUPNVSIT(PXKAV(0,3),0),U,1)
 S PXK1=$$CPT^ICPTCOD(PXKCPT,EVENTDT)
 S PXKCPTN=$P(PXK1,U,3) D
 .Q:PXKCPTN=""  I $D(^AUTNPOV("B",PXKCPTN)) S PXKCPTN=$O(^AUTNPOV("B",PXKCPTN,0))
 ;
QUANTIT S PXKQUN=1,PXSTOP=0
 S PXXX=0
 F  S PXXX=$O(^AUPNVCPT("AD",PXKAV(0,3),PXXX)) Q:PXXX=""  D  Q:$G(PXSTOP)
 .I +$P(^AUPNVCPT(PXXX,0),"^")=PXKCPT D
 ..; PX*1*215 - If code already exists, quit; don't increment qty
 ..;S PXKQUN=($P(^AUPNVCPT(PXXX,0),"^",16)+1)
 ..S PXSTOP=1
 ..;S PXKKK=PXXX
 ..;S ^TMP("PXKSAVE",$J,"CPT",PXKSEQ1,0,"BEFORE")=$G(^AUPNVCPT(PXXX,0))
 I $G(PXSTOP) Q
 K PXSTOP
CATEGOR ;
 N PXKSEQ2,PXK1,PXK2
 S PXKCPTT(1)=$P(PXKCPT,"^",1)
 ;K ^UTILITY("DIQ1",$J)
 ;S DIC=81,DA=PXKCPTT(1),DR=3 D EN^DIQ1
 S PXK1=$P($$CPT^ICPTCOD(PXKCPTT(1)),U,4)
 S PXK2=$$GET1^DIQ(81.1,PXK1,.01)
 Q:PXK2=""
 ;Q:$G(^UTILITY("DIQ1",$J,81,DA,3))=""
 ;S PXKCPTT(4.1)=$G(^UTILITY("DIQ1",$J,81,DA,3))
 S PXKCPTT(4.1)=PXK2
 S PXKCPTT(5)=$E(PXKCPTT(4.1),1,30)
 S PXKCPTT(6)=$O(^AUTNPOV("B",PXKCPTT(5),0))
 S PXKPCA=$S(PXKCPTT(6)="":PXKCPTT(5),PXKCPTT(6)'="":PXKCPTT(6),1:"")
 K PXKCPTT ;,^UTILITY("DIQ1",$J),DIC,DR,DA
 ;PX*1*124
 S ^TMP("PXKSAVE",$J,"CPT",PXKSEQ1,0,"AFTER")=$G(PXKCPT)_"^"_$G(PXKAV(0,2))_"^"_$G(PXKAV(0,3))_"^"_$G(PXKCPTN)_"^"_$G(PXKAV(0,8))_"^^^^"
 S ^TMP("PXKSAVE",$J,"CPT",PXKSEQ1,0,"AFTER")=^TMP("PXKSAVE",$J,"CPT",PXKSEQ1,0,"AFTER")_$G(PXKAV(0,9))_"^"_$G(PXKAV(0,10))_"^"_$G(PXKAV(0,11))_"^"_$G(PXKAV(0,12))_"^"_$G(PXKAV(0,13))_"^"_$G(PXKAV(0,14))_"^"_$G(PXKAV(0,15))_"^"_$G(PXKQUN)
 S PXKSEQ2=0
 F  S PXKSEQ2=$O(PXKAFT(1,PXKSEQ2)) Q:'PXKSEQ2  D
 .S ^TMP("PXKSAVE",$J,"CPT",PXKSEQ1,1,PXKSEQ2,"AFTER")=PXKAFT(1,PXKSEQ2)
 S ^TMP("PXKSAVE",$J,"CPT",PXKSEQ1,12,"AFTER")=$G(PXKAV(12,1))_"^"_$G(PXKAV(12,2))_"^^"_$G(PXKAV(12,4))
 S ^TMP("PXKSAVE",$J,"CPT",PXKSEQ1,802,"AFTER")=$G(PXKCA)
 S ^TMP("PXKSAVE",$J,"CPT",PXKSEQ1,812,"AFTER")=$G(PXKAFT(812))
 S ^TMP("PXKSAVE",$J,"CPT",PXKSEQ1,"IEN")=PXKKK
 K PXKQUN,PXKCPTN,PXKCA,PXXX,PXKKK
 Q
IMMDEL ;Retrieve all CPT information for VISIT from V CPT file
 S PXKSEQ1=PXKSEQ+PXKXX
 S (XPFG,XP)=0 F  Q:XPFG  S XP=$O(^AUPNVCPT("AD",PXKVST,XP)) Q:XP=""  D
 .I $P(^AUPNVCPT(XP,0),"^",1)=$P($P(PXKPXD(PXKX),"^",2),";") D  S XPFG=1
 ..I $P($G(^AUPNVCPT(XP,0)),"^",16)=1 D IMMDEL1
 ..I $D(XP),$P($G(^AUPNVCPT(XP,0)),"^",16)>1 D IMMDEL2
 Q
IMMDEL1 ;
 N PXKSEQ2,PXKMOD
 S ^TMP("PXKSAVE",$J,"CPT",PXKSEQ1,0,"BEFORE")=$G(^AUPNVCPT(XP,0))
 S PXKSEQ2=0
 F  S PXKSEQ2=$O(^AUPNVCPT(XP,1,PXKSEQ2)) Q:'PXKSEQ2  D
 .S PXKMOD=^AUPNVCPT(XP,1,PXKSEQ2,0)
 .S ^TMP("PXKSAVE",$J,"CPT",PXKSEQ1,1,PXKSEQ2,"BEFORE")=PXKMOD
 S ^TMP("PXKSAVE",$J,"CPT",PXKSEQ1,12,"BEFORE")=$G(^AUPNVCPT(XP,12))
 S ^TMP("PXKSAVE",$J,"CPT",PXKSEQ1,802,"BEFORE")=$G(^AUPNVCPT(XP,802))
 S ^TMP("PXKSAVE",$J,"CPT",PXKSEQ1,812,"BEFORE")=$G(^AUPNVCPT(XP,812))
 S ^TMP("PXKSAVE",$J,"CPT",PXKSEQ1,"IEN")=XP
 S ^TMP("PXKSAVE",$J,"CPT",PXKSEQ1,0,"AFTER")="@"
 S ^TMP("PXKSAVE",$J,"CPT",PXKSEQ1,12,"AFTER")=""
 S ^TMP("PXKSAVE",$J,"CPT",PXKSEQ1,802,"AFTER")=""
 S ^TMP("PXKSAVE",$J,"CPT",PXKSEQ1,812,"AFTER")=""
 K XPFG,XP
 Q
IMMDEL2 ;
 N PXKSEQ2,PXKMOD
 S PXTEMP=$P($G(^AUPNVCPT(XP,0)),"^",16)
 S ^TMP("PXKSAVE",$J,"CPT",PXKSEQ1,0,"BEFORE")=$G(^AUPNVCPT(XP,0))
 S PXKSEQ2=0
 F  S PXKSEQ2=$O(^AUPNVCPT(XP,1,PXKSEQ2)) Q:'PXKSEQ2  D
 .S PXKMOD=^AUPNVCPT(XP,1,PXKSEQ2,0)
 .S ^TMP("PXKSAVE",$J,"CPT",PXKSEQ1,1,PXKSEQ2,"BEFORE")=PXKMOD
 S ^TMP("PXKSAVE",$J,"CPT",PXKSEQ1,12,"BEFORE")=$G(^AUPNVCPT(XP,12))
 S ^TMP("PXKSAVE",$J,"CPT",PXKSEQ1,802,"BEFORE")=$G(^AUPNVCPT(XP,802))
 S ^TMP("PXKSAVE",$J,"CPT",PXKSEQ1,812,"BEFORE")=$G(^AUPNVCPT(XP,812))
 S ^TMP("PXKSAVE",$J,"CPT",PXKSEQ1,"IEN")=XP
 S ^TMP("PXKSAVE",$J,"CPT",PXKSEQ1,0,"AFTER")=$G(^AUPNVCPT(XP,0))
 S PXKSEQ2=0
 F  S PXKSEQ2=$O(^AUPNVCPT(XP,1,PXKSEQ2)) Q:'PXKSEQ2  D
 .S PXKMOD=^AUPNVCPT(XP,1,PXKSEQ2,0)
 .S ^TMP("PXKSAVE",$J,"CPT",PXKSEQ1,1,PXKSEQ2,"BEFORE")=PXKMOD
 S ^TMP("PXKSAVE",$J,"CPT",PXKSEQ1,12,"AFTER")=$G(^AUPNVCPT(XP,12))
 S ^TMP("PXKSAVE",$J,"CPT",PXKSEQ1,802,"AFTER")=$G(^AUPNVCPT(XP,802))
 S ^TMP("PXKSAVE",$J,"CPT",PXKSEQ1,812,"AFTER")=$G(^AUPNVCPT(XP,812))
 S $P(^TMP("PXKSAVE",$J,"CPT",PXKSEQ1,0,"AFTER"),"^",16)=((PXTEMP)-(1))
 K XPFG,XP,PXTEMP
 Q
SK ;--START OF SKIN TEST
 D IMM
 Q
