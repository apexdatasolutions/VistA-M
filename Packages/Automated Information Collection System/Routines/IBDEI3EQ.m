IBDEI3EQ ; ; 19-NOV-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,57293,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,57293,1,3,0)
 ;;=3^Sleep Apnea,Unspec
 ;;^UTILITY(U,$J,358.3,57293,1,4,0)
 ;;=4^G47.30
 ;;^UTILITY(U,$J,358.3,57293,2)
 ;;=^5003977
 ;;^UTILITY(U,$J,358.3,57294,0)
 ;;=R50.9^^264^2856^27
 ;;^UTILITY(U,$J,358.3,57294,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,57294,1,3,0)
 ;;=3^Fever,Unspec
 ;;^UTILITY(U,$J,358.3,57294,1,4,0)
 ;;=4^R50.9
 ;;^UTILITY(U,$J,358.3,57294,2)
 ;;=^5019512
 ;;^UTILITY(U,$J,358.3,57295,0)
 ;;=R53.82^^264^2856^13
 ;;^UTILITY(U,$J,358.3,57295,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,57295,1,3,0)
 ;;=3^Chronic Fatigue,Unspec
 ;;^UTILITY(U,$J,358.3,57295,1,4,0)
 ;;=4^R53.82
 ;;^UTILITY(U,$J,358.3,57295,2)
 ;;=^5019519
 ;;^UTILITY(U,$J,358.3,57296,0)
 ;;=G93.3^^264^2856^59
 ;;^UTILITY(U,$J,358.3,57296,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,57296,1,3,0)
 ;;=3^Postviral Fatigue Syndrome
 ;;^UTILITY(U,$J,358.3,57296,1,4,0)
 ;;=4^G93.3
 ;;^UTILITY(U,$J,358.3,57296,2)
 ;;=^5004181
 ;;^UTILITY(U,$J,358.3,57297,0)
 ;;=R53.1^^264^2856^68
 ;;^UTILITY(U,$J,358.3,57297,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,57297,1,3,0)
 ;;=3^Weakness
 ;;^UTILITY(U,$J,358.3,57297,1,4,0)
 ;;=4^R53.1
 ;;^UTILITY(U,$J,358.3,57297,2)
 ;;=^5019516
 ;;^UTILITY(U,$J,358.3,57298,0)
 ;;=R68.83^^264^2856^12
 ;;^UTILITY(U,$J,358.3,57298,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,57298,1,3,0)
 ;;=3^Chills w/o Fever
 ;;^UTILITY(U,$J,358.3,57298,1,4,0)
 ;;=4^R68.83
 ;;^UTILITY(U,$J,358.3,57298,2)
 ;;=^5019555
 ;;^UTILITY(U,$J,358.3,57299,0)
 ;;=R50.9^^264^2856^11
 ;;^UTILITY(U,$J,358.3,57299,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,57299,1,3,0)
 ;;=3^Chills w/ Fever
 ;;^UTILITY(U,$J,358.3,57299,1,4,0)
 ;;=4^R50.9
 ;;^UTILITY(U,$J,358.3,57299,2)
 ;;=^5019512
 ;;^UTILITY(U,$J,358.3,57300,0)
 ;;=R22.9^^264^2856^50
 ;;^UTILITY(U,$J,358.3,57300,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,57300,1,3,0)
 ;;=3^Localized Swelling,Mass & Lump,Unspec
 ;;^UTILITY(U,$J,358.3,57300,1,4,0)
 ;;=4^R22.9
 ;;^UTILITY(U,$J,358.3,57300,2)
 ;;=^5019292
 ;;^UTILITY(U,$J,358.3,57301,0)
 ;;=I96.^^264^2856^37
 ;;^UTILITY(U,$J,358.3,57301,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,57301,1,3,0)
 ;;=3^Gangrene NEC
 ;;^UTILITY(U,$J,358.3,57301,1,4,0)
 ;;=4^I96.
 ;;^UTILITY(U,$J,358.3,57301,2)
 ;;=^5008081
 ;;^UTILITY(U,$J,358.3,57302,0)
 ;;=R06.4^^264^2856^44
 ;;^UTILITY(U,$J,358.3,57302,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,57302,1,3,0)
 ;;=3^Hyperventilation
 ;;^UTILITY(U,$J,358.3,57302,1,4,0)
 ;;=4^R06.4
 ;;^UTILITY(U,$J,358.3,57302,2)
 ;;=^5019186
 ;;^UTILITY(U,$J,358.3,57303,0)
 ;;=R06.01^^264^2856^56
 ;;^UTILITY(U,$J,358.3,57303,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,57303,1,3,0)
 ;;=3^Orthopnea
 ;;^UTILITY(U,$J,358.3,57303,1,4,0)
 ;;=4^R06.01
 ;;^UTILITY(U,$J,358.3,57303,2)
 ;;=^186737
 ;;^UTILITY(U,$J,358.3,57304,0)
 ;;=R06.02^^264^2856^61
 ;;^UTILITY(U,$J,358.3,57304,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,57304,1,3,0)
 ;;=3^Shortness of Breath
 ;;^UTILITY(U,$J,358.3,57304,1,4,0)
 ;;=4^R06.02
 ;;^UTILITY(U,$J,358.3,57304,2)
 ;;=^5019181
 ;;^UTILITY(U,$J,358.3,57305,0)
 ;;=R06.82^^264^2856^65
 ;;^UTILITY(U,$J,358.3,57305,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,57305,1,3,0)
 ;;=3^Tachypnea NEC
 ;;^UTILITY(U,$J,358.3,57305,1,4,0)
 ;;=4^R06.82
 ;;^UTILITY(U,$J,358.3,57305,2)
 ;;=^5019191
 ;;^UTILITY(U,$J,358.3,57306,0)
 ;;=R06.2^^264^2856^69
 ;;^UTILITY(U,$J,358.3,57306,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,57306,1,3,0)
 ;;=3^Wheezing
 ;;^UTILITY(U,$J,358.3,57306,1,4,0)
 ;;=4^R06.2
 ;;^UTILITY(U,$J,358.3,57306,2)
 ;;=^5019184
