IBDEI0OP ; ; 20-MAY-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;OCT 15, 2014
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,12106,1,2,0)
 ;;=2^V15.41
 ;;^UTILITY(U,$J,358.3,12106,1,5,0)
 ;;=5^Hx Of Sexual Abuse
 ;;^UTILITY(U,$J,358.3,12106,2)
 ;;=^304352
 ;;^UTILITY(U,$J,358.3,12107,0)
 ;;=V61.01^^66^729^10
 ;;^UTILITY(U,$J,358.3,12107,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,12107,1,2,0)
 ;;=2^V61.01
 ;;^UTILITY(U,$J,358.3,12107,1,5,0)
 ;;=5^Fmily Dsrpt-Fam Military
 ;;^UTILITY(U,$J,358.3,12107,2)
 ;;=^336799
 ;;^UTILITY(U,$J,358.3,12108,0)
 ;;=V61.02^^66^729^11
 ;;^UTILITY(U,$J,358.3,12108,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,12108,1,2,0)
 ;;=2^V61.02
 ;;^UTILITY(U,$J,358.3,12108,1,5,0)
 ;;=5^Fmily Dsrpt-Ret Military
 ;;^UTILITY(U,$J,358.3,12108,2)
 ;;=^336800
 ;;^UTILITY(U,$J,358.3,12109,0)
 ;;=V61.03^^66^729^9
 ;;^UTILITY(U,$J,358.3,12109,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,12109,1,2,0)
 ;;=2^V61.03
 ;;^UTILITY(U,$J,358.3,12109,1,5,0)
 ;;=5^Fmily Dsrpt-Divorce/Sep
 ;;^UTILITY(U,$J,358.3,12109,2)
 ;;=^336801
 ;;^UTILITY(U,$J,358.3,12110,0)
 ;;=V61.04^^66^729^7
 ;;^UTILITY(U,$J,358.3,12110,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,12110,1,2,0)
 ;;=2^V61.04
 ;;^UTILITY(U,$J,358.3,12110,1,5,0)
 ;;=5^Family Dsrpt-Estrangment
 ;;^UTILITY(U,$J,358.3,12110,2)
 ;;=^336802
 ;;^UTILITY(U,$J,358.3,12111,0)
 ;;=V61.05^^66^729^8
 ;;^UTILITY(U,$J,358.3,12111,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,12111,1,2,0)
 ;;=2^V61.05
 ;;^UTILITY(U,$J,358.3,12111,1,5,0)
 ;;=5^Fmily Dsrpt-Chld Custody
 ;;^UTILITY(U,$J,358.3,12111,2)
 ;;=^336803
 ;;^UTILITY(U,$J,358.3,12112,0)
 ;;=V61.09^^66^729^6
 ;;^UTILITY(U,$J,358.3,12112,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,12112,1,2,0)
 ;;=2^V61.09
 ;;^UTILITY(U,$J,358.3,12112,1,5,0)
 ;;=5^Family Disruption NEC
 ;;^UTILITY(U,$J,358.3,12112,2)
 ;;=^336805
 ;;^UTILITY(U,$J,358.3,12113,0)
 ;;=V62.21^^66^729^13
 ;;^UTILITY(U,$J,358.3,12113,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,12113,1,2,0)
 ;;=2^V62.21
 ;;^UTILITY(U,$J,358.3,12113,1,5,0)
 ;;=5^HX Military Deployment
 ;;^UTILITY(U,$J,358.3,12113,2)
 ;;=^336806
 ;;^UTILITY(U,$J,358.3,12114,0)
 ;;=V62.22^^66^729^14
 ;;^UTILITY(U,$J,358.3,12114,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,12114,1,2,0)
 ;;=2^V62.22
 ;;^UTILITY(U,$J,358.3,12114,1,5,0)
 ;;=5^HX Retrn Military Deploy
 ;;^UTILITY(U,$J,358.3,12114,2)
 ;;=^336807
 ;;^UTILITY(U,$J,358.3,12115,0)
 ;;=V62.29^^66^729^36
 ;;^UTILITY(U,$J,358.3,12115,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,12115,1,2,0)
 ;;=2^V62.29
 ;;^UTILITY(U,$J,358.3,12115,1,5,0)
 ;;=5^Occupationl Circumst NEC
 ;;^UTILITY(U,$J,358.3,12115,2)
 ;;=^87746
 ;;^UTILITY(U,$J,358.3,12116,0)
 ;;=V60.81^^66^729^12
 ;;^UTILITY(U,$J,358.3,12116,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,12116,1,2,0)
 ;;=2^V60.81
 ;;^UTILITY(U,$J,358.3,12116,1,5,0)
 ;;=5^Foster Care (Status)
 ;;^UTILITY(U,$J,358.3,12116,2)
 ;;=^338505
 ;;^UTILITY(U,$J,358.3,12117,0)
 ;;=V60.89^^66^729^17
 ;;^UTILITY(U,$J,358.3,12117,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,12117,1,2,0)
 ;;=2^V60.89
 ;;^UTILITY(U,$J,358.3,12117,1,5,0)
 ;;=5^Housing/Econom Circum NEC
 ;;^UTILITY(U,$J,358.3,12117,2)
 ;;=^295545
 ;;^UTILITY(U,$J,358.3,12118,0)
 ;;=V61.22^^66^729^44
 ;;^UTILITY(U,$J,358.3,12118,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,12118,1,2,0)
 ;;=2^V61.22
 ;;^UTILITY(U,$J,358.3,12118,1,5,0)
 ;;=5^Perpetrator-Parental Child
 ;;^UTILITY(U,$J,358.3,12118,2)
 ;;=^304358
 ;;^UTILITY(U,$J,358.3,12119,0)
 ;;=V61.23^^66^729^40
 ;;^UTILITY(U,$J,358.3,12119,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,12119,1,2,0)
 ;;=2^V61.23
 ;;^UTILITY(U,$J,358.3,12119,1,5,0)
 ;;=5^Parent-Biological Child Prob
 ;;^UTILITY(U,$J,358.3,12119,2)
 ;;=^338508