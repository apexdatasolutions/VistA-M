IBDEI16D ; ; 20-MAY-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;OCT 15, 2014
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,21010,1,1,0)
 ;;=1^V58.12
 ;;^UTILITY(U,$J,358.3,21010,1,8,0)
 ;;=8^Enc for Antineoplastic Immunother
 ;;^UTILITY(U,$J,358.3,21010,2)
 ;;=^341508
 ;;^UTILITY(U,$J,358.3,21011,0)
 ;;=188.9^^118^1262^2
 ;;^UTILITY(U,$J,358.3,21011,1,0)
 ;;=^358.31IA^8^2
 ;;^UTILITY(U,$J,358.3,21011,1,1,0)
 ;;=1^188.9
 ;;^UTILITY(U,$J,358.3,21011,1,8,0)
 ;;=8^Malig Neo Bladder,Unspec Part
 ;;^UTILITY(U,$J,358.3,21011,2)
 ;;=^267253
 ;;^UTILITY(U,$J,358.3,21012,0)
 ;;=233.7^^118^1262^1
 ;;^UTILITY(U,$J,358.3,21012,1,0)
 ;;=^358.31IA^8^2
 ;;^UTILITY(U,$J,358.3,21012,1,1,0)
 ;;=1^233.7
 ;;^UTILITY(U,$J,358.3,21012,1,8,0)
 ;;=8^Malig Neo Bladder In Situ
 ;;^UTILITY(U,$J,358.3,21012,2)
 ;;=^267742
 ;;^UTILITY(U,$J,358.3,21013,0)
 ;;=185.^^118^1262^12
 ;;^UTILITY(U,$J,358.3,21013,1,0)
 ;;=^358.31IA^8^2
 ;;^UTILITY(U,$J,358.3,21013,1,1,0)
 ;;=1^185.
 ;;^UTILITY(U,$J,358.3,21013,1,8,0)
 ;;=8^Malig Neo Prostate
 ;;^UTILITY(U,$J,358.3,21013,2)
 ;;=^99481
 ;;^UTILITY(U,$J,358.3,21014,0)
 ;;=189.0^^118^1262^10
 ;;^UTILITY(U,$J,358.3,21014,1,0)
 ;;=^358.31IA^8^2
 ;;^UTILITY(U,$J,358.3,21014,1,1,0)
 ;;=1^189.0
 ;;^UTILITY(U,$J,358.3,21014,1,8,0)
 ;;=8^Malig Neo Kidney
 ;;^UTILITY(U,$J,358.3,21014,2)
 ;;=^73523
 ;;^UTILITY(U,$J,358.3,21015,0)
 ;;=189.1^^118^1262^13
 ;;^UTILITY(U,$J,358.3,21015,1,0)
 ;;=^358.31IA^8^2
 ;;^UTILITY(U,$J,358.3,21015,1,1,0)
 ;;=1^189.1
 ;;^UTILITY(U,$J,358.3,21015,1,8,0)
 ;;=8^Malig Neo Renal Pelvis
 ;;^UTILITY(U,$J,358.3,21015,2)
 ;;=^267264
 ;;^UTILITY(U,$J,358.3,21016,0)
 ;;=189.2^^118^1262^16
 ;;^UTILITY(U,$J,358.3,21016,1,0)
 ;;=^358.31IA^8^2
 ;;^UTILITY(U,$J,358.3,21016,1,1,0)
 ;;=1^189.2
 ;;^UTILITY(U,$J,358.3,21016,1,8,0)
 ;;=8^Malig Neo Ureter
 ;;^UTILITY(U,$J,358.3,21016,2)
 ;;=^267265
 ;;^UTILITY(U,$J,358.3,21017,0)
 ;;=189.3^^118^1262^18
 ;;^UTILITY(U,$J,358.3,21017,1,0)
 ;;=^358.31IA^8^2
 ;;^UTILITY(U,$J,358.3,21017,1,1,0)
 ;;=1^189.3
 ;;^UTILITY(U,$J,358.3,21017,1,8,0)
 ;;=8^Malig Neo Urethra
 ;;^UTILITY(U,$J,358.3,21017,2)
 ;;=^267266
 ;;^UTILITY(U,$J,358.3,21018,0)
 ;;=186.9^^118^1262^14
 ;;^UTILITY(U,$J,358.3,21018,1,0)
 ;;=^358.31IA^8^2
 ;;^UTILITY(U,$J,358.3,21018,1,1,0)
 ;;=1^186.9
 ;;^UTILITY(U,$J,358.3,21018,1,8,0)
 ;;=8^Malig Neo Testis
 ;;^UTILITY(U,$J,358.3,21018,2)
 ;;=^267242
 ;;^UTILITY(U,$J,358.3,21019,0)
 ;;=187.4^^118^1262^11
 ;;^UTILITY(U,$J,358.3,21019,1,0)
 ;;=^358.31IA^8^2
 ;;^UTILITY(U,$J,358.3,21019,1,1,0)
 ;;=1^187.4
 ;;^UTILITY(U,$J,358.3,21019,1,8,0)
 ;;=8^Malig Neo Penis
 ;;^UTILITY(U,$J,358.3,21019,2)
 ;;=^267247
 ;;^UTILITY(U,$J,358.3,21020,0)
 ;;=188.0^^118^1262^9
 ;;^UTILITY(U,$J,358.3,21020,1,0)
 ;;=^358.31IA^8^2
 ;;^UTILITY(U,$J,358.3,21020,1,1,0)
 ;;=1^188.0
 ;;^UTILITY(U,$J,358.3,21020,1,8,0)
 ;;=8^Malig Neo Bladder-Trigone
 ;;^UTILITY(U,$J,358.3,21020,2)
 ;;=^267254
 ;;^UTILITY(U,$J,358.3,21021,0)
 ;;=188.1^^118^1262^4
 ;;^UTILITY(U,$J,358.3,21021,1,0)
 ;;=^358.31IA^8^2
 ;;^UTILITY(U,$J,358.3,21021,1,1,0)
 ;;=1^188.1
 ;;^UTILITY(U,$J,358.3,21021,1,8,0)
 ;;=8^Malig Neo Bladder-Done
 ;;^UTILITY(U,$J,358.3,21021,2)
 ;;=^267255
 ;;^UTILITY(U,$J,358.3,21022,0)
 ;;=188.2^^118^1262^5
 ;;^UTILITY(U,$J,358.3,21022,1,0)
 ;;=^358.31IA^8^2
 ;;^UTILITY(U,$J,358.3,21022,1,1,0)
 ;;=1^188.2
 ;;^UTILITY(U,$J,358.3,21022,1,8,0)
 ;;=8^Malig Neo Bladder-Lateral Wall
 ;;^UTILITY(U,$J,358.3,21022,2)
 ;;=^267256
 ;;^UTILITY(U,$J,358.3,21023,0)
 ;;=188.3^^118^1262^3
 ;;^UTILITY(U,$J,358.3,21023,1,0)
 ;;=^358.31IA^8^2
 ;;^UTILITY(U,$J,358.3,21023,1,1,0)
 ;;=1^188.3
 ;;^UTILITY(U,$J,358.3,21023,1,8,0)
 ;;=8^Malig Neo Bladder-Anterior Wall
 ;;^UTILITY(U,$J,358.3,21023,2)
 ;;=^267257