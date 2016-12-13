SDECRMG ;ALB/SAT - VISTA SCHEDULING RPCS ;JAN 15, 2016
 ;;5.3;Scheduling;**627**;Aug 13, 1993;Build 249
 ;
 Q
 ;
 ; Get data for GUI Request Management Grid display from:
 ;  SD WAIT LIST
 ;  RECALL REMINDERS
 ;  REQUEST/CONSULTATION
 ;  SDEC APPT REQUEST
RMG(DATA,MAXREC,LASTSUB,FILTERIN,SORTIN,MGIENS,SDMAX) ;GET Request management Grid data
 ;INPUT:
 ;  MAXREC   - (optional) Max records returned
 ;  LASTSUB  - (optional) last subscripts from previous call
 ;  FILTERIN - (optional) list of filters separated by pipe |
 ;                        each | piece will contain the following ^ pieces
 ;                        <filterName> ^ <value>
 ;  SORTIN   - (optional) list of sort criteria separated by pipe |
 ;  MGIENS   - (optional) list of IENs separated by pipe | to be sorted to the top of the return
 ;                        each IEN needs to be prefaced by the request type initial:
 ;                          A = APPT     A123
 ;                          E = EWL      E123
 ;                          C = Consult  C123  ;not implemented
 ;                          R = Recall   R123  ;not implemented
 ;  SDMAX    - (optional) Max records allowed to be accumulated
 ;
 ;RETURN:
 ; Temp global containing the TYPE, IEN, KEY
 N FILTER,MORE,SORT
 S SDMAX=$G(SDMAX,200)
 K ^TMP("SDECRMG",$J)
 ;validate MAXREC
 S MAXREC=$G(MAXREC)
 S:'MAXREC MAXREC=9999999   ;MAXREC=25
 I $G(LASTSUB)'="" D GETMORE(.DATA,LASTSUB,MAXREC) Q
 E  D
 .K ^TMP("SDECIDX",$J)
 .S FILTERIN=$G(FILTERIN)
 .S SORTIN=$G(SORTIN)
 .S MGIENS=$G(MGIENS)
 .D:FILTERIN'="" VALFIL(FILTERIN,.FILTER)
 .D:SORTIN'="" VALSORT(SORTIN,.SORT)
 .D:MGIENS'="" IEN(.MGIENS)
 .D QUERY(MAXREC,.FILTER,.SORT,SDMAX,.MORE,.MGIENS)
 .S LASTSUB=""
 .D GETMORE(.DATA,LASTSUB,MAXREC,MORE)
 Q
QUERY(MAXREC,FILTER,SORT,SDMAX,MORE,MGIENS)  ;
 N I,SDECI,SDHDR,SDI,SDIDX,SDIC,SDRET,DFN,SDAPTYP,SDBEG,SVCCONN,SVCCONNP,PRIGRP,DESDT,ORIGDT,ORIGDTR
 N %DT,X,Y,FIL,DATA,PRI,PTLST,PTS,TMP,TMP1,CLINIC,CNT,ORIG,DESDTR,ID,SDSVC,SDSVCN,SVCCON,SVCCONP,URG
 S (CNT,MORE,SDECI,SDIC)=0
 S (CLINIC,SDALL,SDAPTYP,SDBEG,SDEND,SDSVC,SORT,PTLST,SVCCONNP,SVCCON,SVCCONN,PRIGRP,PTS,DESDT,DESDTR,ORIGDT,ORIGDTR,URG)=""
 ;Loop through the filters and set up the variables)
 I '$D(FILTER) D
 .S FILTER(1)="WAITTIME^>90"
 .S FILTER(2)="REQUESTTYPE^E~A~R~C"
 I $D(SORT)'>1 D
 .S SORT(1)="PRIORITYGROUP"
 .S SORT(2)="DESIREDDATE"
 .S SORT(3)="ORIGINATIONDATE"
 .S SORT("D")=1
 ;
 S FIL=0  F  S FIL=$O(FILTER(FIL)) Q:FIL'>0  D
 .S DATA=$G(FILTER(FIL))
 .I $P(DATA,U,1)="ALL" D
 ..S TMP=$P(DATA,U,2)
 ..F I=1:1:$L(TMP,"~") D
 ...S ID=$P(TMP,"~",I)
 ...I "ACER"[ID S SDALL(ID)="" S SDALL=1
 .I $P(DATA,U,1)="CLINICS" D
 ..S TMP=$P(DATA,U,2)
 ..F I=1:1:$L(TMP,"~") D
 ...S ID=$$VALCL($P(TMP,"~",I))
 ...I ID>0 S CLINIC(ID)=""
 ..I $D(CLINIC)>0 S CLINIC=1
 .I $P(DATA,U,1)="DESIREDDATE" D
 ..S TMP=$P(DATA,U,2)
 ..F I=1:1:$L(TMP,"~") D
 ...S ID=$$DESDT($P(TMP,"~",I))
 ...I ID>0 S DESDT(ID)=""
 ..I $D(DESDT)>0 D
 ...S DESDT=1
 ...D SFILTER(.FILTER,"WAITTIME","ALL DAYS")
 ...S SDBEG=1000101
 ...S SDEND=9991231
 .I $P(DATA,U,1)="DESIREDDATERANGE" D
 ..S TMP=$P(DATA,U,2)
 ..S DESDTR=$$DESDTR(TMP)
 ..D SFILTER(.FILTER,"WAITTIME","ALL DAYS")
 ..S SDBEG=1000101
 ..S SDEND=9991231
 .I $P(DATA,U,1)="PATIENTNAME" D
 ..S TMP=$P(DATA,U,2)
 ..F I=1:1:$L(TMP,"~") S:$P(TMP,"~",I)'="" PTS($P(TMP,"~",I))=""
 ..D VALPT(.PTS)
 ..I $D(PTS)>0 S PTS=1
 .I $P(DATA,U,1)="ORIGINATIONDATE" D
 ..S TMP=$P(DATA,U,2)
 ..F I=1:1:$L(TMP,"~") D
 ...S ID=$$ORIG($P(TMP,"~",I))
 ...I ID>0 S ORIGDT(ID)=""
 ...S SDBEG=$S(SDBEG="":ID,SDBEG>ID:ID,1:SDBEG)
 ...S SDEND=$S(SDEND="":ID,ID>SDEND:ID,1:SDEND)
 ..I $D(ORIGDT)>0 D
 ...S ORIGDT=1
 ...D SFILTER(.FILTER,"WAITTIME","ALL DAYS")
 .I $P(DATA,U,1)="ORIGDATERANGE" D
 ..S TMP=$P(DATA,U,2)
 ..S ORIGDTR=$$DESDTR(TMP)
 ..D SFILTER(.FILTER,"WAITTIME","ALL DAYS")
 ..S SDBEG=1000101
 ..S SDEND=9991231
 .I $P(DATA,U,1)="PRIORITYGROUPS" D
 ..S TMP=$P(DATA,U,2)
 ..F I=1:1:$L(TMP,"~") S TMP1=$P(TMP,"~",I) S:TMP1="NULL" TMP1="GROUP 0" S PRI(TMP1)=""
 ..D VALPRI(.PRI)
 ..I $D(PRI)>0 S PRIGRP=1
 .I $P(DATA,U,1)="REQUESTTYPE" D
 ..I $P(DATA,U,2)="" S SDAPTYP="E~A~R~C"
 ..E  S SDAPTYP=$P(DATA,U,2)
 ..D VALSD
 .I $P(DATA,U,1)="SCVISIT" D   ;SCVISIT is compared to the patient's SERVICE CONNECTED
 ..S TMP=$P(DATA,U,2)
 ..S SVCCONN=$S($$UP^XLFSTR(TMP)="FALSE":"NO",$$UP^XLFSTR(TMP)="TRUE":"YES",$$UP^XLFSTR(TMP)="BOTH":"",1:TMP)
 .I $P(DATA,U,1)="SERVICERELATED" D   ;SERVICERELATED is compared to field 15 in SD WAIT LIST and SDEC APPT REQUEST
 ..S TMP=$P(DATA,U,2)
 ..S SVCCON=$S($$UP^XLFSTR(TMP)="NO":"NO",$$UP^XLFSTR(TMP)="FALSE":"NO",$$UP^XLFSTR(TMP)="YES":"YES",$$UP^XLFSTR(TMP)="TRUE":"YES",$$UP^XLFSTR(TMP)="BOTH":"",1:"")
 .I $P(DATA,U,1)="SERVICES" D  ;SERVICES are clinic stop pointers to the CLINIC STOP file
 ..S TMP=$P(DATA,U,2)
 ..F I=1:1:$L(TMP,"~") S SDSVCN=$$GET1^DIQ(40.7,+$P(TMP,"~",I)_",",.01) S:SDSVCN'="" SDSVC(SDSVCN)="",SDSVC=1
 .I $P(DATA,U,1)="WAITTIME",SDBEG="",SDEND="" D
 ..S TMP=$P(DATA,U,2)
 ..S SDBEG=$S(TMP["ALL DAYS":"",TMP="<30":"29",TMP="30-60":"60",TMP="60-90":"90",TMP=">=90":"",1:"")
 ..S SDEND=$S(TMP["ALL DAYS":"",TMP="<30":"DT",TMP="30-60":"30",TMP="60-90":"60",TMP=">=90":"90",1:"90")
 ..D VALID
 .I $P(DATA,U,1)="URGENCY" D
 ..S TMP=$P(DATA,U,2)
 ..F I=1:1:$L(TMP,"~") I $D(^ORD(101,+$P(TMP,"~",I),0)) S URG($P(TMP,"~",I))="",URG=1
 ..S:$D(URG)>1 SDAPTYP="C"
 I SDAPTYP="" S SDAPTYP="A~E~R~C"
 ;
 ;Now let's find our patients
 I $D(PTS)>1 D PATIENT(.PTS,SDAPTYP,SDBEG,SDEND,.CLINIC,.PRI,SVCCONN,SVCCON,.ORIGDT,.DESDT,PRIGRP,.SORT,SDMAX,.URG,.SDSVC,.MORE,.ORIGDTR,DESDTR,.MGIENS,.SDALL)
 E  D REQUEST(SDAPTYP,SDBEG,SDEND,.CLINIC,.PRI,SVCCONN,SVCCON,.ORIGDT,.DESDT,PRIGRP,.SORT,.PTS,SDMAX,.URG,.SDSVC,.MORE,.ORIGDTR,DESDTR,.MGIENS,.SDALL)
 S ^TMP("SDECIDX",$J,"MORE")=+MORE
 Q
VALID ;validate begin date
 S SDBEG=$G(SDBEG)
 I SDBEG'="" S %DT="" S SDBEG=$$FMADD^XLFDT($P($$NOW^XLFDT,".",1),-SDBEG)
 I SDBEG="" S SDBEG=1000101   ;$$FMADD^XLFDT($P($$NOW^XLFDT,".",1),-1825)
 ;validate end date
 S SDEND=$G(SDEND)
 I SDEND'="" S SDEND=$$FMADD^XLFDT($P($$NOW^XLFDT,".",1),-SDEND)
 I SDEND="" S SDEND=9991231   ;$$FMADD^XLFDT($P($$NOW^XLFDT,".",-90))
 Q
VALPT(PTS) ;Validate patients
 ;validate DFN
 N LP
 S LP="" F  S LP=$O(PTS(LP)) Q:LP=""  D
 .I '$D(^DPT(LP,0)) K PTS(LP)
 Q
VALSD(SDAPTYP) ;validate SDAPTYP
 S SDAPTYP=$G(SDAPTYP)
 S:SDAPTYP="" SDAPTYP="ACER"
 I "ACER"'[SDAPTYP S @SDECY@(1)="-1^Invalid Request Type." Q
 Q
VALPRI(PRI) ;validate PRIGRP
 N LP,TMP
 S LP="" F  S LP=$O(PRI(LP)) Q:LP=""  D
 .S TMP=LP
 .I TMP="" S TMP="GROUP 0"
 .I TMP'="GROUP 0",TMP'="GROUP 1",TMP'="GROUP 2",TMP'="GROUP 3",TMP'="GROUP 4",TMP'="GROUP 5",TMP'="GROUP 6",TMP'="GROUP 7",TMP'="GROUP 8" K PRI(LP)
 Q
DESDTR(DATA) ;validate desired date range and origination date range
 N %DT,SDBEG,SDEND,X,Y
 S SDBEG=$P(DATA,"~",1)
 I SDBEG'="" S %DT="" S X=$P(SDBEG,"@",1) D ^%DT S SDBEG=Y
 I (SDBEG="")!(SDBEG=-1) S SDBEG=1000101
 S SDEND=$P(DATA,"~",2)
 I SDEND'="" S %DT="" S X=$P(SDEND,"@",1) D ^%DT S SDEND=Y
 I (SDEND="")!(SDEND=-1) S SDEND=9991231
 Q SDBEG_"~"_SDEND
DESDT(DESDT) ;validate DESDT
  N %DT,X,Y
  I DESDT'="" S %DT="" S X=$P(DESDT,"@",1) D ^%DT S DESDT=Y
  Q DESDT
ORIG(ORIG) ;validate ORIGDT
  N %DT,X,Y
  I ORIG'="" S %DT="" S X=$P(ORIG,"@",1) D ^%DT S ORIG=Y
  Q ORIG
VALCL(CLINIC) ;validate Clinic
  N IEN
  ;is CLINIC an IEN
  I +CLINIC,$D(^SC(CLINIC,0)) Q CLINIC
  ;CLINIC is a name
  S IEN=""
  S IEN=$O(^SC("B",CLINIC,IEN))
  I IEN="" S IEN=0
  Q IEN
VALFIL(FILTERIN,FILTER)  ;validate filters and build FILTER array
 N SDC,SDI
 K FILTER
 S FILTERIN=$G(FILTERIN)
 Q:FILTERIN=""
 S SDC=0
 F SDI=1:1:$L(FILTERIN,"|") D
 .S SDC=SDC+1 S FILTER(SDC)=$P(FILTERIN,"|",SDI),FILTER("B",$P($P(FILTERIN,"|",SDI),"^",1),SDC)=$P(FILTERIN,"|",SDI)
 Q
VALSORT(SORTIN,SORT)  ;validate filters and build FILTER array
 N SDC,SDI
 K SORT
 S SORTIN=$G(SORTIN,"|")
 Q:SORTIN=""
 S SDC=0
 F SDI=1:1:$L(SORTIN,"|") D
 .S SDC=SDC+1 S (SORT("B",$P(SORTIN,"|",SDI),SDC),SORT(SDC))=$P(SORTIN,"|",SDI)
 Q
IEN(MGIENS)  ;build IEN array
 N SDI
 S MGIENS=$G(MGIENS)
 Q:MGIENS=""
 F SDI=1:1:$L(MGIENS,"|") D
 .S MGIENS($P(MGIENS,"|",SDI))=""
 Q
REQUEST(SDAPTYP,SDBEG,SDEND,CLINIC,PRI,SVCCONN,SVCCON,ORIGDT,DESDT,PRIGRP,SORT,PTS,SDMAX,URG,SDSVC,MORE,ORIGDTR,DESDTR,MGIENS,SDALL) ;Filter first on request type
 N SDCNT,SDLAST,SDMAX1
 S SDCNT=0
 D:MGIENS'="" MGIENS^SDECRMG2(.MGIENS,MAXREC,"",SDBEG,SDEND,.CLINIC,.PRI,SVCCONN,SVCCON,.ORIGDT,.DESDT,DESDTR,PRIGRP,.SORT,.PTS,SDMAX,.URG,.SDSVC,.SDLAST,.ORIGDTR,.SDCNT)
 S MORE=1
 I SDAPTYP["E" D WAIT^SDECRMG1(.RET,MAXREC,"",SDBEG,SDEND,.CLINIC,.PRI,SVCCONN,SVCCON,.ORIGDT,.DESDT,DESDTR,PRIGRP,.SORT,.PTS,SDMAX,.URG,.SDSVC,.SDLAST,.ORIGDTR,.SDCNT,.MGIENS,.SDALL)
 Q:SDCNT'<SDMAX
 I SDAPTYP["A" D APPT^SDECRMG1(.RET,MAXREC,"",SDBEG,SDEND,.CLINIC,.PRI,SVCCONN,SVCCON,.ORIGDT,.DESDT,DESDTR,PRIGRP,.SORT,.PTS,SDMAX,.URG,.SDSVC,.SDLAST,.ORIGDTR,.SDCNT,.MGIENS,.SDALL)
 Q:SDCNT'<SDMAX
 I SDAPTYP["C" D CONSULT^SDECRMG2(.RET,MAXREC,"",SDBEG,SDEND,.CLINIC,.PRI,SVCCONN,SVCCON,.ORIGDT,.DESDT,DESDTR,PRIGRP,.SORT,.PTS,SDMAX,.URG,.SDSVC,.SDLAST,.ORIGDTR,.SDCNT,,.SDALL)
 Q:SDCNT'<SDMAX
 I SDAPTYP["R" D RECALL^SDECRMG1(.RET,MAXREC,"",SDBEG,SDEND,.CLINIC,.PRI,SVCCONN,SVCCON,.ORIGDT,.DESDT,DESDTR,PRIGRP,.SORT,.PTS,SDMAX,.URG,.SDSVC,.SDLAST,.ORIGDTR,.SDCNT,,.SDALL)
 Q:SDCNT'<SDMAX
 S MORE=0
 Q
PATIENT(PTS,SDAPTYP,SDBEG,SDEND,CLINIC,PRI,SVCCONN,SVCCON,ORIGDT,DESDT,PRIGRP,SORT,SDMAX,URG,SDSVC,MORE,ORIGDTR,DESDTR,MGIENS,SDALL) ;Filter first on patient
 N LOOP,DFN,SDCNT,SDLAST,SDMAX1
 S SDCNT=0
 D:MGIENS'="" MGIENS^SDECRMG2(.MGIENS,MAXREC,"",SDBEG,SDEND,.CLINIC,.PRI,SVCCONN,SVCCON,.ORIGDT,.DESDT,DESDTR,PRIGRP,.SORT,.PTS,SDMAX,.URG,.SDSVC,.SDLAST,.ORIGDTR,.SDCNT)
 S LOOP="" F  S LOOP=$O(PTS(LOOP)) Q:LOOP=""  D
 .S DFN=LOOP
 .S MORE=1
 .I (SDAPTYP["A")!(SDAPTYP["V") D APPT^SDECRMG1(.RET,MAXREC,DFN,SDBEG,SDEND,.CLINIC,.PRI,SVCCONN,SVCCON,.ORIGDT,.DESDT,DESDTR,PRIGRP,.SORT,.PTS,SDMAX,.URG,.SDSVC,.SDLAST,.ORIGDTR,.SDCNT,.MGIENS,.SDALL)
 .Q:SDCNT'<SDMAX
 .I SDAPTYP["C" D CONSULT^SDECRMG2(.RET,MAXREC,DFN,SDBEG,SDEND,.CLINIC,.PRI,SVCCONN,SVCCON,.ORIGDT,.DESDT,DESDTR,PRIGRP,.SORT,.PTS,SDMAX,.URG,.SDSVC,.SDLAST,.ORIGDTR,.SDCNT,,.SDALL)
 .Q:SDCNT'<SDMAX
 .I SDAPTYP["R" D RECALL^SDECRMG1(.RET,MAXREC,DFN,SDBEG,SDEND,.CLINIC,.PRI,SVCCONN,SVCCON,.ORIGDT,.DESDT,DESDTR,PRIGRP,.SORT,.PTS,SDMAX,.URG,.SDSVC,.SDLAST,.ORIGDTR,.SDCNT,,.SDALL)
 .Q:SDCNT'<SDMAX
 .I SDAPTYP["E" D WAIT^SDECRMG1(.RET,MAXREC,DFN,SDBEG,SDEND,.CLINIC,.PRI,SVCCONN,SVCCON,.ORIGDT,.DESDT,DESDTR,PRIGRP,.SORT,.PTS,SDMAX,.URG,.SDSVC,.SDLAST,.ORIGDTR,.SDCNT,.MGIENS,.SDALL)
 .Q:SDCNT'<SDMAX
 .S MORE=0
 Q
GETMORE(DATA,LASTSUB,MAX,MORE)  ;
 N LP,CNT,NODE
 S CNT=0,MAX=$G(MAX),MORE=$G(MORE)
 I MAX="" S MAX=25
 S DATA=$$TMPGBL
 S @DATA@(0)="T00030TYPE^T00030IEN^T00030KEY^T00030TOTAL^T00030MORE"_$C(30)
 S LP=LASTSUB F  S LP=$O(^TMP("SDECIDX",$J,"XREF",LP)) Q:LP=""  D  Q:(CNT=MAX)
 .S NODE=$G(^TMP("SDECIDX",$J,"XREF",LP))
 .S $P(NODE,U,4)=$G(^TMP("SDECIDX",$J,"COUNT"))
 .S $P(NODE,U,5)=+$G(^TMP("SDECIDX",$J,"MORE"))
 .S CNT=CNT+1
 .S @DATA@(CNT)=NODE_$C(30)
 S @DATA@(CNT)=$P(@DATA@(CNT),$C(30))_$C(30,31)
 Q
 ;
TMPGBL() ;EP-
 K ^TMP("SDECRMG",$J) Q $NA(^($J))
 ;
CALIGN(DATA,SDHDR) ;
 N RET,SDI,SDPOS
 S RET=""
 F SDI=1:1:$L(DATA,U) D
 .S SDPOS=SDHDR("C",SDI)
 .S $P(RET,U,SDPOS)=$P(DATA,U,SDI)
 S $P(RET,U,SDHDR("C","RMGTYPE"))="C"
 Q RET
 ;
GETNEXT(LASTSUB,MAXREC,SDECY) ;return next set of records
 N SD1,SD2,SD3,SD4,SD5,SDECI,SDIDX,SDSUB,SDTMP
 S MAXREC=$G(MAXREC,25)
 S SDIDX=$P(LASTSUB,"|",1)
 S SDSUB=""
 S SDECI=0
 S @SDECY@(SDECI)=@SDIDX@("HDR")
 S SD1=$S($P(LASTSUB,"|",2)'="":$P(LASTSUB,"|",2),1:"") S $P(LASTSUB,"|",2)=""
 F  S SD1=$O(@SDIDX@("DATA",SD1)) Q:SD1=""  D  I SDECI'<MAXREC S $P(SDSUB,"|",2)=SD1 Q
 .S SD2=$S($P(LASTSUB,"|",3)'="":$P(LASTSUB,"|",3),1:"") S $P(LASTSUB,"|",3)=""
 .F  S SD2=$O(@SDIDX@("DATA",SD1,SD2)) Q:SD2=""  D  I SDECI'<MAXREC S $P(SDSUB,"|",3)=SD2 Q
 ..S SD3=$S($P(LASTSUB,"|",4)'="":$P(LASTSUB,"|",4),1:"") S $P(LASTSUB,"|",4)=""
 ..F  S SD3=$O(@SDIDX@("DATA",SD1,SD2,SD3)) Q:SD3=""  D  I SDECI'<MAXREC S $P(SDSUB,"|",4)=SD3 Q
 ...S SD4=$S($P(LASTSUB,"|",5)'="":$P(LASTSUB,"|",5),1:"") S $P(LASTSUB,"|",5)=""
 ...F  S SD4=$O(@SDIDX@("DATA",SD1,SD2,SD3,SD4)) Q:SD4=""  D  I SDECI'<MAXREC S $P(SDSUB,"|",5)=SD4 Q
 ....S SD5=$S($P(LASTSUB,"|",6)'="":$P(LASTSUB,"|",6),1:"") S $P(LASTSUB,"|",6)=""
 ....F  S SD5=$O(@SDIDX@("DATA",SD1,SD2,SD3,SD4,SD5)) Q:SD5=""  D  I SDECI'<MAXREC S $P(SDSUB,"|",6)=SD5 Q
 .....S SDECI=SDECI+1 S @SDECY@(SDECI)=@SDIDX@("DATA",SD1,SD2,SD3,SD4,SD5)_$C(30)
 I SDSUB="" K @SDIDX
 I SDSUB'="" D
 .S $P(SDSUB,"|",1)=SDIDX
 .S SDTMP=@SDECY@(SDECI)
 .S SDTMP=$P(SDTMP,$C(30),1)
 .S $P(SDTMP,U,@SDIDX@("LASTSUB"))=SDSUB
 .S @SDECY@(SDECI)=SDTMP_$C(30)
 S @SDECY@(SDECI)=@SDECY@(SDECI)_$C(31)
 Q
 ;
SFILTER(FILTERS,FILTER1,FILVAL)  ;set/change existing filter value
 N FILD
 S FILD="" F  S FILD=$O(^FILTERS("B",FILTER1,FILD)) Q:FILD=""  D
 .S $P(FILTERS(FILD),"^",2)=FILVAL
 Q