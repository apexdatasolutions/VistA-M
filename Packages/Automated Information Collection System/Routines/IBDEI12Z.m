IBDEI12Z ; ; 20-MAY-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;OCT 15, 2014
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,19264,1,5,0)
 ;;=5^Domestic Violence/Victim
 ;;^UTILITY(U,$J,358.3,19264,2)
 ;;=^304357
 ;;^UTILITY(U,$J,358.3,19265,0)
 ;;=V62.0^^106^1135^51
 ;;^UTILITY(U,$J,358.3,19265,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,19265,1,2,0)
 ;;=2^V62.0
 ;;^UTILITY(U,$J,358.3,19265,1,5,0)
 ;;=5^Unemployment
 ;;^UTILITY(U,$J,358.3,19265,2)
 ;;=^123545
 ;;^UTILITY(U,$J,358.3,19266,0)
 ;;=V69.2^^106^1135^15
 ;;^UTILITY(U,$J,358.3,19266,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,19266,1,2,0)
 ;;=2^V69.2
 ;;^UTILITY(U,$J,358.3,19266,1,5,0)
 ;;=5^Hi-Risk Sexual Behavior
 ;;^UTILITY(U,$J,358.3,19266,2)
 ;;=^303474
 ;;^UTILITY(U,$J,358.3,19267,0)
 ;;=V62.82^^106^1135^1
 ;;^UTILITY(U,$J,358.3,19267,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,19267,1,2,0)
 ;;=2^V62.82
 ;;^UTILITY(U,$J,358.3,19267,1,5,0)
 ;;=5^Bereavement/Uncomplicat
 ;;^UTILITY(U,$J,358.3,19267,2)
 ;;=^123500
 ;;^UTILITY(U,$J,358.3,19268,0)
 ;;=V70.1^^106^1135^46
 ;;^UTILITY(U,$J,358.3,19268,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,19268,1,2,0)
 ;;=2^V70.1
 ;;^UTILITY(U,$J,358.3,19268,1,5,0)
 ;;=5^Psych Exam, Mandated
 ;;^UTILITY(U,$J,358.3,19268,2)
 ;;=^295591
 ;;^UTILITY(U,$J,358.3,19269,0)
 ;;=V60.2^^106^1135^4
 ;;^UTILITY(U,$J,358.3,19269,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,19269,1,2,0)
 ;;=2^V60.2
 ;;^UTILITY(U,$J,358.3,19269,1,5,0)
 ;;=5^Economic Problem
 ;;^UTILITY(U,$J,358.3,19269,2)
 ;;=^62174
 ;;^UTILITY(U,$J,358.3,19270,0)
 ;;=V62.89^^106^1135^47
 ;;^UTILITY(U,$J,358.3,19270,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,19270,1,2,0)
 ;;=2^V62.89
 ;;^UTILITY(U,$J,358.3,19270,1,5,0)
 ;;=5^Psychological Stress
 ;;^UTILITY(U,$J,358.3,19270,2)
 ;;=^87822
 ;;^UTILITY(U,$J,358.3,19271,0)
 ;;=V62.9^^106^1135^48
 ;;^UTILITY(U,$J,358.3,19271,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,19271,1,2,0)
 ;;=2^V62.9
 ;;^UTILITY(U,$J,358.3,19271,1,5,0)
 ;;=5^Psychosocial Circum
 ;;^UTILITY(U,$J,358.3,19271,2)
 ;;=^295551
 ;;^UTILITY(U,$J,358.3,19272,0)
 ;;=V60.0^^106^1135^31
 ;;^UTILITY(U,$J,358.3,19272,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,19272,1,2,0)
 ;;=2^V60.0
 ;;^UTILITY(U,$J,358.3,19272,1,5,0)
 ;;=5^Lack Of Housing
 ;;^UTILITY(U,$J,358.3,19272,2)
 ;;=^295539
 ;;^UTILITY(U,$J,358.3,19273,0)
 ;;=V62.81^^106^1135^21
 ;;^UTILITY(U,$J,358.3,19273,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,19273,1,2,0)
 ;;=2^V62.81
 ;;^UTILITY(U,$J,358.3,19273,1,5,0)
 ;;=5^Interpersonal Problem
 ;;^UTILITY(U,$J,358.3,19273,2)
 ;;=^276358
 ;;^UTILITY(U,$J,358.3,19274,0)
 ;;=V71.01^^106^1135^34
 ;;^UTILITY(U,$J,358.3,19274,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,19274,1,2,0)
 ;;=2^V71.01
 ;;^UTILITY(U,$J,358.3,19274,1,5,0)
 ;;=5^Observ-Antisocial Behav
 ;;^UTILITY(U,$J,358.3,19274,2)
 ;;=^295603
 ;;^UTILITY(U,$J,358.3,19275,0)
 ;;=V71.09^^106^1135^35
 ;;^UTILITY(U,$J,358.3,19275,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,19275,1,2,0)
 ;;=2^V71.09
 ;;^UTILITY(U,$J,358.3,19275,1,5,0)
 ;;=5^Observ-Mental Condition
 ;;^UTILITY(U,$J,358.3,19275,2)
 ;;=^295604
 ;;^UTILITY(U,$J,358.3,19276,0)
 ;;=V15.41^^106^1135^19
 ;;^UTILITY(U,$J,358.3,19276,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,19276,1,2,0)
 ;;=2^V15.41
 ;;^UTILITY(U,$J,358.3,19276,1,5,0)
 ;;=5^Hx Of Sexual Abuse
 ;;^UTILITY(U,$J,358.3,19276,2)
 ;;=^304352
 ;;^UTILITY(U,$J,358.3,19277,0)
 ;;=V61.01^^106^1135^10
 ;;^UTILITY(U,$J,358.3,19277,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,19277,1,2,0)
 ;;=2^V61.01
 ;;^UTILITY(U,$J,358.3,19277,1,5,0)
 ;;=5^Fmily Dsrpt-Fam Military
 ;;^UTILITY(U,$J,358.3,19277,2)
 ;;=^336799
 ;;^UTILITY(U,$J,358.3,19278,0)
 ;;=V61.02^^106^1135^11