IBDEI0N8 ; ; 19-NOV-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,10612,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,10612,1,3,0)
 ;;=3^Micturition Painful,Unspec
 ;;^UTILITY(U,$J,358.3,10612,1,4,0)
 ;;=4^R30.9
 ;;^UTILITY(U,$J,358.3,10612,2)
 ;;=^5019324
 ;;^UTILITY(U,$J,358.3,10613,0)
 ;;=R30.0^^68^671^26
 ;;^UTILITY(U,$J,358.3,10613,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,10613,1,3,0)
 ;;=3^Dysuria
 ;;^UTILITY(U,$J,358.3,10613,1,4,0)
 ;;=4^R30.0
 ;;^UTILITY(U,$J,358.3,10613,2)
 ;;=^5019322
 ;;^UTILITY(U,$J,358.3,10614,0)
 ;;=R33.9^^68^671^105
 ;;^UTILITY(U,$J,358.3,10614,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,10614,1,3,0)
 ;;=3^Urine Retention,Unspec
 ;;^UTILITY(U,$J,358.3,10614,1,4,0)
 ;;=4^R33.9
 ;;^UTILITY(U,$J,358.3,10614,2)
 ;;=^5019332
 ;;^UTILITY(U,$J,358.3,10615,0)
 ;;=R32.^^68^671^103
 ;;^UTILITY(U,$J,358.3,10615,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,10615,1,3,0)
 ;;=3^Urinary Incontinence,Unspec
 ;;^UTILITY(U,$J,358.3,10615,1,4,0)
 ;;=4^R32.
 ;;^UTILITY(U,$J,358.3,10615,2)
 ;;=^5019329
 ;;^UTILITY(U,$J,358.3,10616,0)
 ;;=N39.41^^68^671^101
 ;;^UTILITY(U,$J,358.3,10616,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,10616,1,3,0)
 ;;=3^Urge Incontinence
 ;;^UTILITY(U,$J,358.3,10616,1,4,0)
 ;;=4^N39.41
 ;;^UTILITY(U,$J,358.3,10616,2)
 ;;=^5015680
 ;;^UTILITY(U,$J,358.3,10617,0)
 ;;=R35.0^^68^671^63
 ;;^UTILITY(U,$J,358.3,10617,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,10617,1,3,0)
 ;;=3^Micturition Frequency
 ;;^UTILITY(U,$J,358.3,10617,1,4,0)
 ;;=4^R35.0
 ;;^UTILITY(U,$J,358.3,10617,2)
 ;;=^5019334
 ;;^UTILITY(U,$J,358.3,10618,0)
 ;;=R35.1^^68^671^73
 ;;^UTILITY(U,$J,358.3,10618,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,10618,1,3,0)
 ;;=3^Nocturia
 ;;^UTILITY(U,$J,358.3,10618,1,4,0)
 ;;=4^R35.1
 ;;^UTILITY(U,$J,358.3,10618,2)
 ;;=^5019335
 ;;^UTILITY(U,$J,358.3,10619,0)
 ;;=R39.11^^68^671^64
 ;;^UTILITY(U,$J,358.3,10619,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,10619,1,3,0)
 ;;=3^Micturition Hesitancy
 ;;^UTILITY(U,$J,358.3,10619,1,4,0)
 ;;=4^R39.11
 ;;^UTILITY(U,$J,358.3,10619,2)
 ;;=^5019341
 ;;^UTILITY(U,$J,358.3,10620,0)
 ;;=R39.16^^68^671^95
 ;;^UTILITY(U,$J,358.3,10620,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,10620,1,3,0)
 ;;=3^Straining to Void
 ;;^UTILITY(U,$J,358.3,10620,1,4,0)
 ;;=4^R39.16
 ;;^UTILITY(U,$J,358.3,10620,2)
 ;;=^5019346
 ;;^UTILITY(U,$J,358.3,10621,0)
 ;;=R36.0^^68^671^97
 ;;^UTILITY(U,$J,358.3,10621,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,10621,1,3,0)
 ;;=3^Urethral Discharge w/o Blood
 ;;^UTILITY(U,$J,358.3,10621,1,4,0)
 ;;=4^R36.0
 ;;^UTILITY(U,$J,358.3,10621,2)
 ;;=^5019337
 ;;^UTILITY(U,$J,358.3,10622,0)
 ;;=R36.9^^68^671^98
 ;;^UTILITY(U,$J,358.3,10622,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,10622,1,3,0)
 ;;=3^Urethral Discharge,Unspec
 ;;^UTILITY(U,$J,358.3,10622,1,4,0)
 ;;=4^R36.9
 ;;^UTILITY(U,$J,358.3,10622,2)
 ;;=^5019338
 ;;^UTILITY(U,$J,358.3,10623,0)
 ;;=R97.2^^68^671^27
 ;;^UTILITY(U,$J,358.3,10623,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,10623,1,3,0)
 ;;=3^Elevated PSA
 ;;^UTILITY(U,$J,358.3,10623,1,4,0)
 ;;=4^R97.2
 ;;^UTILITY(U,$J,358.3,10623,2)
 ;;=^5019748
 ;;^UTILITY(U,$J,358.3,10624,0)
 ;;=R80.1^^68^671^87
 ;;^UTILITY(U,$J,358.3,10624,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,10624,1,3,0)
 ;;=3^Proteinuria Persistent,Unspec
 ;;^UTILITY(U,$J,358.3,10624,1,4,0)
 ;;=4^R80.1
 ;;^UTILITY(U,$J,358.3,10624,2)
 ;;=^5019596
 ;;^UTILITY(U,$J,358.3,10625,0)
 ;;=R80.0^^68^671^85
 ;;^UTILITY(U,$J,358.3,10625,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,10625,1,3,0)
 ;;=3^Proteinuria Isolated
 ;;^UTILITY(U,$J,358.3,10625,1,4,0)
 ;;=4^R80.0
 ;;^UTILITY(U,$J,358.3,10625,2)
 ;;=^5019595
