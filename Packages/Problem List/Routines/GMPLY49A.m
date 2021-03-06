GMPLY49A ;ISP/TC - Problem Selection List Files Data Migration ;08/22/17  11:32
 ;;2.0;Problem List;**49**;Aug 25, 1994;Build 43
 ;
 ; External References:
 ;   ICR  2053   FILE/UPDATE^DIE
 ;   ICR  10103  $$DT^XLFDT
 ;   ICR  10141  MES/BMES^XPDUTL
 ;
EN ;
 N GMPLTXT,GMPLTXTC
 D SETCLASS("125",4,".04") ; Set for selection lists
 D SETCLASS("125.11",3,".03") ; Set for categories
 D BMES^XPDUTL("  Migrating data in File #125.1 to File #125...")
 D LSTMGRTN(.GMPLTXT)
 D BMES^XPDUTL(.GMPLTXT)
 D BMES^XPDUTL("  Migrating data in File #125.12 to File #125.11...")
 D CATMGRTN(.GMPLTXTC)
 D BMES^XPDUTL(.GMPLTXTC)
 Q
 ;
BLDERMSG(GMPLTXT,GMPLLKND,GMPLERND,GMPLFILE) ; Build migration error messages
 N GMPI,GMPJ,GMPK,GMPCNT,GMPX S (GMPI,GMPK)="",GMPJ=1
 S GMPLTXT(1)="  The following error(s) occurred during migration to File #"_GMPLFILE_":"
 F  S GMPI=$O(^TMP(GMPLLKND,$J,GMPI)) Q:'GMPI  D
 . S GMPJ=GMPJ+1
 . S GMPLTXT(GMPJ)=$G(^TMP(GMPLLKND,$J,GMPI))
 S GMPCNT=GMPJ
 F  S GMPK=$O(^TMP(GMPLERND,$J,GMPK)) Q:'GMPK  D
 . S GMPCNT=GMPCNT+1,GMPX=^TMP(GMPLERND,$J,GMPK)
 . S GMPLTXT(GMPCNT)="  Record #"_$P(GMPX,U)_"; Error: "_$P(GMPX,U,2)
 K ^TMP(GMPLLKND,$J),^TMP(GMPLERND,$J)
 Q
 ;
CATMGRTN(GMPLTXTC) ; Migrate data in file #125.12 to file #125.11
 N GMPLIEN,GMPLDA,GMPL0,GMPFDA,GMPERR,GMPI,GMPCNT,GMPLLKND,GMPLERND,GMPLFILE
 S (GMPLIEN,GMPLDA)="",(GMPCNT,GMPI)=0,GMPLFILE="125.11"
 K ^TMP("GMPERRCT",$J),^TMP("GMPLKERC",$J)
 F  S GMPLIEN=$O(^GMPL(125.12,"B",GMPLIEN)) Q:'GMPLIEN  D
 . F  S GMPLDA=$O(^GMPL(125.12,"B",GMPLIEN,GMPLDA)) Q:'GMPLDA  D
 . . L +^GMPL(125.11,GMPLIEN):5 I '$T D  Q
 . . . S GMPI=GMPI+1
 . . . S ^TMP("GMPLKERC",$J,GMPI)="   Lock Error: error updating record #"_GMPLIEN_" in File #125.11."
 . . S GMPCNT=GMPCNT+1,GMPL0=$G(^GMPL(125.12,GMPLDA,0))
 . . S GMPFDA(125.111,"+2,"_GMPLIEN_",",.01)=$P(GMPL0,U,3)
 . . S GMPFDA(125.111,"+2,"_GMPLIEN_",",.02)=$P(GMPL0,U,2)
 . . S GMPFDA(125.111,"+2,"_GMPLIEN_",",.03)=$P(GMPL0,U,4)
 . . S GMPFDA(125.111,"+2,"_GMPLIEN_",",.04)=$P(GMPL0,U,5)
 . . S GMPFDA(125.111,"+2,"_GMPLIEN_",",.05)=$P(GMPL0,U,6)
 . . S GMPFDA(125.111,"+2,"_GMPLIEN_",",.06)=$P(GMPL0,U,7)
 . . D UPDATE^DIE("","GMPFDA","","GMPERR")
 . . L -^GMPL(125.11,GMPLIEN)
 . . I $D(GMPERR) S ^TMP("GMPERRCT",$J,GMPCNT)=$G(GMPLIEN)_$G(GMPERR("DIERR",1,"TEXT",1))
 S GMPLLKND="GMPLKERC",GMPLERND="GMPERRCT"
 I '$D(^GMPL(125.12,"B")) S GMPLTXTC="  ...No data to migrate."
 E  I $D(^TMP("GMPERRCT",$J))!($D(^TMP("GMPLKERC",$J))) D BLDERMSG(.GMPLTXTC,GMPLLKND,GMPLERND,GMPLFILE)
 E  S GMPLTXTC="  ...Migration complete."
 Q
 ;
LSTMGRTN(GMPLTXT) ; Migrate data in file #125.1 to file #125
 N GMPLIEN,GMPLDA,GMPL0,GMPFDA,GMPERR,GMPCNT,GMPI,GMPLLKND,GMPLERND,GMPLFILE
 S (GMPLIEN,GMPLDA)="",(GMPCNT,GMPI)=0,GMPLFILE="125"
 K ^TMP("GMPERRLT",$J),^TMP("GMPLKERL",$J)
 F  S GMPLIEN=$O(^GMPL(125.1,"B",GMPLIEN)) Q:'GMPLIEN  D
 . F  S GMPLDA=$O(^GMPL(125.1,"B",GMPLIEN,GMPLDA)) Q:'GMPLDA  D
 . . L +^GMPL(125,GMPLIEN):5 I '$T D  Q
 . . . S GMPI=GMPI+1
 . . . S ^TMP("GMPLKERL",$J,GMPI)="   Lock Error: error updating record #"_GMPLIEN_" in File #125."
 . . S GMPCNT=GMPCNT+1,GMPL0=$G(^GMPL(125.1,GMPLDA,0))
 . . S GMPFDA(125.01,"+2,"_GMPLIEN_",",.01)=$P(GMPL0,U,3)
 . . S GMPFDA(125.01,"+2,"_GMPLIEN_",",.02)=$P(GMPL0,U,2)
 . . S GMPFDA(125.01,"+2,"_GMPLIEN_",",.03)=$P(GMPL0,U,4)
 . . S GMPFDA(125.01,"+2,"_GMPLIEN_",",.04)=$P(GMPL0,U,5)
 . . D UPDATE^DIE("","GMPFDA","","GMPERR")
 . . L -^GMPL(125,GMPLIEN)
 . . I $D(GMPERR) S ^TMP("GMPERRLT",$J,GMPCNT)=$G(GMPLIEN)_$G(GMPERR("DIERR",1,"TEXT",1))
 S GMPLLKND="GMPLKERL",GMPLERND="GMPERRLT"
 I '$D(^GMPL(125.1,"B")) S GMPLTXT="  ...No data to migrate."
 E  I $D(^TMP("GMPERRLT",$J))!($D(^TMP("GMPLKERL",$J))) D BLDERMSG(.GMPLTXT,GMPLLKND,GMPLERND,GMPLFILE)
 E  S GMPLTXT="  ...Migration complete."
 Q
 ;
SETCLASS(GMPLFNMB,GMPLPCE,GMPLCFLD) ; Set pre-existing lists and categories to LOCAL class
 N GMPLNM,GMPLIEN,GMPL0,GMPLFDA,GMPLERR,GMPLTXT,GMPLITEM
 S GMPLNM="",GMPLIEN=0
 S GMPLITEM=$S(GMPLFNMB="125":"lists",1:"categories")
 D BMES^XPDUTL("  Setting pre-existing "_GMPLITEM_" to a default LOCAL class...")
 F  S GMPLNM=$O(^GMPL(GMPLFNMB,"B",GMPLNM)) Q:GMPLNM=""  D
 . F  S GMPLIEN=$O(^GMPL(GMPLFNMB,"B",GMPLNM,GMPLIEN)) Q:'GMPLIEN  D
 . . S GMPL0=$G(^GMPL(GMPLFNMB,GMPLIEN,0))
 . . I '$L($P(GMPL0,U,GMPLPCE)) D
 . . . S GMPLFDA(GMPLFNMB,""_GMPLIEN_",",.02)=$$DT^XLFDT
 . . . S GMPLFDA(GMPLFNMB,""_GMPLIEN_",",GMPLCFLD)="L"
 . . . D FILE^DIE("K","GMPLFDA","GMPLERR")
 . . . I $D(GMPLERR) D
 . . . . S GMPLTXT="  Record #"_GMPLIEN_"; Error: "_GMPLERR("DIERR",1,"TEXT",1)
 . . . . D BMES^XPDUTL(.GMPLTXT)
 D BMES^XPDUTL("  ...Local class assignments completed.")
 Q
 ;
