IBDEI1FM ; ; 20-MAY-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;OCT 15, 2014
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,25667,1,5,0)
 ;;=5^Exercise Counseling
 ;;^UTILITY(U,$J,358.3,25667,2)
 ;;=^303466
 ;;^UTILITY(U,$J,358.3,25668,0)
 ;;=V79.1^^145^1545^1
 ;;^UTILITY(U,$J,358.3,25668,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,25668,1,4,0)
 ;;=4^V79.1
 ;;^UTILITY(U,$J,358.3,25668,1,5,0)
 ;;=5^Alcohol Use Screen
 ;;^UTILITY(U,$J,358.3,25668,2)
 ;;=^295678
 ;;^UTILITY(U,$J,358.3,25669,0)
 ;;=V76.19^^145^1545^2
 ;;^UTILITY(U,$J,358.3,25669,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,25669,1,4,0)
 ;;=4^V76.19
 ;;^UTILITY(U,$J,358.3,25669,1,5,0)
 ;;=5^Breast Exam
 ;;^UTILITY(U,$J,358.3,25669,2)
 ;;=^295652
 ;;^UTILITY(U,$J,358.3,25670,0)
 ;;=V79.0^^145^1545^3
 ;;^UTILITY(U,$J,358.3,25670,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,25670,1,4,0)
 ;;=4^V79.0
 ;;^UTILITY(U,$J,358.3,25670,1,5,0)
 ;;=5^Depression Screening
 ;;^UTILITY(U,$J,358.3,25670,2)
 ;;=^295677
 ;;^UTILITY(U,$J,358.3,25671,0)
 ;;=V80.2^^145^1545^4
 ;;^UTILITY(U,$J,358.3,25671,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,25671,1,4,0)
 ;;=4^V80.2
 ;;^UTILITY(U,$J,358.3,25671,1,5,0)
 ;;=5^Diabetic Eye Exam
 ;;^UTILITY(U,$J,358.3,25671,2)
 ;;=^295685
 ;;^UTILITY(U,$J,358.3,25672,0)
 ;;=V72.85^^145^1545^5
 ;;^UTILITY(U,$J,358.3,25672,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,25672,1,4,0)
 ;;=4^V72.85
 ;;^UTILITY(U,$J,358.3,25672,1,5,0)
 ;;=5^Diabetic Foot Exam
 ;;^UTILITY(U,$J,358.3,25672,2)
 ;;=^295831
 ;;^UTILITY(U,$J,358.3,25673,0)
 ;;=V70.0^^145^1545^7
 ;;^UTILITY(U,$J,358.3,25673,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,25673,1,4,0)
 ;;=4^V70.0
 ;;^UTILITY(U,$J,358.3,25673,1,5,0)
 ;;=5^Health Check-Up
 ;;^UTILITY(U,$J,358.3,25673,2)
 ;;=^295590
 ;;^UTILITY(U,$J,358.3,25674,0)
 ;;=V73.89^^145^1545^8
 ;;^UTILITY(U,$J,358.3,25674,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,25674,1,4,0)
 ;;=4^V73.89
 ;;^UTILITY(U,$J,358.3,25674,1,5,0)
 ;;=5^Hepatitis C Screening
 ;;^UTILITY(U,$J,358.3,25674,2)
 ;;=^295833
 ;;^UTILITY(U,$J,358.3,25675,0)
 ;;=V81.1^^145^1545^9
 ;;^UTILITY(U,$J,358.3,25675,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,25675,1,4,0)
 ;;=4^V81.1
 ;;^UTILITY(U,$J,358.3,25675,1,5,0)
 ;;=5^Hypertension Screening
 ;;^UTILITY(U,$J,358.3,25675,2)
 ;;=^295688
 ;;^UTILITY(U,$J,358.3,25676,0)
 ;;=V65.3^^145^1545^10
 ;;^UTILITY(U,$J,358.3,25676,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,25676,1,4,0)
 ;;=4^V65.3
 ;;^UTILITY(U,$J,358.3,25676,1,5,0)
 ;;=5^Nutrition Counseling
 ;;^UTILITY(U,$J,358.3,25676,2)
 ;;=^295563
 ;;^UTILITY(U,$J,358.3,25677,0)
 ;;=V76.41^^145^1545^13
 ;;^UTILITY(U,$J,358.3,25677,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,25677,1,4,0)
 ;;=4^V76.41
 ;;^UTILITY(U,$J,358.3,25677,1,5,0)
 ;;=5^Rectal Exam
 ;;^UTILITY(U,$J,358.3,25677,2)
 ;;=^295655
 ;;^UTILITY(U,$J,358.3,25678,0)
 ;;=V65.43^^145^1545^15
 ;;^UTILITY(U,$J,358.3,25678,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,25678,1,4,0)
 ;;=4^V65.43
 ;;^UTILITY(U,$J,358.3,25678,1,5,0)
 ;;=5^Safety Counseling
 ;;^UTILITY(U,$J,358.3,25678,2)
 ;;=^303468
 ;;^UTILITY(U,$J,358.3,25679,0)
 ;;=V77.8^^145^1545^19
 ;;^UTILITY(U,$J,358.3,25679,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,25679,1,4,0)
 ;;=4^V77.8
 ;;^UTILITY(U,$J,358.3,25679,1,5,0)
 ;;=5^Weight Screen
 ;;^UTILITY(U,$J,358.3,25679,2)
 ;;=^295669
 ;;^UTILITY(U,$J,358.3,25680,0)
 ;;=V65.40^^145^1545^11
 ;;^UTILITY(U,$J,358.3,25680,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,25680,1,4,0)
 ;;=4^V65.40
 ;;^UTILITY(U,$J,358.3,25680,1,5,0)
 ;;=5^Preventive Counseling, Unspec
 ;;^UTILITY(U,$J,358.3,25680,2)
 ;;=^87449
 ;;^UTILITY(U,$J,358.3,25681,0)
 ;;=V76.44^^145^1545^12
 ;;^UTILITY(U,$J,358.3,25681,1,0)
 ;;=^358.31IA^5^2