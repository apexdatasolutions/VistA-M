IBDEI23U ; ; 19-NOV-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,35325,1,3,0)
 ;;=3^Exam/Observation for Unspec Reason
 ;;^UTILITY(U,$J,358.3,35325,1,4,0)
 ;;=4^Z04.9
 ;;^UTILITY(U,$J,358.3,35325,2)
 ;;=^5062666
 ;;^UTILITY(U,$J,358.3,35326,0)
 ;;=Z49.01^^163^1801^16
 ;;^UTILITY(U,$J,358.3,35326,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,35326,1,3,0)
 ;;=3^Fitting/Adjustment of Extracorpeal Dialysis Catheter
 ;;^UTILITY(U,$J,358.3,35326,1,4,0)
 ;;=4^Z49.01
 ;;^UTILITY(U,$J,358.3,35326,2)
 ;;=^5063056
 ;;^UTILITY(U,$J,358.3,35327,0)
 ;;=Z71.3^^163^1802^3
 ;;^UTILITY(U,$J,358.3,35327,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,35327,1,3,0)
 ;;=3^Dietary Counseling/Surveillance
 ;;^UTILITY(U,$J,358.3,35327,1,4,0)
 ;;=4^Z71.3
 ;;^UTILITY(U,$J,358.3,35327,2)
 ;;=^5063245
 ;;^UTILITY(U,$J,358.3,35328,0)
 ;;=Z00.00^^163^1802^6
 ;;^UTILITY(U,$J,358.3,35328,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,35328,1,3,0)
 ;;=3^General Adult Medical Exam w/o Abnormal Findings
 ;;^UTILITY(U,$J,358.3,35328,1,4,0)
 ;;=4^Z00.00
 ;;^UTILITY(U,$J,358.3,35328,2)
 ;;=^5062599
 ;;^UTILITY(U,$J,358.3,35329,0)
 ;;=Z01.89^^163^1802^12
 ;;^UTILITY(U,$J,358.3,35329,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,35329,1,3,0)
 ;;=3^Special Exam NEC
 ;;^UTILITY(U,$J,358.3,35329,1,4,0)
 ;;=4^Z01.89
 ;;^UTILITY(U,$J,358.3,35329,2)
 ;;=^5062632
 ;;^UTILITY(U,$J,358.3,35330,0)
 ;;=Z11.59^^163^1802^13
 ;;^UTILITY(U,$J,358.3,35330,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,35330,1,3,0)
 ;;=3^Viral Disease Screening NEC
 ;;^UTILITY(U,$J,358.3,35330,1,4,0)
 ;;=4^Z11.59
 ;;^UTILITY(U,$J,358.3,35330,2)
 ;;=^5062675
 ;;^UTILITY(U,$J,358.3,35331,0)
 ;;=Z12.39^^163^1802^8
 ;;^UTILITY(U,$J,358.3,35331,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,35331,1,3,0)
 ;;=3^Malig Neop of Breast Screening NEC
 ;;^UTILITY(U,$J,358.3,35331,1,4,0)
 ;;=4^Z12.39
 ;;^UTILITY(U,$J,358.3,35331,2)
 ;;=^5062686
 ;;^UTILITY(U,$J,358.3,35332,0)
 ;;=Z12.12^^163^1802^10
 ;;^UTILITY(U,$J,358.3,35332,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,35332,1,3,0)
 ;;=3^Malig Neop of Rectum Screening
 ;;^UTILITY(U,$J,358.3,35332,1,4,0)
 ;;=4^Z12.12
 ;;^UTILITY(U,$J,358.3,35332,2)
 ;;=^5062682
 ;;^UTILITY(U,$J,358.3,35333,0)
 ;;=Z12.5^^163^1802^9
 ;;^UTILITY(U,$J,358.3,35333,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,35333,1,3,0)
 ;;=3^Malig Neop of Prostate Screening
 ;;^UTILITY(U,$J,358.3,35333,1,4,0)
 ;;=4^Z12.5
 ;;^UTILITY(U,$J,358.3,35333,2)
 ;;=^5062688
 ;;^UTILITY(U,$J,358.3,35334,0)
 ;;=Z13.5^^163^1802^4
 ;;^UTILITY(U,$J,358.3,35334,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,35334,1,3,0)
 ;;=3^Eye and Ear Disorder Screening
 ;;^UTILITY(U,$J,358.3,35334,1,4,0)
 ;;=4^Z13.5
 ;;^UTILITY(U,$J,358.3,35334,2)
 ;;=^5062706
 ;;^UTILITY(U,$J,358.3,35335,0)
 ;;=Z13.1^^163^1802^2
 ;;^UTILITY(U,$J,358.3,35335,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,35335,1,3,0)
 ;;=3^Diabetes Mellitus Screening
 ;;^UTILITY(U,$J,358.3,35335,1,4,0)
 ;;=4^Z13.1
 ;;^UTILITY(U,$J,358.3,35335,2)
 ;;=^5062700
 ;;^UTILITY(U,$J,358.3,35336,0)
 ;;=Z13.220^^163^1802^7
 ;;^UTILITY(U,$J,358.3,35336,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,35336,1,3,0)
 ;;=3^Lipoid Disorder Screening
 ;;^UTILITY(U,$J,358.3,35336,1,4,0)
 ;;=4^Z13.220
 ;;^UTILITY(U,$J,358.3,35336,2)
 ;;=^5062702
 ;;^UTILITY(U,$J,358.3,35337,0)
 ;;=Z11.1^^163^1802^11
 ;;^UTILITY(U,$J,358.3,35337,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,35337,1,3,0)
 ;;=3^Respiratory Tuberculosis Screening
 ;;^UTILITY(U,$J,358.3,35337,1,4,0)
 ;;=4^Z11.1
 ;;^UTILITY(U,$J,358.3,35337,2)
 ;;=^5062670
 ;;^UTILITY(U,$J,358.3,35338,0)
 ;;=Z13.6^^163^1802^1
 ;;^UTILITY(U,$J,358.3,35338,1,0)
 ;;=^358.31IA^4^2
