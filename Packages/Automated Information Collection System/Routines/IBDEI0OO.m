IBDEI0OO ; ; 20-MAY-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;OCT 15, 2014
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,12092,1,5,0)
 ;;=5^Parent-Child Problem NOS
 ;;^UTILITY(U,$J,358.3,12092,2)
 ;;=^304300
 ;;^UTILITY(U,$J,358.3,12093,0)
 ;;=V61.12^^66^729^2
 ;;^UTILITY(U,$J,358.3,12093,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,12093,1,2,0)
 ;;=2^V61.12
 ;;^UTILITY(U,$J,358.3,12093,1,5,0)
 ;;=5^Domestic Violence/Perpet
 ;;^UTILITY(U,$J,358.3,12093,2)
 ;;=^304356
 ;;^UTILITY(U,$J,358.3,12094,0)
 ;;=V61.11^^66^729^3
 ;;^UTILITY(U,$J,358.3,12094,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,12094,1,2,0)
 ;;=2^V61.11
 ;;^UTILITY(U,$J,358.3,12094,1,5,0)
 ;;=5^Domestic Violence/Victim
 ;;^UTILITY(U,$J,358.3,12094,2)
 ;;=^304357
 ;;^UTILITY(U,$J,358.3,12095,0)
 ;;=V62.0^^66^729^51
 ;;^UTILITY(U,$J,358.3,12095,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,12095,1,2,0)
 ;;=2^V62.0
 ;;^UTILITY(U,$J,358.3,12095,1,5,0)
 ;;=5^Unemployment
 ;;^UTILITY(U,$J,358.3,12095,2)
 ;;=^123545
 ;;^UTILITY(U,$J,358.3,12096,0)
 ;;=V69.2^^66^729^15
 ;;^UTILITY(U,$J,358.3,12096,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,12096,1,2,0)
 ;;=2^V69.2
 ;;^UTILITY(U,$J,358.3,12096,1,5,0)
 ;;=5^Hi-Risk Sexual Behavior
 ;;^UTILITY(U,$J,358.3,12096,2)
 ;;=^303474
 ;;^UTILITY(U,$J,358.3,12097,0)
 ;;=V62.82^^66^729^1
 ;;^UTILITY(U,$J,358.3,12097,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,12097,1,2,0)
 ;;=2^V62.82
 ;;^UTILITY(U,$J,358.3,12097,1,5,0)
 ;;=5^Bereavement/Uncomplicat
 ;;^UTILITY(U,$J,358.3,12097,2)
 ;;=^123500
 ;;^UTILITY(U,$J,358.3,12098,0)
 ;;=V70.1^^66^729^46
 ;;^UTILITY(U,$J,358.3,12098,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,12098,1,2,0)
 ;;=2^V70.1
 ;;^UTILITY(U,$J,358.3,12098,1,5,0)
 ;;=5^Psych Exam, Mandated
 ;;^UTILITY(U,$J,358.3,12098,2)
 ;;=^295591
 ;;^UTILITY(U,$J,358.3,12099,0)
 ;;=V60.2^^66^729^4
 ;;^UTILITY(U,$J,358.3,12099,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,12099,1,2,0)
 ;;=2^V60.2
 ;;^UTILITY(U,$J,358.3,12099,1,5,0)
 ;;=5^Economic Problem
 ;;^UTILITY(U,$J,358.3,12099,2)
 ;;=^62174
 ;;^UTILITY(U,$J,358.3,12100,0)
 ;;=V62.89^^66^729^47
 ;;^UTILITY(U,$J,358.3,12100,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,12100,1,2,0)
 ;;=2^V62.89
 ;;^UTILITY(U,$J,358.3,12100,1,5,0)
 ;;=5^Psychological Stress
 ;;^UTILITY(U,$J,358.3,12100,2)
 ;;=^87822
 ;;^UTILITY(U,$J,358.3,12101,0)
 ;;=V62.9^^66^729^48
 ;;^UTILITY(U,$J,358.3,12101,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,12101,1,2,0)
 ;;=2^V62.9
 ;;^UTILITY(U,$J,358.3,12101,1,5,0)
 ;;=5^Psychosocial Circum
 ;;^UTILITY(U,$J,358.3,12101,2)
 ;;=^295551
 ;;^UTILITY(U,$J,358.3,12102,0)
 ;;=V60.0^^66^729^31
 ;;^UTILITY(U,$J,358.3,12102,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,12102,1,2,0)
 ;;=2^V60.0
 ;;^UTILITY(U,$J,358.3,12102,1,5,0)
 ;;=5^Lack Of Housing
 ;;^UTILITY(U,$J,358.3,12102,2)
 ;;=^295539
 ;;^UTILITY(U,$J,358.3,12103,0)
 ;;=V62.81^^66^729^21
 ;;^UTILITY(U,$J,358.3,12103,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,12103,1,2,0)
 ;;=2^V62.81
 ;;^UTILITY(U,$J,358.3,12103,1,5,0)
 ;;=5^Interpersonal Problem
 ;;^UTILITY(U,$J,358.3,12103,2)
 ;;=^276358
 ;;^UTILITY(U,$J,358.3,12104,0)
 ;;=V71.01^^66^729^34
 ;;^UTILITY(U,$J,358.3,12104,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,12104,1,2,0)
 ;;=2^V71.01
 ;;^UTILITY(U,$J,358.3,12104,1,5,0)
 ;;=5^Observ-Antisocial Behav
 ;;^UTILITY(U,$J,358.3,12104,2)
 ;;=^295603
 ;;^UTILITY(U,$J,358.3,12105,0)
 ;;=V71.09^^66^729^35
 ;;^UTILITY(U,$J,358.3,12105,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,12105,1,2,0)
 ;;=2^V71.09
 ;;^UTILITY(U,$J,358.3,12105,1,5,0)
 ;;=5^Observ-Mental Condition
 ;;^UTILITY(U,$J,358.3,12105,2)
 ;;=^295604
 ;;^UTILITY(U,$J,358.3,12106,0)
 ;;=V15.41^^66^729^19
 ;;^UTILITY(U,$J,358.3,12106,1,0)
 ;;=^358.31IA^5^2