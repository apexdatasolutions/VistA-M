MBAARPC2 ;OIT-PD/PB - Scheduling RPCs ;FEB 23, 2017
 ;;1.0;Scheduling Calendar View;**1,4,5**;Feb 13, 2015;Build 6
 ;
 ;This routine has multiple RPCs created to support the mobile Scheduling apps
 ;
 ;Associated ICRs:
 ;  ICR#
 ;  10103 XLFDT
 ;  5838 SDAMEVT
 ;  6048 SDAMEVT
 ;  6053 DPT
 ;  4433 SDAMA301
 ;
 ;Cancel an Appointment
CANCEL(RV,DFN,SC,SD,TYPE,RSN,RMK) ; SD APPOINTMENT CANCEL MBAA RPC: MBAA CANCEL APPOINTMENT
 N STATUS,RESULT,ROUTC S STATUS=$$CANCEL1(.RESULT,DFN,SC,SD,TYPE,RSN,RMK)  ;alb/sat 4 - existing ROUTC needs to be Newed
 ;D MERGE^MBAAMRPC(.RV,.RESULT)
 S RV=$G(RESULT(0)) ; MBAA*1*5 - Return error text with error code
 Q
CANCEL1(RETURN,DFN,SC,SD,TYP,RSN,RMK) ; Cancel appointment MBAA RPC: MBAA CANCEL APPOINTMENT
 N CDATE,CDT,ERR,ODT,OIFN,OUSR,%
 N CAPT,CIFN  ;alb/sat 4 - existing variables need to be Newed
 S RETURN=0
 S %=$$CHKCAN(.RETURN,DFN,SC,SD) I $E(%,1,3)="APT" Q RETURN
 S CDATE=$$NOW^XLFDT  ;ICR#: 10103 XLFDT
 S %=$$GETSCAP^MBAAMAP1(.CAPT,SC,DFN,SD)
 S CIFN=CAPT("IFN")
 S OUSR=CAPT("USER"),ODT=CAPT("DATE")
 N SDATA,SDCPHDL
 S SDCPHDL=$$HANDLE^SDAMEVT(1) ;ICR#: 5838 SDAMEVT
 D BEFORE^SDAMEVT(.SDATA,DFN,SD,SC,CIFN,SDCPHDL)
 S CDT=$$NOW^XLFDT()  ;ICR#: 10103 XLFDT
 D CANCEL^MBAAMDA3(.ERR,DFN,SD,TYP,RSN,RMK,$E(CDT,1,12),DUZ,OUSR,ODT)
 S OIFN=$$COVERB^MBAAMDA1(SC,SD,CIFN)
 S %=$$CANCEL^MBAAAPI1(RETURN,CAPT("CONSULT"),SC,SD,CIFN,RMK,TYP)
 D CANCEL^MBAAMDA1(SC,SD,DFN,CIFN)
 ;alb/sat 4 - begin mod to update SDEC
 N SDECAPPT
 S SDECAPPT=$$APPTGET^SDECUTL(DFN,SD,SC)
 D:+SDECAPPT SDECCAN^SDEC08(SDECAPPT,"PC",RSN,RMK,"",DUZ,"01")
 ;alb/sat 4 - end mod
 D CANCEL^SDAMEVT(.SDATA,DFN,SD,SC,CIFN,0,SDCPHDL) ;ICR#: 6048 MBAA SDAMEVT API CALLS
 S RETURN=1
 Q RETURN
 ;
CHKCAN(RETURN,DFN,SC,SD) ; Verify cancel MBAA RPC: MBAA CANCEL APPOINTMENT
 ;N APT,RET,%
 K APT N RET,TXT,%   ;alb/sat 4 - existing TXT needs to be Newed
 S RETURN=0
 I '$D(^DPT(DFN,"S",SD)) S RETURN="APTNTSCH" Q RETURN ; patient doesn't have an appointment at the requested time  ;ICR#: 6053 DPT
 S ROUTC=1
 D GETAPTS^MBAAMDA2(.APT,DFN,.SD)
 I APT("APT",SD,"STATUS")["C" D  S RETURN="APTCAND" Q RETURN ; Appointment already canceled.
 . D ERRX^MBAAAPIE(.RETURN,"APTCAND")
 I $$ISAPTCO^MBAAMAP4(,DFN,SD) D  S RETURN="APTCCHO" Q RETURN ; Appointment has a check out date and can't be canceled - MBAA*1*5
 . D ERRX^MBAAAPIE(.RETURN,"APTCCHO")
 S %=$$CLNRGHT^MBAAMAP1(.RET,+SC)
 I RET=0 D  S RETURN="APTCRGT" Q RETURN ; Appointment not cancelled. Access to this clinic to this clinic is restricted to only priv. users - MBAA*1*5
 . S TXT(1)=RET("CLN"),TXT(2)=$C(10)
 . D ERRX^MBAAAPIE(.RETURN,"APTCRGT",.TXT)
 I '$$CHKSPC(.STAT,DFN,SD) D  S RETURN="APTCNPE" Q RETURN ; This appointment can't be canceled - MBAA*1*5
 . D ERRX^MBAAAPIE(.RETURN,"APTCNPE",.TXT)
 S RETURN=1
 Q RETURN
CHKSPC(RETURN,DFN,SD) ; Check if status permit cancelation, MBAA RPC: MBAA CANCEL APPOINTMENT
 N APT0,STATUS,IND,STAT,STATS
 S RETURN=0
 S APT0=$$GETAPT0^MBAAMDA2(DFN,SD)
 ;T13 Change to use SDAMA301 API
 K R1 D STATUS^MBAARPC1(.R1,DFN,SD,+$G(APT0)) S STATUS=+R1 K R1  ;ICR 4433
 ;S STATUS=+$$STATUS^SDAM1(DFN,SD,+$G(APT0),$G(APT0))  ;ICR#: 2851 MBAA ACCESS TO SDAM1 API get appointment status
 D LSTCSTA1^MBAAMDA2(.STAT)
 D BLDLST^MBAAMAPI(.STATS,.STAT)
 S IND=0
 F  S IND=$O(STATS(IND)) Q:IND=""!(RETURN=1)  D
 . I STATS(IND,"ID")=STATUS S RETURN=1 Q
 S RETURN=$G(RETURN)
 Q RETURN
 ;Line Tags CLNDATA, RECALL, DELETE, CHK, NEWEWL, WFCK, ENRCHK, REQBY is commented out due to the functionality being descoped from the first release
 ;CLNDATA(RETURN,CLINICID) ; returns additional clinic data MBAA ADDITIONAL CLINIC DETAILS
 ; Input: CLINICID - IEN for the Clinic in the Hospital Location file (#44)
 ; Returns: 
 ; If Successful:
 ;  RETURN(0)="TREATING SPECIALTY^STOP CODE^CREDIT STOP CODE^SPECIALTY"
 ; If Failure:
 ;  RETURN(0)="0^Missing CLINICID" 
 ;  RETURN(0)="0^Clinic doesn't exist."
 ;
 ;I $G(CLINICID)="" S RETURN(0)="0^Missing CLINICID" Q
 ;I '$D(^SC(CLINICID,0)) S RETURN(0)="0^Clinic doesn't exist." Q  ;ICR#: 6044
 ;I $P(^SC(CLINICID,0),"^",3)'="C" S RETURN(0)="0^Clinic doesn't exist." Q  ;ICR#: 6044
 ;N NODE,STOPPTR,SPECPTR,CREDITPRT,SPECLTY,SPECL,SPEC,SPEC2,STOPCODE,CREDIT,CREDITPTR,CLINIC1,SPEC1  ;IRC#: 6044
 ;S NODE=$G(^SC(CLINICID,0)),STOPPTR=$P(NODE,"^",7),SPECPTR=$P(NODE,"^",20),CREDITPTR=$P(NODE,"^",18)
 ;S STOPCODE=$P(^DIC(40.7,STOPPTR,0),"^"),CREDIT=$P(^DIC(40.7,CREDITPTR,0),"^"),SPEC=$P(^DIC(45.7,SPECPTR,0),"^")  ;ICR#: 1024, 362
 ;S SPECLTY=$P(^DIC(45.7,SPECPTR,0),"^",2),SPECL=$P(^DIC(42.4,SPECLTY,0),"^",1)  ;ICR#: 430, 362
 ;D GETS^DIQ(44,CLINICID,"8;9.5;2503","IE","CLINIC1")
 ;S SPEC=$G(CLINIC1(44,CLINICID_",",9.5,"I")),STOPCODE=$G(CLINIC1(44,CLINICID_",",8,"E")),CREDIT=$G(CLINIC1(44,CLINICID_",",2503,"E")),SPEC2=$G(CLINIC1(44,CLINICID_",",9.5,"E"))
 ;D GETS^DIQ(45.7,SPEC,".01;1","IE","SPEC1")
 ;S SPECL=$G(SPEC1(45.7,SPEC_",",1,"E"))
 ;S RETURN(0)=$G(SPEC2)_"^"_$G(STOPCODE)_"^"_$G(CREDIT)_"^"_$G(SPECL)
 ;K NODE,STOPPTR,SPECPTR,CREDITPRT,SPECLTY,SPECL,SPEC,STOPCODE,CREDIT,CREDITPTR,CLINIC1,SPEC1
 ;Q
 ;RECALL(RESULTS,DFN,CLINIC,RECALLDT,PTRECDT,PROVIDER,LEN,FAST,TEST,USER,COMMENT) ; adds new patients to the Recall List MBAA RPC: MBAA ADD TO RECALL LIST
 ; Input parameter is the Patient DFN
 ;S RESULTS(0)=1
 ;I $G(DFN)="" S RESULTS(0)="0^DFN is not defined" Q
 ;T13 Change to FM read
 ;N JX S JX=$$GET1^DIQ(2,$G(DFN),.01) I $G(JX)="" S RESULTS(0)="0^Not a patient in this system." Q  ;ICR#: 6053 DPT
 ;I '$D(^DPT(DFN,0)) S RESULTS(0)="0^Not a patient in this system." Q  ;ICR#: 6053 DPT
 ;I $G(CLINIC)="" S RESULTS(0)="0^Clinic not provided." Q
 ;T13 Change to FM read
 ;I '$D(^SC(CLINIC,0)) S RESULTS(0)="0^Clinic not in the Hospital Location File." Q  ;ICR#: 6044
 ;N JX S JX=$$GET1^DIQ(44,$G(CLINIC),.01) I $G(JX)="" S RESULTS(0)="0^Clinic not in the Hospital Location File." Q  ;ICR#: 6044
 ;I ($G(RECALLDT)=""!($G(RECALLDT)'>DT)) S RESULTS(0)="0^Provider Recall date not provided or not a valid date. Date must be in the future." Q
 ;I ($G(PTRECDT)=""!($G(PTRECDT)'>DT)) S RESULTS(0)="0^Patient recall date not provided or not a valid date. Date must be in the future" Q
 ;I $G(PROVIDER)="" S RESULTS(0)="0^Provider IEN not provided." Q
 ;I '$D(^VA(200,$G(PROVIDER),0)) S RESULTS(0)="0^Provider not provided." Q
 ;N JX S JX=$$GET1^DIQ(200,$G(PROVIDER),.01) I $G(JX)="" S RESULTS(0)="0^Provider not in the New Person file." Q  ;ICR#: 713 VA(200
 ;I $G(LEN)'>0 S RESULTS(0)="0^Appointment length not provided." Q
 ;I $G(FAST)="" S RESULTS(0)="0^FAST code not provided." Q
 ;S FAST=$$LOW^XLFSTR($G(FAST))
 ;I "nf"'[FAST S RESULTS(0)="0^FAST code not provided." Q
 ;I $G(TEST)'>0 S RESULTS(0)="0^Appointment Type code not provided. Appointment Type is a numeric value." Q
 ;I $G(USER)'>0 S RESULTS(0)="0^User IEN not provided." Q
 ;I '$D(^VA(200,$G(USER),0)) S RESULTS(0)="0^User IEN not provided." Q
 ;N JX S JX=$$GET1^DIQ(200,$G(USER),.01) I $G(JX)="" S RESULTS(0)="0^User not in the New Person File." Q  ;ICR#: 713 VA(200
 ;S ERR=0 D CHK I ERR=1 S RESULTS(0)="0^Duplicate Recall List Entry" Q
 ;K DO S (DIC,DIE)="^SD(403.5,",DIC(0)="Z",X=DFN,DLAYGO=403.5 D FILE^DICN K DO S NUM=+Y  ;ICR#: 6045 SD(403.5
 ;S DA=NUM,DR="4.5///"_$G(CLINIC)_";4///"_$G(PROVIDER)_";2.6///"_$G(FAST)_";4.7///"_$G(LEN)_";5///"_$G(RECALLDT)_";5.5///"_$G(PTRECDT)_";2.5///"_$G(COMMENT)_";3///"_$G(TEST)_";7///"_$G(USER)
 ;D ^DIE
 ;S DA=NUM,DR="[SDRR RECALL CARD ADD]",DIE("NO^")="Not Allowed" D ^DIE
 ;I $D(DTOUT) D DELETE
 ;K DIC,DIE,DR,D0,DA,DLAYGO,NUM,PROV,X,Y,Z,OK,RDT,DIR,DTOUT
 ;Q
 ;DELETE ;delete new incomplete record and display message MBAA RPC: MBAA ADD TO RECALL LIST
 ;S DIK=DIE
 ;D ^DIK K DIK
 ;S RESULTS(0)="0^All required data was not provided. Recall was not created!"
 ;Q
 ;CHK ; checks to see if the patient is on the recall list for the clinic and provider date MBAA RPC: MBAA ADD TO RECALL LIST
 ;S XX=0 F  S XX=$O(^SD(403.5,"B",DFN,XX)) Q:XX'>0  D  ;ICR#: 6045 SD(403.5
 ;.;T13 Change to use FM
 ;.N ARRAY,ERR,C1,RD1,P1 D GETS^DIQ(403.5,XX_",","2;4,5","I","ARRAY","ERR")   ;ICR#: 6045 SD(403.5
 ;.S C1=$G(ARRAY(403.5,XX_",",2,"I")),RD1=$G(ARRAY(403.5,XX_",",5,"I")),P1=$G(ARRAY(403.5,XX_",",4,"I"))
 ;.I $G(C1)=CLINIC&($G(RD1)=RECALLDT)&($G(P1)=PROVIDER) S ERR=1
 ;.;S NODE=$G(^SD(403.5,XX,0))  ;ICR#: 6045 SD(403.5
 ;.;I ($P(NODE,"^",2)=CLINIC&($P(NODE,"^",6)=RECALLDT)&($P(NODE,"^",5)=PROVIDER)) S ERR=1
 ;I $G(ERR)>0 S ERR=1
 ;Q
 ;code below is not being used in the initial release of MBAA. It will be released at a later date in a future release of MBAA
 ;CLNRGHT(RV,CLN) ;
 ; N STATUS,RESULT S STATUS=$$CLNRGHT^MBAAMAP1(.RESULT,CLN)
 ; ;D MERGE^MBAAMRPC(.RV,.RESULT)
 ; S RV(0)=$G(RESULT)
 ; Q
NEWEWL(RV,SDWLD) ; ZLV EWL NEW
 N Y   ;alb/sat 4 - existing Y needs to be Newed
 I $G(SDWLD)="" S RV(0)="0^SDWLD List missing." Q
 S SDWLD("WLTYPE")=$P($G(SDWLD),"^",1)
 I SDWLD("WLTYPE")=""  S RV(0)="0^INVPARAM WLTYPE IS NULL" Q
 I $G(SDWLD("WLTYPE"))'>0!($G(SDWLD("WLTYPE"))'<5) S RV(0)="0^INVPARAM WLTYPE" Q
 S SDWLD("PATIENT")=$P($G(SDWLD),"^",2)
 I SDWLD("PATIENT")=""  S RV(0)="0^INVPARAM PATIENT IS NULL" Q
 S DFN=$G(SDWLD("PATIENT")) I '$D(^DPT(DFN,0)) S RV(0)="0^INVPARAM PATIENT DOESN'T EXIST." K DFN Q  ;ICR#: 6053 DPT
 S SDWLD("INSTITUTION")=$P($G(SDWLD),"^",3)
 I SDWLD("INSTITUTION")=""  S RV(0)="0^INVPARAM INSTITUTION IS NULL" Q
 N SITE S X=$G(SDWLD("INSTITUTION")) S SITE=$$IEN^XUMF(4,,X) I +$G(SITE)'>0 S RV(0)="0^INVPARAM INVALID INSTITUTION NUMBER." Q  ;ICR#:3795 XUMF
 S SDWLD("WAITFOR")=$P($G(SDWLD),"^",4)
 I SDWLD("WAITFOR")=""  S RV(0)="0^INVPARAM WAITFOR IS NULL" Q
 ;S ERR=0 D WFCK Q:$G(ERR)>0
 S SDWLD("PRIORITY")=$P($G(SDWLD),"^",5)
 I SDWLD("PRIORITY")=""  S RV(0)="0^INVPARAM PRIORITY IS NULL" Q
 I SDWLD("PRIORITY")'="A",(SDWLD("PRIORITY")'="F") S RV(0)="0^INVPARAM INVALID PRIORITY" Q
 S SDWLD("REQBY")=$P($G(SDWLD),"^",6)
 D REQBY
 Q:$G(ERR)=1
 S SDWLD("PROVIDER")=$P($G(SDWLD),"^",7)
 I SDWLD("PROVIDER")'="" D
 .N IEN S ERR=0,IEN=$G(SDWLD("PROVIDER"))
 .N JX S JX=$$GET1^DIQ(200,$G(IEN),.01) I $G(JX)="" S ERR=1,RV(0)="0^INVPARAM PROVIDER IS NOT IN THE NEW PERSON FILE" Q  ;ICR#: 713 VA(200
 .;I '$D(^VA(200,IEN,0)) S ERR=1,RV(0)="0^INVPARAM PROVIDER IS NOT IN THE NEW PERSON FILE" Q  ;ICR#: 713 VA(200
 .I '$D(^XUSEC("PROVIDER",IEN)) S ERR=1,RV(0)="0^INVPARAM NOT A PROVIDER" Q  ;ICR#: 10076 XUSEC
 Q:$G(ERR)=1
 S SDWLD("SCPRCNT")=$P($G(SDWLD),"^",8)
 I SDWLD("SCPRCNT")'=""  D
 .S ERR=0 I SDWLD("SCPRCNT")'>0!(SDWLD("SCPRCNT")'<101) S ERR=1,RV(0)="0^INVPARAM SERVICE CONNECTED PERCENTAGE" Q
 Q:$G(ERR)=1
 S SDWLD("SCPRIORITY")=$P($G(SDWLD),"^",9)
 I SDWLD("SCPRIORITY")'=""  D
 .S ERR=0 I $G(SDWLD("SCPRIORITY"))'=0,($G(SDWLD("SCPRIORITY"))'=1) S ERR=1,RV(0)="0^INVPARAM INVALID PRIORITY" Q
 Q:$G(ERR)=1
 S SDWLD("DSRDDT")=$P($G(SDWLD),"^",10)
 I SDWLD("DSRDDT")=""  S RV(0)="0^INVPARAM DESIRED DATE OF APPOINTMENT IS NULL" Q
 S ERR=0,X=$G(SDWLD("DSRDDT")) D ^%DT I Y=-1 S ERR=0,RV(0)="0^INVPARAM NOT A VALID DATE" Q
 Q:$G(ERR)=1
 S SDWLD("CMNTS")=$P($G(SDWLD),"^",11)
 I SDWLD("CMNTS")'=""  D
 .I $L($G(SDWLD("CMNTS")))'>0!($L($G(SDWLD("CMNTS")))'<61) S ERR=1,RV(0)="0^INVPARAM COMMENTS ARE TOO LONG" Q
 Q:$G(ERR)=1
 S SDWLD("ENRSTAT")=$P($G(SDWLD),"^",12)
 I SDWLD("ENRSTAT")=""  S RV(0)="0^INVPARAM ENROLLEE STATUS IS NULL" Q
 S ERR=0 D ENRCHK Q:$G(ERR)=1
 S SDWLD("ENRDU")=$P($G(SDWLD),"^",13)
 I SDWLD("ENRDU")'=""  D
 .S ERR=0 S X=$G(SDWLD("ENRDU")) D ^%DT I $G(Y)=-1 S ERR=1,RV(0)="0^INVPARAM ENROLLEE DATE INVALID DATE" Q
 Q:$G(ERR)=1
 S SDWLD("ENRDF")=$P($G(SDWLD),"^",14)
 I SDWLD("ENRDF")'=""  D
 .S ERR=0 I $G(SDWLD("ENRDF"))'=0,($G(SDWLD("ENRDF"))'<5) S ERR=1,RV(0)="0^INVPARAM ENROLLEE DATABASE FILE" Q
 Q:ERR=1
 S SDWLD("TICKLER")=$P($G(SDWLD),"^",15)
 I SDWLD("TICKLER")'=""  D
 .S SDWLD("TICKLER")=$$UP^XLFSTR($G(SDWLD("TICKLER")))
 .S ERR=0 I $G(SDWLD("TICKLER"))'="Y" S ERR=1,RV(0)="0^INVPARAM TICKLER" Q
 Q:ERR=1
 S SDWLD("CHDCLINP")=$P($G(SDWLD),"^",16)
 I SDWLD("CHDCLINP")'=""  D
 .N APTR
 .S ERR=0,PTR=$G(SDWLD("CHDCLINP")) I '$D(^SDWL(409.3,PTR,0)) S ERR=1,RV(0)="0^INVPARAM CHANGED CLINIC PARENT POINTER IS NOT VALID" Q  ;ICR#: 6046 SDWL(409.3
 .;T13 Change to use FM
 .I $D(^SDWL(409.3,PTR,0)) S APTR=$$GET1^DIQ(409.3,PTR_",",".01","I") I APTR'=SDWLD("PATIENT") S ERR=1,RV(0)="0^INVPARAM CHANGED CLINIC PARENT POINTER IS FOR A DIFFERENT PATIENT" Q  ;ICR#: 6046 SDWL(409.3
 .;I $D(^SDWL(409.3,PTR,0)) S APTR=$P(^SDWL(409.3,PTR,0),"^",1) I APTR'=SDWLD("PATIENT") S ERR=1,RV(0)="0^INVPARAM CHANGED CLINIC PARENT POINTER IS FOR A DIFFERENT PATIENT" Q  ;ICR#: 6046 SDWL(409.3
 .K APTR
 Q:ERR=1
 I SDWLD("WLTYPE")=3!(SDWLD("WLTYPE")=4) D
 .K ERR S ERR=0
 .I SDWLD("REQBY")'=1,$G(SDWLD("REQBY"))'=2 S ERR=1
 I ERR=1 K ERR S RV(0)="0^INVPARAM REQBY" Q
 N STATUS,RESULT S STATUS=$$NEW^MBAAWLAP(.RESULT,.SDWLD)
 I 'STATUS S RV=-1
 I $G(STATUS) S RV(0)=1
 K ERR,X,IEN,DFN,PTR,CHK,TYPE,REQBY
 Q
 ;WFCK ; Check to make sure the pointer is valid for the Waitfor parameter
 ;N PTR S PTR=$G(SDWLD("WAITFOR")),ERR=0
 ;I SDWLD("WLTYPE")=1 D
 ;.;I '$D(^SCTM(404.51,PTR,0)) S ERR=1,RV(0)="0^INVPARAM INVALID TEAM" Q  ;ICR#: 1945 DBIA 1945
 ;.N JX S JX=$$GET1^DIQ(404.51,$G(PTR),.01) I $G(JX)="" S ERR=1,RV(0)="0^INVPARAM INVALID TEAM" Q  ;ICR#: 1945 DBIA 1945
 ;Q:$G(ERR)>0
 ;I SDWLD("WLTYPE")=2 D
 ;.;I '$D(^SCTM(404.57,PTR,0)) S ERR=1,RV(0)="0^INVPARAM INVALID POSITION" Q  ;ICR#: 6064 MBAA ACCESS TO SCTM(404.57
 ;.N JX S JX=$$GET1^DIQ(404.57,$G(PTR),.01) I $G(JX)="" S ERR=1,RV(0)="0^INVPARAM INVALID POSITION" Q  ;ICR#: 6064 MBAA ACCESS TO SCTM(404.57
 ;Q:$G(ERR)>0
 ;I SDWLD("WLTYPE")=3 D
 ;.;I '$D(^SDWL(409.31,PTR,0)) S ERR=1,RV(0)="0^INVPARAM INVALID SPECIALTY" Q  ;ICR#: 6046 SDWL(409.3
 ;.N JX S JX=$$GET1^DIQ(409.31,$G(PTR),.01) I $G(JX)="" S ERR=1,RV(0)="0^INVPARAM INVALID SPECIALTY" Q  ;ICR#: 6046 SDWL(409.3
 ;Q:$G(ERR)>0
 ;I SDWLD("WLTYPE")=4 D
 ;.;I '$D(^SDWL(409.32,PTR,0)) S ERR=1,RV(0)="0^INVPARAM INVALID WAIT LIST CLINIC" Q  ;ICR#: 6046 SDWL(409.3
 ;.N JX S JX=$$GET1^DIQ(409.32,$G(PTR),.01) I $G(JX)="" S ERR=1,RV(0)="0^INVPARAM INVALID WAIT LIST CLINIC" Q  ;ICR#: 6046 SDWL(409.3
 ;Q:$G(ERR)>0
 ;I SDWLD("WLTYPE")>5 S RV(0)="0^INVPARAM WAIT LIST TYPE" Q
 ;Q
ENRCHK ; Check enrollee status codes - must be either N, E, P or U
 S CHK=$G(SDWLD("ENRSTAT"))
 I CHK'="N",(CHK'="E"),(CHK'="P"),(CHK'="U") S ERR=1,RV(0)="0^INVPARAM INVALID ENROLLEE STATUS" Q
 Q
REQBY ; Checksto be sure a correct value for the REQBY parameter is correct based on the Wait List Type
 S ERR=0,TYPE=$G(SDWLD("WLTYPE")),REQBY=$G(SDWLD("REQBY"))
 I $G(REQBY)'=1,($G(REQBY)'=2),($G(REQBY)'="") S ERR=1,RV(0)="0^INVPARAM INVALID REQBY" Q
 I $G(REQBY)'=""  D
 .I TYPE=3,(TYPE=4) D
 ..I REQBY'=1,(REQBY'=2) S ERR=1,RV(0)="0^INVPARAM INVALID REQBY" Q
 .I TYPE=1,(TYPE=2) D
 ..I REQBY=1,(REQBY'=2) S ERR=1,RV(0)="0^INVPARAM INVALID REQBY" Q
 I $G(REQBY)="" D
 .I TYPE'=1,(TYPE'=2) S ERR=1,RV(0)="0^INVPARAM INVALID REQBY" Q
 Q
