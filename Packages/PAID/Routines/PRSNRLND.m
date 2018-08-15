PRSNRLND ;WOIFO/KJS - LOCATION Non Direct Care Summary by Skill Mix II REPORT ;12-9-2011
 ;;4.0;PAID;**126,142**;Sep 21, 1995;Build 5
 ;;Per VHA Directive 6402, this routine should not be modified
 ;
 Q
 ;
COORD ;Entry point for VANOD Coordinator
 ; Coordinator has no access limits so let them pick any group
 N GROUP
 D PIKGROUP^PRSNUT04(.GROUP,"N",1)
 I $P($G(GROUP(0)),U,2)="E" D  Q
 .W !,$P(GROUP(0),U,3)
 D MAIN
 ;
 Q
 ;
MAIN ;
 N RANGE,BEG,END,EXTBEG,EXTEND,STOP,TYPE,BEG,END
 S STOP=0
 D DATE
 Q:STOP
 D QUE
 Q
 ;
REPORT ;for group of location or t&l
 ;
 N PRSIEN,PRSNG,PICK,PG,LOCIEN,PRSNVER,PRSNTS,PRSNDAY,PPIEN,ENDPP,ENDDAY,BEGPP,BEGDAY,TODAY,PG,TIMEREC
 N PRSNAME,PRSNSSN,PRSNTL,SKILMIX,PRSL,PRSNDAYS,PRSNDATE
 N PRSNST,PRSNSP,PRSNTT,PRSNWIEN,HOURS,PRSNTIEN
 N PRSNTW,PRSNTWD,PRSNM,PRSNRE,PRSNREC,PRSNRIEN,MEAL
 N PRSNLNG,IEN200,PRIMLOC,PRSNARY,LOCNAM,NUROLE
 U IO
 S PG=0,TODAY=$E(DT,4,5)_"/"_$E(DT,6,7)_"/"_$E(DT,2,3)
 S BEGPP=$G(^PRST(458,"AD",BEG)),BEGDAY=$P(BEGPP,U,2),BEGPP=+BEGPP
 S ENDPP=$G(^PRST(458,"AD",END)),ENDDAY=$P(ENDPP,U,2),ENDPP=+ENDPP
 D HDR
 S (PICK,STOP)=0
 F  S PICK=$O(GROUP(PICK)) Q:PICK=""!STOP  D
 . S PRSNG=GROUP(0)_"^"_PICK_"^"_GROUP(PICK)
 . S LOCIEN=+GROUP(PICK)
 . S LOCNAM=$P($$ISACTIVE^PRSNUT01(DT,LOCIEN),U,2)
 . S PRSIEN=0
 . F  S PRSIEN=$O(^PRSN(451,"ALN",LOCIEN,PRSIEN)) Q:'PRSIEN!STOP  D
 .. D INFO
 .. S PPIEN=BEGPP-1
 .. F  S PPIEN=$O(^PRSN(451,"ALN",LOCIEN,PRSIEN,PPIEN)) Q:'PPIEN!STOP!(PPIEN>ENDPP)  D
 ... S PRSNDAYS=$G(^PRST(458,PPIEN,1))
 ... S PRSNDAY=$S(PPIEN=BEGPP:BEGDAY-1,1:0)
 ... F  S PRSNDAY=$O(^PRSN(451,"ALN",LOCIEN,PRSIEN,PPIEN,PRSNDAY)) Q:'PRSNDAY!STOP!(PPIEN=ENDPP&(PRSNDAY>ENDDAY))  D
 .... S PRSNDATE=$P(PRSNDAYS,U,PRSNDAY),PRSNDATE=$E(PRSNDATE,4,5)_"/"_$E(PRSNDATE,6,7)_"/"_$E(PRSNDATE,2,3)
 .... S PRSNVER=$O(^PRSN(451,"ALN",LOCIEN,PRSIEN,PPIEN,PRSNDAY,""),-1)
 .... S PRSNTS=0,PRSD=1
 .... F  S PRSNTS=$O(^PRSN(451,"ALN",LOCIEN,PRSIEN,PPIEN,PRSNDAY,PRSNVER,PRSNTS)) Q:'PRSNTS!STOP  D
 ..... S TIMEREC=$G(^PRSN(451,PPIEN,"E",PRSIEN,"D",PRSNDAY,"V",PRSNVER,"T",PRSNTS,0))
 ..... D DATA
 D PRTLP
 W !!,"End of Report"
 D ^%ZISC
 Q
 ;
DATE ; User is prompted for a date range 
 ;
 S RANGE=$$POCRANGE^PRSNUT01()
 ; QUIT HERE IF RANGE=0 
 I +$G(RANGE)'>0 S STOP=1 Q
 ;
 S BEG=$P(RANGE,U)
 S END=$P(RANGE,U,2)
 S EXTBEG=$P(RANGE,U,3)
 S EXTEND=$P(RANGE,U,4)
 ;
 Q
 ;
QUE ;call to generate and display report for individual activity
 N %ZIS,POP,IOP
 S %ZIS="MQ"
 D ^%ZIS
 Q:POP
 I $D(IO("Q")) D
 . K IO("Q")
 . N ZTSK,ZTDESC,ZTDTH,ZTIO,ZTRTN,ZTSAVE,ZTUCI,ZTCPU,ZTPRI,ZTKIL,ZTSYNC
 . S ZTDESC="LOCATION NON DIRECT CARE SUMMARY BY SKILLMIX"
 . S ZTRTN="REPORT^PRSNRLND"
 . S ZTSAVE("GROUP")=""
 . S ZTSAVE("GROUP(")=""
 . S ZTSAVE("TYPE")=""
 . S ZTSAVE("BEG")=""
 . S ZTSAVE("END")=""
 . S ZTSAVE("EXTBEG")=""
 . S ZTSAVE("EXTEND")=""
 . D ^%ZTLOAD
 . I $D(ZTSK) S ZTREQ="@" W !,"Request "_ZTSK_" Queued."
 E  D
 . D REPORT
 Q
 ;
INFO ;Find nurse information to display in report
 ;
 S PRSL=1
 S PRSNARY=$G(^PRSPC(PRSIEN,0))
 S PRSNAME=$P(PRSNARY,U)              ;Nurse Name
 S PRSNSSN=$P(PRSNARY,U,9)           ;Nurse SSN
 S PRSNTL=$P(PRSNARY,U,8)             ;Nurse T&L
 S NUROLE=$P($$ISNURSE^PRSNUT01(PRSIEN),U,2) ;  Nurse skillmix
 S IEN200=$G(^PRSPC(PRSIEN,200))
 S PRIMLOC=$S(IEN200="":"",1:$$PRIMLOC^PRSNUT03(IEN200))
 Q
 ;
DATA ;Extract display data from POCD array
 ;
 ;Start Time
 S PRSNST=$P(TIMEREC,U)
 ;
 ;Stop Time 
 S PRSNSP=$P(TIMEREC,U,2)
 ;
 ;Meal Time
 S MEAL=$P(TIMEREC,U,3)
 ;
 ;Get hours worked in a given location
 S HOURS=$$AMT^PRSPSAPU(PRSNST,PRSNSP,MEAL)
 ;
 ;Type of Time code IEN
 S PRSNTT=$P(TIMEREC,U,4),PRSNLNG=" "
 I PRSNTT'="" D
 . ;
 . ;Type of Time code
 . S PRSNTIEN=$O(^PRST(457.3,"B",PRSNTT,0))
 . Q:PRSNTIEN=""
 . ;
 . ;Description for Type of Time code
 . S PRSNLNG=$P(^PRST(457.3,PRSNTIEN,0),U,2)
 . ;
 . ;Type of Work Code IEN
 S PRSNWIEN=$P(TIMEREC,U,6),PRSNTW=" ",PRSNTWD=" "
 I PRSNWIEN'="" D
 . ;
 . ;Type of Work Code
 . S PRSNTW=$P(^PRSN(451.5,PRSNWIEN,0),U)
 . ;
 . ;Description for Type of Work code
 . S PRSNTWD=$P(^PRSN(451.5,PRSNWIEN,0),U,2)
 ;
 ;OT Mandatory/Voluntary
 S PRSNM=$P(TIMEREC,U,7)
 ;
 ;save skill mix, hours and type of work into SKILMIX array
 ;
 ; Patch PRS*4.0*142 gives variables PRSNTWD and NUROLE the value of a space in the event that they are set to null.
 I $G(PRSNTW)'="DC" D
 . S:PRSNTWD="" PRSNTWD=" " S:NUROLE="" NUROLE=" "
 . S SKILMIX(LOCNAM,PRSNTWD,NUROLE)=$G(SKILMIX(LOCNAM,PRSNTWD,NUROLE))+HOURS
 Q
 ;
HDR ;
 ;
 W @IOF
 S PG=PG+1
 W ?17,"LOCATION NON DIRECT SUMMARY BY SKILL MIX REPORT"
 W !,?15,EXTBEG_" - "_EXTEND,?45,"Run Date: ",TODAY,?70,"Page: ",$J(PG,3)
 W !         ;blank line
 W !,"Location",?22,"Non Direct",?53,"# of",?60,"# of",?67,"# of",?74,"Total"
 W !,?22,"Care",?53,"Hours",?60,"Hours",?67,"Hours",?74,"Hours"
 W !,?22,"Category",?53,"RN",?60,"LPN",?67,"UAP"
 W !,"--------------------------------------------------------------------------------"
 ;
 Q
 ;
PRTLP ;Order through SKILMIX array, total data & display
 N RNDC,LNDC,UNDC,GP,TNDC,SKILL,NDCARE
 S GP=""
 F  S GP=$O(SKILMIX(GP)) Q:GP=""!STOP  D
 . S NDCARE=""
 . F  S NDCARE=$O(SKILMIX(GP,NDCARE)) Q:NDCARE=""!STOP  D
 .. S (RNDC,LNDC,UNDC,TNDC)=0
 .. S SKILL=""
 .. F  S SKILL=$O(SKILMIX(GP,NDCARE,SKILL)) Q:SKILL=""!STOP  D
 ... I SKILL["RN" S RNDC=SKILMIX(GP,NDCARE,SKILL)+$G(RNDC)
 ... I SKILL["LPN" S LNDC=SKILMIX(GP,NDCARE,SKILL)+$G(LNDC)
 ... I SKILL'["RN",SKILL'["LPN" S UNDC=SKILMIX(GP,NDCARE,SKILL)+$G(UNDC)
 .. S TNDC=$G(RNDC)+$G(LNDC)+$G(UNDC)  ;total hours
 .. D PPP
 Q
 ;
PPP ;
 W !
 W GP,?22,NDCARE,?53,RNDC,?60,LNDC,?67,UNDC,?74,TNDC
 I (IOSL-5)<$Y S STOP=$$ASK^PRSLIB00() I 'STOP D HDR
 Q
