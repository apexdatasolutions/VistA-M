PSJALG ;BIR/UK-DETAILED ALLERGY LIST ;15 May 98 / 9:27 AM
 ;;5.0; INPATIENT MEDICATIONS ;**3,85**;16 DEC 97
 ;
 ; Reference to ^GMRPNCW is supported by DBIA 10123.
 ; Reference to CWAD^ORQPT2 is supported by DBIA 2831.
 ;
EN ; -- main entry point for PSJ LM ALLERGY DETAIL
 D EN^VALM("PSJ LM ALLERGY DETAIL")
 Q
 ;
 ;
INIT ; -- init variables and list array
 F LINE=1:1:30 D SET^VALM10(LINE,LINE_"     Line number "_LINE)
 S VALMCNT=30
 Q
 ;
HELP ; -- help code
 S X="?" D DISP^XQORM1 W !!
 Q
 ;
EXIT ; -- exit code
 Q
 ;
EXPND ; -- expand code
 Q
 ;
DETAIL ;
 N CAUSATIV,TYPE,BLANKS S BLANKS=" " F I=1:1:16 S BLANKS=BLANKS_" "
 D ^GMRADPT
 I $G(GMRAL)=0 S ^TMP("PSJALLRG",$J,1,0)="PATIENT HAS NO KNOWN ALLERGIES" Q
 I $G(GMRAL)="" S ^TMP("PSJALLRG",$J,1,0)="PATIENT HAS NOT BEEN ASKED ABOUT ALLERGIES" Q
 N LINE,NUM,I,J,DATA S (I,J)=0
 F  S I=$O(GMRAL(I)) Q:I=""  S DATA=$G(GMRAL(I)) Q:DATA=""  S TYPE=$P(DATA,"^",3),J=J+1,PSJAL(TYPE,J)=$P(DATA,"^",2)_"^"_I,PSJAL("TOTAL")=J
 S J=0 F TYPE="D","DF","DFO","DO","F","FO","O" D
 .S I=0,CAPTION=$S(TYPE="D":"DRUG:",TYPE="F":"FOOD:",TYPE="DF":"DRUG/FOOD:",TYPE="DFO":"DRUG/FOOD/OTHER:",TYPE="DO":"DRUG/OTHER",TYPE="FO":"FOOD/OTHER:",1:"OTHER:"),CAPTION=CAPTION_$E(BLANKS,$L(CAPTION),17) D
 ..F  S I=$O(PSJAL(TYPE,I)) Q:I=""  D
 ...S J=J+1,CAUSATIV=$G(PSJAL(TYPE,I)) Q:CAUSATIV=""
 ...S ^TMP("PSJALLRG",$J,J,0)="  "_CAPTION_"  "_J_$S($L(J)=2:" ",1:"  ")_$P(CAUSATIV,"^")
 ...S CAPTION="                  "
 Q
 ;
VIEW ;
 Q
 N NUMBER,STRING,TOTAL,BLANKS,IEN S BLANKS=" " F I=1:1:49 S BLANKS=BLANKS_" "
 S TOTAL=$G(PSJAL("TOTAL")) Q:'TOTAL
 S DIR(0)="N^1:"_TOTAL_":0",DIR("A")="Select Allergy/ADR" D ^DIR Q:Y="^"  K DIR
 F TYPE="D","DF","DFO","DO","F","FO","O" S CAUSATIV=$G(PSJAL(TYPE,Y)) Q:CAUSATIV'=""
 S NUMBER=$P(CAUSATIV,"^",2),J=1 D EN1^GMRAOR2(IEN,"PSJARRAY")
 S STRING=" CAUSATIVE AGENT: "_$P(CAUSATIV,"^"),STRING=STRING_$E(BLANKS,$L(STRING),50)_"VA DRUG CLASS: "_$P(PSJARRAY("V",1),"^"),^TMP("PSJALLDT",$J,J,0)=STRING
 K PSJARRAY
 Q
CWAD(DFN) ;
 I $$CWAD^ORQPT2(DFN)="" W !!,"No CWAD information for this patient." D PAUSE^VALM1 Q
 W !!
 NEW Y,GMRPDFN,GMRPOPT,GMRPEN,GMTSPHDR
 S (Y,GMRPDFN)=DFN,GMRPOPT=1,GMRPEN=1
 D ENPAT^GMRPNCW
 Q