IBDEI1H6 ; ; 20-MAY-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;OCT 15, 2014
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,26468,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,26468,1,2,0)
 ;;=2^Cardiac Rehab w/o Contin ECG Monitor
 ;;^UTILITY(U,$J,358.3,26468,1,3,0)
 ;;=3^93797
 ;;^UTILITY(U,$J,358.3,26469,0)
 ;;=93798^^156^1614^1^^^^1
 ;;^UTILITY(U,$J,358.3,26469,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,26469,1,2,0)
 ;;=2^Cardiac Rehab w/Contin ECG Monitor
 ;;^UTILITY(U,$J,358.3,26469,1,3,0)
 ;;=3^93798
 ;;^UTILITY(U,$J,358.3,26470,0)
 ;;=98960^^156^1615^3^^^^1
 ;;^UTILITY(U,$J,358.3,26470,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,26470,1,2,0)
 ;;=2^Ed/Train Self-Mgmt nonphy;1 pt ea 30min
 ;;^UTILITY(U,$J,358.3,26470,1,3,0)
 ;;=3^98960
 ;;^UTILITY(U,$J,358.3,26471,0)
 ;;=98961^^156^1615^1^^^^1
 ;;^UTILITY(U,$J,358.3,26471,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,26471,1,2,0)
 ;;=2^Ed/Train Self-Mgmt HCP;2-4 pts ea 30min
 ;;^UTILITY(U,$J,358.3,26471,1,3,0)
 ;;=3^98961
 ;;^UTILITY(U,$J,358.3,26472,0)
 ;;=98962^^156^1615^2^^^^1
 ;;^UTILITY(U,$J,358.3,26472,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,26472,1,2,0)
 ;;=2^Ed/Train Self-Mgmt HCP;5-8 pts ea 30min
 ;;^UTILITY(U,$J,358.3,26472,1,3,0)
 ;;=3^98962
 ;;^UTILITY(U,$J,358.3,26473,0)
 ;;=98969^^156^1615^4^^^^1
 ;;^UTILITY(U,$J,358.3,26473,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,26473,1,2,0)
 ;;=2^Online assess/mgmt svc by HCP;est pt
 ;;^UTILITY(U,$J,358.3,26473,1,3,0)
 ;;=3^98969
 ;;^UTILITY(U,$J,358.3,26474,0)
 ;;=G0151^^156^1616^5^^^^1
 ;;^UTILITY(U,$J,358.3,26474,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,26474,1,2,0)
 ;;=2^PT in home/hospice,ea 15min
 ;;^UTILITY(U,$J,358.3,26474,1,3,0)
 ;;=3^G0151
 ;;^UTILITY(U,$J,358.3,26475,0)
 ;;=G0152^^156^1616^2^^^^1
 ;;^UTILITY(U,$J,358.3,26475,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,26475,1,2,0)
 ;;=2^OT in home/hospice,ea 15min
 ;;^UTILITY(U,$J,358.3,26475,1,3,0)
 ;;=3^G0152
 ;;^UTILITY(U,$J,358.3,26476,0)
 ;;=G0157^^156^1616^6^^^^1
 ;;^UTILITY(U,$J,358.3,26476,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,26476,1,2,0)
 ;;=2^PTA in home/hospice,ea 15min
 ;;^UTILITY(U,$J,358.3,26476,1,3,0)
 ;;=3^G0157
 ;;^UTILITY(U,$J,358.3,26477,0)
 ;;=G0158^^156^1616^3^^^^1
 ;;^UTILITY(U,$J,358.3,26477,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,26477,1,2,0)
 ;;=2^OTA in home/hospice,ea 15min
 ;;^UTILITY(U,$J,358.3,26477,1,3,0)
 ;;=3^G0158
 ;;^UTILITY(U,$J,358.3,26478,0)
 ;;=G0159^^156^1616^4^^^^1
 ;;^UTILITY(U,$J,358.3,26478,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,26478,1,2,0)
 ;;=2^PT Maint in home,ea 15min
 ;;^UTILITY(U,$J,358.3,26478,1,3,0)
 ;;=3^G0159
 ;;^UTILITY(U,$J,358.3,26479,0)
 ;;=G0160^^156^1616^1^^^^1
 ;;^UTILITY(U,$J,358.3,26479,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,26479,1,2,0)
 ;;=2^OT Maint in home,ea 15min
 ;;^UTILITY(U,$J,358.3,26479,1,3,0)
 ;;=3^G0160
 ;;^UTILITY(U,$J,358.3,26480,0)
 ;;=95860^^156^1617^3^^^^1
 ;;^UTILITY(U,$J,358.3,26480,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,26480,1,2,0)
 ;;=2^Muscle Test (EMG),1 Limb
 ;;^UTILITY(U,$J,358.3,26480,1,3,0)
 ;;=3^95860
 ;;^UTILITY(U,$J,358.3,26481,0)
 ;;=95863^^156^1617^5^^^^1
 ;;^UTILITY(U,$J,358.3,26481,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,26481,1,2,0)
 ;;=2^Muscle Test (EMG),3 Limbs
 ;;^UTILITY(U,$J,358.3,26481,1,3,0)
 ;;=3^95863
 ;;^UTILITY(U,$J,358.3,26482,0)
 ;;=95864^^156^1617^6^^^^1
 ;;^UTILITY(U,$J,358.3,26482,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,26482,1,2,0)
 ;;=2^Muscle Test (EMG),4 Limbs
 ;;^UTILITY(U,$J,358.3,26482,1,3,0)
 ;;=3^95864
 ;;^UTILITY(U,$J,358.3,26483,0)
 ;;=95867^^156^1617^7^^^^1
 ;;^UTILITY(U,$J,358.3,26483,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,26483,1,2,0)
 ;;=2^Muscle Test (EMG),Cran Ner Mus-Unilat