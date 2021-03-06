HDI1015A ;BPFO/DTG - PATCH 15 POST INSTALL ;14 Apr 2016
 ;;1.0;HEALTH DATA & INFORMATICS;**15**;Feb 22, 2005;Build 10
 ;
POST ;
 N DOMAIN,HDIDOM,HDIERROR,HDIMSG,DOM,HIDOM
 ;
 S HDIMSG(1)="Post-Installation (POST^HDI1015A) will now be run."
 S HDIMSG(2)=" "
 D MES^XPDUTL(.HDIMSG) K HDIMSG
 ;
 S DOMAIN="LABORATORY" ; domain to be added to HDIS DOMAIN File #7115.1
 ;
 S HDIDOM=$$GETDOM(DOMAIN)
 I +HDIDOM>0 G VER
 ; add domain
 I '+$$UPDTDOM^HDISVCUT(DOMAIN) D  Q
 . D MES^XPDUTL("***** Error adding the "_DOMAIN_" domain to the HDIS DOMAIN FILE #7115.1."),PSTHALT("")
 ;
 ; get domain IEN
 I '+$$GETIEN^HDISVF09(DOMAIN,.HDIDOM) D  Q
 . D MES^XPDUTL("***** Error retrieving the IEN for the "_DOMAIN_" domain."),PSTHALT("")
 ;
VER ; verify domain IEN
 I '+HDIDOM D  Q
 . D MES^XPDUTL("***** Error verifying the IEN for the "_DOMAIN_" domain."),PSTHALT("")
 ;
 ; get files & fields to be added to File #7115.6
 N DATA,LINE F LINE=1:1 S DATA=$P($T(DATA+LINE),";;",2) Q:DATA=""  D
 . N FILE,FIELD,HDIDATA,HDIERMSG
 . S FILE=$P(DATA,U),FIELD=$P(DATA,U,2)
 . I +$$GETIEN^HDISVF05(FILE,FIELD) Q  ; quit if entry already exists
 . S HDIDATA(FILE)=FIELD
 . ; add entry to HDIS FILE/FIELD File #7115.6
 . I '+$$ADDDFFS^HDISVF09(HDIDOM,.HDIDATA,.HDIERMSG) D
 . . I '$D(HDIERROR) D MES^XPDUTL("***** "_"Error updating File #7115.6")
 . . S HDIERROR=1
 . . D MES^XPDUTL("***** "_HDIERMSG)
 ;
 I +$D(HDIERROR) D PSTHALT("") Q
 ;
 S HDIMSG(1)="Post-Installation complete."
 S HDIMSG(2)=""
 D MES^XPDUTL(.HDIMSG)
 Q
PSTHALT(MSG) ; display error message
 S HDIMSG(1)=""
 S HDIMSG(2)=MSG
 S HDIMSG(3)="***** Post-installation has been halted."
 S HDIMSG(4)="***** Please contact Enterprise VistA Support."
 S HDIMSG(5)=""
 D MES^XPDUTL(.HDIMSG)
 Q
 ;
GETDOM(DOM) ; get the domain IEN
 I '+$$GETIEN^HDISVF09(DOM,.HIDOM) Q "0"
 Q +HIDOM
 ;
DATA ;
 ;;66.3^.01
 ;;
 Q
