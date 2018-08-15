LEXQC3 ;ISL/KER - Query - Changes - ICD/ICP/10D/10P ;05/23/2017
 ;;2.0;LEXICON UTILITY;**80,103**;Sep 23, 1996;Build 2
 ;               
 ; Global Variables
 ;    ^TMP("LEXQC")       SACC 2.3.2.5.1
 ;               
 ; External References
 ;    $$FILE^ICDEX        ICR   5747
 ;    $$ROOT^ICDEX        ICR   5747
 ;    $$SINFO^ICDEX       ICR   5747
 ;               
 ; Local Variables NEWed in LEXQC
 ;    LEXADT              After Date
 ;    LEXBDT              Before Date
 ;    LEXCDT              Versioning Date
 ;    LEXQLEN             Length of Display
 ;    LEXQSTR             Length of String
 ;    LEXQTOT             Total Records
 ;               
D09 ; ICD-9 Diagnosis Changes
 D CK("80",1)
 Q
P09 ; ICD-9 Procedure Changes
 D CK("80.1",2)
 Q
D10 ; ICD-10 Diagnosis Changes
 D CK("80",30)
 Q
P10 ; ICD-10 Procedure Changes
 D CK("80.1",31)
 Q
CK(X,Y) ; Check File X for Changes
 N LEXFI,LEXRT,LEXSAB,LEXIDT,LEXSYS,LEXSINF S LEXFI=$$FILE^ICDEX($G(X)) Q:+LEXFI'>0
 S LEXRT=$$ROOT^ICDEX(LEXFI) Q:$E(LEXRT,1)'="^"  Q:$E(LEXRT,$L(LEXRT))'="("  Q:'$L($P($P(LEXRT,"^",2),"(",1))
 S LEXSYS=+($G(Y)) Q:+LEXSYS'>0  S LEXSINF=$$SINFO^ICDEX(LEXSYS)
 S LEXSAB=$P(LEXSINF,"^",3) Q:'$L(LEXSAB)  S LEXIDT=$P(LEXSINF,"^",5)
 S LEXCDT=$G(LEXCDT) Q:LEXCDT'?7N  Q:LEXCDT<LEXIDT  Q:$P($G(LEXBDT),".",1)'?7N
 Q:$P($G(LEXADT),".",1)'?7N  Q:+LEXCDT'>+LEXBDT  K ^TMP("LEXQC",$J,LEXSAB) N LEX1,LEX2,LEX3
 N LEX4,LEX5,LEX6,LEXAEF,LEXAST,LEXBEF,LEXBST,LEXCEF,LEXCNT,LEXCST
 N LEXH,LEXIEN,LEXLC,LEXND,LEXORD,LEXPEF,LEXPST,LEXQL,LEXSO,LEXSTID
 S LEXQLEN=+($G(LEXQLEN)),LEXQTOT=+($G(LEXQTOT))
 S LEXQSTR=+($G(LEXQSTR)),LEXCNT=0,LEXLC=0
 S LEXORD="" F  S LEXORD=$O(@(LEXRT_"""ABA"","_+LEXSYS_","""_LEXORD_""")")) Q:'$L(LEXORD)  D
 . S LEXIEN=0 F  S LEXIEN=$O(@(LEXRT_"""ABA"","_+LEXSYS_","""_LEXORD_""","_+LEXIEN_")")) Q:+LEXIEN'>0  D CE
 D:$D(^TMP("LEXQC",$J,LEXSAB)) UPC(LEXSAB)
 Q
CE ;   Check Entry
 Q:'$L($G(LEXRT))  Q:+($G(LEXIEN))'>0
 N LEX1,LEX2,LEX3,LEX4,LEX5,LEX6,LEX7,LEX8,LEXAEF,LEXAST,LEXBEF
 N LEXBST,LEXCEF,LEXCST,LEXH,LEXND,LEXPEF,LEXPST,LEXQL,LEXSO,LEXSTID
 S LEXCNT=LEXCNT+1 I LEXCNT'<+($G(LEXQSTR)) S LEXLC=+($G(LEXLC))+1 D
 . W:'$D(ZTQUEUED)&('$D(LEXQUIET))&(LEXLC'>+($G(LEXQLEN))) "." S LEXCNT=0
 S LEXSO=$P($G(@(LEXRT_+LEXIEN_",0)")),"^",1) Q:'$L(LEXSO)
 S LEXH=$O(@(LEXRT_+LEXIEN_",66,""B"","_+LEXCDT_","" "")"),-1)
 S LEXND=$G(@(LEXRT_+LEXIEN_",66,"_+LEXH_",0)"))
 S LEXCEF=$P(LEXND,"^",1),LEXCST=$P(LEXND,"^",2)
 S LEXH=$O(@(LEXRT_+LEXIEN_",66,""B"","_+LEXBDT_","" "")"),-1)
 S LEXND=$G(@(LEXRT_+LEXIEN_",66,"_+LEXH_",0)"))
 S LEXBEF=$P(LEXND,"^",1),LEXBST=$P(LEXND,"^",2)
 S LEXH=$O(@(LEXRT_+LEXIEN_",66,""B"","_+LEXADT_","" "")"),-1)
 S LEXND=$G(@(LEXRT_+LEXIEN_",66,"_+LEXH_",0)"))
 S LEXAEF=$P(LEXND,"^",1),LEXAST=$P(LEXND,"^",2)
 S LEXH=$O(@(LEXRT_+LEXIEN_",66,""B"","_+LEXCDT_")"),-1)
 S LEXH=$O(@(LEXRT_+LEXIEN_",66,""B"","_+LEXH_","" "")"),-1)
 S LEXND=$G(@(LEXRT_+LEXIEN_",66,"_+LEXH_",0)"))
 S LEXPEF=$P(LEXND,"^",1),LEXPST=$P(LEXND,"^",2)
 S LEX1=$D(@(LEXRT_+LEXIEN_",67,""B"","_+LEXCDT_")"))>0
 S LEX2=$D(@(LEXRT_+LEXIEN_",68,""B"","_+LEXCDT_")"))>0
 S LEX3=$O(@(LEXRT_+LEXIEN_",67,""B"","_+LEXCDT_")"),-1)
 S LEX4=$O(@(LEXRT_+LEXIEN_",68,""B"","_+LEXCDT_")"),-1)
 S LEX5=$D(@(LEXRT_+LEXIEN_",67,""B"","_+LEXCDT_")"))
 S LEX6=$D(@(LEXRT_+LEXIEN_",68,""B"","_+LEXCDT_")"))
 ; Short IEN Dupe
 S LEX7=$O(@(LEXRT_+LEXIEN_",67,""B"","_+LEXCDT_","" "")"),-1),LEX7=$$DUPS^LEXQC5(81,LEXIEN,LEX7)
 ; Long IEN Dupe
 S LEX8=$O(@(LEXRT_+LEXIEN_",68,""B"","_+LEXCDT_","" "")"),-1),LEX8=$$DUPL^LEXQC5(81,LEXIEN,LEX8)
 ; Activiation/Inactiviation/Re-Activation
 ;   Has a current status and effective date
 ;   Has a previous status and effective date
 ;   Current status not equal to previous status
 ;   Has a short description
 ;   Has a long description
 ;   Activation - current status >0
 ;   Inactivatin - current status =0
 ;   Reactivation - current status >0 past status =0
 S LEXQL=0 I $L(LEXCST),$L(LEXCEF) D
 . N LEXCT,LEXO Q:$L(LEXBEF)&($L(LEXBST))&(LEXBST'=LEXCST)
 . Q:$L(LEXAEF)&($L(LEXAST))&(LEXAST'=LEXCST)
 . Q:(LEX1>0&(LEX3?7N))!(LEX2>0&(LEX4?7N))
 . N LEXSTID Q:'$L($G(LEXSO))  S LEXSTID=$S(+LEXCST>0:"ACT",1:"INA")
 . S LEXQL=1 I LEXSTID="ACT",$G(LEXPEF)?7N,+($G(LEXPST))'>0 D
 . . I +($G(LEX5))'>0,+($G(LEX6))'>0 S LEXSTID="REA"
 . S LEXO=LEXIEN_"^"_LEXSO_"^"_LEXCDT
 . S LEXCT=+($G(^TMP("LEXQC",$J,LEXSAB,LEXSTID,0)))
 . S:'$D(^TMP("LEXQC",$J,LEXSAB,LEXSTID,1,(LEXSO_" "))) LEXCT=LEXCT+1
 . S ^TMP("LEXQC",$J,LEXSAB,LEXSTID,1,(LEXSO_" "))=LEXO
 . S ^TMP("LEXQC",$J,LEXSAB,LEXSTID,0)=LEXCT
 ; I Previous status (LEXPST) >0 and
 ;   Short exist (LEX1) with a previous short (LEX3) and not a duplicate (LEX7) or
 ;   long exist (LEX2) with a previous long (LEX4) and not a duplicate (LEX8)
 I 'LEXQL I +LEXPST>0,((LEX1>0&(LEX3?7N)&(LEX7'>0))!(LEX2>0&(LEX4?7N)&(LEX8'>0))) D
 . N LEXCT,LEXO Q:'$L($G(LEXSO))  S LEXQL=1
 . S LEXO=LEXIEN_"^"_LEXSO_"^"_LEXCDT
 . S LEXCT=+($G(^TMP("LEXQC",$J,LEXSAB,"REV",0)))
 . S:'$D(^TMP("LEXQC",$J,LEXSAB,"REV",1,(LEXSO_" "))) LEXCT=LEXCT+1
 . S ^TMP("LEXQC",$J,LEXSAB,"REV",1,(LEXSO_" "))=LEXO
 . S ^TMP("LEXQC",$J,LEXSAB,"REV",0)=LEXCT
 ; Current status (LEXCST) exist and active
 ; Previous Status (LEXPST) exist and is active
 ;   Short exist (LEX1) with a previous short (LEX3) and not a duplicate (LEX7) or
 ;   long exist (LEX2) with a previous long (LEX4) and not a duplicate (LEX8)
 I 'LEXQL S LEXQL=0 I ((LEXCEF?7N&(LEXCST>0))!(LEXPEF?7N&(LEXPST>0))),((LEX1>0&(LEX3?7N)&(LEX7'>0))!(LEX2>0&(LEX4?7N)&(LEX8'>0))) D
 . N LEXCT,LEXO S LEXQL=1
 . S LEXO=LEXIEN_"^"_LEXSO_"^"_LEXCDT
 . S LEXCT=+($G(^TMP("LEXQC",$J,LEXSAB,"REU",0)))
 . S:'$D(^TMP("LEXQC",$J,LEXSAB,"REU",1,(LEXSO_" "))) LEXCT=LEXCT+1
 . S ^TMP("LEXQC",$J,LEXSAB,"REU",1,(LEXSO_" "))=LEXO
 . S ^TMP("LEXQC",$J,LEXSAB,"REU",0)=LEXCT
 I 'LEXQL I $D(@(LEXRT_+LEXIEN_",69,""B"","_+($G(LEXCDT))_")")) D
 . N LEXCT,LEXO S LEXQL=1
 . S LEXO=LEXIEN_"^"_LEXSO_"^"_LEXCDT
 . S LEXCT=+($G(^TMP("LEXQC",$J,LEXSAB,"UPD",0)))
 . S:'$D(^TMP("LEXQC",$J,LEXSAB,"UPD",1,(LEXSO_" "))) LEXCT=LEXCT+1
 . S ^TMP("LEXQC",$J,LEXSAB,"UPD",1,(LEXSO_" "))=LEXO
 . S ^TMP("LEXQC",$J,LEXSAB,"UPD",0)=LEXCT
 N LEXQUIET
 Q
UPC(X) ; Update Counters
 N LEXSID,LEXACT,LEXORD,LEXCT S LEXSID=$G(X) Q:'$L(LEXSID)
 S LEXACT="" F  S LEXACT=$O(^TMP("LEXQC",$J,LEXSID,LEXACT)) Q:'$L(LEXACT)  D
 . S LEXCT=0,LEXORD="" F  S LEXORD=$O(^TMP("LEXQC",$J,LEXSID,LEXACT,1,LEXORD)) Q:'$L(LEXORD)  S LEXCT=LEXCT+1
 . S ^TMP("LEXQC",$J,LEXSID,LEXACT,0)=LEXCT
 Q
