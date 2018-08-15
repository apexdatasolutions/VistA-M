LEXRXC2 ;ISL/KER - Re-Index 757.01 AMC/APAR ;05/23/2017
 ;;2.0;LEXICON UTILITY;**81,86,103**;Sep 23, 1996;Build 2
 ;               
 ; Global Variables
 ;    ^LEX(               SACC 1.3
 ;    ^LEX(757.01,        SACC 1.3
 ;    ^LEX(757.04,        SACC 1.3
 ;    ^LEX(757.05,        SACC 1.3
 ;               
 ; External References
 ;    ^DIK                ICR  10013
 ;    IX1^DIK             ICR  10013
 ;    $$FMDIFF^XLFDT      ICR  10103
 ;    $$NOW^XLFDT         ICR  10103
 ;    $$UP^XLFSTR         ICR  10104
 ;               
 ; Local Variables NEWed or KILLed Elsewhere
 ;     LEXNAM     Task name       NEWed/KILLed by LEXRXXT
 ;     LEXTEST    Test variable   NEWed/KILLed by Developer
 ;     ZTQUEUED   Task flag       NEWed/KILLed by Taskman
 ;               
 Q
 ; NOTES:
 ;               
 ;   The AMC cross-references is used to create the AWRD 
 ;   cross-reference, hence the AMC cross-reference must
 ;   be repaired/re-indexed before AWRD.
 ;               
EN ; Main Entry Point
R75701 ; Repair file 757.01
 D RAMC,RAPAR
 Q
RAMC ;   Index    ^LEX(757.01,"AMC",MC,IEN) 
 S:$D(ZTQUEUED) ZTREQ="@" N DA,DIK,LEXBEG,LEXDIF,LEXELP,LEXEND,LEXERR,LEXFI,LEXIDX,LEXIDXT,LEXIEN,LEXMC,LEXNDS,LEXOK,LEXSTR
 S LEXFI="757.01"
 N LEXTC S LEXTC=$$UPD^LEXRXXT3($G(LEXNAM),,"Repairing File #757.01 ""AMC""") Q:LEXTC=1
 S LEXBEG=$$NOW^XLFDT,(LEXNDS,LEXERR)=0,LEXSTR="",LEXFI=757.01,LEXIDX="AMC",LEXIDXT="^LEX(757.01,""AMC"",MC,IEN)"
 F  S LEXSTR=$O(^LEX(LEXFI,LEXIDX,LEXSTR)) Q:'$L(LEXSTR)  D
 . N LEXIEN S LEXIEN=0 F  S LEXIEN=$O(^LEX(LEXFI,LEXIDX,LEXSTR,LEXIEN)) Q:+LEXIEN'>0  D
 . . S LEXNDS=LEXNDS+1
 . . I '$D(^LEX(LEXFI,LEXIEN,0)) D  Q
 . . . S LEXERR=LEXERR+1 K:'$D(LEXTEST) ^LEX(LEXFI,LEXIDX,LEXSTR,LEXIEN)
 . . . I '$D(ZTQUEUED) W !,?8,LEXFI,?19,LEXIDX,?30,LEXSTR,?58,"  ",LEXIEN
 . . N LEXOK,LEXMC S LEXMC=+($P($G(^LEX(LEXFI,LEXIEN,1)),"^",1))
 . . S LEXOK=0 S:LEXMC=LEXSTR LEXOK=1 I 'LEXOK D
 . . . S LEXERR=LEXERR+1 K:'$D(LEXTEST) ^LEX(LEXFI,LEXIDX,LEXSTR,LEXIEN) S:+LEXMC>0 ^LEX(LEXFI,LEXIDX,+LEXMC,LEXIEN)=""
 . . . I '$D(ZTQUEUED) W !,?8,LEXFI,?19,LEXIDX,?30,LEXSTR,?58,"  ",LEXIEN
 S LEXIEN=0 F  S LEXIEN=$O(^LEX(LEXFI,LEXIEN)) Q:+LEXIEN'>0  D
 . N DA,DIK,X S DA=LEXIEN,X=+($G(^LEX(LEXFI,DA,1))) Q:'$L(X)
 . I '$D(^LEX(LEXFI,LEXIDX,X,DA)) D
 . . S LEXERR=LEXERR+1 I '$D(ZTQUEUED) W !,?8,LEXFI,?19,LEXIDX,?30,"Missing",?58,"  ",DA
 . S:$L(X) ^LEX(LEXFI,LEXIDX,X,DA)=""
 . S ^LEX(LEXFI,LEXIDX,X,DA)=""
 S LEXERR=$S(+LEXERR>0:LEXERR,1:"") I '$D(ZTQUEUED) W !,$J(LEXERR,5),?8,LEXFI,?19,LEXIDX,?30,LEXIDXT
 S LEXEND=$$NOW^XLFDT,LEXELP=$$FMDIFF^XLFDT(LEXEND,LEXBEG,3)
 S:$E(LEXELP,1)=" "&($E(LEXELP,3)=":") LEXELP=$TR(LEXELP," ","0")
 D REP^LEXRXXS(LEXFI,LEXFI,LEXIDX,LEXNDS,LEXERR,LEXIDXT,LEXELP)
 Q
RAPAR ;   Index    ^LEX(757.01,"APAR",MC,IEN) 
 S:$D(ZTQUEUED) ZTREQ="@" Q  N DA,DIK,LEXBEG,LEXDIF,LEXELP,LEXEND,LEXERR,LEXFI,LEXIDX,LEXIDXT,LEXIEN,LEXNDS,LEXOK,LEXPAR,LEXPR,LEXSTR
 S LEXFI="757.01"
 N LEXTC S LEXTC=$$UPD^LEXRXXT3($G(LEXNAM),,"Repairing File #757.01 ""APAR""") Q:LEXTC=1
 S LEXBEG=$$NOW^XLFDT,(LEXNDS,LEXERR)=0,LEXSTR="",LEXFI=757.01,LEXIDX="APAR",LEXIDXT="^LEX(757.01,""APAR"",PARENT,IEN)"
 F  S LEXSTR=$O(^LEX(LEXFI,LEXIDX,LEXSTR)) Q:'$L(LEXSTR)  D
 . N LEXIEN S LEXIEN=0 F  S LEXIEN=$O(^LEX(LEXFI,LEXIDX,LEXSTR,LEXIEN)) Q:+LEXIEN'>0  D
 . . S LEXNDS=LEXNDS+1 N LEXOK,LEXPR S LEXPR=+($P($G(^LEX(LEXFI,LEXIEN,1)),"^",9))
 . . S LEXOK=0 S:LEXPR=LEXSTR LEXOK=1 I 'LEXOK D
 . . . S LEXERR=LEXERR+1 K:'$D(LEXTEST) ^LEX(LEXFI,LEXIDX,LEXSTR,LEXIEN) S:+LEXPR>0 ^LEX(LEXFI,LEXIDX,+LEXPR,LEXIEN)=""
 . . . I '$D(ZTQUEUED) W !,?8,LEXFI,?19,LEXIDX,?30,LEXSTR,?58,"  ",LEXIEN
 S LEXIEN=0 F  S LEXIEN=$O(^LEX(LEXFI,LEXIEN)) Q:+LEXIEN'>0  D
 . N DA,LEXPAR S DA=LEXIEN S LEXPAR=$P($G(^LEX(757.01,DA,1)),"^",9) Q:'$L(LEXPAR)
 . I '$D(^LEX(757.01,LEXIDX,$E(LEXPAR,1,30),DA)) D
 . . S LEXERR=LEXERR+1 I '$D(ZTQUEUED) W !,?8,LEXFI,?19,LEXIDX,?30,"Missing",?58,"  ",DA
 . S:$L(LEXPAR) ^LEX(757.01,LEXIDX,$E(LEXPAR,1,30),DA)=""
 S LEXERR=$S(+LEXERR>0:LEXERR,1:"") I '$D(ZTQUEUED) W !,$J(LEXERR,5),?8,LEXFI,?19,LEXIDX,?30,LEXIDXT
 S LEXEND=$$NOW^XLFDT,LEXELP=$$FMDIFF^XLFDT(LEXEND,LEXBEG,3)
 S:$E(LEXELP,1)=" "&($E(LEXELP,3)=":") LEXELP=$TR(LEXELP," ","0")
 D REP^LEXRXXS(LEXFI,LEXFI,LEXIDX,LEXNDS,LEXERR,LEXIDXT,LEXELP)
 Q
RAWRD ;   Index    ^LEX(757.01,"AWRD",WORD,MC,EXP)
 S:$D(ZTQUEUED) ZTREQ="@" N DA,DIK,LEXBEG,LEXDIF,LEXE,LEXELP,LEXEND,LEXERR,LEXEXCL,LEXEXP,LEXFI,LEXHI,LEXI,LEXIDX,LEXIDXT,LEXL,LEXLO,LEXM
 N LEXMCE,LEXNDS,LEXS,LEXS1,LEXS2,LEXS3,LEXS4,LEXSTR,LEXT,LEXTC,LEXTK,LEXTKN,LEXTNG,LEXW,LEXWDS,X
 S LEXFI="757.01"
 N LEXTC S LEXTC=$$UPD^LEXRXXT3($G(LEXNAM),,"Repairing File #757.01 ""AWRD""") Q:LEXTC=1
 S LEXBEG=$$NOW^XLFDT,(LEXNDS,LEXERR)=0,LEXFI=757.01,LEXIDX="AWRD",LEXIDXT="^LEX(757.01,""AWRD"",WORD,MC,EXP)"
 S LEXTKN="" F  S LEXTKN=$O(^LEX(LEXFI,LEXIDX,LEXTKN)) Q:'$L(LEXTKN)  D
 . S LEXEXCL=0 I $O(^LEX(757.04,"B",LEXTKN,0))>0 D
 . . S LEXEXCL=$P($G(^LEX(757.04,+($O(^LEX(757.04,"B",LEXTKN,0))),0)),"^",2),LEXEXCL=$S(LEXEXCL="B":1,LEXEXCL="I":1,1:0)
 . S LEXS1="" F  S LEXS1=$O(^LEX(LEXFI,LEXIDX,LEXTKN,LEXS1)) Q:'$L(LEXS1)  D
 . . S LEXS2="" F  S LEXS2=$O(^LEX(LEXFI,LEXIDX,LEXTKN,LEXS1,LEXS2)) Q:'$L(LEXS2)  D
 . . . ;     Supplemental   ^LEX(757.01,"AWRD",WORD,IEN,MC,SUP)
 . . . ;       Duplicates
 . . . N LEXLO,LEXHI F  D  Q:+($G(LEXHI))'>+($G(LEXLO))
 . . . . N DA,DIK S LEXLO=$O(^LEX(LEXFI,LEXIDX,LEXTKN,LEXS1,LEXS2,"")),LEXHI=$O(^LEX(LEXFI,LEXIDX,LEXTKN,LEXS1,LEXS2," "),-1) Q:(+LEXLO+LEXHI)'>0
 . . . . I LEXLO>0,LEXHI>0,LEXHI>LEXLO S DA(1)=LEXS1,DA=LEXHI S DIK="^LEX(757.01,"_DA(1)_",5," D:$D(@(DIK_DA_",0)")) ^DIK
 . . . I $D(^LEX(LEXFI,LEXIDX,LEXTKN,LEXS1,LEXS2))=10!($D(^LEX(LEXFI,LEXIDX,LEXTKN,LEXS1,LEXS2))=11) D
 . . . . N LEXS3 S LEXS3="" F  S LEXS3=$O(^LEX(LEXFI,LEXIDX,LEXTKN,LEXS1,LEXS2,LEXS3)) Q:'$L(LEXS3)  D
 . . . . . N LEXEXP,LEXMCE,LEXSTR S LEXNDS=+($G(LEXNDS))+1
 . . . . . S LEXEXP=LEXS1,LEXMCE=+($$MCE^LEXRXXM(LEXEXP))
 . . . . . S LEXSTR=$P($G(^LEX(LEXFI,+LEXEXP,5,+LEXS3,0)),"^",1)
 . . . . . ;       Redundant
 . . . . . I $D(^LEX(LEXFI,LEXIDX,LEXTKN,LEXS1,LEXS2))=11 D
 . . . . . . S LEXERR=+($G(LEXERR))+1 I '$D(ZTQUEUED) W !,"1",?8,LEXFI,?19,LEXIDX,?30,LEXTKN,?58,"  ",LEXS1,"/",LEXS2,"/",LEXS3
 . . . . . . I '$D(LEXTEST) D
 . . . . . . . N DA,DIK,LEXI,LEXIDX,LEXT,LEXWDS
 . . . . . . . S LEXT=$P($G(^LEX(757.01,+LEXEXP,0)),"^",1),LEXI=0 D WORDS^LEXRXXP(LEXT,.LEXWDS) S LEXIDX="AWRD"
 . . . . . . . Q:'$D(LEXWDS(LEXTKN))  S DA(1)=LEXEXP,DA=LEXS3,DIK="^LEX(757.01,"_DA(1)_",5," I $D(@(DIK_DA_",0)")) D
 . . . . . . . . D ^DIK K ^LEX(LEXFI,LEXIDX,LEXTKN,LEXS1,LEXS2,LEXS3)
 . . . . . ;       Verify
 . . . . . N LEXS D SUP^LEXRXXP(LEXEXP,.LEXS) I '$D(LEXS("S",LEXTKN,LEXS1,LEXS2,LEXS3)) D
 . . . . . . Q:+LEXS3'>0  S LEXERR=+($G(LEXERR))+1 I '$D(ZTQUEUED) W !,"2",?8,LEXFI,?19,LEXIDX,?30,LEXTKN,?58,"  ",LEXS1,"/",LEXS2,"/",LEXS3
 . . . . . . I '$D(LEXTEST) K ^LEX(LEXFI,LEXIDX,LEXTKN,LEXS1,LEXS2,LEXS3)
 . . . ;     Linked         ^LEX(757.01,"AWRD",WORD,IEN,"LINKED")
 . . . I $D(^LEX(LEXFI,LEXIDX,LEXTKN,LEXS1,LEXS2))=1,LEXS2="LINKED" D  Q
 . . . . N LEXEXP,LEXL S LEXEXP=LEXS1,LEXNDS=+($G(LEXNDS))+1 D LINK^LEXRXXP(LEXEXP,.LEXL)
 . . . . Q:$D(LEXL("R",LEXTKN,+LEXEXP,"LINKED"))!($D(LEXL("L",LEXTKN,+LEXEXP,"LINKED")))
 . . . . I '$D(LEXL("R",LEXTKN,+LEXEXP,"LINKED"))&($D(LEXL("L",LEXTKN,+LEXEXP,"LINKED"))) D
 . . . . . S LEXERR=+($G(LEXERR))+1 I '$D(ZTQUEUED) W !,"3",?8,LEXFI,?19,LEXIDX,?30,LEXTKN,?58,"  ",LEXS1,"/",LEXS2
 . . . . . I '$D(LEXTEST) K ^LEX(LEXFI,LEXIDX,LEXTKN,LEXS1,LEXS2)
 . . . ;     Words          ^LEX(757.01,"AWRD",WORD,MC,IEN)
 . . . I $D(^LEX(LEXFI,LEXIDX,LEXTKN,LEXS1,LEXS2))=1,+LEXS2>0,$D(^LEX(757.01,+LEXS2,0)) D  Q
 . . . . N LEXW,LEXIDX D AWRD^LEXRXXP(+LEXS2,.LEXW,1) S LEXIDX="AWRD" S LEXNDS=+($G(LEXNDS))+1
 . . . . I '$D(LEXW("W",LEXTKN,LEXS1,LEXS2)) D  Q
 . . . . . S LEXERR=+($G(LEXERR))+1 I '$D(ZTQUEUED) W !,"4",?8,LEXFI,?19,LEXIDX,?30,LEXTKN,?58,"  ",LEXS2
 . . . . . I '$D(LEXTEST) K ^LEX(LEXFI,LEXIDX,LEXTKN,LEXS1,LEXS2)
 S LEXEXP=0 F  S LEXEXP=$O(^LEX(LEXFI,LEXEXP)) Q:+LEXEXP'>0  D
 . N DA,DIK,LEXS,LEXS1,LEXS1,LEXS3,LEXS4,X S DA=$G(LEXEXP),X=$P($G(^LEX(LEXFI,DA,0)),"^",1) Q:'$L(X)
 . I $L(X),$D(^LEX(LEXFI,+($G(DA)),0)),$D(^LEX(LEXFI,+($G(DA)),1)) D
 . . N LEXW,LEXTK,LEXM,LEXE S ^LEX(LEXFI,"B",$$UP^XLFSTR($E(X,1,63)),DA)=""
 . . D AWRD^LEXRXXP(+DA,.LEXW,1) S LEXTK="" F  S LEXTK=$O(LEXW("W",LEXTK)) Q:'$L(LEXTK)  D
 . . . S LEXM=0 F  S LEXM=$O(LEXW("W",LEXTK,LEXM)) Q:+LEXM'>0  D
 . . . . S LEXE=0 F  S LEXE=$O(LEXW("W",LEXTK,LEXM,LEXE)) Q:+LEXE'>0  D
 . . . . . Q:$D(^LEX(757.01,"AWRD",LEXTK,LEXM))
 . . . . . S LEXERR=+($G(LEXERR))+1 I '$D(ZTQUEUED) W !,"5",?8,LEXFI,?19,LEXIDX,?30,"Missing ",$E(LEXTK,1,18),?58,"  ",LEXM,"/",LEXE
 . . . . . S ^LEX(757.01,"AWRD",LEXTK,LEXM,LEXE)=""
 . K LEXS D SUP^LEXRXXP(LEXEXP,.LEXS)
 . S LEXS1="" F  S LEXS1=$O(LEXS("S",LEXS1)) Q:'$L(LEXS1)  S LEXS2="" F  S LEXS2=$O(LEXS("S",LEXS1,LEXS2)) Q:'$L(LEXS2)  D
 . . S LEXS3="" F  S LEXS3=$O(LEXS("S",LEXS1,LEXS2,LEXS3)) Q:'$L(LEXS3)  S LEXS4="" F  S LEXS4=$O(LEXS("S",LEXS1,LEXS2,LEXS3,LEXS4)) Q:'$L(LEXS4)  D
 . . . I '$D(^LEX(757.01,"AWRD",LEXS1,LEXS2,LEXS3,LEXS4)) D
 . . . . S LEXERR=+($G(LEXERR))+1 I '$D(ZTQUEUED) W !,"6",?8,LEXFI,?19,LEXIDX,?30,"Missing ",$E(LEXS1,1,18),?58,"  ",LEXS2,"/",LEXS3,"/",LEXS4
 . . . . S ^LEX(757.01,"AWRD",LEXS1,LEXS2,LEXS3,LEXS4)=""
 . K LEXS D LINK^LEXRXXP(LEXEXP,.LEXS)
 . S LEXS1="" F  S LEXS1=$O(LEXS("L",LEXS1)) Q:'$L(LEXS1)  S LEXS2="" F  S LEXS2=$O(LEXS("L",LEXS1,LEXS2)) Q:'$L(LEXS2)  D
 . . S LEXS3="" F  S LEXS3=$O(LEXS("L",LEXS1,LEXS2,LEXS3)) Q:'$L(LEXS3)  D
 . . . I '$D(^LEX(757.01,"AWRD",LEXS1,LEXS2,LEXS3)) D
 . . . . S LEXERR=+($G(LEXERR))+1 I '$D(ZTQUEUED) W !,"7",?8,LEXFI,?19,LEXIDX,?30,"Missing ",$E(LEXS1,1,18),?58,"  ",LEXS2,"/",LEXS3
 . . . . S ^LEX(757.01,"AWRD",LEXS1,LEXS2,LEXS3)=""
 . S LEXS1="" F  S LEXS1=$O(LEXS("R",LEXS1)) Q:'$L(LEXS1)  S LEXS2="" F  S LEXS2=$O(LEXS("R",LEXS1,LEXS2)) Q:'$L(LEXS2)  D
 . . S LEXS3="" F  S LEXS3=$O(LEXS("R",LEXS1,LEXS2,LEXS3)) Q:'$L(LEXS3)  D
 . . . I '$D(^LEX(757.01,"AWRD",LEXS1,LEXS2)) D
 . . . . Q:$D(^LEX(757.04,"ACTION",LEXS1,"B"))!($D(^LEX(757.04,"ACTION",LEXS1,"I")))
 . . . . S LEXERR=+($G(LEXERR))+1 I '$D(ZTQUEUED) W !,"8",?8,LEXFI,?19,LEXIDX,?30,"Missing ",$E(LEXS1,1,18),?58,"  ",LEXS2,"/",LEXS3
 . . . . S ^LEX(757.01,"AWRD",LEXS1,LEXS2,LEXS3)=""
 . K LEXS S LEXS=0 F  S LEXS=$O(^LEX(LEXFI,LEXEXP,5,LEXS)) Q:+LEXS'>0  D
 . . N DA,DIK S DA(1)=LEXEXP,DA=LEXS,DIK="^LEX(757.01,"_DA(1)_",5," D IX1^DIK
 S LEXEXP=0 F  S LEXEXP=$O(^LEX(757.05,LEXEXP)) Q:+LEXEXP'>0  D
 . N DA,DIK S DA=LEXEXP,DIK="^LEX(757.05," D IX1^DIK
 S LEXERR=$S(+LEXERR>0:LEXERR,1:"") I '$D(ZTQUEUED) W !,$J(LEXERR,5),?8,LEXFI,?19,LEXIDX,?30,LEXIDXT
 S LEXEND=$$NOW^XLFDT,LEXELP=$$FMDIFF^XLFDT(LEXEND,LEXBEG,3)
 S:$E(LEXELP,1)=" "&($E(LEXELP,3)=":") LEXELP=$TR(LEXELP," ","0")
 D REP^LEXRXXS(LEXFI,LEXFI,LEXIDX,LEXNDS,LEXERR,LEXIDXT,LEXELP)
 Q
 ;              
 ; Miscellaneous
CLR ;   Clear
 K LEXNAM,LEXTEST,ZTQUEUED
 Q
