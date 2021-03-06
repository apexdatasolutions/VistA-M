LEXQC6 ;ISL/KER - Query - Changes - Summary ;05/23/2017
 ;;2.0;LEXICON UTILITY;**103**;Sep 23, 1996;Build 2
 ;               
 ; Global Variables
 ;    ^TMP("LEXQC")       SACC 2.3.2.5.1
 ;    ^TMP("LEXQCO")      SACC 2.3.2.5.1
 ;               
 ; External References
 ;    HOME^%ZIS           ICR  10086
 ;    ^%ZTLOAD            ICR  10063
 ;    $$GET1^DIQ          ICR   2056
 ;    ^DIR                ICR  10026
 ;    $$DT^XLFDT          ICR  10103
 ;    $$FMADD^XLFDT       ICR  10103
 ;    $$FMTE^XLFDT        ICR  10103
 ;    ^XMD                ICR  10070
 ;               
EN ; Change List Summary
 N LEXENV S LEXENV=$$ENV Q:+LEXENV'>0
 W !!," Summary (totals only)"
 N %,I,LEXCDT,LEXBDT,LEXADT,LEXEDT,LEXRT,LEXSAB,LEXCONT,LEXIMP
 S LEXCDT=$$CSD^LEXQM,LEXEDT=$P(LEXCDT,"^",1),LEXCDT=$P(LEXCDT,"^",2)
 I '$L(LEXCDT)!(LEXCDT'?7N) W !!,"   Code Set Date invalid or not selected",! Q
 I $$CDTOK(LEXCDT)'>0 W !!,"   No Code Set changes found for ",$$FMTE^XLFDT(LEXCDT),! Q
 S LEXBDT=$$FMADD^XLFDT(LEXCDT,-1),LEXADT=$$FMADD^XLFDT(DT,+1)
 Q:LEXBDT'?7N  Q:LEXADT'?7N  K ^TMP("LEXQC",$J)
 D TASK K ^TMP("LEXQC",$J)
 Q
MAIL ; Send Results by MailMan
 N LEXTASK S LEXTASK=1 D EN
 Q
TASK ; Task Search for CSV Changes
 N X,Y,ZTSK,ZTDESC,ZTDTH,ZTIO,ZTRTN,ZTSAVE,ZTQUEUED,ZTREQ
 S LEXCDT=+($G(LEXCDT)) Q:LEXCDT'?7N  S LEXEDT=$G(LEXEDT) Q:'$L(LEXEDT)
 S ZTRTN="SUM^LEXQC6",ZTSAVE("LEXCDT")="",ZTIO="",ZTDTH=$H
 S ZTDESC="Search for CSV Changes on "_LEXEDT
 D:'$D(LEXTASK) @ZTRTN D:$D(LEXTASK) ^%ZTLOAD D HOME^%ZIS S X=+($G(ZTSK))
 I +X>0 D
 . W !!,"   A search for CSV changes on ",LEXEDT," has been queued"
 . W !,"   (task ",+X,").  A summary report will be sent to you in"
 . W !,"   a MailMan message.",!
 K Y,ZTSK,ZTDESC,ZTDTH,ZTIO,ZTRTN,LEXQUIET,LEXTASK
 Q
 ;
SUM ; Summary
 D GET,DSP K ^TMP("LEXQC",$J)
 Q
GET ;   Get Data
 N LEX1,LEX2,LEX3,LEXTX,LEXTT,LEXTV,LEXIIMP,LEXCIMP,LEXQLEN,LEXQSTR,LEXQTOT,LEXTOT,LEXCAT
 S:$G(LEXCDT)'?7N LEXCDT=$$DT^XLFDT
 S:$G(LEXBDT)'?7N LEXBDT=$$FMADD^XLFDT(LEXCDT,-1)
 S:$G(LEXADT)'?7N LEXADT=$$FMADD^XLFDT(DT,+1)
 S LEX1=3,LEX2=5,LEX3=26
 S LEXIIMP=$$IMPDATE^LEXU("10D"),LEXCIMP=$$IMPDATE^LEXU("CPT"),LEXQTOT=0
 I LEXCDT<LEXIIMP S LEXQTOT=LEXQTOT+($P($G(^LEX(757.03,1,0)),"^",6))+($P($G(^LEX(757.03,2,0)),"^",6))
 I LEXCDT>(LEXIIMP-.0001) S LEXQTOT=LEXQTOT+($P($G(^LEX(757.03,30,0)),"^",6))+($P($G(^LEX(757.03,31,0)),"^",6))
 I LEXCDT>(LEXCIMP-.0001) S LEXQTOT=LEXQTOT+($P($G(^LEX(757.03,3,0)),"^",6))+($P($G(^LEX(757.03,4,0)),"^",6))
 S:+($G(LEXQTOT))'>0 LEXQTOT=193006
 S LEXQLEN=68,LEXQSTR=+(LEXQTOT\LEXQLEN) S:LEXQSTR=0 LEXQSTR=1
 W:'$D(ZTQUEUED) !!," Gathering data, please wait.",!,"   "
 D:LEXCDT<LEXIIMP D09^LEXQC3,P09^LEXQC3
 D:LEXCDT>(LEXIIMP-.0001) D10^LEXQC3,P10^LEXQC3
 D:LEXCDT>(LEXCIMP-.0001) CPT^LEXQC4,MOD^LEXQC4
 I $D(^TMP("LEXQC",$J)),$G(LEXCDT)?7N D
 . N LEXTT,LEXQT,LEXFY,LEXQI,LEXQTR S LEXQT=""
 . S:$E(LEXCDT,4,7)="0101" LEXQT=2 S:$E(LEXCDT,4,7)="0401" LEXQT=3 S:$E(LEXCDT,4,7)="0701" LEXQT=4 S:$E(LEXCDT,4,7)="1001" LEXQT=1
 . S LEXFY=$E((+($E(LEXCDT,1,3))+1700),3,4) S:LEXQT=1 LEXFY=LEXFY+1 S LEXFY=$E(LEXFY,($L(LEXFY)-1),$L(LEXFY))
 . S:$L(LEXFY)=1 LEXFY="0"_LEXFY S:$L(LEXFY)=1 LEXFY="0"_LEXFY S LEXQI=$S(LEXQT=1:"st",LEXQT=2:"nd",LEXQT=3:"rd",LEXQT=4:"th",1:"")
 . S LEXQTR="" S:+LEXQT>0&(LEXQT<5)&($L(LEXFY)=2)&($L(LEXQI)) LEXQTR="FY"_LEXFY_" "_LEXQT_LEXQI_" Qtr"
 . S LEXTT=" Change list summary for "_$$FMTE^XLFDT(LEXCDT,"5Z")_" "_$S($L(LEXQTR):" (",1:"")_LEXQTR_$S($L(LEXQTR):")",1:"")
 . D BL,TL(LEXTT)
 S (LEXTOT,LEXCAT)=0
 S LEXSAB="ICD" I $D(^TMP("LEXQC",$J,LEXSAB)) D
 . N LEXTX,LEXC S LEXC=+($P($$CGS(LEXSAB),"^",2)),LEXCAT=LEXCAT+1,LEXTOT=LEXTOT+LEXC
 . S LEXTX=$$TTL("ICD-9-CM Diagnosis",LEXC)
 . D BL,TL(LEXTX),BL,SAB
 S LEXSAB="ICP" I $D(^TMP("LEXQC",$J,LEXSAB)) D
 . N LEXTX,LEXC S LEXC=+($P($$CGS(LEXSAB),"^",2)),LEXCAT=LEXCAT+1,LEXTOT=LEXTOT+LEXC
 . S LEXTX=$$TTL("ICD-9 Procedures",LEXC) D BL,TL(LEXTX),BL,SAB
 S LEXSAB="10D" I $D(^TMP("LEXQC",$J,LEXSAB)) D
 . N LEXTX,LEXC S LEXC=+($P($$CGS(LEXSAB),"^",2)),LEXCAT=LEXCAT+1,LEXTOT=LEXTOT+LEXC
 . S LEXTX=$$TTL("ICD-10-CM Diagnosis",LEXC) D BL,TL(LEXTX),BL,SAB
 S LEXSAB="10P" I $D(^TMP("LEXQC",$J,LEXSAB)) D
 . N LEXTX,LEXC S LEXC=+($P($$CGS(LEXSAB),"^",2)),LEXCAT=LEXCAT+1,LEXTOT=LEXTOT+LEXC
 . S LEXTX=$$TTL("ICD-10-PCS Procedures",LEXC) D BL,TL(LEXTX),BL,SAB
 S LEXSAB="CPT" I $D(^TMP("LEXQC",$J,LEXSAB)) D
 . N LEXTX,LEXC S LEXC=+($P($$CGS(LEXSAB),"^",2)),LEXCAT=LEXCAT+1,LEXTOT=LEXTOT+LEXC
 . S LEXTX=$$TTL("CPT Procedures",LEXC) D BL,TL(LEXTX),BL,SAB
 S LEXSAB="CPC" I $D(^TMP("LEXQC",$J,LEXSAB)) D
 . N LEXTX,LEXC S LEXC=+($P($$CGS(LEXSAB),"^",2)),LEXCAT=LEXCAT+1,LEXTOT=LEXTOT+LEXC
 . S LEXTX=$$TTL("HCPCS Procedures",LEXC) D BL,TL(LEXTX),BL,SAB
 S LEXSAB="MOD" I $D(^TMP("LEXQC",$J,LEXSAB)) D
 . N LEXTX,LEXC S LEXC=+($P($$CGS(LEXSAB),"^",2)),LEXCAT=LEXCAT+1,LEXTOT=LEXTOT+LEXC
 . S LEXTX=$$TTL("CPT/HCPCS Modifiers",LEXC) D BL,TL(LEXTX),BL,SAB
 I LEXCAT>1 D
 . Q:+LEXTOT'>0  N LEXTX S LEXTX=$$TTL("Total Changes",LEXTOT) D BL,TL(LEXTX),BL
 F LEXSAB="ICD","ICP","10D","10P","CPT","CPC","MOD" K ^TMP("LEXQC",$J,LEXSAB)
 Q
SAB ;   Get Data by Source Abbreviation (SAB)
 Q:'$L($G(LEXSAB))
 I $D(^TMP("LEXQC",$J,LEXSAB,"ACT",0)) D
 . N LEXTX S LEXTX=$$FMT("","Added Codes",+$G(^TMP("LEXQC",$J,LEXSAB,"ACT",0))) D TL(LEXTX)
 I $D(^TMP("LEXQC",$J,LEXSAB,"INA",0)) D
 . N LEXTX S LEXTX=$$FMT("","Inactivated Codes",+$G(^TMP("LEXQC",$J,LEXSAB,"INA",0))) D TL(LEXTX)
 I $D(^TMP("LEXQC",$J,LEXSAB,"REA",0)) D
 . N LEXTX S LEXTX=$$FMT("","Re-Activated Codes",+$G(^TMP("LEXQC",$J,LEXSAB,"REA",0))) D TL(LEXTX)
 I $D(^TMP("LEXQC",$J,LEXSAB,"REU",0)) D
 . N LEXTX S LEXTX=$$FMT("","Re-Used Codes",+$G(^TMP("LEXQC",$J,LEXSAB,"REU",0))) D TL(LEXTX)
 I $D(^TMP("LEXQC",$J,LEXSAB,"REV",0)) D
 . N LEXTX S LEXTX=$$FMT("","Revised Codes",+$G(^TMP("LEXQC",$J,LEXSAB,"REV",0))) D TL(LEXTX)
 Q
CGS(X) ;   Changes for a Source Abbreviation (SAB)
 N LEXSAB S LEXSAB=$G(X) Q:'$L($G(LEXSAB))  N LEXT,LEXC S (LEXT,LEXC)=0
 I $D(^TMP("LEXQC",$J,LEXSAB,"ACT",0)) S LEXT=LEXT+1,LEXC=LEXC+$G(^TMP("LEXQC",$J,LEXSAB,"ACT",0))
 I $D(^TMP("LEXQC",$J,LEXSAB,"INA",0)) S LEXT=LEXT+1,LEXC=LEXC+$G(^TMP("LEXQC",$J,LEXSAB,"INA",0))
 I $D(^TMP("LEXQC",$J,LEXSAB,"REA",0)) S LEXT=LEXT+1,LEXC=LEXC+$G(^TMP("LEXQC",$J,LEXSAB,"REA",0))
 I $D(^TMP("LEXQC",$J,LEXSAB,"REU",0)) S LEXT=LEXT+1,LEXC=LEXC+$G(^TMP("LEXQC",$J,LEXSAB,"REU",0))
 I $D(^TMP("LEXQC",$J,LEXSAB,"REV",0)) S LEXT=LEXT+1,LEXC=LEXC+$G(^TMP("LEXQC",$J,LEXSAB,"REV",0))
 S X=LEXT_"^"_LEXC
 Q X
DSP ;   Display Data
 K ^TMP("LEXQCO",$J) M ^TMP("LEXQCO",$J)=^TMP("LEXQC",$J,"SUM")
 D:'$D(ZTQUEUED)&($D(^TMP("LEXQCO",$J))) DSP^LEXQO("LEXQCO")
 D:$D(ZTQUEUED)&($D(^TMP("LEXQCO",$J))) MM^LEXQC6
 K ^TMP("LEXQCO",$J)
 Q
 ; 
 ; Miscellaneous
MM ;   MailMan Message
 G:'$D(^TMP("LEXQCO",$J)) MMQ  N XCNP,XMSCR,XMDUZ,XMY,XMZ,XMSUB,XMTEXT,XMDUZ,LEXJ,LEXNM
 S XMTEXT="^TMP(""LEXQCO"","_$J_",",XMSUB="CSV ICD/CPT Changes (Summary)",LEXNM=$$GET1^DIQ(200,+($G(DUZ)),.01) G:'$L(LEXNM) MMQ
 S XMY(LEXNM)="",XMDUZ=.5 D ^XMD
MMQ ;   MailMan Quit
 K ^TMP("LEXQCO",$J),LEXNM,LEXSUB
 Q
TTL(X,Y) ;   Format Title Line
 N LEXTX,LEXI1,LEXI2,LEXI3 S LEXI1=$S(+($G(LEX1))>0:+($G(LEX1)),1:3)
 S LEXI2=$S(+($G(LEX2))>0:+($G(LEX2)),1:5) S LEXI3=$S(+($G(LEX3))>0:+($G(LEX3)),1:30)
 S LEXTX="",LEXTX=LEXTX_$J(" ",(LEXI1-$L(LEXTX)))_$G(X) S Y=$S(+Y>0:+Y,1:"")
 S LEXTX=LEXTX_$J(" ",(LEXI3-$L(LEXTX)))_$J($G(Y),6) S:+Y>0 LEXTX=LEXTX_" code"_$S(+($G(Y))>1:"s",1:"")
 S X=LEXTX
 Q X
FMT(X,Y,Z) ;   Format Data Line
 N LEXTX,LEXI1,LEXI2,LEXI3 S LEXI1=$S(+($G(LEX1))>0:+($G(LEX1)),1:3)
 S LEXI2=$S(+($G(LEX2))>0:+($G(LEX2)),1:5) S LEXI3=$S(+($G(LEX3))>0:+($G(LEX3)),1:30)
 S LEXTX="",LEXTX=LEXTX_$J(" ",(LEXI1-$L(LEXTX)))_$G(X)
 S:$L($G(Y)) LEXTX=LEXTX_$J(" ",(LEXI2-$L(LEXTX)))_$G(Y)
 S:$L($G(Z)) LEXTX=LEXTX_$J(" ",(LEXI3-$L(LEXTX)))_$J($G(Z),6) S X=LEXTX
 Q X
CDTOK(X) ;   Code Set Date is OK
 N LEXCDT,LEXOK,LEXSAB,LEXI S LEXOK=0,LEXCDT=$G(X) Q:LEXCDT'?7N LEXOK
 F LEXSAB="ICD","ICP","10D","10P","CPT","CPC" D  Q:LEXOK>0
 . S:$D(^LEX(757.02,"AUPD",LEXSAB,LEXCDT)) LEXOK=1
 I LEXOK'>0 S LEXI=0 F  S LEXI=$O(@("^DIC(81.3,"_LEXI_")")) Q:+LEXI'>0  D  Q:LEXOK>0
 . S:$D(@("^DIC(81.3,"_LEXI_",60,""B"","_LEXCDT_")")) LEXOK=1
 . S:$D(@("^DIC(81.3,"_LEXI_",61,""B"","_LEXCDT_")")) LEXOK=1
 . S:$D(@("^DIC(81.3,"_LEXI_",62,""B"","_LEXCDT_")")) LEXOK=1
 S X=LEXOK
 Q X
BL ;   Blank Like
 D TL(" ")
 Q
TL(X) ;   Text Line
 N LEXI,LEXX S LEXX=$G(X) W:$D(LEXTEST) !,LEXX
 S LEXI=$O(^TMP("LEXQC",$J,"SUM"," "),-1)+1,^TMP("LEXQC",$J,"SUM",+LEXI)=LEXX N LEXTEST
 Q
CONT(X) ;   Continue
 Q:$G(LEXCONT)["^" "^"  N DIR,DIROUT,DIRUT,DUOUT,DTOUT,Y S DIR(0)="FAO^1:30",DIR("A")="       Press <Enter> to continue or '^' to exit  "
 S DIR("PRE")="S:X[""^^"" X=""^^"" S:X'[""^^""&(X[""^"") X=""^"" S:X[""?"" X=""??"" S:X'[""^""&(X'[""?"") X="""""
 S (DIR("?"),DIR("??"))="^D CONTH^"_$$LR D ^DIR Q:X["^^"!($D(DIROUT)) "^^"  Q:$D(DUOUT) "^"  Q:X["^" "^" Q ""
 Q ""
CONTH ;   Continue Help
 W !,"        Press <Enter> to continue or '^' to exit"
 Q
LR(X) ;   Local Routine
 S X=$T(+1),X=$P(X," ",1) Q X
ENV(X) ;   Check environment
 N LEX S DT=$$DT^XLFDT D HOME^%ZIS S U="^" I +($G(DUZ))=0 W !!,?5,"DUZ not defined" Q 0
 S LEX=$$GET1^DIQ(200,(DUZ_","),.01) I '$L(LEX) W !!,?5,"DUZ not valid" Q 0
 Q 1
