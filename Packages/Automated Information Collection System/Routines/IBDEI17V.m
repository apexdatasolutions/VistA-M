IBDEI17V ; ; 20-MAY-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;OCT 15, 2014
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,21816,1,3,0)
 ;;=3^Below Elbow Amput Status
 ;;^UTILITY(U,$J,358.3,21816,1,4,0)
 ;;=4^V49.65
 ;;^UTILITY(U,$J,358.3,21816,2)
 ;;=^303432
 ;;^UTILITY(U,$J,358.3,21817,0)
 ;;=V49.66^^121^1298^1
 ;;^UTILITY(U,$J,358.3,21817,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,21817,1,3,0)
 ;;=3^Above Elbow Amput Status
 ;;^UTILITY(U,$J,358.3,21817,1,4,0)
 ;;=4^V49.66
 ;;^UTILITY(U,$J,358.3,21817,2)
 ;;=^303433
 ;;^UTILITY(U,$J,358.3,21818,0)
 ;;=V49.67^^121^1298^13
 ;;^UTILITY(U,$J,358.3,21818,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,21818,1,3,0)
 ;;=3^Shoulder Amput Status
 ;;^UTILITY(U,$J,358.3,21818,1,4,0)
 ;;=4^V49.67
 ;;^UTILITY(U,$J,358.3,21818,2)
 ;;=^303434
 ;;^UTILITY(U,$J,358.3,21819,0)
 ;;=V49.70^^121^1298^10
 ;;^UTILITY(U,$J,358.3,21819,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,21819,1,3,0)
 ;;=3^Lower Limb Amput Status,Unsp
 ;;^UTILITY(U,$J,358.3,21819,1,4,0)
 ;;=4^V49.70
 ;;^UTILITY(U,$J,358.3,21819,2)
 ;;=^303438
 ;;^UTILITY(U,$J,358.3,21820,0)
 ;;=V49.71^^121^1298^7
 ;;^UTILITY(U,$J,358.3,21820,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,21820,1,3,0)
 ;;=3^Great Toe Amput Status
 ;;^UTILITY(U,$J,358.3,21820,1,4,0)
 ;;=4^V49.71
 ;;^UTILITY(U,$J,358.3,21820,2)
 ;;=^303439
 ;;^UTILITY(U,$J,358.3,21821,0)
 ;;=V49.72^^121^1298^12
 ;;^UTILITY(U,$J,358.3,21821,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,21821,1,3,0)
 ;;=3^Oth Toe(s) Amput Status
 ;;^UTILITY(U,$J,358.3,21821,1,4,0)
 ;;=4^V49.72
 ;;^UTILITY(U,$J,358.3,21821,2)
 ;;=^303440
 ;;^UTILITY(U,$J,358.3,21822,0)
 ;;=V49.73^^121^1298^6
 ;;^UTILITY(U,$J,358.3,21822,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,21822,1,3,0)
 ;;=3^Foot Amput Status
 ;;^UTILITY(U,$J,358.3,21822,1,4,0)
 ;;=4^V49.73
 ;;^UTILITY(U,$J,358.3,21822,2)
 ;;=^303441
 ;;^UTILITY(U,$J,358.3,21823,0)
 ;;=V49.74^^121^1298^3
 ;;^UTILITY(U,$J,358.3,21823,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,21823,1,3,0)
 ;;=3^Ankle Amput Status
 ;;^UTILITY(U,$J,358.3,21823,1,4,0)
 ;;=4^V49.74
 ;;^UTILITY(U,$J,358.3,21823,2)
 ;;=^303442
 ;;^UTILITY(U,$J,358.3,21824,0)
 ;;=V49.75^^121^1298^5
 ;;^UTILITY(U,$J,358.3,21824,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,21824,1,3,0)
 ;;=3^Below Knee Amput Status
 ;;^UTILITY(U,$J,358.3,21824,1,4,0)
 ;;=4^V49.75
 ;;^UTILITY(U,$J,358.3,21824,2)
 ;;=^303443
 ;;^UTILITY(U,$J,358.3,21825,0)
 ;;=V49.76^^121^1298^2
 ;;^UTILITY(U,$J,358.3,21825,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,21825,1,3,0)
 ;;=3^Above Knee Amput Status
 ;;^UTILITY(U,$J,358.3,21825,1,4,0)
 ;;=4^V49.76
 ;;^UTILITY(U,$J,358.3,21825,2)
 ;;=^303444
 ;;^UTILITY(U,$J,358.3,21826,0)
 ;;=V49.77^^121^1298^9
 ;;^UTILITY(U,$J,358.3,21826,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,21826,1,3,0)
 ;;=3^Hip Amput Status
 ;;^UTILITY(U,$J,358.3,21826,1,4,0)
 ;;=4^V49.77
 ;;^UTILITY(U,$J,358.3,21826,2)
 ;;=^303445
 ;;^UTILITY(U,$J,358.3,21827,0)
 ;;=713.5^^122^1299^1
 ;;^UTILITY(U,$J,358.3,21827,1,0)
 ;;=^358.31IA^4^3
 ;;^UTILITY(U,$J,358.3,21827,1,1,0)
 ;;=1
 ;;^UTILITY(U,$J,358.3,21827,1,3,0)
 ;;=3^Charcot's Arthropathy
 ;;^UTILITY(U,$J,358.3,21827,1,4,0)
 ;;=4^713.5
 ;;^UTILITY(U,$J,358.3,21827,2)
 ;;=^10545
 ;;^UTILITY(U,$J,358.3,21828,0)
 ;;=337.1^^122^1299^9
 ;;^UTILITY(U,$J,358.3,21828,1,0)
 ;;=^358.31IA^4^3
 ;;^UTILITY(U,$J,358.3,21828,1,1,0)
 ;;=1
 ;;^UTILITY(U,$J,358.3,21828,1,3,0)
 ;;=3^Peripheral Neuropathy In Dm
 ;;^UTILITY(U,$J,358.3,21828,1,4,0)
 ;;=4^337.1
 ;;^UTILITY(U,$J,358.3,21828,2)
 ;;=^268435
 ;;^UTILITY(U,$J,358.3,21829,0)
 ;;=443.81^^122^1299^10
 ;;^UTILITY(U,$J,358.3,21829,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,21829,1,3,0)
 ;;=3^Peripheral Vascular Dis In Dm