IBDEI1O6 ; ; 20-MAY-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;OCT 15, 2014
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,30000,2)
 ;;=^5019286
 ;;^UTILITY(U,$J,358.3,30001,0)
 ;;=R40.3^^189^1904^78
 ;;^UTILITY(U,$J,358.3,30001,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,30001,1,3,0)
 ;;=3^Persistent Vegetative State
 ;;^UTILITY(U,$J,358.3,30001,1,4,0)
 ;;=4^R40.3
 ;;^UTILITY(U,$J,358.3,30001,2)
 ;;=^5019434
 ;;^UTILITY(U,$J,358.3,30002,0)
 ;;=R42.^^189^1904^48
 ;;^UTILITY(U,$J,358.3,30002,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,30002,1,3,0)
 ;;=3^Dizziness and Giddiness
 ;;^UTILITY(U,$J,358.3,30002,1,4,0)
 ;;=4^R42.
 ;;^UTILITY(U,$J,358.3,30002,2)
 ;;=^5019450
 ;;^UTILITY(U,$J,358.3,30003,0)
 ;;=R44.0^^189^1904^25
 ;;^UTILITY(U,$J,358.3,30003,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,30003,1,3,0)
 ;;=3^Auditory Hallucinations
 ;;^UTILITY(U,$J,358.3,30003,1,4,0)
 ;;=4^R44.0
 ;;^UTILITY(U,$J,358.3,30003,2)
 ;;=^5019455
 ;;^UTILITY(U,$J,358.3,30004,0)
 ;;=R44.2^^189^1904^61
 ;;^UTILITY(U,$J,358.3,30004,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,30004,1,3,0)
 ;;=3^Hallucinations NEC
 ;;^UTILITY(U,$J,358.3,30004,1,4,0)
 ;;=4^R44.2
 ;;^UTILITY(U,$J,358.3,30004,2)
 ;;=^5019457
 ;;^UTILITY(U,$J,358.3,30005,0)
 ;;=R44.3^^189^1904^62
 ;;^UTILITY(U,$J,358.3,30005,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,30005,1,3,0)
 ;;=3^Hallucinations,Unspec
 ;;^UTILITY(U,$J,358.3,30005,1,4,0)
 ;;=4^R44.3
 ;;^UTILITY(U,$J,358.3,30005,2)
 ;;=^5019458
 ;;^UTILITY(U,$J,358.3,30006,0)
 ;;=R50.2^^189^1904^50
 ;;^UTILITY(U,$J,358.3,30006,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,30006,1,3,0)
 ;;=3^Drug Induced Fever
 ;;^UTILITY(U,$J,358.3,30006,1,4,0)
 ;;=4^R50.2
 ;;^UTILITY(U,$J,358.3,30006,2)
 ;;=^5019507
 ;;^UTILITY(U,$J,358.3,30007,0)
 ;;=R50.9^^189^1904^56
 ;;^UTILITY(U,$J,358.3,30007,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,30007,1,3,0)
 ;;=3^Fever,Unspec
 ;;^UTILITY(U,$J,358.3,30007,1,4,0)
 ;;=4^R50.9
 ;;^UTILITY(U,$J,358.3,30007,2)
 ;;=^5019512
 ;;^UTILITY(U,$J,358.3,30008,0)
 ;;=R53.0^^189^1904^75
 ;;^UTILITY(U,$J,358.3,30008,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,30008,1,3,0)
 ;;=3^Neoplastic Related Fatigue
 ;;^UTILITY(U,$J,358.3,30008,1,4,0)
 ;;=4^R53.0
 ;;^UTILITY(U,$J,358.3,30008,2)
 ;;=^5019515
 ;;^UTILITY(U,$J,358.3,30009,0)
 ;;=R53.1^^189^1904^94
 ;;^UTILITY(U,$J,358.3,30009,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,30009,1,3,0)
 ;;=3^Weakness
 ;;^UTILITY(U,$J,358.3,30009,1,4,0)
 ;;=4^R53.1
 ;;^UTILITY(U,$J,358.3,30009,2)
 ;;=^5019516
 ;;^UTILITY(U,$J,358.3,30010,0)
 ;;=R53.81^^189^1904^72
 ;;^UTILITY(U,$J,358.3,30010,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,30010,1,3,0)
 ;;=3^Malaise NEC
 ;;^UTILITY(U,$J,358.3,30010,1,4,0)
 ;;=4^R53.81
 ;;^UTILITY(U,$J,358.3,30010,2)
 ;;=^5019518
 ;;^UTILITY(U,$J,358.3,30011,0)
 ;;=R53.82^^189^1904^32
 ;;^UTILITY(U,$J,358.3,30011,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,30011,1,3,0)
 ;;=3^Chronic Fatigue,Unspec
 ;;^UTILITY(U,$J,358.3,30011,1,4,0)
 ;;=4^R53.82
 ;;^UTILITY(U,$J,358.3,30011,2)
 ;;=^5019519
 ;;^UTILITY(U,$J,358.3,30012,0)
 ;;=R53.83^^189^1904^55
 ;;^UTILITY(U,$J,358.3,30012,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,30012,1,3,0)
 ;;=3^Fatigue NEC
 ;;^UTILITY(U,$J,358.3,30012,1,4,0)
 ;;=4^R53.83
 ;;^UTILITY(U,$J,358.3,30012,2)
 ;;=^5019520
 ;;^UTILITY(U,$J,358.3,30013,0)
 ;;=R55.^^189^1904^88
 ;;^UTILITY(U,$J,358.3,30013,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,30013,1,3,0)
 ;;=3^Syncope and Collapse
 ;;^UTILITY(U,$J,358.3,30013,1,4,0)
 ;;=4^R55.
 ;;^UTILITY(U,$J,358.3,30013,2)
 ;;=^116707
 ;;^UTILITY(U,$J,358.3,30014,0)
 ;;=R56.9^^189^1904^34
 ;;^UTILITY(U,$J,358.3,30014,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,30014,1,3,0)
 ;;=3^Convulsions,Unspec