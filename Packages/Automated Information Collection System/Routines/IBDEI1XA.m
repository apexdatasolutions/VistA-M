IBDEI1XA ; ; 20-MAY-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;OCT 15, 2014
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,34146,1,3,0)
 ;;=3^Pulmonary Collapse NEC
 ;;^UTILITY(U,$J,358.3,34146,1,4,0)
 ;;=4^J98.19
 ;;^UTILITY(U,$J,358.3,34146,2)
 ;;=^5008361
 ;;^UTILITY(U,$J,358.3,34147,0)
 ;;=C78.02^^192^1989^25
 ;;^UTILITY(U,$J,358.3,34147,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,34147,1,3,0)
 ;;=3^Secondary Malig Neop Left Lung
 ;;^UTILITY(U,$J,358.3,34147,1,4,0)
 ;;=4^C78.02
 ;;^UTILITY(U,$J,358.3,34147,2)
 ;;=^5001336
 ;;^UTILITY(U,$J,358.3,34148,0)
 ;;=C78.01^^192^1989^26
 ;;^UTILITY(U,$J,358.3,34148,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,34148,1,3,0)
 ;;=3^Secondary Malig Neop Right Lung
 ;;^UTILITY(U,$J,358.3,34148,1,4,0)
 ;;=4^C78.01
 ;;^UTILITY(U,$J,358.3,34148,2)
 ;;=^5001335
 ;;^UTILITY(U,$J,358.3,34149,0)
 ;;=I50.41^^192^1990^1
 ;;^UTILITY(U,$J,358.3,34149,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,34149,1,3,0)
 ;;=3^AC Combined Systolic & Diastolic Congestive Hrt Failure
 ;;^UTILITY(U,$J,358.3,34149,1,4,0)
 ;;=4^I50.41
 ;;^UTILITY(U,$J,358.3,34149,2)
 ;;=^5007248
 ;;^UTILITY(U,$J,358.3,34150,0)
 ;;=I50.31^^192^1990^2
 ;;^UTILITY(U,$J,358.3,34150,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,34150,1,3,0)
 ;;=3^AC Diastolic Congestive Hrt Failure
 ;;^UTILITY(U,$J,358.3,34150,1,4,0)
 ;;=4^I50.31
 ;;^UTILITY(U,$J,358.3,34150,2)
 ;;=^5007244
 ;;^UTILITY(U,$J,358.3,34151,0)
 ;;=I50.43^^192^1990^4
 ;;^UTILITY(U,$J,358.3,34151,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,34151,1,3,0)
 ;;=3^AC on Chr Combined Systolic & Diastolic Congestive Hrt Failure
 ;;^UTILITY(U,$J,358.3,34151,1,4,0)
 ;;=4^I50.43
 ;;^UTILITY(U,$J,358.3,34151,2)
 ;;=^5007250
 ;;^UTILITY(U,$J,358.3,34152,0)
 ;;=I50.33^^192^1990^5
 ;;^UTILITY(U,$J,358.3,34152,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,34152,1,3,0)
 ;;=3^AC on Chr Diastolic Congestive Hrt Failure
 ;;^UTILITY(U,$J,358.3,34152,1,4,0)
 ;;=4^I50.33
 ;;^UTILITY(U,$J,358.3,34152,2)
 ;;=^5007246
 ;;^UTILITY(U,$J,358.3,34153,0)
 ;;=I50.23^^192^1990^6
 ;;^UTILITY(U,$J,358.3,34153,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,34153,1,3,0)
 ;;=3^AC on Chr Systolic Congestive Hrt Failure
 ;;^UTILITY(U,$J,358.3,34153,1,4,0)
 ;;=4^I50.23
 ;;^UTILITY(U,$J,358.3,34153,2)
 ;;=^5007242
 ;;^UTILITY(U,$J,358.3,34154,0)
 ;;=I50.21^^192^1990^3
 ;;^UTILITY(U,$J,358.3,34154,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,34154,1,3,0)
 ;;=3^AC Systolic Congestive Hrt Failure
 ;;^UTILITY(U,$J,358.3,34154,1,4,0)
 ;;=4^I50.21
 ;;^UTILITY(U,$J,358.3,34154,2)
 ;;=^5007240
 ;;^UTILITY(U,$J,358.3,34155,0)
 ;;=I20.9^^192^1990^8
 ;;^UTILITY(U,$J,358.3,34155,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,34155,1,3,0)
 ;;=3^Angina Pectoris,Unspec
 ;;^UTILITY(U,$J,358.3,34155,1,4,0)
 ;;=4^I20.9
 ;;^UTILITY(U,$J,358.3,34155,2)
 ;;=^5007079
 ;;^UTILITY(U,$J,358.3,34156,0)
 ;;=I25.721^^192^1990^9
 ;;^UTILITY(U,$J,358.3,34156,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,34156,1,3,0)
 ;;=3^Athscl Autologous Artery CABG w/ Ang Pctrs w/ Documented Spasm
 ;;^UTILITY(U,$J,358.3,34156,1,4,0)
 ;;=4^I25.721
 ;;^UTILITY(U,$J,358.3,34156,2)
 ;;=^5007126
 ;;^UTILITY(U,$J,358.3,34157,0)
 ;;=I25.728^^192^1990^10
 ;;^UTILITY(U,$J,358.3,34157,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,34157,1,3,0)
 ;;=3^Athscl Autologous Artery CABG w/ Ang Pctrs NEC
 ;;^UTILITY(U,$J,358.3,34157,1,4,0)
 ;;=4^I25.728
 ;;^UTILITY(U,$J,358.3,34157,2)
 ;;=^5133560
 ;;^UTILITY(U,$J,358.3,34158,0)
 ;;=I25.729^^192^1990^11
 ;;^UTILITY(U,$J,358.3,34158,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,34158,1,3,0)
 ;;=3^Athscl Autologous Artery CABG w/ Ang Pctrs,Unspec
 ;;^UTILITY(U,$J,358.3,34158,1,4,0)
 ;;=4^I25.729
 ;;^UTILITY(U,$J,358.3,34158,2)
 ;;=^5133561