IBDEI1DP ; ; 19-NOV-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,22990,1,4,0)
 ;;=4^F04.
 ;;^UTILITY(U,$J,358.3,22990,2)
 ;;=^5003051
 ;;^UTILITY(U,$J,358.3,22991,0)
 ;;=F05.^^107^1079^3
 ;;^UTILITY(U,$J,358.3,22991,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,22991,1,3,0)
 ;;=3^Delirium d/t Phsyiological Condition
 ;;^UTILITY(U,$J,358.3,22991,1,4,0)
 ;;=4^F05.
 ;;^UTILITY(U,$J,358.3,22991,2)
 ;;=^5003052
 ;;^UTILITY(U,$J,358.3,22992,0)
 ;;=F06.8^^107^1079^6
 ;;^UTILITY(U,$J,358.3,22992,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,22992,1,3,0)
 ;;=3^Mental Disorders d/t Physiological Condition
 ;;^UTILITY(U,$J,358.3,22992,1,4,0)
 ;;=4^F06.8
 ;;^UTILITY(U,$J,358.3,22992,2)
 ;;=^5003062
 ;;^UTILITY(U,$J,358.3,22993,0)
 ;;=F32.9^^107^1079^5
 ;;^UTILITY(U,$J,358.3,22993,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,22993,1,3,0)
 ;;=3^MDD,Single Episode,Unspec
 ;;^UTILITY(U,$J,358.3,22993,1,4,0)
 ;;=4^F32.9
 ;;^UTILITY(U,$J,358.3,22993,2)
 ;;=^5003528
 ;;^UTILITY(U,$J,358.3,22994,0)
 ;;=R41.82^^107^1079^1
 ;;^UTILITY(U,$J,358.3,22994,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,22994,1,3,0)
 ;;=3^Altered Mental Status,Unspec
 ;;^UTILITY(U,$J,358.3,22994,1,4,0)
 ;;=4^R41.82
 ;;^UTILITY(U,$J,358.3,22994,2)
 ;;=^5019441
 ;;^UTILITY(U,$J,358.3,22995,0)
 ;;=R44.3^^107^1079^4
 ;;^UTILITY(U,$J,358.3,22995,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,22995,1,3,0)
 ;;=3^Hallucinations,Unspec
 ;;^UTILITY(U,$J,358.3,22995,1,4,0)
 ;;=4^R44.3
 ;;^UTILITY(U,$J,358.3,22995,2)
 ;;=^5019458
 ;;^UTILITY(U,$J,358.3,22996,0)
 ;;=G20.^^107^1080^7
 ;;^UTILITY(U,$J,358.3,22996,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,22996,1,3,0)
 ;;=3^Parkinson's Disease
 ;;^UTILITY(U,$J,358.3,22996,1,4,0)
 ;;=4^G20.
 ;;^UTILITY(U,$J,358.3,22996,2)
 ;;=^5003770
 ;;^UTILITY(U,$J,358.3,22997,0)
 ;;=G30.9^^107^1080^1
 ;;^UTILITY(U,$J,358.3,22997,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,22997,1,3,0)
 ;;=3^Alzheimer's Disease,Unspec
 ;;^UTILITY(U,$J,358.3,22997,1,4,0)
 ;;=4^G30.9
 ;;^UTILITY(U,$J,358.3,22997,2)
 ;;=^5003808
 ;;^UTILITY(U,$J,358.3,22998,0)
 ;;=G35.^^107^1080^6
 ;;^UTILITY(U,$J,358.3,22998,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,22998,1,3,0)
 ;;=3^Multiple Sclerosis
 ;;^UTILITY(U,$J,358.3,22998,1,4,0)
 ;;=4^G35.
 ;;^UTILITY(U,$J,358.3,22998,2)
 ;;=^79761
 ;;^UTILITY(U,$J,358.3,22999,0)
 ;;=G96.9^^107^1080^4
 ;;^UTILITY(U,$J,358.3,22999,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,22999,1,3,0)
 ;;=3^Central Nervous System Disorder,Unspec
 ;;^UTILITY(U,$J,358.3,22999,1,4,0)
 ;;=4^G96.9
 ;;^UTILITY(U,$J,358.3,22999,2)
 ;;=^5004200
 ;;^UTILITY(U,$J,358.3,23000,0)
 ;;=G93.1^^107^1080^3
 ;;^UTILITY(U,$J,358.3,23000,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,23000,1,3,0)
 ;;=3^Anoxic Brain Damage NEC
 ;;^UTILITY(U,$J,358.3,23000,1,4,0)
 ;;=4^G93.1
 ;;^UTILITY(U,$J,358.3,23000,2)
 ;;=^5004179
 ;;^UTILITY(U,$J,358.3,23001,0)
 ;;=R53.81^^107^1080^5
 ;;^UTILITY(U,$J,358.3,23001,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,23001,1,3,0)
 ;;=3^Malaise
 ;;^UTILITY(U,$J,358.3,23001,1,4,0)
 ;;=4^R53.81
 ;;^UTILITY(U,$J,358.3,23001,2)
 ;;=^5019518
 ;;^UTILITY(U,$J,358.3,23002,0)
 ;;=G12.21^^107^1080^2
 ;;^UTILITY(U,$J,358.3,23002,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,23002,1,3,0)
 ;;=3^Amyotrophic Lateral Sclerosis
 ;;^UTILITY(U,$J,358.3,23002,1,4,0)
 ;;=4^G12.21
 ;;^UTILITY(U,$J,358.3,23002,2)
 ;;=^6639
 ;;^UTILITY(U,$J,358.3,23003,0)
 ;;=K92.2^^107^1081^7
 ;;^UTILITY(U,$J,358.3,23003,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,23003,1,3,0)
 ;;=3^Gastrointestinal Hemorrhage,Unspec
 ;;^UTILITY(U,$J,358.3,23003,1,4,0)
 ;;=4^K92.2
 ;;^UTILITY(U,$J,358.3,23003,2)
 ;;=^5008915
