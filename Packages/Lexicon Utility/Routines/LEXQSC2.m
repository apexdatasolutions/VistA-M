LEXQSC2 ;ISL/KER - Query - SNOMED CT - Save ;05/23/2017
 ;;2.0;LEXICON UTILITY;**103**;Sep 23, 1996;Build 2
 ;               
 ; Global Variables
 ;    ^LEX(757.01,        SACC 1.3
 ;    ^LEX(757.02,        SACC 1.3
 ;    ^TMP("LEXQSCO")     SACC 2.3.2.5.1
 ;               
 ; External References
 ;    $$FMTE^XLFDT        ICR  10103
 ;    $$UP^XLFSTR         ICR  10104
 ;               
 ; Local Variables NEWed or KILLed Elsewhere
 ;    LEXSEN              Code IEN
 ;    LEXCOD              Code
 ;    LEXSTA              Status
 ;    LEXEEN              Expression IEN
 ;    LEXIIEN             Flag to Include IENs
 ;               
EN ; Main Entry Point
 K ^TMP("LEXQSCO",$J) Q:'$L($G(LEXELDT))
 I +($G(LEXSEN))>0,+($G(LEXSTA))=0,$G(LEXEFF)'?7N D FUT I +($G(LEXNODP))'>0 D:$D(^TMP("LEXQSCO",$J)) DSP^LEXQO("LEXQSCO") Q
 D FUL I +($G(LEXNODP))'>0 D:$D(^TMP("LEXQSCO",$J)) DSP^LEXQO("LEXQSCO")
 Q
FUL ; Full Display
 N LEXFUL,LEX,LEXL,LEXSO,LEXNAM,LEXIENS,LEXSUBS,LEXMAPS,LEXMC S LEXL=$G(LEXLEN) S:+LEXL'>0 LEXL="18^25^53" S LEXSO=$G(LEXCOD) Q:'$L(LEXSO)
 S LEXNAM=$P($G(^LEX(757.02,+($G(LEXSEN)),0)),"^",1) Q:+LEXNAM'>0  S LEXNAM=$G(^LEX(757.01,+LEXNAM,0)) Q:'$L(LEXNAM) 
 S LEXFUL=""  D BOD($G(LEXELDT)),COD(LEXSO,LEXNAM,$G(LEXCDT),$G(LEXL))
 D STAL(LEXSO,$G(LEXL))
 K LEXIENS S LEXMC=+($G(^LEX(757.01,+($G(LEXEEN)),1)))
 D IENS^LEXQSC(LEXMC,.LEXIENS)
 D EXP($G(LEXSO),$G(LEXCDT),.LEXIENS,$G(LEXL))
 K LEXSUBS D SUBS^LEXQSC(LEXMC,.LEXSUBS)
 D:$D(LEXSUBS) SUBS(.LEXSUBS,$G(LEXL))
 K LEXMAPS D MAPS^LEXQSC(LEXSO,.LEXMAPS,$G(LEXCDT),LEXL)
 D:$D(LEXMAPS) MAPS(.LEXMAPS,LEXL)
 Q
FUT ; Future Activation
 N LEX1,LEX2,LEX3,LEXEFF,LEXI,LEXL,LEXNAM,LEXSO,LEXNA,LEXNAM S LEXL=$G(LEXLEN) S:+LEXL'>0 LEXL="18^25^53"
 S LEXSO=$G(LEXCOD) S LEXNA=$$NA^LEXQSC(LEXSO,$G(LEXCDT)) S LEXNAM=$P($G(^LEX(757.02,+($G(LEXSEN)),0)),"^",1) Q:+LEXNAM'>0
 S LEXNAM=$G(^LEX(757.01,+LEXNAM,0)) Q:'$L(LEXNAM)  D BOD(LEXELDT),COD(LEXSO,LEXNAM,$G(LEXL))
 D STAF(LEXNA,$G(LEXL))
 Q
BOD(X) ;   Based on Date
 N LEXBOD,LEXT S LEXBOD=$G(X),LEXT="Display based on date:   "_LEXBOD D BL,TL(LEXT)
 Q
COD(X,Y,LEXD,LEXLEN) ;   Code Line
 N LEXC,LEXN,LEXI,LEXN,LEXT,LEXCL,LEXLL,LEXTL,LEXIEN,LEXNAM S LEXC=$G(X),LEXNAM=$G(Y),LEXD=$G(LEXD),LEXIEN=$$CI(LEXC,LEXD)
 S LEXCL=+($G(LEXLEN)),LEXLL=+($P($G(LEXLEN),"^",2)),LEXTL=+($P($G(LEXLEN),"^",3))
 S:$D(LEXIIEN)&($L(LEXIEN)) LEXNAM=LEXIEN S LEXN(1)=LEXNAM,LEXT="Code:  "_LEXC S LEXT=LEXT_$J(" ",(LEXLL-$L(LEXT)))
 D PR^LEXU(.LEXN,+($G(LEXTL)))
 S LEXT=LEXT_LEXN(1) D BL,TL(LEXT)
 S LEXI=1 F  S LEXI=$O(LEXN(LEXI)) Q:+LEXI'>0  D
 . N LEXT,LEX S LEX=$G(LEXN(LEXI)) Q:'$L(LEX)
 . S LEXT=" ",LEXT=LEXT_$J(" ",(LEXLL-$L(LEXT)))_LEX D TL(LEXT)
 Q
STAF(X,LEXLEN) ;   Status Line (Future)
 N LEXX,LEXT,LEXE,LEXCL,LEXLL,LEXTL
 S LEXCL=+($G(LEXLEN)),LEXLL=+($P($G(LEXLEN),"^",2)),LEXTL=+($P($G(LEXLEN),"^",3))
 S LEXX=$G(X)
 S LEXT="  Status:  "
 S LEXT=LEXT_"Pending"
 S LEXT=LEXT_$J(" ",(42-$L(LEXT)))
 S LEXE=$S(LEXX?7N:$$FMTE^XLFDT(LEXX,"5Z"),1:"Unknown")
 S LEXT=LEXT_" Effective:  "_LEXE
 D BL,TL((LEXT))
 Q
STAL(X,LEXLEN) ;   Status Line
 N LEXSO,LEXL,LEXCL,LEXLL,LEXTL,LEXH,LEXHI,LEXLDR,LEXT
 S LEXL=$G(LEXLEN) S LEXCL=+($G(LEXL)),LEXLL=+($P($G(LEXL),"^",2)),LEXTL=+($P($G(LEXL),"^",3))
 S LEXSO=$G(X) Q:'$L(LEXSO)  S LEXH=$$HIST(LEXSO,.LEXHI)
 S LEXLDR="  Status:  "
 S LEXEFF="9999999" F  S LEXEFF=$O(LEXHI(LEXEFF),-1) Q:LEXEFF'?7N  D
 . N LEXI S LEXI="9999999" F  S LEXI=$O(LEXHI(LEXEFF,LEXI),-1) Q:+LEXI'>0  D
 . . N LEXST,LEXSE,LEXT S LEXST=$G(LEXHI(LEXEFF,LEXI)),LEXST=$$STUPD(LEXST)
 . . S LEXSE=$$FMTE^XLFDT(LEXEFF,"5Z")
 . . S LEXT=LEXLDR
 . . S LEXT=LEXT_$J(" ",(LEXLL-$L(LEXT)))_LEXST
 . . S LEXT=LEXT_$J(" ",(42-$L(LEXT)))_" Effective:  "_LEXSE
 . . D:LEXLDR["Status" BL D TL(LEXT)
 . . S LEXLDR="           "
 Q
EXP(LEXSO,LEXCDT,LEXEX,LEXLEN) ; Expressions
 N LEXPREF,LEXFSC,LEXFSN,LEXCL,LEXLL,LEXTL,LEXDT,LEXP S LEXPREF=$$PREF(LEXSO,LEXCDT)
 S LEXFSN=$$FSN(.LEXEX),LEXFSC=+LEXFSN,LEXFSN=$P(LEXFSN,"^",2)
 S LEXCL=+($G(LEXLEN)),LEXLL=+($P($G(LEXLEN),"^",2)),LEXTL=+($P($G(LEXLEN),"^",3)) D:$O(LEXEX(0))>0 BL
 N LEXTY S LEXTY=0 F  S LEXTY=$O(LEXEX(LEXTY)) Q:+LEXTY'>0  D
 . I LEXTY>0 D  Q
 . . N LEXS,LEXPL,LEXFN,LEXLN S LEXPL=0 S LEXFN=$O(LEXEX(LEXTY,0)),LEXLN=$O(LEXEX(LEXTY," "),-1)
 . . S:LEXFN>0&(LEXLN>0)&(LEXFN'=LEXLN) LEXPL=1
 . . S LEXS=0 F  S LEXS=$O(LEXEX(LEXTY,LEXS)) Q:+LEXS'>0  D
 . . . N LEXEI,LEXP,LEXDT,LEXT,LEXDA,LEXDS,LEXO,LEXD,LEXDF,LEXCOM
 . . . S LEXEI=$G(LEXEX(LEXTY,LEXS)) Q:LEXEI'?1N.N
 . . . S LEXCOM="" I LEXTY=2 D
 . . . . Q:LEXFSN'>0  Q:$O(LEXEX(2,0))=$O(LEXEX(2," "),-1)
 . . . . I +($G(LEXFSC))>1,LEXEI=LEXFSN S LEXCOM="Preferred FSN"
 . . . S LEXDF=$P($G(^LEX(757.01,+LEXEI,1)),"^",5)
 . . . S LEXCOM=LEXCOM_$S(LEXDF>0:", Deactivated",1:"")
 . . . S:$D(LEXIIEN) LEXCOM=LEXCOM_", IEN "_+LEXEI
 . . . S LEXCOM=$$TM($$TM(LEXCOM,",")) S:$L(LEXCOM) LEXCOM=" ("_LEXCOM_")"
 . . . S LEXP="" I +LEXEI=+LEXPREF S LEXP="Preferred Term"
 . . . S LEXD=$$DA^LEXQSC(+LEXEI)
 . . . D DS^LEXQSC(LEXEI,.LEXDS)
 . . . S LEXDT(1)=$G(^LEX(757.01,+LEXEI,0))_LEXCOM
 . . . D PR^LEXU(.LEXDT,+($G(LEXTL)))
 . . . S:LEXTY=1 LEXT="  Major Concept:   "
 . . . S:LEXTY=1&(+($G(LEXPL))>0) LEXT="  Major Concepts:  "
 . . . S:LEXTY=2 LEXT="  Fully Specified: "
 . . . S:LEXTY=3 LEXT="  Synonymous Term: "
 . . . S:LEXTY=3&(+($G(LEXPL))>0) LEXT="  Synonymous Terms:"
 . . . S:LEXS>1 LEXT="  "
 . . . S LEXT=LEXT_$J(" ",(LEXLL-$L(LEXT)))_$G(LEXDT(1)) D TL(LEXT)
 . . . S LEXO=1 F  S LEXO=$O(LEXDT(LEXO)) Q:+LEXO=0  D
 . . . . N LEXT S LEXT="",LEXT=LEXT_$J(" ",(LEXLL-$L(LEXT)))_$G(LEXDT(LEXO)) D TL(LEXT)
 . . . I $L(LEXP) S LEXT="",LEXT=LEXT_$J(" ",(LEXLL-$L(LEXT)))_"  "_LEXP D TL(LEXT)
 . . . I $L(LEXD) S LEXT="",LEXT=LEXT_$J(" ",(LEXLL-$L(LEXT)))_"  "_LEXD D TL(LEXT)
 . . . I $O(LEXDS(0))>0 D
 . . . . N LEXT,LEXTT,LEXND,LEXCD,LEXHI,LEXI,LEXCT S LEXCT=0
 . . . . S LEXTT="",LEXTT=LEXTT_$J(" ",(LEXLL-$L(LEXTT)))_"  Designation Code"
 . . . . S LEXI=0 F  S LEXI=$O(LEXDS(LEXI)) Q:+LEXI'>0  D
 . . . . . N LEXT,LEXND,LEXCD,LEXHI,LEXNL S LEXND=$G(LEXDS(LEXI)),LEXCD=$P(LEXND,"^",1),LEXHI=$P(LEXND,"^",2),LEXNL=43
 . . . . . S LEXCT=LEXCT+1 S:$L(LEXHI) LEXTT=LEXTT_"/Hierarchy" D:LEXCT=1 TL(LEXTT)
 . . . . . S LEXT="",LEXT=LEXT_$J(" ",(LEXLL-$L(LEXT)))_"    "_LEXCD
 . . . . . S:$L(LEXHI) LEXT=LEXT_$J(" ",(LEXNL-$L(LEXT)))_" "_LEXHI
 . . . . . 
 . . . . . D TL(LEXT)
 Q
SUBS(LEX,LEXLEN) ; Subsets
 N LEXSA,LEXSN,LEXLDR,LEXPL,LEXCL,LEXLL,LEXTL Q:'$L($O(LEX("")))  S LEXPL=0 S:$O(LEX(""))'=$O(LEX(""),-1) LEXPL=1
 S LEXCL=+($G(LEXLEN)),LEXLL=+($P($G(LEXLEN),"^",2)),LEXTL=+($P($G(LEXLEN),"^",3))
 S LEXLDR="  Subset:          " S:LEXPL>0 LEXLDR="  Subsets:         " S LEXSA="" D BL
 F  S LEXSA=$O(LEX(LEXSA)) Q:'$L(LEXSA)  D
 . N LEXSN,LEXSI,LEXT,LEXIEN S LEXSN=$P($G(LEX(LEXSA)),"^",1)
 . S LEXSN=$P($G(LEX(LEXSA)),"^",1),LEXIEN=+($P($G(LEX(LEXSA)),"^",3))
 . S:$D(LEXIIEN)&($L(LEXSN))&(+($G(LEXIEN))>0) LEXSN=LEXSN_" (IEN "_+LEXIEN_")"
 . S LEXT=$G(LEXLDR),LEXT=LEXT_$J(" ",(LEXLL-$L(LEXT)))_LEXSN D TL(LEXT) S LEXLDR=" "
 Q
MAPS(LEX,LEXLEN) ; Mappings
 N LEXSA,LEXSN,LEXLDR,LEXPL,LEXCL,LEXLL,LEXTL,LEXN Q:'$L($O(LEX("")))
 S (LEXPL,LEXSA)=0 F  S LEXSA=$O(LEX(LEXSA)) Q:'$L(LEXSA)  S:$E($G(LEX(LEXSA)),1) LEXPL=+LEXPL+1
 S LEXCL=+($G(LEXLEN)),LEXLL=+($P($G(LEXLEN),"^",2)),LEXTL=+($P($G(LEXLEN),"^",3))
 S LEXLDR="  Mapping:" S:LEXPL>0 LEXLDR="  Mappings:" S LEXLDR=LEXLDR_$J(" ",(LEXLL-$L(LEXLDR)))
 D BL S LEXSA="" F  S LEXSA=$O(LEX(LEXSA)) Q:'$L(LEXSA)  D
 . N LEXSN,LEXT S LEXSN=$G(LEX(LEXSA))
 . S LEXT=LEXLDR_LEXSN D TL(LEXT) S LEXLDR=$J(" ",LEXLL)
 Q
 ;
 ; Miscellaneous
CI(X,LEXD) ;   Code IENs
 N LEXSO,LEXSDO,LEXLEX,LEXSAB S LEXSO=$G(X) Q:'$L(LEXSO)  S LEXD=$G(LEXD) I LEXD'?7N D
 . N LEXEF,LEXTD S LEXTD="",LEXEF=9999999 F  S LEXEF=$O(^LEX(757.02,"ACT",(LEXSO_" "),3,LEXEF),-1) Q:+LEXEF'>0  D  Q:LEXTD?7N
 . . N LEXIE S LEXIE=$O(^LEX(757.02," "),-1) F  S LEXIE=$O(^LEX(757.02,"ACT",(LEXSO_" "),3,+LEXEF,LEXIE),-1) Q:+LEXIE'>0  D  Q:LEXTD?7N
 . . . N LEXSR S LEXSR=$P($G(^LEX(757.02,+LEXIE,0)),"^",3) S:"^56^"[("^"_LEXSR_"^") LEXTD=LEXEF S:$G(LEXTD)?7N LEXD=LEXTD
 S:LEXD'?7N LEXD=$$DT^XLFDT S LEXSAB="SCT",LEXLEX=$$STATCHK^LEXSRC2(LEXSO,LEXD,,LEXSAB),LEXLEX=$P(LEXLEX,"^",2)
 S LEXLEX=$S(+LEXLEX>0:("Lexicon SNOMED CT Code IEN "_+LEXLEX),1:"") S X="" S:$L(LEXLEX) X=LEXLEX
 Q X
LEN(X) ; Length of Code
 N LEXSIEN,LEXMAX S LEXMAX=0,LEXSIEN=0 F  S LEXSIEN=$O(^LEX(757.02,"ASRC","SCT",LEXSIEN)) Q:+LEXSIEN'>0  D
 . N LEXCD S LEXCD=$P($G(^LEX(757.02,+LEXSIEN,0)),"^",2) S:$L(LEXCD)>LEXMAX LEXMAX=$L(LEXCD)
 S X=LEXMAX
 Q X
BL ;   Blank Line
 D TL(" ") Q
TL(X) ;   Text Line
 I $D(LEXTEST) W !,$G(X) Q
 N LEXI S LEXI=+($O(^TMP("LEXQSCO",$J," "),-1))+1 S ^TMP("LEXQSCO",$J,LEXI)=$G(X),^TMP("LEXQSCO",$J,0)=LEXI
 Q
CLR ;   Clear
 N LEXIEN,LEXLEN,LEXGET,LEXSD,LEXLD,LEXMD,LEXLX,LEXINC,LEXELDT,LEXST,LEXTEST,LEXWN
 Q
STUPD(X) ;   Status Update
 N LEXUP S LEXUP=$$UP^XLFSTR(X) S:LEXUP["ACTIVATED" X="Active" S:LEXUP["INACTIV" X="Inactive" S:LEXUP["REVISE" X="Active ("_X_")"
 S:LEXUP["RE-ACT" X="Active ("_X_")" S:LEXUP["RE-USE" X="Active ("_X_")"
 Q X
PREF(LEXSO,LEXCDT) ; Get Preferred Expression for an Active Code
 Q $$PREF^LEXU($G(LEXSO),"SCT",$G(LEXCDT))
FSN(LEXEX) ; Get Count and Preferred Fully Specified Name
 N LEXACT,LEXI,LEXPA K LEXPA S (LEXACT,LEXI)=0 F  S LEXI=$O(LEXEX(2,LEXI)) Q:+LEXI'>0  D
 . N LEXIEN,LEXDES,LEXHIS,LEXHAR S LEXIEN=$G(LEXEX(2,LEXI))
 . Q:$P($G(^LEX(757.01,+LEXIEN,1)),"^",5)>0
 . S LEXACT=LEXACT+1
 . S LEXDES=$O(^LEX(757.01,+LEXIEN,7,"C",56,"")) Q:'$L(LEXDES)
 . S LEXHIS=$O(^LEX(757.01,+LEXIEN,7,"C",56,LEXDES,0)) Q:+LEXHIS'>0
 . S LEXHAR=$P($G(^LEX(757.01,+LEXIEN,7,+LEXHIS,0)),"^",3) Q:+LEXHAR'>0
 . Q:$P($G(^LEX(757.01,+LEXIEN,1)),"^",5)>0
 . S LEXPA(LEXIEN)=""
 S X=$O(LEXPA(" "),-1) S:+X'>0 X="" S:X>0 X=+LEXACT_"^"_X
 Q X
HIST(CODE,ARY) ; Activation History
 N LEXCOD,LEXEEN,LEXIIEN,LEXNODP,LEXSEN,LEXSTA
 Q $$HIST^LEXU($G(CODE),56,.ARY)
TM(X,Y) ;   Trim Character Y - Default " "
 S X=$G(X) Q:X="" X  S Y=$G(Y) S:'$L(Y) Y=" "
 F  Q:$E(X,1)'=Y  S X=$E(X,2,$L(X))
 F  Q:$E(X,$L(X))'=Y  S X=$E(X,1,($L(X)-1))
 Q X
