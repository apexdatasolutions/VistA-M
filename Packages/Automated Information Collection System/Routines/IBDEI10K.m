IBDEI10K ; ; 20-MAY-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;OCT 15, 2014
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,18070,0)
 ;;=V65.2^^98^1028^33
 ;;^UTILITY(U,$J,358.3,18070,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,18070,1,2,0)
 ;;=2^V65.2
 ;;^UTILITY(U,$J,358.3,18070,1,5,0)
 ;;=5^Malingering
 ;;^UTILITY(U,$J,358.3,18070,2)
 ;;=^92393
 ;;^UTILITY(U,$J,358.3,18071,0)
 ;;=V65.49^^98^1028^38
 ;;^UTILITY(U,$J,358.3,18071,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,18071,1,2,0)
 ;;=2^V65.49
 ;;^UTILITY(U,$J,358.3,18071,1,5,0)
 ;;=5^Other Specified Counseling
 ;;^UTILITY(U,$J,358.3,18071,2)
 ;;=^303471
 ;;^UTILITY(U,$J,358.3,18072,0)
 ;;=V61.10^^98^1028^43
 ;;^UTILITY(U,$J,358.3,18072,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,18072,1,2,0)
 ;;=2^V61.10
 ;;^UTILITY(U,$J,358.3,18072,1,5,0)
 ;;=5^Partner Relational Problem
 ;;^UTILITY(U,$J,358.3,18072,2)
 ;;=^74110
 ;;^UTILITY(U,$J,358.3,18073,0)
 ;;=V61.20^^98^1028^41
 ;;^UTILITY(U,$J,358.3,18073,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,18073,1,2,0)
 ;;=2^V61.20
 ;;^UTILITY(U,$J,358.3,18073,1,5,0)
 ;;=5^Parent-Child Problem NOS
 ;;^UTILITY(U,$J,358.3,18073,2)
 ;;=^304300
 ;;^UTILITY(U,$J,358.3,18074,0)
 ;;=V61.12^^98^1028^2
 ;;^UTILITY(U,$J,358.3,18074,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,18074,1,2,0)
 ;;=2^V61.12
 ;;^UTILITY(U,$J,358.3,18074,1,5,0)
 ;;=5^Domestic Violence/Perpet
 ;;^UTILITY(U,$J,358.3,18074,2)
 ;;=^304356
 ;;^UTILITY(U,$J,358.3,18075,0)
 ;;=V61.11^^98^1028^3
 ;;^UTILITY(U,$J,358.3,18075,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,18075,1,2,0)
 ;;=2^V61.11
 ;;^UTILITY(U,$J,358.3,18075,1,5,0)
 ;;=5^Domestic Violence/Victim
 ;;^UTILITY(U,$J,358.3,18075,2)
 ;;=^304357
 ;;^UTILITY(U,$J,358.3,18076,0)
 ;;=V62.0^^98^1028^51
 ;;^UTILITY(U,$J,358.3,18076,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,18076,1,2,0)
 ;;=2^V62.0
 ;;^UTILITY(U,$J,358.3,18076,1,5,0)
 ;;=5^Unemployment
 ;;^UTILITY(U,$J,358.3,18076,2)
 ;;=^123545
 ;;^UTILITY(U,$J,358.3,18077,0)
 ;;=V69.2^^98^1028^15
 ;;^UTILITY(U,$J,358.3,18077,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,18077,1,2,0)
 ;;=2^V69.2
 ;;^UTILITY(U,$J,358.3,18077,1,5,0)
 ;;=5^Hi-Risk Sexual Behavior
 ;;^UTILITY(U,$J,358.3,18077,2)
 ;;=^303474
 ;;^UTILITY(U,$J,358.3,18078,0)
 ;;=V62.82^^98^1028^1
 ;;^UTILITY(U,$J,358.3,18078,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,18078,1,2,0)
 ;;=2^V62.82
 ;;^UTILITY(U,$J,358.3,18078,1,5,0)
 ;;=5^Bereavement/Uncomplicat
 ;;^UTILITY(U,$J,358.3,18078,2)
 ;;=^123500
 ;;^UTILITY(U,$J,358.3,18079,0)
 ;;=V70.1^^98^1028^46
 ;;^UTILITY(U,$J,358.3,18079,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,18079,1,2,0)
 ;;=2^V70.1
 ;;^UTILITY(U,$J,358.3,18079,1,5,0)
 ;;=5^Psych Exam, Mandated
 ;;^UTILITY(U,$J,358.3,18079,2)
 ;;=^295591
 ;;^UTILITY(U,$J,358.3,18080,0)
 ;;=V60.2^^98^1028^4
 ;;^UTILITY(U,$J,358.3,18080,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,18080,1,2,0)
 ;;=2^V60.2
 ;;^UTILITY(U,$J,358.3,18080,1,5,0)
 ;;=5^Economic Problem
 ;;^UTILITY(U,$J,358.3,18080,2)
 ;;=^62174
 ;;^UTILITY(U,$J,358.3,18081,0)
 ;;=V62.89^^98^1028^47
 ;;^UTILITY(U,$J,358.3,18081,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,18081,1,2,0)
 ;;=2^V62.89
 ;;^UTILITY(U,$J,358.3,18081,1,5,0)
 ;;=5^Psychological Stress
 ;;^UTILITY(U,$J,358.3,18081,2)
 ;;=^87822
 ;;^UTILITY(U,$J,358.3,18082,0)
 ;;=V62.9^^98^1028^48
 ;;^UTILITY(U,$J,358.3,18082,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,18082,1,2,0)
 ;;=2^V62.9
 ;;^UTILITY(U,$J,358.3,18082,1,5,0)
 ;;=5^Psychosocial Circum
 ;;^UTILITY(U,$J,358.3,18082,2)
 ;;=^295551
 ;;^UTILITY(U,$J,358.3,18083,0)
 ;;=V60.0^^98^1028^31
 ;;^UTILITY(U,$J,358.3,18083,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,18083,1,2,0)
 ;;=2^V60.0
 ;;^UTILITY(U,$J,358.3,18083,1,5,0)
 ;;=5^Lack Of Housing