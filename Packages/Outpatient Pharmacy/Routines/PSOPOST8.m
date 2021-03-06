PSOPOST8 ;BIR/EJW-Post install routine - patch PSO*7*129 ;11/14/02
 ;;7.0;OUTPATIENT PHARMACY;**129,268**;DEC 1997;Build 9
 ;External reference to ^DPT supported by DBIA 10035
 ;External reference to ^XUSEC supported by DBIA 10076
 ; POST-INSTALL ROUTINE FOR PATCH PSO*7*129 - TO LIST ENTRIES THAT WERE RESET INTO THE PHARMACY PATIENT FILE (#55) BY PATCH PSO*7*115
 S ZTDTH=""
 I $D(ZTQUEUED) S ZTDTH=$H
 L +^XTMP("PSOPOST7"):$S(+$G(^DD("DILOCKTM"))>0:+^DD("DILOCKTM"),1:3) I '$T D  Q
 .I ZTDTH="" D BMES^XPDUTL("** The clean up job from patch PSO*7*115 is still running. **")
 .D BMES^XPDUTL("A MailMan message is now being generated with instructions on running this")
 .D BMES^XPDUTL("post-install at a later date/time.  Halting...")
 .S MSG="LIST IN USE" D MAIL2
 L -^XTMP("PSOPOST7")
 I ZTDTH="" D
 .D BMES^XPDUTL("The background job to list reset ^PS(55 entries must be queued.")
 .D BMES^XPDUTL("If no start date/time is entered when prompted, the background job will be")
 .D BMES^XPDUTL("queued to run NOW.")
 .D BMES^XPDUTL(" ")
 .D BMES^XPDUTL("Queuing background job to list entries reset into ^PS(55")
 S ZTRTN="RES^PSOPOST8",ZTIO="",ZTDESC="Background job to list entries reset into PS(55" D ^%ZTLOAD K ZTDTH,ZTRTN,ZTIO,ZTDESC
 W:$D(ZTSK)&('$D(ZTQUEUED)) !!,"Task Queued !",!
 Q
RES ;
 I '$G(DT) S DT=$$DT^XLFDT
 I '$D(^XTMP("PSOPOST7")) S MSG="NO ENTRIES TO LIST" D MAIL2 Q
 D NOW^%DTC S ^XTMP("PSOTIMEX","START")=%
 D BMES^XPDUTL("Creating list of reset ^PS(55 entries...")
GETLIST ; PROCESS ENTRIES FROM ^XTMP("PSOPOST7" GLOBAL
 K ^TMP($J,"PSOPOST8")
 S PSOJOB="" F  S PSOJOB=$O(^XTMP("PSOPOST7",PSOJOB)) Q:PSOJOB=""  D
 .S PSOSQ="" F  S PSOSQ=$O(^XTMP("PSOPOST7",PSOJOB,PSOSQ)) Q:PSOSQ=""  D
 ..I PSOSQ="IV"!(PSOSQ="UD") D GETIVUD Q
 ..S NAM=$P($G(^DPT(PSOSQ,0)),"^",1) I NAM="" S NAM="UNKNOWN"
 ..S PSOSQ1="" F  S PSOSQ1=$O(^XTMP("PSOPOST7",PSOJOB,PSOSQ,PSOSQ1)) Q:PSOSQ1=""  D
 ...I PSOSQ1="P,A" D GETPA Q
 ...S PSORX="" F  S PSORX=$O(^XTMP("PSOPOST7",PSOJOB,PSOSQ,PSOSQ1,PSORX)) Q:PSORX=""  S PSORXP=$P($G(^PSRX(PSORX,0)),"^",1) I PSORXP'="" S ^TMP($J,"PSOPOST8",NAM,PSOSQ,"P",PSORXP)=""
 ;
MAIL ;
 D NOW^%DTC S PSOTIMEB=%
 S Y=$G(^XTMP("PSOTIMEX","START")) D DD^%DT S PSOTIMEA=Y
 S Y=$G(PSOTIMEB) D DD^%DT S PSOTIMEB=Y
 S XMDUZ="Patch PSO*7*129",XMY(DUZ)="",XMSUB="PHARMACY PATIENT File (#55) listing of rebuilt entries"
 F PSOCXPDA=0:0 S PSOCXPDA=$O(^XUSEC("PSNMGR",PSOCXPDA)) Q:'PSOCXPDA  S XMY(PSOCXPDA)=""
 K PSOTEXT S PSOTEXT(1)="Patch PSO*7*129 PHARMACY PATIENT File (#55) job is complete.",PSOTEXT(2)="It started on "_$G(PSOTIMEA)_".",PSOTEXT(3)="It ended on "_$G(PSOTIMEB)_"."
 S PSOTEXT(4)=" "
 S PSOTEXT(5)="Listing of cross-references reset by patch PSO*7*115"
 S CNT=5
 S NAM="" F  S NAM=$O(^TMP($J,"PSOPOST8",NAM)) Q:NAM=""  D
 .S DFN="" F  S DFN=$O(^TMP($J,"PSOPOST8",NAM,DFN)) Q:DFN=""  D
 ..D GETPT S CNT=CNT+1,PSOTEXT(CNT)=" ",CNT=CNT+1,PSOTEXT(CNT)=PSOTXT
 ..S PSOSQ="" F  S PSOSQ=$O(^TMP($J,"PSOPOST8",NAM,DFN,PSOSQ)) Q:PSOSQ=""  D
 ...I PSOSQ="UD" S CNT=CNT+1,PSOTEXT(CNT)="  UNIT DOSE STOP DATE CROSS-REFERENCE REBUILT" Q
 ...I PSOSQ="IV" S CNT=CNT+1,PSOTEXT(CNT)="  IV STOP DATE CROSS-REFERENCE REBUILT" Q
 ...I PSOSQ="P" S PSORX="" F  S PSORX=$O(^TMP($J,"PSOPOST8",NAM,DFN,PSOSQ,PSORX)) Q:PSORX=""  S CNT=CNT+1 S PSOTEXT(CNT)="  ""P"" CROSS-REFERENCE REBUILT FOR RX#: "_PSORX
 ...I PSOSQ="P,A" S PSORX="" F  S PSORX=$O(^TMP($J,"PSOPOST8",NAM,DFN,PSOSQ,PSORX)) Q:PSORX=""  S CNT=CNT+1 S PSOTEXT(CNT)="  ""P"",""A"" CROSS-REFERENCE REBUILT FOR RX#: "_PSORX
 S CNT=CNT+1,PSOTEXT(CNT)=" ",PSOTEXT(CNT+1)="**  END OF LIST **"
 S XMTEXT="PSOTEXT(" N DIFROM D ^XMD
 G END
 Q
 ;
MAIL2 ;
 S XMDUZ="Patch PSO*7*129",XMY(DUZ)="",XMSUB="PHARMACY PATIENT File (#55)   "_$G(MSG)
 F PSOCXPDA=0:0 S PSOCXPDA=$O(^XUSEC("PSNMGR",PSOCXPDA)) Q:'PSOCXPDA  S XMY(PSOCXPDA)=""
 K PSOTEXT
 S PSOTEXT(1)="Patch PSO*7*129 PHARMACY PATIENT File (#55) - nothing to list.",PSOTEXT(2)=" "
 I $G(MSG)["IN USE" D
 .S PSOTEXT(3)="The post-install job for patch PSO*7*115 is still running."
 .S PSOTEXT(4)="Please run this job later by running ^PSOPOST8 from programmers mode."
 I MSG["NO ENT" D
 .S PSOTEXT(3)="No ^XTMP(""PSOPOST7"" entries exist from post-install job for PSO*7*115."
 S PSOTEXT(5)=" "
 S XMTEXT="PSOTEXT(" N DIFROM D ^XMD
 G END
 Q
 ;
GETPT ; GET PATIENT INFORMATION
 D PID^VADPT
 S PSOTXT=$P($G(^DPT(DFN,0)),"^",1)_"  ("_$G(VA("BID"))_")"
 Q
 ;
GETPA ;
 S PSODT="" F  S PSODT=$O(^XTMP("PSOPOST7",PSOJOB,PSOSQ,PSOSQ1,PSODT)) Q:PSODT=""  D
 .S PSORX="" F  S PSORX=$O(^XTMP("PSOPOST7",PSOJOB,PSOSQ,PSOSQ1,PSODT,PSORX)) Q:PSORX=""  S PSORXP=$P($G(^PSRX(PSORX,0)),"^",1) I PSORXP'="" S ^TMP($J,"PSOPOST8",NAM,PSOSQ,"P,A",PSORXP)=""
 Q
 ;
GETIVUD ;
 S PSOSQ1="" F  S PSOSQ1=$O(^XTMP("PSOPOST7",PSOJOB,PSOSQ,PSOSQ1)) Q:PSOSQ1=""  D
 .S NAM=$P($G(^DPT(PSOSQ1,0)),"^",1) I NAM="" S NAM="UNKNOWN"
 .S ^TMP($J,"PSOPOST8",NAM,PSOSQ1,PSOSQ)=""
 Q
 ;
END ;
 K ^TMP($J,"PSOPOST8")
 K PSOTIMEA,PSOTIMEB,XMDUZ,XMSUB,PSOTEXT,XMTEXT,PSOCXPDA,CNT,DFN,MSG,NAM,PSODT,PSOJOB,PSOSQ,PSOSQ1,PSOTXT
 S:$D(ZTQUEUED) ZTREQ="@"
 Q
 ;
