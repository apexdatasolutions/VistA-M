PXRMPRF ;SLC/PKR - Computed findings for PRF. ;09/29/2014
 ;;2.0;CLINICAL REMINDERS;**17,18,47**;Feb 4, 2005;Build 289
 ;Calls to DGPFAPIU supported by DBIA #4903 and 5491.
 ;==========================================
GETINF(DFN,NGET,BDT,EDT,NFOUND,TEST,DATE,DATA,TEXT) ;VA-PATIENT RECORD FLAG
 ;INFORMATION computed finding. Return information about a specific
 ;record flag.
 N BDTNT,EDTNTFLAG,FLAGCAT,FLAGNAME,IND,LIST,RESULT,TEMP
 I (TEST="")!(NGET=0) S NFOUND=0 Q
 S FLAGNAME=$P(TEST,U,1)
 S FLAGCAT=$P(TEST,U,2)
 I FLAGCAT="" S FLAGCAT="L"
 S BDTNT=$P(BDT,".",1)
 S EDTNT=$P(EDT,".",1)
 ;DBIA #5491
 S FLAG=$$GETFLAG^DGPFAPIU(FLAGNAME,FLAGCAT)
 ;DBIA #4903
 S RESULT=$$GETINF^DGPFAPIH(DFN,FLAG,BDTNT,EDTNT,"LIST")
 S NFOUND=0
 I RESULT=0 Q
 S IND=0
 F IND=+$O(LIST("HIST",IND)) Q:IND=0  D
 . S NFOUND=NFOUND+1
 . S TEST(NFOUND)=1
 . S DATE(NFOUND)=$P(LIST("HIST",IND,"DATETIME"),U,1)
 . S (DATA(NFOUND,"VALUE"),DATA(NFOUND,"ACTION"))=$P(LIST("HIST",IND,"ACTION"),U,2)
 . S DATA(NFOUND,"APPRVBY")=$P(LIST("HIST",IND,"APPRVBY"),U,2)
 . S DATA(NFOUND,"ASSIGN DT")=$P(LIST("ASSIGNDT"),U,1)
 . S DATA(NFOUND,"CATEGORY")=$P(LIST("CATEGORY"),U,2)
 . S DATA(NFOUND,"FLAGTYPE")=$P(LIST("FLAGTYPE"),U,2)
 . S DATA(NFOUND,"REVIEW DT")=$P(LIST("REVIEWDT"),U,1)
 . S DATA(NFOUND,"TIU TITLE")=$P(LIST("TIUTITLE"),U,2)
 . S TEMP="\\Flag - "_$P(LIST("FLAG"),U,2)_"("_DATA(NFOUND,"CATEGORY")_")."
 . S TEMP=TEMP_"\\Assigned "_$P(LIST("ASSIGNDT"),U,2)_" by "_DATA(NFOUND,"APPRVBY")_". "
 . S TEMP=TEMP_LIST("HIST",IND,"COMMENT",1,0)
 . S TEXT(NFOUND)=TEMP
 Q
 ;
 ;==========================================
GETLST(NGET,BDT,EDT,PLIST,PARAM) ;VA-PATIENT RECORD FLAG LIST computed finding.
 ;Return a list of patients with a specified record flag.
 N BDTNT,DATE,DFN,EDTNT,FLAGCAT,FLAGNAME,IND,LIST,RESULT
 K ^TMP($J,PLIST)
 I PARAM="" Q
 S FLAGNAME=$P(PARAM,U,1)
 S FLAGCAT=$P(PARAM,U,2)
 I FLAGCAT="" S FLAGCAT="L"
 S BDTNT=$P(BDT,".",1)
 S EDTNT=$P(EDT,".",1)
 ;DBIA #5491
 S FLAG=$$GETFLAG^DGPFAPIU(FLAGNAME,FLAGCAT)
 ;DBIA #4903
 S RESULT=$$GETLST^DGPFAPIH(FLAG,BDTNT,EDTNT,"LIST")
 I RESULT=0 Q
 S DFN=0
 F  S DFN=+$O(LIST(DFN)) Q:DFN=0  S ^TMP($J,PLIST,DFN,1)=U_$P(LIST(DFN,0),U,3)_U_U_U
 Q
 ;
 ;==========================================
PRF(DFN,NGET,BDT,EDT,NFOUND,TEST,DATE,DATA,TEXT) ;Computed finding for
 ;getting a list of the patient's active flags.
 N ASSIGNDT,CAT,DONE,FLAG,FLAGKEEP,FLAGLIST,IND
 N NFLAGS,NOCC,OK,SDIR,SUB,TEMP,TYPE
 I (TEST="")!(NGET=0) S NFOUND=0 Q
 ;DBIA #3860
 S NFLAGS=$$GETACT^DGPFAPI(DFN,"FLAGLIST")
 ;If no flags are found quit
 I NFLAGS=0 S NFOUND=0 Q
 S SDIR=$S(NGET<0:1,1:-1)
 S NOCC=$S(NGET<0:-NGET,1:NGET)
 ;Search the parameter list for category, type, and flag.
 S CAT=$F(TEST,"C:")
 I CAT>0 S CAT=$E(TEST,CAT),CAT=$S(CAT="N":"NATIONAL",CAT="L":"LOCAL")
 S TYPE=$F(TEST,"T:")
 I TYPE>0 S TEMP=$E(TEST,TYPE,245),TYPE=$P(TEMP,U,1),TYPE=$S(TYPE="B":"BEHAVIORAL",TYPE="C":"CLINICAL",TYPE="O":"OTHER",TYPE="R":"RESEARCH")
 S FLAG=$F(TEST,"F:")
 I FLAG>0 S TEMP=$E(TEST,FLAG,245),FLAG=$P(TEMP,U,1)
 ;Check all the flags that were returned and keep those that meet
 ;the criteria. Order by assigned date.
 F IND=1:1:NFLAGS D
 . S OK=1
 . I CAT'=0,FLAGLIST(IND,"CATEGORY")'[CAT S OK=0
 . I TYPE'=0,TYPE'=$P(FLAGLIST(IND,"FLAGTYPE"),U,2) S OK=0
 . I FLAG'=0,FLAG'=$P(FLAGLIST(IND,"FLAG"),U,2) S OK=0
 . I OK S FLAGKEEP($P(FLAGLIST(IND,"ASSIGNDT"),U,1),IND)=""
 S ASSIGNDT="",(DONE,NFOUND)=0
 F  S ASSIGNDT=$O(FLAGKEEP(ASSIGNDT),SDIR) Q:(DONE)!(ASSIGNDT="")  D
 . S IND=0
 . F  S IND=$O(FLAGKEEP(ASSIGNDT,IND)) Q:(DONE)!(IND="")  D
 .. S NFOUND=NFOUND+1
 .. I NFOUND=NOCC S DONE=1
 .. S TEST(NFOUND)=1
 .. S DATE(NFOUND)=ASSIGNDT
 .. S SUB=""
 ..;Save the CSUB data.
 .. F  S SUB=$O(FLAGLIST(IND,SUB)) Q:SUB=""  D
 ... I SUB="NARR" Q
 ... S DATA(NFOUND,SUB)=$P($G(FLAGLIST(IND,SUB)),U,2)
 .. S TEXT(NFOUND)=DATA(NFOUND,"FLAG")_"; Category: "_DATA(NFOUND,"CATEGORY")_"; TYPE: "_DATA(NFOUND,"FLAGTYPE")
 Q
 ;
