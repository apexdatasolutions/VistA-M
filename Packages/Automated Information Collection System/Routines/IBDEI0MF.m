IBDEI0MF ; ; 20-MAY-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;OCT 15, 2014
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,10978,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,10978,1,4,0)
 ;;=4^276.7
 ;;^UTILITY(U,$J,358.3,10978,1,5,0)
 ;;=5^Hyperkalemia/Hyperpotassemia
 ;;^UTILITY(U,$J,358.3,10978,2)
 ;;=Hyperkalemia/Hyperpotassemia^60042
 ;;^UTILITY(U,$J,358.3,10979,0)
 ;;=276.8^^64^692^32
 ;;^UTILITY(U,$J,358.3,10979,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,10979,1,4,0)
 ;;=4^276.8
 ;;^UTILITY(U,$J,358.3,10979,1,5,0)
 ;;=5^Hypokalemia/Hypopotassemia
 ;;^UTILITY(U,$J,358.3,10979,2)
 ;;=Hypokalemia/Hypopotassemia^60611
 ;;^UTILITY(U,$J,358.3,10980,0)
 ;;=275.2^^64^692^26
 ;;^UTILITY(U,$J,358.3,10980,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,10980,1,4,0)
 ;;=4^275.2
 ;;^UTILITY(U,$J,358.3,10980,1,5,0)
 ;;=5^Hyper Or Hypomagnesemia
 ;;^UTILITY(U,$J,358.3,10980,2)
 ;;=^35626
 ;;^UTILITY(U,$J,358.3,10981,0)
 ;;=276.0^^64^692^30
 ;;^UTILITY(U,$J,358.3,10981,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,10981,1,4,0)
 ;;=4^276.0
 ;;^UTILITY(U,$J,358.3,10981,1,5,0)
 ;;=5^Hypernatremia
 ;;^UTILITY(U,$J,358.3,10981,2)
 ;;=^60144
 ;;^UTILITY(U,$J,358.3,10982,0)
 ;;=276.1^^64^692^33
 ;;^UTILITY(U,$J,358.3,10982,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,10982,1,4,0)
 ;;=4^276.1
 ;;^UTILITY(U,$J,358.3,10982,1,5,0)
 ;;=5^Hyponatremia
 ;;^UTILITY(U,$J,358.3,10982,2)
 ;;=Hyponatremia^60722
 ;;^UTILITY(U,$J,358.3,10983,0)
 ;;=275.3^^64^692^27
 ;;^UTILITY(U,$J,358.3,10983,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,10983,1,4,0)
 ;;=4^275.3
 ;;^UTILITY(U,$J,358.3,10983,1,5,0)
 ;;=5^Hyper Or Hypophosphatemia
 ;;^UTILITY(U,$J,358.3,10983,2)
 ;;=^93796
 ;;^UTILITY(U,$J,358.3,10984,0)
 ;;=250.40^^64^692^16
 ;;^UTILITY(U,$J,358.3,10984,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,10984,1,4,0)
 ;;=4^250.40
 ;;^UTILITY(U,$J,358.3,10984,1,5,0)
 ;;=5^DM type II with Nephropathy
 ;;^UTILITY(U,$J,358.3,10984,2)
 ;;=DM type II with Nephropathy^267837^583.81
 ;;^UTILITY(U,$J,358.3,10985,0)
 ;;=790.93^^64^692^1
 ;;^UTILITY(U,$J,358.3,10985,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,10985,1,4,0)
 ;;=4^790.93
 ;;^UTILITY(U,$J,358.3,10985,1,5,0)
 ;;=5^Abnormal PSA
 ;;^UTILITY(U,$J,358.3,10985,2)
 ;;=Abnormal PSA^295772
 ;;^UTILITY(U,$J,358.3,10986,0)
 ;;=627.3^^64^692^3
 ;;^UTILITY(U,$J,358.3,10986,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,10986,1,4,0)
 ;;=4^627.3
 ;;^UTILITY(U,$J,358.3,10986,1,5,0)
 ;;=5^Atrophic Vaginitis
 ;;^UTILITY(U,$J,358.3,10986,2)
 ;;=^270577
 ;;^UTILITY(U,$J,358.3,10987,0)
 ;;=607.1^^64^692^6
 ;;^UTILITY(U,$J,358.3,10987,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,10987,1,4,0)
 ;;=4^607.1
 ;;^UTILITY(U,$J,358.3,10987,1,5,0)
 ;;=5^Balanitis
 ;;^UTILITY(U,$J,358.3,10987,2)
 ;;=^12530
 ;;^UTILITY(U,$J,358.3,10988,0)
 ;;=596.0^^64^692^7
 ;;^UTILITY(U,$J,358.3,10988,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,10988,1,4,0)
 ;;=4^596.0
 ;;^UTILITY(U,$J,358.3,10988,1,5,0)
 ;;=5^Bladder Neck Obstruction
 ;;^UTILITY(U,$J,358.3,10988,2)
 ;;=^15144
 ;;^UTILITY(U,$J,358.3,10989,0)
 ;;=595.0^^64^692^10
 ;;^UTILITY(U,$J,358.3,10989,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,10989,1,4,0)
 ;;=4^595.0
 ;;^UTILITY(U,$J,358.3,10989,1,5,0)
 ;;=5^Cystitis, Acute
 ;;^UTILITY(U,$J,358.3,10989,2)
 ;;=^259104
 ;;^UTILITY(U,$J,358.3,10990,0)
 ;;=595.82^^64^692^11
 ;;^UTILITY(U,$J,358.3,10990,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,10990,1,4,0)
 ;;=4^595.82
 ;;^UTILITY(U,$J,358.3,10990,1,5,0)
 ;;=5^Cystitis, Radiation
 ;;^UTILITY(U,$J,358.3,10990,2)
 ;;=^270391
 ;;^UTILITY(U,$J,358.3,10991,0)
 ;;=596.59^^64^692^17
 ;;^UTILITY(U,$J,358.3,10991,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,10991,1,4,0)
 ;;=4^596.59