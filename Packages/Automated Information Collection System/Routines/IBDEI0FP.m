IBDEI0FP ; ; 19-NOV-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,6935,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,6935,1,3,0)
 ;;=3^Screening for Malig Neop of Skin
 ;;^UTILITY(U,$J,358.3,6935,1,4,0)
 ;;=4^Z12.83
 ;;^UTILITY(U,$J,358.3,6935,2)
 ;;=^5062696
 ;;^UTILITY(U,$J,358.3,6936,0)
 ;;=Z48.817^^46^455^33
 ;;^UTILITY(U,$J,358.3,6936,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,6936,1,3,0)
 ;;=3^Surgical Aftercare Following Skin Surgery
 ;;^UTILITY(U,$J,358.3,6936,1,4,0)
 ;;=4^Z48.817
 ;;^UTILITY(U,$J,358.3,6936,2)
 ;;=^5063054
 ;;^UTILITY(U,$J,358.3,6937,0)
 ;;=L94.0^^46^455^18
 ;;^UTILITY(U,$J,358.3,6937,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,6937,1,3,0)
 ;;=3^Scleroderma,Localized
 ;;^UTILITY(U,$J,358.3,6937,1,4,0)
 ;;=4^L94.0
 ;;^UTILITY(U,$J,358.3,6937,2)
 ;;=^5009470
 ;;^UTILITY(U,$J,358.3,6938,0)
 ;;=D23.9^^46^455^20
 ;;^UTILITY(U,$J,358.3,6938,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,6938,1,3,0)
 ;;=3^Sebaceous Hyperplasia
 ;;^UTILITY(U,$J,358.3,6938,1,4,0)
 ;;=4^D23.9
 ;;^UTILITY(U,$J,358.3,6938,2)
 ;;=^5002076
 ;;^UTILITY(U,$J,358.3,6939,0)
 ;;=L21.9^^46^455^21
 ;;^UTILITY(U,$J,358.3,6939,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,6939,1,3,0)
 ;;=3^Seborrhea,Unspec
 ;;^UTILITY(U,$J,358.3,6939,1,4,0)
 ;;=4^L21.9
 ;;^UTILITY(U,$J,358.3,6939,2)
 ;;=^188703
 ;;^UTILITY(U,$J,358.3,6940,0)
 ;;=L91.8^^46^455^25
 ;;^UTILITY(U,$J,358.3,6940,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,6940,1,3,0)
 ;;=3^Skin Tag
 ;;^UTILITY(U,$J,358.3,6940,1,4,0)
 ;;=4^L91.8
 ;;^UTILITY(U,$J,358.3,6940,2)
 ;;=^5009460
 ;;^UTILITY(U,$J,358.3,6941,0)
 ;;=I83.12^^46^455^28
 ;;^UTILITY(U,$J,358.3,6941,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,6941,1,3,0)
 ;;=3^Stasis Dermatitis.Left Leg
 ;;^UTILITY(U,$J,358.3,6941,1,4,0)
 ;;=4^I83.12
 ;;^UTILITY(U,$J,358.3,6941,2)
 ;;=^5007989
 ;;^UTILITY(U,$J,358.3,6942,0)
 ;;=I83.11^^46^455^27
 ;;^UTILITY(U,$J,358.3,6942,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,6942,1,3,0)
 ;;=3^Stasis Dermatitis,Right Leg
 ;;^UTILITY(U,$J,358.3,6942,1,4,0)
 ;;=4^I83.11
 ;;^UTILITY(U,$J,358.3,6942,2)
 ;;=^5007988
 ;;^UTILITY(U,$J,358.3,6943,0)
 ;;=B35.1^^46^456^9
 ;;^UTILITY(U,$J,358.3,6943,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,6943,1,3,0)
 ;;=3^Tinea Unguium
 ;;^UTILITY(U,$J,358.3,6943,1,4,0)
 ;;=4^B35.1
 ;;^UTILITY(U,$J,358.3,6943,2)
 ;;=^119748
 ;;^UTILITY(U,$J,358.3,6944,0)
 ;;=F63.3^^46^456^12
 ;;^UTILITY(U,$J,358.3,6944,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,6944,1,3,0)
 ;;=3^Trichotillomania
 ;;^UTILITY(U,$J,358.3,6944,1,4,0)
 ;;=4^F63.3
 ;;^UTILITY(U,$J,358.3,6944,2)
 ;;=^5003643
 ;;^UTILITY(U,$J,358.3,6945,0)
 ;;=B35.2^^46^456^6
 ;;^UTILITY(U,$J,358.3,6945,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,6945,1,3,0)
 ;;=3^Tinea Manuum
 ;;^UTILITY(U,$J,358.3,6945,1,4,0)
 ;;=4^B35.2
 ;;^UTILITY(U,$J,358.3,6945,2)
 ;;=^5000605
 ;;^UTILITY(U,$J,358.3,6946,0)
 ;;=B35.6^^46^456^5
 ;;^UTILITY(U,$J,358.3,6946,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,6946,1,3,0)
 ;;=3^Tinea Cruris
 ;;^UTILITY(U,$J,358.3,6946,1,4,0)
 ;;=4^B35.6
 ;;^UTILITY(U,$J,358.3,6946,2)
 ;;=^119711
 ;;^UTILITY(U,$J,358.3,6947,0)
 ;;=B35.3^^46^456^8
 ;;^UTILITY(U,$J,358.3,6947,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,6947,1,3,0)
 ;;=3^Tinea Pedis
 ;;^UTILITY(U,$J,358.3,6947,1,4,0)
 ;;=4^B35.3
 ;;^UTILITY(U,$J,358.3,6947,2)
 ;;=^119732
 ;;^UTILITY(U,$J,358.3,6948,0)
 ;;=B35.4^^46^456^4
 ;;^UTILITY(U,$J,358.3,6948,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,6948,1,3,0)
 ;;=3^Tinea Corporis
 ;;^UTILITY(U,$J,358.3,6948,1,4,0)
 ;;=4^B35.4
 ;;^UTILITY(U,$J,358.3,6948,2)
 ;;=^119704
 ;;^UTILITY(U,$J,358.3,6949,0)
 ;;=L51.2^^46^456^11
 ;;^UTILITY(U,$J,358.3,6949,1,0)
 ;;=^358.31IA^4^2
