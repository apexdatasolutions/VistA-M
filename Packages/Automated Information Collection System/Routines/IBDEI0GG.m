IBDEI0GG ; ; 19-NOV-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,7311,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,7311,1,2,0)
 ;;=2^A4690
 ;;^UTILITY(U,$J,358.3,7311,1,3,0)
 ;;=3^DIALYZER, EACH
 ;;^UTILITY(U,$J,358.3,7312,0)
 ;;=93000^^51^485^15^^^^1
 ;;^UTILITY(U,$J,358.3,7312,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,7312,1,2,0)
 ;;=2^93000
 ;;^UTILITY(U,$J,358.3,7312,1,3,0)
 ;;=3^ELECTROCARDIOGRAM COMPLETE
 ;;^UTILITY(U,$J,358.3,7313,0)
 ;;=A4730^^51^485^16^^^^1
 ;;^UTILITY(U,$J,358.3,7313,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,7313,1,2,0)
 ;;=2^A4730
 ;;^UTILITY(U,$J,358.3,7313,1,3,0)
 ;;=3^FISTULA CANNULATION SET, EA
 ;;^UTILITY(U,$J,358.3,7314,0)
 ;;=90935^^51^485^18^^^^1
 ;;^UTILITY(U,$J,358.3,7314,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,7314,1,2,0)
 ;;=2^90935
 ;;^UTILITY(U,$J,358.3,7314,1,3,0)
 ;;=3^HEMODIALYSIS ONE EVALUATION
 ;;^UTILITY(U,$J,358.3,7315,0)
 ;;=90937^^51^485^19^^^^1
 ;;^UTILITY(U,$J,358.3,7315,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,7315,1,2,0)
 ;;=2^90937
 ;;^UTILITY(U,$J,358.3,7315,1,3,0)
 ;;=3^HEMODIALYSIS REPEATED EVAL
 ;;^UTILITY(U,$J,358.3,7316,0)
 ;;=E1590^^51^485^17^^^^1
 ;;^UTILITY(U,$J,358.3,7316,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,7316,1,2,0)
 ;;=2^E1590
 ;;^UTILITY(U,$J,358.3,7316,1,3,0)
 ;;=3^HEMODIALYSIS MACHINE
 ;;^UTILITY(U,$J,358.3,7317,0)
 ;;=49421^^51^485^20^^^^1
 ;;^UTILITY(U,$J,358.3,7317,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,7317,1,2,0)
 ;;=2^49421
 ;;^UTILITY(U,$J,358.3,7317,1,3,0)
 ;;=3^INS TUN IP CATH FOR DIAL OPN
 ;;^UTILITY(U,$J,358.3,7318,0)
 ;;=36556^^51^485^21^^^^1
 ;;^UTILITY(U,$J,358.3,7318,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,7318,1,2,0)
 ;;=2^36556
 ;;^UTILITY(U,$J,358.3,7318,1,3,0)
 ;;=3^INSERT NON-TUNNEL CV CATH
 ;;^UTILITY(U,$J,358.3,7319,0)
 ;;=99195^^51^485^22^^^^1
 ;;^UTILITY(U,$J,358.3,7319,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,7319,1,2,0)
 ;;=2^99195
 ;;^UTILITY(U,$J,358.3,7319,1,3,0)
 ;;=3^PHLEBOTOMY THERAPEUTIC
 ;;^UTILITY(U,$J,358.3,7320,0)
 ;;=S0630^^51^485^23^^^^1
 ;;^UTILITY(U,$J,358.3,7320,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,7320,1,2,0)
 ;;=2^S0630
 ;;^UTILITY(U,$J,358.3,7320,1,3,0)
 ;;=3^REMOVAL OF SUTURES BY MD
 ;;^UTILITY(U,$J,358.3,7321,0)
 ;;=49422^^51^485^24^^^^1
 ;;^UTILITY(U,$J,358.3,7321,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,7321,1,2,0)
 ;;=2^49422
 ;;^UTILITY(U,$J,358.3,7321,1,3,0)
 ;;=3^REMOVE PERM CANNULA/CATHETER
 ;;^UTILITY(U,$J,358.3,7322,0)
 ;;=49422^^51^485^25^^^^1
 ;;^UTILITY(U,$J,358.3,7322,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,7322,1,2,0)
 ;;=2^49422
 ;;^UTILITY(U,$J,358.3,7322,1,3,0)
 ;;=3^REMOVE TUNNELED IP CATH
 ;;^UTILITY(U,$J,358.3,7323,0)
 ;;=A4740^^51^485^26^^^^1
 ;;^UTILITY(U,$J,358.3,7323,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,7323,1,2,0)
 ;;=2^A4740
 ;;^UTILITY(U,$J,358.3,7323,1,3,0)
 ;;=3^SHUNT ACCESSORY
 ;;^UTILITY(U,$J,358.3,7324,0)
 ;;=A4714^^51^485^27^^^^1
 ;;^UTILITY(U,$J,358.3,7324,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,7324,1,2,0)
 ;;=2^A4714
 ;;^UTILITY(U,$J,358.3,7324,1,3,0)
 ;;=3^TREATED WATER PER GALLON
 ;;^UTILITY(U,$J,358.3,7325,0)
 ;;=A4706^^51^485^4^^^^1
 ;;^UTILITY(U,$J,358.3,7325,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,7325,1,2,0)
 ;;=2^A4706
 ;;^UTILITY(U,$J,358.3,7325,1,3,0)
 ;;=3^BICARBONATE CONC SOL PER GALLON
 ;;^UTILITY(U,$J,358.3,7326,0)
 ;;=90965^^51^486^1^^^^1
 ;;^UTILITY(U,$J,358.3,7326,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,7326,1,2,0)
 ;;=2^90965
 ;;^UTILITY(U,$J,358.3,7326,1,3,0)
 ;;=3^ESRD HOME PT SERV P MO AGE 12-19
 ;;^UTILITY(U,$J,358.3,7327,0)
 ;;=90966^^51^486^2^^^^1
 ;;^UTILITY(U,$J,358.3,7327,1,0)
 ;;=^358.31IA^3^2
