IBDEI1AM ; ; 20-MAY-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;OCT 15, 2014
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,23211,0)
 ;;=97598^^136^1412^7^^^^1
 ;;^UTILITY(U,$J,358.3,23211,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,23211,1,2,0)
 ;;=2^97598
 ;;^UTILITY(U,$J,358.3,23211,1,3,0)
 ;;=3^Rmvl Devital Tiiss,Addl 20 cm
 ;;^UTILITY(U,$J,358.3,23212,0)
 ;;=97597^^136^1412^6^^^^1
 ;;^UTILITY(U,$J,358.3,23212,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,23212,1,2,0)
 ;;=2^97597
 ;;^UTILITY(U,$J,358.3,23212,1,3,0)
 ;;=3^Rmvl Devital Tiss < 20 cm
 ;;^UTILITY(U,$J,358.3,23213,0)
 ;;=15271^^136^1412^8^^^^1
 ;;^UTILITY(U,$J,358.3,23213,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,23213,1,2,0)
 ;;=2^15271
 ;;^UTILITY(U,$J,358.3,23213,1,3,0)
 ;;=3^Skin Sub Graft Trnk/Arm/Leg
 ;;^UTILITY(U,$J,358.3,23214,0)
 ;;=15272^^136^1412^9^^^^1
 ;;^UTILITY(U,$J,358.3,23214,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,23214,1,2,0)
 ;;=2^15272
 ;;^UTILITY(U,$J,358.3,23214,1,3,0)
 ;;=3^Skin Sub Graft Trnk/Arm/Leg Add-On
 ;;^UTILITY(U,$J,358.3,23215,0)
 ;;=29580^^136^1412^1^^^^1
 ;;^UTILITY(U,$J,358.3,23215,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,23215,1,2,0)
 ;;=2^29580
 ;;^UTILITY(U,$J,358.3,23215,1,3,0)
 ;;=3^Application of UNNA Boot
 ;;^UTILITY(U,$J,358.3,23216,0)
 ;;=97607^^136^1412^2^^^^1
 ;;^UTILITY(U,$J,358.3,23216,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,23216,1,2,0)
 ;;=2^97607
 ;;^UTILITY(U,$J,358.3,23216,1,3,0)
 ;;=3^Neg Press Wound Tx <= 50 cm
 ;;^UTILITY(U,$J,358.3,23217,0)
 ;;=97608^^136^1412^4^^^^1
 ;;^UTILITY(U,$J,358.3,23217,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,23217,1,2,0)
 ;;=2^97608
 ;;^UTILITY(U,$J,358.3,23217,1,3,0)
 ;;=3^Neg Press Wound Tx > 50 cm
 ;;^UTILITY(U,$J,358.3,23218,0)
 ;;=95028^^136^1413^1^^^^1
 ;;^UTILITY(U,$J,358.3,23218,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,23218,1,2,0)
 ;;=2^95028
 ;;^UTILITY(U,$J,358.3,23218,1,3,0)
 ;;=3^ID Allergy Test-Delayed Type
 ;;^UTILITY(U,$J,358.3,23219,0)
 ;;=95044^^136^1413^2^^^^1
 ;;^UTILITY(U,$J,358.3,23219,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,23219,1,2,0)
 ;;=2^95044
 ;;^UTILITY(U,$J,358.3,23219,1,3,0)
 ;;=3^Patch/Applic Test
 ;;^UTILITY(U,$J,358.3,23220,0)
 ;;=88104^^136^1414^2^^^^1
 ;;^UTILITY(U,$J,358.3,23220,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,23220,1,2,0)
 ;;=2^88104
 ;;^UTILITY(U,$J,358.3,23220,1,3,0)
 ;;=3^Cytopath Fl Nongyn Smears
 ;;^UTILITY(U,$J,358.3,23221,0)
 ;;=88106^^136^1414^1^^^^1
 ;;^UTILITY(U,$J,358.3,23221,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,23221,1,2,0)
 ;;=2^88106
 ;;^UTILITY(U,$J,358.3,23221,1,3,0)
 ;;=3^Cytopath Fl Nongyn Filter
 ;;^UTILITY(U,$J,358.3,23222,0)
 ;;=Q0112^^136^1414^3^^^^1
 ;;^UTILITY(U,$J,358.3,23222,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,23222,1,2,0)
 ;;=2^Q0112
 ;;^UTILITY(U,$J,358.3,23222,1,3,0)
 ;;=3^Potassium Hydroxide Preps
 ;;^UTILITY(U,$J,358.3,23223,0)
 ;;=87220^^136^1414^4^^^^1
 ;;^UTILITY(U,$J,358.3,23223,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,23223,1,2,0)
 ;;=2^87220
 ;;^UTILITY(U,$J,358.3,23223,1,3,0)
 ;;=3^Tissue Exam for Fungi
 ;;^UTILITY(U,$J,358.3,23224,0)
 ;;=17311^^136^1415^1^^^^1
 ;;^UTILITY(U,$J,358.3,23224,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,23224,1,2,0)
 ;;=2^17311
 ;;^UTILITY(U,$J,358.3,23224,1,3,0)
 ;;=3^MOHS 1 Stage H/N/HF/G
 ;;^UTILITY(U,$J,358.3,23225,0)
 ;;=17312^^136^1415^2^^^^1
 ;;^UTILITY(U,$J,358.3,23225,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,23225,1,2,0)
 ;;=2^17312
 ;;^UTILITY(U,$J,358.3,23225,1,3,0)
 ;;=3^MOHS H/N/HF/G,Ea Addl Stage
 ;;^UTILITY(U,$J,358.3,23226,0)
 ;;=17313^^136^1415^3^^^^1
 ;;^UTILITY(U,$J,358.3,23226,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,23226,1,2,0)
 ;;=2^17313