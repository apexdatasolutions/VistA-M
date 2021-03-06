GMTSLREM ; SLC/JER,KER - Electron Microscopy Comp Dvr ; 02/27/2002
 ;;2.7;Health Summary;**28,49**;Oct 20, 1995
 ;                      
 ; External Reference
 ;   DBIA 10035  ^DPT(
 ;                    
MAIN ; Main Entry Point
 N GMI,MAX,LRDFN,IX,X,IX0 Q:'$D(^DPT(DFN,"LR"))
 S LRDFN=+($G(^DPT(DFN,"LR")))
 S MAX=$S(+($G(GMTSNDM))>0:+($G(GMTSNDM)),1:99999)
 D ^GMTSLREE Q:'$D(^TMP("LREM",$J))  S IX=0
 F GMI=1:1:MAX S IX=$O(^TMP("LREM",$J,IX)) Q:IX'>0  D:GMI>1 CKP^GMTSUP Q:$D(GMTSQIT)  W:GMI>1&('GMTSNPG) ! D
 . S IX0=""
 . F  S IX0=$O(^TMP("LREM",$J,IX,IX0)) Q:IX0=""!(IX0?1A)  D
 . . S X=^TMP("LREM",$J,IX,IX0) D WRT
 . I $D(^TMP("LREM",$J,IX,1.2)) D SUPPR
 K ^TMP("LREM",$J)
 Q
WRT ; Writes Electron Microscopy Record
 N IX1,GMJ I IX0=0 D  Q
 . D CKP^GMTSUP Q:$D(GMTSQIT)
 . W ?8,"Collected:",?19,$P(X,U),?31,"Acc:",?36,$P(X,U,2),!
 I IX0=.1 D WRTSPC Q
 I $S(IX0=.2:1,IX0=1:1,IX0=1.1:1,IX0=1.3:1,IX0=1.4:1,1:0) D TEXT Q
 I IX0=2 S IX1=0 F  S IX1=$O(^TMP("LREM",$J,IX,IX0,IX1)) Q:IX1'>0  S X=^(IX1) D WRTP
 Q
WRTSPC ; Writes Specimen field entries
 N GMS D CKP^GMTSUP Q:$D(GMTSQIT)  W ?9,"Specimen:"  S GMS=0
 F  S GMS=$O(^TMP("LREM",$J,IX,.1,GMS)) Q:GMS'>0  D CKP^GMTSUP Q:$D(GMTSQIT)  W ?19,^TMP("LREM",$J,IX,.1,GMS),!
 Q
TEXT ; Handles GROSS DESCRIPTION & MICROSCOPIC EXAM/DX Print
 N LN,GMTSLN,GMTSLNI D CKP^GMTSUP Q:$D(GMTSQIT)  W ?(17-$L(X)),X_":",!
 S LN=0 F  S LN=$O(^TMP("LREM",$J,IX,IX0,LN)) Q:LN'>0  S GMTSLN=^(LN) D
 . I $L(GMTSLN)>78 S GMTSLN=$$WRAP^GMTSORC(GMTSLN,78)
 . D CKP^GMTSUP Q:$D(GMTSQIT)  W $P(GMTSLN,"|"),! D
 . . F GMTSLNI=2:1:$L(GMTSLN,"|") D CKP^GMTSUP Q:$D(GMTSQIT)  W:$P(GMTSLN,"|",GMTSLNI)]"" $P(GMTSLN,"|",GMTSLNI),!
 Q
SUPPR ; Writes Supplementary Report
 N GMTSR,SRDATE,GMTSRL,GMTSRLI,X S IX1=0
 F  S IX1=$O(^TMP("LREM",$J,IX,1.2,IX1)) Q:IX1'>0  D CKP^GMTSUP Q:$D(GMTSQIT)  S SRDATE=^TMP("LREM",$J,IX,1.2,IX1,0) S X=SRDATE D REGDTM4^GMTSU W "Supplementary Rpt: ",X,! D
 . S GMTSR=0
 . F  S GMTSR=$O(^TMP("LREM",$J,IX,1.2,IX1,GMTSR)) Q:GMTSR'>0  S GMTSRL=^(GMTSR) D
 . . I $L(GMTSRL)>78 S GMTSRL=$$WRAP^GMTSORC(GMTSRL,78)
 . . W $P(GMTSRL,"|"),! D
 . . . F GMTSRLI=2:1:$L(GMTSRL,"|") D CKP^GMTSUP Q:$D(GMTSQIT)  W:$P(GMTSRL,"|",GMTSRLI)]"" $P(GMTSRL,"|",GMTSRLI),!
 Q
WRTP ; Writes Procedure field
 N GMQ,GMK
 I $O(^TMP("LREM",$J,IX,IX0,IX1,4,0)) D  Q:$D(GMTSQIT)
 . D CKP^GMTSUP Q:$D(GMTSQIT)  W ?7,"Procedures:"
 S GMT=0
 F  S GMT=$O(^TMP("LREM",$J,IX,IX0,IX1,4,GMT)) Q:GMT'>0  D
 . S GMQ=$P(^TMP("LREM",$J,IX,IX0,IX1,4,GMT),U)
 . I $L(GMQ)>56 S GMQ=$$WRAP^GMTSORC(GMQ,56)
 . D CKP^GMTSUP Q:$D(GMTSQIT)  W ?21,$P(GMQ,"|"),! D
 . . F GMK=2:1:$L(GMQ,"|") D CKP^GMTSUP Q:$D(GMTSQIT)  W:$P(GMQ,"|",GMK)]"" ?23,$P(GMQ,"|",GMK),!
 Q
