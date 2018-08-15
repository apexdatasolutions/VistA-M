YSASRU ;ASF/ALB,HIOFO/FT - ASI ROLLUP ;2/21/13 10:01am
 ;;5.01;MENTAL HEALTH;**24,30,32,38,55,106,108**;Dec 30, 1994;Build 17
 ;Reference to XMD supported by IA #10070
 ;Reference to XLFDT supported by DBIA #10103
 ;Reference to ^DPT( supported by DBIA #10035
 ;Reference to ^VA(200 supported by DBIA #10060
 ;Reference to FILE 4 fields supported by DBIA #10090
 Q
EN ;entry point for YSAS NATIONAL ROLLUP option
 S:$D(ZTQUEUED) ZTREQ="@"
 Q  ;ASF 10/13/11 stop all rollups
 N XMSUB,XMTEXT,XMY,XMZ,YSASIEN,YSASNOW,YSASSITE,YSFLD,YSIE,YSN
 D INIT
 S YSASIEN=0 F  S YSASIEN=$O(^YSTX(604,"ATR",1,YSASIEN)) Q:YSASIEN'>0!(YSN>1900)  D SET S ^TMP($J,"YSASUC",YSASIEN)=""
 Q:'$D(^TMP($J,"YSASUC"))  ;nothing in transmission list
 S YSN=YSN+1,^TMP($J,"YSASRU",YSN,0)="$$END$$"
 D XMIT
 D UNCHECK
 D:$D(^YSTX(604.8,"AB")) INFORM
 G:YSN>1900 EN ; separate messages to keep lines under 2000
 Q
INIT ;initalize global,counters...
 K ^TMP($J)
 S YSN=1,^TMP($J,"YSASRU",YSN,0)="$$BEGIN$$"
 Q
SET ;data entry
 S YSN=YSN+1
 S X=$$GET1^DIQ(604.8,"1,",.01,"E"),^TMP($J,"YSASRU",YSN,0)=X_U
 F YSFLD=.02,2,".02:.09",".02:.02",".02:.03" D GETI
 S X=$$FMTE^XLFDT($P(^TMP($J,"YSASRU",YSN,0),U,6),"5ZD") S:X?1"00".E X="01"_$E(X,3,10) S:X?2N1"/00".E X=$E(X,1,3)_"01"_$E(X,7,10) S $P(^TMP($J,"YSASRU",YSN,0),U,6)=X
 S YSN=YSN+1 F YSFLD=1,.05,.051,.052,.04,.07,.09,.11,1.201,1.202,1.203,.16,.17,2.01,2.03,8.01,8.02,8.025,8.03,8.05,8.06,8.08,8.09,8.11 D GETI
 S YSN=YSN+1 F YSFLD=8.12,8.14,8.15,9.01,9.02,9.03,9.04,9.06,9.09,9.11,9.12 D GETI
 S YSN=YSN+1 F YSFLD=9.14,9.15,9.16,9.17,9.18,9.19,9.21,9.22,9.23,9.24,9.25 D GETI
 S YSN=YSN+1 F YSFLD=9.29,9.31,9.32,9.33,9.34,9.35,9.36,10.01,10.02,10.03,10.04,10.05 D GETI
 S YSN=YSN+1 F YSFLD=10.06,10.07,10.08,10.09,10.11,10.12,10.14,10.15,10.16,10.17,10.18,10.19 D GETI
 S YSN=YSN+1 F YSFLD=10.21,10.22,10.23,10.24,10.25,10.26,10.27,10.28,10.29,10.31,10.32,10.33 D GETI
 S YSN=YSN+1 F YSFLD=10.34,10.35,10.36,10.37,10.38,10.39,10.41,10.42,10.43,10.45,11.01,11.02 D GETI
 S YSN=YSN+1 F YSFLD=11.03,11.04,11.05,11.06,11.07,11.08,11.09,11.11,11.12,11.14,11.15,11.16 D GETI
 S YSN=YSN+1 F YSFLD=11.17,11.165,11.175,11.18,11.185,11.19,11.21,14.01,14.02 D GETI
 S YSN=YSN+1 F YSFLD=14.03,14.04,14.05,14.06,14.07,14.08,14.09,14.11,14.12,14.14,14.15,14.16 D GETI
 S YSN=YSN+1 F YSFLD=14.17,14.18,14.19,14.21,14.22,14.23,14.24,14.25,14.26,14.27,14.28,14.29 D GETI
 S YSN=YSN+1 F YSFLD=14.31,14.32,14.33,14.34,14.35,14.36,17.01,17.02,17.03,17.04,17.05,17.06 D GETI
 S YSN=YSN+1 F YSFLD=17.07,17.08,17.09,17.11,17.12,17.14,17.15,17.16,17.17,17.18,17.19,17.21 D GETI
 S YSN=YSN+1 F YSFLD=17.22,18.01,18.02,18.03,18.04,18.05,18.06,18.07,18.08,18.09,18.11,18.12 D GETI
 S YSN=YSN+1 F YSFLD=18.14,18.15,18.16,18.17,18.18,18.185,18.186,18.19 D GETI
 S YSN=YSN+1 F YSFLD=18.195,18.21,18.215,18.22,18.225,18.23,18.24,18.25,18.26 D GETI
 S YSN=YSN+1 F YSFLD=18.27,18.28,18.29,18.31,18.32,19.01,19.02,19.03,19.04,19.05,19.06,19.07 D GETI
 S YSN=YSN+1 F YSFLD=19.08,19.09,19.11,19.12,19.14,19.15,19.16,19.17,19.18,19.19,19.21,19.22 D GETI
 S YSN=YSN+1 F YSFLD=19.23,19.24,19.25,19.26,19.27,19.28,19.29,19.31,19.32,19.33,19.34,19.35 D GETI
 S YSN=YSN+1
 F YSFLD="15.01,15.02,15.03","15.04,15.05,15.06","15.07,15.08,15.09","15.11,15.12,15.14","15.15,15.16,15.17","15.18,15.19,15.21","15.22,15.23,15.24" D GETFH
 F YSFLD="15.25,15.26,15.27","16.01,16.02,16.03","16.04,16.05,16.06","16.07,16.08,16.09","16.11,16.12,16.14" D GETFH
 Q
GETI ;internal FM retrieve
 S YSIE=$S(YSFLD>10&(YSFLD<11):"",YSFLD=".02":"",YSFLD=.09:"",YSFLD=".05":"",YSFLD="2":"",YSFLD=1:"",1:"I")
 S X=$$GET1^DIQ(604,YSASIEN_",",YSFLD,YSIE)
 S ^TMP($J,"YSASRU",YSN,0)=$G(^TMP($J,"YSASRU",YSN,0))_X_U
 Q
GETFH ; family hx
 S X=$$GET1^DIQ(604,YSASIEN_",",$P(YSFLD,",",1),"E")
 S X1=$S(X="":" ",1:X)
 S X=$$GET1^DIQ(604,YSASIEN_",",$P(YSFLD,",",2),"E")
 S X1=X1_$S(X="":" ",1:X)
 S X=$$GET1^DIQ(604,YSASIEN_",",$P(YSFLD,",",3),"E")
 S X1=X1_$S(X="":" ",1:X)
 S ^TMP($J,"YSASRU",YSN,0)=$G(^TMP($J,"YSASRU",YSN,0))_X1_U
 Q
XMIT ;transmit
 K XMZ S %DT="T",X="NOW" D ^%DT,DD^%DT
 S YSASNOW=Y
 ;S YSASSITE=$P(^DIC(4,$P(^XMB(1,1,"XUS"),"^",17),0),"^",1)
 S YSASSITE=$$SITE^YSASU()
 K XMY S XMY($P(^YSTX(604.8,1,2),U))=""
 S XMDUZ="ASI ROLLUP",XMTEXT="^TMP($J,""YSASRU"",",XMSUB="ASI Admins data from: "_YSASSITE_" on "_YSASNOW D ^XMD
 Q
UNCHECK ;reset the awaiting transmission flag
 S YSASIEN=0 F  S YSASIEN=$O(^TMP($J,"YSASUC",YSASIEN)) Q:YSASIEN'>0  D
 . S DA=YSASIEN,DIE="^YSTX(604,",DR="5.5///@;5.6///NOW"
 . L +^YSTX(604,YSASIEN):DTIME Q:'$T
 . D ^DIE
 . L -^YSTX(604,YSASIEN)
 Q
INFORM ;local mail info
 S ^TMP($J,"YSASINFO",1,0)="ASI Information has been sent to the national database on the above date for: "
 S YSASIEN=0 F I=2:1 S YSASIEN=$O(^TMP($J,"YSASUC",YSASIEN)) Q:YSASIEN'>0  D
 . S X=^YSTX(604,YSASIEN,0),X1=$P(X,U,2),X2=$P(X,U,5)
 . S ^TMP($J,"YSASINFO",I,0)=$E(X2,4,5)_"/"_$E(X2,6,7)_"/"_$E(X2,2,3)_"   "_$P(^DPT(X1,0),U)
 K XMZ S %DT="T",X="NOW" D ^%DT,DD^%DT
 S YSASNOW=Y
 ;S YSASSITE=$P(^DIC(4,$P(^XMB(1,1,"XUS"),"^",17),0),"^",1)
 S YSASSITE=$$SITE^YSASU()
 K XMY S X=0 F  S X=$O(^YSTX(604.8,"AB",X)) Q:X'>0  S XMY($P(^VA(200,X,0),U))=""
 S XMDUZ="ASI ROLLUP",XMTEXT="^TMP($J,""YSASINFO"",",XMSUB="ASI data SENT from: "_YSASSITE_" on "_YSASNOW D ^XMD
 Q
