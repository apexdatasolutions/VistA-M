RMPRSP6 ;HIN/RVD-PRINT 2319 WITH SUSPENSE LINK ;8/27/01
 ;;3.0;PROSTHETICS;**62**;Feb 09, 1996
 ;RVD 8/27/01 patch #62 - PCE data print
 ;
 D DIV4^RMPRSIT I $D(Y),(Y<0) Q
 ; Prompt for Start Date
STDT ;RMPRSDT is start date in FM internal form.
 K %DT,X,Y
 S %DT("A")="Starting Date: "
 S %DT(0)=-DT
 S %DT="AEP"
 D ^%DT I Y<0 G EXIT1
 S RMPRSDT=$P(Y,".",1)
 S %DT("A")="Ending Date: ",%DT="AEX" D ^%DT G:Y<0 EXIT1
 S RMPREDT=$P(Y,".",1)
 I RMPRSDT>RMPREDT W !,$C(7),"Invalid Date Range Selection!!" G STDT
 ;
CONT G:'$D(RMPRSDT) EXIT1 S %ZIS="MQ" K IOP D ^%ZIS G:POP EXIT1 I '$D(IO("Q")) U IO G PRINT
 K IO("Q") S ZTDESC="PROSTHETIC PATIENT RECORDS WITH SUSPENSE",ZTRTN="PRINT^RMPRSP6",ZTIO=ION,ZTSAVE("RMPRSDT")=""
 S ZTSAVE("RMPR(""STA"")")="",ZTSAVE("RMPR(")="",ZTSAVE("RMPREDT")=""
 D ^%ZTLOAD W:$D(ZTSK) !,"REQUEST QUEUED!" H 1 G EXIT
 ;
PRINT I $E(IOST)["C" W !!,"Processing report......."
 K ^TMP($J)
 K %DT,X,Y
 S X="NOW" D ^%DT S RMDATE=$E(Y,4,5)_"/"_$E(Y,6,7)_"/"_$E(Y,2,3)
 S RMPAGE=1,(RMTOBAL,RMPREND)=0,RS=RMPR("STA")
 S RDT=RMPRSDT-1,RET=RMPREDT+1,RS=RMPR("STA")
 S Y=RMPRSDT D DD^%DT S RMSDAT=Y
 S Y=RMPREDT D DD^%DT S RMEDAT=Y
 D BUILD
 I '$D(^TMP($J)) D HEAD,NONE G EXIT
 D HEAD,HEAD1
 D WRITE
 G EXIT
 ;
BUILD ;build a tmp global.
 S RMPR("ROUTINE")=0
 S RMPR("EYEGLASS")=0
 S RMPR("CONTACT")=0
 S RMPR("OXYGEN")=0
 S RMPR("MANUAL")=0
 F RI=RDT:0:RET S RI=$O(^RMPR(660,"B",RI)) Q:(RI'>0)!(RMPREND)!(RI>RMPREDT)  F RJ=0:0 S RJ=$O(^RMPR(660,"B",RI,RJ)) Q:(RJ'>0)  D
 .S RM0=$G(^RMPR(660,RJ,0))
 .S RM10=$G(^RMPR(660,RJ,10))
 .Q:$P(RM10,U,14)'>0
 .I $P(RM0,U,10)=RS D
 ..S RMDFN=$P(RM0,U,2)
 ..S RMITIEN=$P(RM0,U,6)
 ..S (RMITEM,RMPAT)=""
 ..I RMITIEN,($D(^RMPR(661,RMITIEN,0))),($D(^PRC(441,$P(^RMPR(661,RMITIEN,0),U,1),0))) D
 ...S RMITEM=$P(^PRC(441,$P(^RMPR(661,RMITIEN,0),U,1),0),U,2)
 ..S RMITEM=$E(RMITEM,1,18)
 ..I $D(^DPT(RMDFN,0)) S RMPAT=$E($P(^DPT(RMDFN,0),U,1),U,10)
 ..S RMINIE=$P(RM0,U,27)
 ..I RMINIE,$D(^VA(200,RMINIE,0)) S RMINI=$E($P(^VA(200,RMINIE,0),U,1),1,10)
 ..E  S RMINI=""
 ..S RMSUSP=$P(RM10,U,1)
 ..S RMRXDT=$P(RM10,U,2)
 ..S RMIADT=$P(RM10,U,3)
 ..S RCDT=$P(RM10,U,4)
 ..S RMTYRE=$P(RM10,U,5)
 ..S RMSURE=$P(RM10,U,6)
 ..S RMPRDI=$P(RM10,U,7)
 ..S RMICD9=$P(RM10,U,8)
 ..S RMCOSU=$P(RM10,U,9)
 ..S RMSUST=$P(RM10,U,11)
 ..S RMPCEP=$P(RM10,U,12)
 ..S RPDT=$P(RM10,U,13)
 ..D SUMTYP
 ..I RMICD9,($D(^ICD9(RMICD9,0))) S RMICD=$P(^ICD9(RMICD9,0),U,1)
 ..E  S RMICD=""
 ..S:RMTYRE'="" RMTYRE=$E(RMTYRE,1,8)
 ..I RMSURE,($D(^VA(200,RMSURE,0))) S RMSURE=$E($P(^VA(200,RMSURE,0),U,1),1,10)
 ..S RDDT=$E(RI,4,5)_"/"_$E(RI,6,7)_"/"_$E(RI,2,3)
 ..S:RPDT'="" RPDT=$E(RPDT,4,5)_"/"_$E(RPDT,6,7)_"/"_$E(RPDT,2,3)
 ..S:RCDT'="" RCDT=$E(RCDT,4,5)_"/"_$E(RCDT,6,7)_"/"_$E(RCDT,2,3)
 ..S ^TMP($J,RI,RMPAT,RJ)=RMITEM_"^"_RDDT_"^"_RMTYRE_"^"_RMSURE_"^"_RMINI_"^"_RPDT_"^"_$E(RMPRDI,1,10)
 Q
 ;
WRITE ;write report to a selected device
 S (RI,RM,RMPREND)=0
 F  S RI=$O(^TMP($J,RI)) Q:(RI'>0)!(RMPREND)  S RJ="" F  S RJ=$O(^TMP($J,RI,RJ)) Q:(RJ="")!(RMPREND)  F  S RM=$O(^TMP($J,RI,RJ,RM)) Q:(RM'>0)!(RMPREND)  D
 .S RMDAT=$G(^TMP($J,RI,RJ,RM))
 .S RMPAT=RJ
 .S RMITEM=$P(RMDAT,U,1)
 .S RDDT=$P(RMDAT,U,2)
 .S RMTYRE=$P(RMDAT,U,3)
 .S RMSURE=$P(RMDAT,U,4)
 .S RMINI=$P(RMDAT,U,5)
 .S RPDT=$P(RMDAT,U,6)
 .S RMPRDI=$E($P(RMDAT,U,7),1,12)
 .W !,RDDT,?10,RMPAT,?21,RMITEM,?40,RMTYRE,?50,RMSURE,?68,RMINI
 .S RMPRFLG=1
 .I $E(IOST)["C"&($Y>(IOSL-7)) S DIR(0)="E" D ^DIR S:$D(DTOUT)!(Y=0) RMPREND=1 Q:RMPREND  W @IOF D HEAD,HEAD1 Q
 .I $Y>(IOSL-6) W @IOF D HEAD,HEAD1 K RMPRFLG Q
 W !,RMPR("L")
 W !,"Totals:",?10,"Routine Prosthetics = ",$J(RMPR("ROUTINE"),5)
 W ?40,"Eyeglass = ",$J(RMPR("EYEGLASS"),5)
 W ?59,"Contact Lens = ",$J(RMPR("CONTACT"),5)
 W !,?17,"      Oxygen = ",$J(RMPR("OXYGEN"),5)
 W ?42,"Manual = ",$J(RMPR("MANUAL"),5)
 W !,"<End of Report>"
 Q
 ;
HEAD W !,"PROSTHETICS PATIENT RECORDS LINKED TO SUSPENSE   Run Date: ",RMDATE,?70,"PAGE: ",RMPAGE
 W !,"Start Date: ",RMSDAT,?26,"End Date: ",RMEDAT,?51,"station: ",$E($P($G(^DIC(4,RS,0)),U,1),1,19)
 S RMPAGE=RMPAGE+1
 Q
 ;
HEAD1 I $E(IOST)["C"&($Y>(IOSL-7)) S DIR(0)="E" D ^DIR S:$D(DTOUT)!(Y=0) RMPREND=1 Q:RMPREND  W @IOF D HEAD
 I $E(IOST)'["C"&($Y>(IOSL-6)) W @IOF D HEAD
 W !,RMPR("L")
 W !?40,"TYPE OF",?52,"CPRS"
 W !,"DATE",?10,"PATIENT",?21,"ITEM",?40,"REQUEST",?50,"REQUESTOR",?68,"INITIATOR"
 W !,"----",?10,"-------",?21,"----",?40,"-------",?50,"---------",?68,"---------"
 S RMPRFLG=1
 Q
 ;
EXIT I $E(IOST)["C",'RMPREND K DIR S DIR(0)="E" D ^DIR
EXIT1 D ^%ZISC
 K ^TMP($J)
 N RMPR,RMPRSITE D KILL^XUSCLEAN
 Q
 ;
SUMTYP ;get total of each type of request
 S:RMTYRE["ROUTINE" RMPR("ROUTINE")=RMPR("ROUTINE")+1
 S:RMTYRE["EYEGLASS" RMPR("EYEGLASS")=RMPR("EYEGLASS")+1
 S:RMTYRE["CONTACT" RMPR("CONTACT")=RMPR("CONTACT")+1
 S:RMTYRE["OXYGEN" RMPR("OXYGEN")=RMPR("OXYGEN")+1
 S:RMTYRE["MANUAL" RMPR("MANUAL")=RMPR("MANUAL")+1
 Q
 ;
NONE W !!,"NO DATA TO PRINT !!!!!"
 Q