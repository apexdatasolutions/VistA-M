SDECINIT ;ALB/SAT - VISTA SCHEDULING RPCS ;JAN 15, 2016
 ;;5.3;Scheduling;**627**;Aug 13, 1993;Build 249
 ;
 Q
 ;
PRE ;
 Q
 ;
POST ;
 D RPC
 D CHK^SDECINI2
 D INDEX^SDECINI1
 ;D SDWLCL^SDECINI1
 D RESCLIN
 D RESAV
 ;D RESAB^SDECINI1
 D SDAPPT^SDECINI2
 D SCH
 Q
 ;
SCH ;schedule options
 N NOW,QTIME,Y
 S Y=$$NOW^XLFDT,Y=$$FMTE^XLFDT(Y)
 W !!,"Scheduling SDEC IDX REFRESH ..."
 W !,Y
 ;schedule SDEC IDX REFRESH to run nightly
 S QTIME=$G(XPDQUES("POS1 NIGHTJOB"))  ;cannot NEW XPDQUES in this routine - XPDQUES is defined during the install questions
 D:QTIME SCHTSK("SDEC IDX REFRESH",QTIME,"24H")
 ;schedule SDEC IDX REFRESH to run one time 'NOW'
 S NOW=$G(XPDQUES("POS2 NOWJOB"))  ;cannot NEW XPDQUES in this routine - XPDQUES is defined during the install questions
 D:$$UP^XLFSTR(NOW)=1 ONE
 Q
SCHTSK(OPTNAME,QTIME,QFREQ) ; Schedule Option
 N FDA,SCHNM,DIC,X,Y,SDIEN S SDIEN=""
 Q:$G(OPTNAME)=""
 I $G(QTIME)="" S QTIME=$P($$NOW^XLFDT,".",1)_".02"
 S QFREQ=$G(QFREQ)
 S DIC(0)="I",X=OPTNAME,DIC="^DIC(19,"
 D ^DIC Q:'(Y>0)  S SCHNM=+Y
 ;D CLEAN^DILF
 S FDA(19.2,"?+1,",.01)=SCHNM,X=SCHNM
 I 'SCHNM D  Q
 .W !,OPTNAME," option can't be scheduled - option does not exist"
 ;S FDA(19.2,"?+1,",1)=SCHNM
 S FDA(19.2,"?+1,",2)=QTIME   ;$P($$NOW^XLFDT,".")_".01"
 S FDA(19.2,"?+1,",6)=QFREQ
 ;S FDA(19.2,"?+1,",9)="SP"  SP is STARTUP/PERSISTENT
 D UPDATE^DIE("","FDA","SDIEN")
 W !,"Scheduled option ",OPTNAME
 D CLEAN^DILF
 Q
ONE ;One time queue setup for SDEC IDX REFRESH
 N ZTDESC,ZTDTH,ZTIO,ZTRTN
 S ZTRTN="ENTRY^SDECIDX"
 S ZTIO=""
 S ZTDTH=$$FMADD^XLFDT($$NOW^XLFDT,,,1)
 S ZTDESC="One time Queue: SDEC IDX REFRESH"
 D ^%ZTLOAD
 Q
 ;
RPC ;register SDEC rpcs
 N Y
 S Y=$$NOW^XLFDT,Y=$$FMTE^XLFDT(Y)
 W !!,"Registering new RPCs..."
 W !,Y
 D REGNMSP^SDECRPC("SDEC","SDECRPC")
 D REGNMSP^SDECRPC("DG SENSITIVE RECORD ACCESS","SDECRPC")
 D REGNMSP^SDECRPC("DG CHK BS5 XREF ARRAY","SDECRPC")
 D REGNMSP^SDECRPC("ORPRF HASFLG","SDECRPC")
 D REGNMSP^SDECRPC("ORPRF GETFLG","SDECRPC")
 D REGNMSP^SDECRPC("ORWPT DIEDON","SDECRPC")
 D REGNMSP^SDECRPC("ORWPT ID INFO","SDECRPC")
 D REGNMSP^SDECRPC("ORWPT LAST5","SDECRPC")
 D REGNMSP^SDECRPC("ORWPT LAST5 RPL","SDECRPC")
 D REGNMSP^SDECRPC("ORWU USERINFO","SDECRPC")
 Q
 ;
RESCLIN ;populate SDEC RESOURCE with clinics from file 44
 N SDCL,SDCLN,SDDATA,SDFDA,SDFIELDS,SDFOUND,SDI,SDIEN,SDMSG,SDRESH,SDRES11,SDTS,Y
 N SDIN,SDRN
 S SDRESH=""
 S Y=$$NOW^XLFDT,Y=$$FMTE^XLFDT(Y)
 W !!,"Updating new SDEC RESOURCE file 409.831 with clinics and providers from file 44..."
 W !,Y
 ;D SDRTYP(.SDRTYP)
 D CLEAR^SDECU      ;purge SDEC RESOURCE USER file
 D RESDGA^SDEC01B   ;remove inactive resources from SDEC RESOURCE GROUPs
 S SDCL=0 F  S SDCL=$O(^SC(SDCL)) Q:SDCL'>0  D
 .D RESCLIN1^SDEC01B(SDCL,.SDRESH)
 .;populate from providers and privileged users
 .D RESPRVA
 Q
 ;
RESPRVA ;called from RSCLIN
 ;K SDDATA,SDMSG
 N SDFOUND,TD
 S SDFOUND=0
 S SDJ=0 F  S SDJ=$O(^SC(SDCL,"PR",SDJ)) Q:SDJ'>0  D
 .S SDPRV=$P($G(^SC(SDCL,"PR",SDJ,0)),U,1)
 .S SDPRVN=$$UP^XLFSTR($$GET1^DIQ(200,SDPRV_",",.01))
 .Q:SDPRVN=""
 .D RESPRV1^SDEC01B(SDPRV,SDCL,SDPRVN)
 S SDJ=0 F  S SDJ=$O(^SC(SDCL,"SDPRIV",SDJ)) Q:SDJ'>0  D
 .S SDPRV=$P($G(^SC(SDCL,"SDPRIV",SDJ,0)),U,1)
 .S SDPRVN=$$UP^XLFSTR($$GET1^DIQ(200,SDPRV_",",.01))
 .Q:SDPRVN=""
 .S TD=$$GET1^DIQ(200,SDJ_",",9.2,"I")
 .I TD'="",$P(TD,".",1)'>$P($$NOW^XLFDT,".",1) Q  ;only process active entries
 .;MGH commented out
 .D RESPRV1^SDEC01B(SDPRV,SDCL,SDPRVN)    ;add to SDEC RESOURCE
 .D:$G(SDRESH)'="" RESUPRV1   ;add to SDEC RESOURCE USER
 Q
RESUPRV1 ;add privileged provider to SDEC RESOURCE USER
 N SDF,SDFDA,SDIEN,SDMSG,SDNOD,SDRU
 S SDF=0
 Q:$O(^SDEC(409.833,"AD",SDRESH,SDPRV,0))  ;stop if existing SDEC RESOURCE USER id with provider ID.
 S SDRU="+1"
 ;
 S SDFDA=$NA(SDFDA(409.833,SDRU_","))
 S @SDFDA@(.01)=SDRESH
 S @SDFDA@(.02)=SDPRV
 D UPDATE^DIE("","SDFDA","SDIEN","SDMSG")
 Q
 ;
SDRTYP(SDRTYP) ;build array of resource types
 ;INPUT: none
 ;RETURN:
 ; .SDRTYP - array of resource types
 ;          SDRTYP(<ien>;<file ref> , <SDEC RESOURCE ien>)=""
 Q
 N SDI,SDTYP
 K SDRTYP
 S SDI=0 F  S SDI=$O(^SDEC(409.831,SDI)) Q:SDI'>0  D
 .S SDTYP=$$GET1^DIQ(409.831,SDI_",",.012,"I")
 .I SDTYP'="" S SDRTYP(SDTYP,SDI)=""
 Q
 ;
RESAV ;add AVAILABLE and UNAVAILABLE to SDEC ACCESS TYPE file
 N Y
 S Y=$$NOW^XLFDT,Y=$$FMTE^XLFDT(Y)
 W !!,"Updating SDEC ACCESS TYPE file 409.823 with entries for ""AVAILABLE"" and ""UNAVAILABLE""..."
 W !,Y
 I '$O(^SDEC(409.823,"B","AVAILABLE",0)) D AVAILADD("AVAILABLE")
 I '$O(^SDEC(409.823,"B","UNAVAILABLE",0)) D AVAILADD("UNAVAILABLE")
 Q
AVAILADD(SDTXT) ;add to SDEC ACCESS TYPE file
 N SDAV,SDFDA
 S SDAV=$O(^SDEC(409.823,"B",SDTXT,0))
 Q:+SDAV
 S SDFDA(409.823,"+1,",.01)=SDTXT
 S SDFDA(409.823,"+1,",.04)=$S(SDTXT="AVAILABLE":"YELLOW",1:"GRAY")
 S SDFDA(409.823,"+1,",.05)=$S(SDTXT="AVAILABLE":247,1:230)
 S SDFDA(409.823,"+1,",.06)=$S(SDTXT="AVAILABLE":254,1:230)
 S SDFDA(409.823,"+1,",.07)=$S(SDTXT="AVAILABLE":46,1:230)
 S SDFDA(409.823,"+1,",.08)=0  ;$S(SDTXT="AVAILABLE":0,1:1)
 D UPDATE^DIE("","SDFDA")
 Q
