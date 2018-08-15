GMTSPXHR ; SLC/SBW,KER - PCE Clinical Reminders/Maint ; 02/27/2015
 ;;2.7;Health Summary;**8,22,23,28,34,56,63,75,82,89,113**;Oct 20, 1995;Build 45
 ;
 ; External References
 ;   DBIA  2182  MAIN^PXRM
 ;                       
MAIN ; Entry Point for Clinical Reminders
 N CM,GMFLAG,GMSEP,HVET,HVDISP
 S (HVET,CM)=0
 I GMTSEGH["CR" S GMFLAG=0,GMSEP=0
 I GMTSEGH["CRS" S GMFLAG=1,GMSEP=0
 I GMTSEGH["CM" S GMFLAG=5,CM=1,GMSEP=1
 I GMTSEGH["CMB" S GMFLAG=4,CM=1,GMSEP=1
 I GMTSEGH["CF" S GMFLAG=5,CM=1,GMSEP=1
 I GMTSEGH["CLD" S GMFLAG=1,CM=0,GMSEP=0
 I GMTSEGH["MHVD" S HVET=1,CM=1,HVDISP=11
 I GMTSEGH["MHVS" S HVET=1,CM=1,HVDISP=10
 Q:+$G(GMTSAGE)'>0!($G(SEX)="")!($G(DFN)'>0)
 I HVET=1 D HVET Q
 Q:$O(GMTSEG(GMTSEGN,811.9,0))'>0
 W !
 N GMCR,GMFIRST,CRSEG,GMDISP
 S GMCR=0,GMFIRST=1
 F  S GMCR=$O(GMTSEG(GMTSEGN,811.9,GMCR)) Q:'GMCR  D  Q:$D(GMTSQIT)
 . S CRSEG=GMTSEG(GMTSEGN,811.9,GMCR)
 . K ^TMP("PXRHM",$J),^TMP("PXRM",$J)
 . D MAIN^PXRM(DFN,CRSEG,+$G(GMFLAG),1)
 . D:+$D(^TMP("PXRHM",$J)) GETCR
 I +$G(GMDISP)'>0 D CKP^GMTSUP Q:$D(GMTSQIT)  W "Selected Clinical Reminders not due.",!
 K ^TMP("PXRHM",$J),^TMP("PXRM",$J)
 Q
 ;
CRDISP ; Display reminder data
 I HVET=0 S GMN0=$G(^TMP("PXRHM",$J,ITEM,GMREM))
 I HVET=1 S GMN0=$G(^TMP("PXRMHV",$J,GMSTATUS,GMREM,ITEM))
 Q:GMN0']""
 S GMDISP=1
 D CKP^GMTSUP Q:$D(GMTSQIT)
 I '$D(GMTSOBJ("COMPONENT HEADER")),$D(GMTSOBJ("REPORT HEADER")),GMFIRST=1 W !
 I GMTSNPG D HDR,CKP^GMTSUP Q:$D(GMTSQIT)
 N IND,NL,GMTSTEXT,START
 S NL=0
 I HVET=0 D  Q
 . I GMTSEGH["CF" D
 .. D FINDINGS("PXRHM",.NL,.GMTSTEXT)
 .. S START=1
 .. I GMFIRST S GMFIRST=0
 .. I 'GMFIRST,GMSEP W !
 . I GMTSEGH["CLD" D LASTDONE("PXRHM",.NL,.GMTSTEXT) S START=1
 . I (GMTSEGH["CM")!(GMTSEGH["CR") D
 .. D FMTOUT^PXRMFMTO("PXRHM",.NL,.GMTSTEXT)
 .. S START=2
 .. I GMFIRST W !,GMTSTEXT(1) S GMFIRST=0
 .. I 'GMFIRST,GMSEP W !
 . F IND=START:1:NL D
 .. D CKP^GMTSUP Q:$D(GMTSQIT)
 .. I GMTSNPG D HDR
 .. W !,GMTSTEXT(IND)
 I HVET=1 D HVETDISP
 Q
 ;
FINDINGS(TMPSUB,NL,OUTPUT) ;Findings component.
 I '$D(^TMP(TMPSUB,$J)) Q
 N FREQ,LNUM,RIEN,RNAME,TEMP
 S RIEN=$O(^TMP(TMPSUB,$J,""))
 S RNAME=$O(^TMP(TMPSUB,$J,RIEN,""))
 S NL=NL+1,OUTPUT(NL)=RNAME
 S LNUM=0
 F  S LNUM=$O(^TMP(TMPSUB,$J,RIEN,RNAME,"TXT",LNUM)) Q:LNUM=""  D
 . I ^TMP(TMPSUB,$J,RIEN,RNAME,"TXT",LNUM)["Frequency" Q
 . S NL=NL+1,OUTPUT(NL)=^TMP(TMPSUB,$J,RIEN,RNAME,"TXT",LNUM)
 Q
 ;
GETCR ; Get reminders that were returned
 N ITEM,GMDT,GMN0,GMTSDAT,GMTSDUE,GMREM,X
 I HVET=1 D GETCRH
 S ITEM=0
 F  S ITEM=$O(^TMP("PXRHM",$J,ITEM)) Q:ITEM'>0  D  Q:$D(GMTSQIT)
 . S GMREM=""
 . F  S GMREM=$O(^TMP("PXRHM",$J,ITEM,GMREM)) Q:GMREM=""  D CRDISP Q:$D(GMTSQIT)
 Q
 ;
GETCRH ; Get Reminders that were returned for MyHealtheVet
 N ITEM,GMDT,GMN0,GMTSDAT,GMTSDUE,GMREM,GMSTATUS,X
 S GMSTATUS=""
 F  S GMSTATUS=$O(^TMP("PXRMHV",$J,GMSTATUS)) Q:GMSTATUS=""  D  Q:$D(GMTSQIT)
 . S GMREM=""
 . F  S GMREM=$O(^TMP("PXRMHV",$J,GMSTATUS,GMREM)) Q:GMREM=""  D  Q:$D(GMTSQIT)
 .. S ITEM=0
 .. F  S ITEM=$O(^TMP("PXRMHV",$J,GMSTATUS,GMREM,ITEM)) Q:ITEM'>0  D CRDISP  Q:$D(GMTSQIT)
 Q
 ;
HDR ; Component Header
 Q:'$D(GMTSOBJ("COMPONENT HEADER"))
 N GMREC S GMREC=0
 F  S GMREC=$O(^TMP("PXRM",$J,"DISC",GMREC)) Q:+GMREC'>0  D  Q:$D(GMTSQIT)
 . D CKP^GMTSUP Q:$D(GMTSQIT)
 . W ?1,$G(^TMP("PXRM",$J,"DISC",GMREC)),!
 W !
 Q
HVET ;
 N GMFIRST
 K ^TMP("PXRHM",$J),^TMP("PXRMHV",$J)
 S GMFIRST=1
 D HS^PXRMHVET(DFN,HVDISP)
 D:+$D(^TMP("PXRMHV",$J)) GETCRH
 I +$G(GMDISP)'>0 D CKP^GMTSUP Q:$D(GMTSQIT)  W "No Patient Reminders found.",!
 K ^TMP("PXRHM",$J),^TMP("PXRMHV",$J)
 Q
 ;
HVETDISP ;MHV output.
 N IND,NL
 S NL=0
 D MHVOUT^PXRMFMTO("PXRMHV",GMSTATUS,GMREM,ITEM,.NL,.GMTSTEXT)
 I GMFIRST W !,GMTSTEXT(1) S GMFIRST=0
 F IND=2:1:NL D
 . D CKP^GMTSUP Q:$D(GMTSQIT)
 . I GMTSNPG D HDR
 . W !,GMTSTEXT(IND)
 W !
 Q
 ;
LASTDONE(TMPSUB,NL,OUTPUT) ;Last Done component.
 I '$D(^TMP(TMPSUB,$J)) Q
 N DFMT,FREQ,LAST,RIEN,RNAME,STATUS,TEMP,TEXT
 S RIEN=$O(^TMP(TMPSUB,$J,""))
 S RNAME=$O(^TMP(TMPSUB,$J,RIEN,""))
 S FREQ=$G(^TMP(TMPSUB,$J,RIEN,RNAME,"FREQ"))
 S TEMP=$G(^TMP(TMPSUB,$J,RIEN,RNAME))
 S DFMT=$S(FREQ["H":"5Z",1:"5DZ")
 S STATUS=$P(TEMP,U,1)
 S LAST=$S(STATUS="N/A":"N/A",1:$$DDATE^PXRMDATE($P(TEMP,U,3),DFMT))
 S TEXT=RNAME_$$REPEAT^XLFSTR(" ",(41-$L(RNAME)))_LAST
 S NL=NL+1,OUTPUT(NL)=TEXT
 Q
 ;
