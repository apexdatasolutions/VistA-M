IBDEI12V ; ; 20-MAY-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;OCT 15, 2014
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,19211,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,19211,1,2,0)
 ;;=2^305.93
 ;;^UTILITY(U,$J,358.3,19211,1,5,0)
 ;;=5^Other Drug Abuse-Remission
 ;;^UTILITY(U,$J,358.3,19211,2)
 ;;=^268261
 ;;^UTILITY(U,$J,358.3,19212,0)
 ;;=304.70^^106^1134^65
 ;;^UTILITY(U,$J,358.3,19212,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,19212,1,2,0)
 ;;=2^304.70
 ;;^UTILITY(U,$J,358.3,19212,1,5,0)
 ;;=5^Opioid + Other Depend
 ;;^UTILITY(U,$J,358.3,19212,2)
 ;;=^268214
 ;;^UTILITY(U,$J,358.3,19213,0)
 ;;=304.73^^106^1134^64
 ;;^UTILITY(U,$J,358.3,19213,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,19213,1,2,0)
 ;;=2^304.73
 ;;^UTILITY(U,$J,358.3,19213,1,5,0)
 ;;=5^Opioid + Other Dep-Remis
 ;;^UTILITY(U,$J,358.3,19213,2)
 ;;=^268217
 ;;^UTILITY(U,$J,358.3,19214,0)
 ;;=304.80^^106^1134^50
 ;;^UTILITY(U,$J,358.3,19214,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,19214,1,2,0)
 ;;=2^304.80
 ;;^UTILITY(U,$J,358.3,19214,1,5,0)
 ;;=5^Combination Drug Dep
 ;;^UTILITY(U,$J,358.3,19214,2)
 ;;=^268218
 ;;^UTILITY(U,$J,358.3,19215,0)
 ;;=304.83^^106^1134^47
 ;;^UTILITY(U,$J,358.3,19215,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,19215,1,2,0)
 ;;=2^304.83
 ;;^UTILITY(U,$J,358.3,19215,1,5,0)
 ;;=5^Comb Drug Dep-Remission
 ;;^UTILITY(U,$J,358.3,19215,2)
 ;;=^268221
 ;;^UTILITY(U,$J,358.3,19216,0)
 ;;=305.1^^106^1134^63
 ;;^UTILITY(U,$J,358.3,19216,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,19216,1,2,0)
 ;;=2^305.1
 ;;^UTILITY(U,$J,358.3,19216,1,5,0)
 ;;=5^Nicotine Dependence
 ;;^UTILITY(U,$J,358.3,19216,2)
 ;;=^119899
 ;;^UTILITY(U,$J,358.3,19217,0)
 ;;=291.81^^106^1134^15
 ;;^UTILITY(U,$J,358.3,19217,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,19217,1,2,0)
 ;;=2^291.81
 ;;^UTILITY(U,$J,358.3,19217,1,5,0)
 ;;=5^Alcohol Withdrawal
 ;;^UTILITY(U,$J,358.3,19217,2)
 ;;=^123498
 ;;^UTILITY(U,$J,358.3,19218,0)
 ;;=291.0^^106^1134^14
 ;;^UTILITY(U,$J,358.3,19218,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,19218,1,2,0)
 ;;=2^291.0
 ;;^UTILITY(U,$J,358.3,19218,1,5,0)
 ;;=5^Alcohol Withdraw Delir
 ;;^UTILITY(U,$J,358.3,19218,2)
 ;;=^4589
 ;;^UTILITY(U,$J,358.3,19219,0)
 ;;=303.00^^106^1134^5
 ;;^UTILITY(U,$J,358.3,19219,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,19219,1,2,0)
 ;;=2^303.00
 ;;^UTILITY(U,$J,358.3,19219,1,5,0)
 ;;=5^Alc Intox NOS
 ;;^UTILITY(U,$J,358.3,19219,2)
 ;;=^268183
 ;;^UTILITY(U,$J,358.3,19220,0)
 ;;=303.01^^106^1134^6
 ;;^UTILITY(U,$J,358.3,19220,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,19220,1,2,0)
 ;;=2^303.01
 ;;^UTILITY(U,$J,358.3,19220,1,5,0)
 ;;=5^Alc Intox, Continuous
 ;;^UTILITY(U,$J,358.3,19220,2)
 ;;=^268184
 ;;^UTILITY(U,$J,358.3,19221,0)
 ;;=303.02^^106^1134^7
 ;;^UTILITY(U,$J,358.3,19221,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,19221,1,2,0)
 ;;=2^303.02
 ;;^UTILITY(U,$J,358.3,19221,1,5,0)
 ;;=5^Alc Intox, Episodic
 ;;^UTILITY(U,$J,358.3,19221,2)
 ;;=^268185
 ;;^UTILITY(U,$J,358.3,19222,0)
 ;;=303.03^^106^1134^8
 ;;^UTILITY(U,$J,358.3,19222,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,19222,1,2,0)
 ;;=2^303.03
 ;;^UTILITY(U,$J,358.3,19222,1,5,0)
 ;;=5^Alc Intox, Remiss
 ;;^UTILITY(U,$J,358.3,19222,2)
 ;;=^268186
 ;;^UTILITY(U,$J,358.3,19223,0)
 ;;=303.91^^106^1134^3
 ;;^UTILITY(U,$J,358.3,19223,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,19223,1,2,0)
 ;;=2^303.91
 ;;^UTILITY(U,$J,358.3,19223,1,5,0)
 ;;=5^Alc Dep, Continuous
 ;;^UTILITY(U,$J,358.3,19223,2)
 ;;=^268188
 ;;^UTILITY(U,$J,358.3,19224,0)
 ;;=303.92^^106^1134^4
 ;;^UTILITY(U,$J,358.3,19224,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,19224,1,2,0)
 ;;=2^303.92
 ;;^UTILITY(U,$J,358.3,19224,1,5,0)
 ;;=5^Alc Dep, Episodic