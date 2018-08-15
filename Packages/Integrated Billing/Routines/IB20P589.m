IB20P589 ;ALB/RRA - IB*2.0*589; DSS CLINIC STOP CODES ;06/03/15
 ;;2.0;INTEGRATED BILLING;**589**;21-MAR-94;Build 1
 ;;Per VA Directive 6402, this routine should not be modified.
 ;
 Q
EN ;
 N IBEFFDT
 D START,ADD,FINISH
 Q
 ;
START D BMES^XPDUTL("DSS Clinic Stop Codes, Post-Install Starting")
 Q
 ;
FINISH D BMES^XPDUTL("DSS Clinic Stop Codes, Post-Install Complete")
 Q
 ;
 ; 
ADD ;add a new code
 N Y,IBC,IBT,IBX,IBY,IBCODE,IBTYPE,IBDES,IBOVER
 D BMES^XPDUTL(" Adding new codes to file 352.5")
 S IBC=0
 F IBX=1:1 S IBT=$P($T(NCODE+IBX),";",3) Q:'$L(IBT)  D
 . S IBCODE=+$P(IBT,U)
 . S IBTYPE=$P(IBT,U,2)
 . S IBDES=$E($P(IBT,U,3),1,30)
 . S IBOVER=$P(IBT,U,4)
 . S IBY=$P(IBT,U,5)
 . I $D(^IBE(352.5,"AEFFDT",IBCODE,-IBY)) D  Q
 . . D BMES^XPDUTL(" Duplication of stop code "_IBCODE)
 . S Y=+$$ADD3525(IBCODE,IBY,IBTYPE,IBDES,IBOVER) S:Y>0 IBC=IBC+1
 D BMES^XPDUTL("     "_IBC_$S(IBC<2:" entry",1:" entries")_" added to 352.5")
 Q
 ;
 ;
ADD3525(IBCODE,IBEFFDT,IBTYPE,IBDES,IBOVER) ;
 ;add a new entry
 D BMES^XPDUTL("   "_IBCODE_"  "_IBDES)
 N IBIENS,IBFDA,IBER,IBRET
 S IBRET=""
 S IBIENS="+1,"
 S IBFDA(352.5,IBIENS,.01)=IBCODE
 S IBFDA(352.5,IBIENS,.02)=IBEFFDT
 S IBFDA(352.5,IBIENS,.03)=IBTYPE
 S IBFDA(352.5,IBIENS,.04)=IBDES
 S:IBOVER IBFDA(352.5,IBIENS,.05)=1
 D UPDATE^DIE("","IBFDA","IBRET","IBER")
 I $D(IBER) D BMES^XPDUTL(IBER("DIERR",1,"TEXT",1))
 Q $G(IBRET(1))
 ;
 ;new stop codes - ADD
NCODE ;;code^billable type^description^override flag^effective date
 ;;721^0^OEND ED IND^1^3170315
 ;;722^0^OEND ED GRP^1^3170315
 ;;723^0^OEND ED CVT PT SITE^1^3170315
 ;;724^0^OEND ED CVT PRV SITE^1^3170315
 ;
