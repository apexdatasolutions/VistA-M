GMTSCNB ; SLC/KER - Consults Components Brief          ; 5/30/17 6:35pm
 ;;2.7;Health Summary;**46,47,58,90,112,121**;Oct 20, 1995;Build 5
 ;
 ; External References
 ;   DBIA  3358  ^GMR(123,
 ;   DBIA 10040  ^SC(
 ;   DBIA 10104  $$UP^XLFSTR
 ;   DBIA  2056  $$GET1^DIQ     (file 123.1, 44)
 ;   DBIA  2056  GETS^DIQ       (file 123)
 ;   DBIA  2051  LIST^DIC       (file 123.02)
 ;
 ; Delete this line: test of perforce/eclipse
 ;
 Q
MAIN ; Consults - Brief
 K ^TMP("GMTSCN",$J)
 N GMTSMAX,GMTSNMC,GMTSI,GMTSDFN S GMTSDFN=+($G(DFN))
 S:'$L($G(GMTS1)) GMTS1=6666666 S:'$L($G(GMTS2)) GMTS2=9999999
 S GMTS1=+($G(GMTS1)),GMTS2=+($G(GMTS2)),GMTSMAX=+($G(GMTSNDM)) S:GMTSMAX'>0 GMTSMAX=999999999
 S GMTSDFN=+($G(GMTSDFN)) Q:GMTSDFN=0  Q:'$D(^GMR(123,"AD",GMTSDFN))
 S:GMTS2>GMTS1 GMTSI=GMTS1,GMTS1=GMTS2,GMTS2=GMTSI S GMTSI=GMTS2-.00000001
 S GMTSNMC=1
 F  S GMTSI=$O(^GMR(123,"AD",GMTSDFN,GMTSI)) Q:+GMTSI=0!(GMTSI>GMTS1)  D  Q:$D(GMTSQIT)
 . S GMTSIEN=0 F  S GMTSIEN=$O(^GMR(123,"AD",GMTSDFN,GMTSI,GMTSIEN)) Q:+GMTSIEN=0  D  Q:$D(GMTSQIT)
 . . Q:+($G(GMTSNMC))>+($G(GMTSMAX))  K ^TMP("GMTSCN",$J)
 . . D EXT(GMTSIEN,GMTSI) Q:$D(GMTSQIT)  D BCD Q:$D(GMTSQIT)
 Q
BCD ;   Brief Consults Display
 Q:'$D(^TMP("GMTSCN",$J))  S GMTSNMC=+($G(GMTSNMC))+1
 D:GMTSNMC=1 BHDR Q:$D(GMTSQIT)
 N GMTSID,GMTSFI,GMTSIE S GMTSID=0
 F  S GMTSID=$O(^TMP("GMTSCN",$J,GMTSID)) Q:+GMTSID=0  D  Q:$D(GMTSQIT)
 . S GMTSFI=123,GMTSIE="" F  S GMTSIE=$O(^TMP("GMTSCN",$J,GMTSID,GMTSFI,GMTSIE)) Q:GMTSIE=""  D  Q:$D(GMTSQIT)
 . . N GMTSNB,GMTSRD,GMTSTO,GMTSVC,GMTSFM,GMTSLA,GMTSAD,GMTSED
 . . S GMTSNB=+($G(GMTSIE)) S:+GMTSNB=0 GMTSNB="?"
 . . S GMTSRD=$G(^TMP("GMTSCN",$J,GMTSID,GMTSFI,GMTSIE,3,"I"))
 . . S GMTSRD=$$UP^XLFSTR($S(+GMTSRD>0:$$ED^GMTSU(+GMTSRD),1:"UNKNOWN"))
 . . S GMTSFM=$$UP^XLFSTR($G(^TMP("GMTSCN",$J,GMTSID,GMTSFI,GMTSIE,2,"E")))
 . . S GMTSED=$G(^TMP("GMTSCN",$J,GMTSID,GMTSFI,GMTSIE,17,"I"))
    . . S GMTSED=$$UP^XLFSTR($S(+GMTSED>0:$$ED^GMTSU(+GMTSED),1:"UNKNOWN"))
 . . S GMTSTO=$$UP^XLFSTR($G(^TMP("GMTSCN",$J,GMTSID,GMTSFI,GMTSIE,1,"E")))
 . . S GMTSLA=$$UP^XLFSTR($G(^TMP("GMTSCN",$J,GMTSID,GMTSFI,GMTSIE,40,1,1,"E")))
 . . S GMTSLD=$G(^TMP("GMTSCN",$J,GMTSID,GMTSFI,GMTSIE,40,1,2,"I"))
 . . S GMTSLD=$$UP^XLFSTR($S(+GMTSLD>0:$$ED^GMTSU(+GMTSLD),1:"UNKNOWN"))
 . . D WRT
 Q
BHDR ;   Brief Header
 N GMTSL S $P(GMTSL,"-",79)=""
 D CKP^GMTSUP Q:$D(GMTSQIT)  W !,"Request Date/",?15,"Request From",?52,"Clinically Ind. Date"
 D CKP^GMTSUP Q:$D(GMTSQIT)  W !,"Number",?15,"Request To",?52,"Last Action",?67,"Action Date"
 D CKP^GMTSUP Q:$D(GMTSQIT)  W !,GMTSL
 Q
WRT ;   Write Brief Consult
 D CKP^GMTSUP Q:$D(GMTSQIT)  W !,$E(GMTSRD,1,10),?15,GMTSFM,?52,$E(GMTSED,1,10)
 D CKP^GMTSUP Q:$D(GMTSQIT)  W !,GMTSNB,?15,GMTSTO,?52,GMTSLA,?67,GMTSLD
 D CKP^GMTSUP Q:$D(GMTSQIT)  W !
 Q
EXT(X,Y) ; Extract Consults
 K ^TMP("GMTSCN",$J),^UTILITY("DIQ1",$J) N DIC,DIQ,DR,GMTSFM,GMTSI
 N GMTSIEN,GMTSIENS,GMTSLA,GMTSRT,GMTSTY,GMTSVC
 S GMTSIEN=+($G(X)) Q:GMTSIEN=0  S GMTSI=+($G(Y))
 S DIC=123,GMTSIENS=+($G(GMTSIEN))_","
 S GMTSRT="^TMP(""GMTSCN"","_$J_","_GMTSI_")"
 S DIQ(0)="IE",DR=".01;1;2;3;9;17" D GETS^DIQ(123,GMTSIENS,DR,"EI",GMTSRT,"MSG")
 S GMTSFM=+($G(^TMP("GMTSCN",$J,GMTSI,123,GMTSIENS,2,"I"))) S:+GMTSFM=0 GMTSFM=""
 S GMTSVC="" S:+GMTSFM>0 GMTSVC=$$GET1^DIQ(44,GMTSFM,9,"E") S:$G(GMTSVC)="NONE" GMTSVC=""
 S:$L(GMTSVC) ^TMP("GMTSCN",$J,GMTSI,123,GMTSIENS,2,"SVC")=GMTSVC
 S GMTSTY="" S:+GMTSFM>0 GMTSTY=$$GET1^DIQ(44,GMTSFM,2,"E")
 S GMTSFM=$$FM(($G(^TMP("GMTSCN",$J,GMTSI,123,GMTSIENS,2,"E"))_"^"_GMTSTY_"^"_GMTSVC))
 S ^TMP("GMTSCN",$J,GMTSI,123,GMTSIENS,2,"E")=GMTSFM
 S GMTSLA=+($G(^TMP("GMTSCN",$J,GMTSI,DIC,GMTSIENS,9,"I")))
 S:+GMTSLA'>9 ^TMP("GMTSCN",$J,GMTSI,DIC,GMTSIENS,9,"E")=""
 I +GMTSLA>0 D
 . S GMTSLA=$$GET1^DIQ(123.1,GMTSLA,7,"E")
 . S ^TMP("GMTSCN",$J,GMTSI,DIC,GMTSIENS,9,"E")=GMTSLA
 S ^TMP("GMTSCN",$J,GMTSI,DIC,GMTSIENS,0)=(9999999-GMTSI)_"^"_$S(GMTSI>0:$$EDT^GMTSU((9999999-GMTSI)),1:"")
 D ACT
 Q
FM(X) ; From Service/Ward
 S X=$G(X) N GMTSTY,GMTSV S GMTSTY=$P(X,"^",2),GMTSV=$P(X,"^",3),X=$P(X,"^",1)
 I $L(X) S:+X>0&(GMTSTY="WARD")&(X'["WARD") X="WARD "_X S:+X'>0&(GMTSTY="WARD")&(X'["WARD") X=X_" WARD"
 S:($L(X)+$L(GMTSV)+3)'>30&($L(GMTSV))&(X'[GMTSV) X=X_" ("_GMTSV_")"
 S X=$$UP^XLFSTR(X)
 Q X
ACT ; Activity
 N GMTSL,GMTSFL,GMTSFLA,GMTSFLD,GMTSLA,GMTSLD,GMTSLR,GMTSAM,GMTSLM,GMTSC,GMTSDI,Y,DR,GMTSIENL,GMTSIENS,GMTSMSG K ^TMP("DILIST",$J)
 S GMTSIENS=+GMTSIEN_",",GMTSIENL=","_GMTSIENS,DR="1I;2I;9;10"
 D LIST^DIC(123.02,GMTSIENL,DR,,"*",,,,,,.GMTSDI,"GMTSMSG")
 K:+($G(^TMP("DILIST",$J,0)))=0 ^TMP("DILIST",$J) Q:+($G(^TMP("DILIST",$J,0)))=0
 S GMTSLA="",GMTSLD=0,GMTSLR="",GMTSAM="",GMTSC=0
 S GMTSL=0
 F  S GMTSL=$O(^TMP("DILIST",$J,"ID",GMTSL)) Q:+GMTSL=0  D
 . I +($G(^TMP("DILIST",$J,"ID",GMTSL,2)))'<GMTSLD,+($G(^TMP("DILIST",$J,"ID",GMTSL,2)))>0 D
 . . S GMTSLA=+($G(^TMP("DILIST",$J,"ID",GMTSL,1)))
 . . S GMTSLD=+($G(^TMP("DILIST",$J,"ID",GMTSL,2)))
 . . S GMTSLR=$G(^TMP("DILIST",$J,"ID",GMTSL,9))
 . . S GMTSLM=$G(^TMP("DILIST",$J,"ID",GMTSL,10))
 I +($G(GMTSFLA))>0,+($G(GMTSFLD))>0,+($G(GMTSFL))>0,+($G(GMTSR))'>0 S GMTSC=0,GMTSLA=GMTSFLA,GMTSLD=GMTSFLA D AAC
 I GMTSLA>0,GMTSLD>0 S GMTSC=1 D AAC
 K ^TMP("DILIST",$J)
 Q
AAC ;   Add Activity
 N GMTSEA,GMTSEP,GMTSEL,GMTSOR,GMTSW,I S GMTSC=+($G(GMTSC))
 S GMTSOR=$$UP^XLFSTR($$GET1^DIQ(123.1,GMTSLA,1,"I"))
 S GMTSEP=$$UP^XLFSTR($$GET1^DIQ(123.1,GMTSLA,7,"E"))
 S GMTSEA=$$UP^XLFSTR($$GET1^DIQ(123.1,GMTSLA,.01,"E"))
 S GMTSEL=$$AL(GMTSEA,GMTSEP) Q:'$L(GMTSEL)
 S GMTSEA=$$AN(GMTSEA,GMTSEP) Q:'$L(GMTSEA)
 I GMTSC>0 D
 . S ^TMP("GMTSCN",$J,GMTSI,123,GMTSIENS,40,GMTSC,1,"I")=GMTSLA,^TMP("GMTSCN",$J,GMTSI,123,GMTSIENS,40,GMTSC,1,"E")=GMTSEA,^TMP("GMTSCN",$J,GMTSI,123,GMTSIENS,40,GMTSC,1,"L")=GMTSEL
 . S ^TMP("GMTSCN",$J,GMTSI,123,GMTSIENS,40,GMTSC,2,"I")=GMTSLD,^TMP("GMTSCN",$J,GMTSI,123,GMTSIENS,40,GMTSC,2,"E")=$$EDT^GMTSU(GMTSLD)
 I GMTSC'>0 D
 . S ^TMP("GMTSCN",$J,GMTSI,123,GMTSIENS,40,"LA","I")=GMTSLA,^TMP("GMTSCN",$J,GMTSI,123,GMTSIENS,40,"LA","E")=GMTSEA,^TMP("GMTSCN",$J,GMTSI,123,GMTSIENS,40,"LA","L")=GMTSEL
 . S ^TMP("GMTSCN",$J,GMTSI,123,GMTSIENS,40,"LD","I")=GMTSLD,^TMP("GMTSCN",$J,GMTSI,123,GMTSIENS,40,"LD","E")=$$EDT^GMTSU(GMTSLD)
 . S ^TMP("GMTSCN",$J,GMTSI,123,GMTSIENS,40,"WR","E")=$G(^TMP("DILIST",$J,"ID",GMTSFL,3))
 Q
AN(X,Y) ;   Activity Name
 N GMTSW,GMTSP,GMTSA S GMTSA=$G(X),GMTSP=$G(Y) S X=$$SN((GMTSA_" "_GMTSP)) S X=$E(X,1,11) Q X
AL(X,Y) ;   Activity Name
 N GMTSP,GMTSA S GMTSA=$G(X),GMTSP=$G(Y) S:GMTSA["RECEIVE" (GMTSA,GMTSP)="RECEIVED"
 S:GMTSA="ENTERED IN CPRS"!(GMTSA["CPRS RELEASED") (GMTSA,GMTSP)="DATA ENTRY" S:GMTSA="EDIT BEFORE RELEASE" (GMTSA,GMTSP)="EDITED"
 S X="" S:$L(GMTSA)&($L(GMTSP)) X=$S($L(GMTSP)>$L(GMTSA):GMTSP,1:GMTSA) S:'$L(GMTSA)!('$L(GMTSP)) X=$S('$L(GMTSP)&($L(GMTSA)):GMTSA,$L(GMTSP)&('$L(GMTSA)):GMTSP,1:"")
 Q X
SN(X) ;
 S X=$G(X) Q:X="" "UNKNOWN" Q:X["ENTERED"!(X["RELEASED") "ENTERED" Q:X["STATUS" "STAT CHG"
 Q:X["SIGNIF" "SIG FIND" Q:X["DISCONT" "DISCONT'D" Q:X["SCHEDUL" "SCHEDULED" Q:X["INCOMPL" "INCOMPLETE" Q:X["COMPLET" "COMPLETE"
 Q:X["EDIT" "EDITED" Q:X["DISASSO" "DISASSOC'D" Q:X["ADDENDUM" "ADDENDUM" Q:X["NEW NOTE" "NEW NOTE"
 Q:X["SERVICE" "SVC ENTER" Q:X["FORWARD" "FORWARDED" Q:X["CANCELLED" "CANCELLED" Q:X["COMMENT" "COMMENT" Q:X["RECEIVED" "RECEIVED" Q:X["PRINTED" "PRINTED"
 Q "UNKNOWN"
