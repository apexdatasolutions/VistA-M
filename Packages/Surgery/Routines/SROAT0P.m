SROAT0P ;B'HAM ISC/MAM - ATTENDING SURGEON REPORT (CONT.) ; [ 05/11/04  2:33 PM ]
 ;;3.0;Surgery;**50,129,182**;24 Jun 93;Build 49
 S SRPAGE=1 D HDR Q:SRSOUT
 S SRSDATE=0 F  S SRSDATE=$O(^TMP("SR",$J,SRSDATE)) Q:'SRSDATE!(SRSOUT)  S SRTN=0 F  S SRTN=$O(^TMP("SR",$J,SRSDATE,SRTN)) Q:'SRTN!(SRSOUT)  D SET
 Q
SET ; print case
 I $Y+7>IOSL D PAGE I SRSOUT Q
 K SRATC S SRATC="",Y=$P($G(^SRF(SRTN,.1)),"^",10) I Y S C=$P(^DD(130,.166,0),"^",2) D Y^DIQ S SRATC=Y
 I SRATC="" S SRATC="ATTENDING/RES SUP CODE NOT ENTERED"
 S:SRATC<36 SRATC(1)=SRATC I $L(SRATC)>35 D
 .N I,J,X,Y S X=SRATC F I=0:1:34 S J=35-I,Y=$E(X,J) I Y=" " S SRATC(1)=$E(X,1,J-1) S SRATC(2)=$E(X,J+1,$L(X)) Q
 S SRDT=$E(SRSDATE,4,5)_"/"_$E(SRSDATE,6,7)_"/"_$E(SRSDATE,2,3),SR(0)=^SRF(SRTN,0),DFN=$P(SR(0),"^") D DEM^VADPT
 S SRSS=$P(^SRF(SRTN,0),"^",4),SRSS=$S(SRSS:$P(^SRO(137.45,SRSS,0),"^"),1:"SPECIALTY NOT ENTERED")
 S SRDIAG=$S($D(^SRF(SRTN,34)):$P(^(34),"^"),1:"POSTOPERATIVE DIAGNOSIS NOT ENTERED")
 S SR(.1)=$S($D(^SRF(SRTN,.1)):^(.1),1:""),SRSUR=$P(SR(.1),"^",4),SRFST=$P(SR(.1),"^",5),SRTWO=$P(SR(.1),"^",6)
 I SRSUR S SRSUR=$P(^VA(200,SRSUR,0),"^") I $L(SRSUR)>17 S SRSUR=$P(SRSUR,",")_","_$E($P(SRSUR,",",2))
 I SRFST S SRFST=$P(^VA(200,SRFST,0),"^") I $L(SRFST)>17 S SRFST=$P(SRFST,",")_","_$E($P(SRFST,",",2))
 I SRTWO S SRTWO=$P(^VA(200,SRTWO,0),"^") I $L(SRTWO)>17 S SRTWO=$P(SRTWO,",")_","_$E($P(SRTWO,",",2))
OPS S SROPER=$P(^SRF(SRTN,"OP"),"^"),OPER=0 F I=0:0 S OPER=$O(^SRF(SRTN,13,OPER)) Q:OPER=""  D OTHER
 K SROP,MM,MMM S:$L(SROPER)<55 SROP(1)=SROPER I $L(SROPER)>54 S SROPER=SROPER_"  " S SROPER=SROPER_"  " F M=1:1 D LOOP Q:MMM=""
 W !!,SRDT,?12,VADM(1),?50,SRSS,?112,SRSUR,!,SRTN,?12,VA("PID"),?50,SRDIAG,?112,SRFST,! W:$P($G(^SRF(SRTN,30)),"^") "ABORTED" W ?12,SRATC(1),?50,SROP(1),?112,SRTWO
 I $D(SRATC(2))!$D(SROP(2)) W ! W:$D(SRATC(2)) ?13,SRATC(2) W:$D(SROP(2)) ?50,SROP(2)
 I $D(SROP(3)) W !,?50,SROP(3) I $D(SROP(4)) W !,?50,SROP(4)
 Q
OTHER ; other operations
 S SRLONG=1 I $L(SROPER)+$L($P(^SRF(SRTN,13,OPER,0),"^"))>240 S SRLONG=0,OPER=999,SROPERS=" ..."
 I SRLONG S SROPERS=$P(^SRF(SRTN,13,OPER,0),"^")
 S SROPER=SROPER_$S(SROPERS=" ...":SROPERS,1:", "_SROPERS)
 Q
LOOP ; break procedure if greater than 55 characters
 S SROP(M)="" F LOOP=1:1 S MM=$P(SROPER," "),MMM=$P(SROPER," ",2,200) Q:MMM=""  Q:$L(SROP(M))+$L(MM)'<55  S SROP(M)=SROP(M)_MM_" ",SROPER=MMM
 Q
PAGE I $E(IOST)="P" D HDR Q
 W !!,"Press RETURN to continue, or '^' to quit:  " R X:DTIME I '$T!(X["^") S SRSOUT=1 Q
 I X["?" W !!,"There are more cases for the date range selected.  If you want to continue",!,"listing them, enter RETURN.  Enter '^' to exit from this option." G PAGE
HDR ; print heading
 I $D(ZTQUEUED) D ^SROSTOP I SRHALT S SRSOUT=1 Q
 I $Y W @IOF
 W !,?(132-$L(SRINST)\2),SRINST,?120,"PAGE: ",SRPAGE,!,?58,"SURGICAL SERVICE",?100,"REVIEWED BY: ",!,?54,"ATTENDING SURGEON REPORT",?100,"DATE REVIEWED: "
 W !,?(132-$L(SRFRTO)\2),SRFRTO,?100,SRPRINT
 W !!,?3,"DATE",?12,"PATIENT",?50,"SURGICAL SPECIALTY",?112,"PRIMARY SURGEON",!,?2,"CASE #",?14,"ID#",?50,"PRINCIPAL DIAGNOSIS",?112,"1ST ASST",!,?12,"ATTENDING/RES SUP CODE",?50,"OPERATIVE PROCEDURE(S)",?112,"2ND ASST",! F I=1:1:132 W "="
 W !!,?(132-$L(SRATT)\2),SRATT,!,?(132-$L(SRATT)\2),SRATT1 S SRPAGE=SRPAGE+1
 Q
