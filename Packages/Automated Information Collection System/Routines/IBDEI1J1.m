IBDEI1J1 ; ; 20-MAY-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;OCT 15, 2014
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,27418,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,27418,1,4,0)
 ;;=4^263.0
 ;;^UTILITY(U,$J,358.3,27418,1,5,0)
 ;;=5^MALNUTRITION,MODERATE
 ;;^UTILITY(U,$J,358.3,27418,2)
 ;;=^267901
 ;;^UTILITY(U,$J,358.3,27419,0)
 ;;=263.1^^163^1701^2
 ;;^UTILITY(U,$J,358.3,27419,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,27419,1,4,0)
 ;;=4^263.1
 ;;^UTILITY(U,$J,358.3,27419,1,5,0)
 ;;=5^MALNUTRITION,MILD
 ;;^UTILITY(U,$J,358.3,27419,2)
 ;;=^267902
 ;;^UTILITY(U,$J,358.3,27420,0)
 ;;=99201^^164^1702^1
 ;;^UTILITY(U,$J,358.3,27420,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,27420,1,1,0)
 ;;=1^Problem Focus
 ;;^UTILITY(U,$J,358.3,27420,1,2,0)
 ;;=2^99201
 ;;^UTILITY(U,$J,358.3,27421,0)
 ;;=99202^^164^1702^2
 ;;^UTILITY(U,$J,358.3,27421,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,27421,1,1,0)
 ;;=1^Expanded Problem Focus
 ;;^UTILITY(U,$J,358.3,27421,1,2,0)
 ;;=2^99202
 ;;^UTILITY(U,$J,358.3,27422,0)
 ;;=99203^^164^1702^3
 ;;^UTILITY(U,$J,358.3,27422,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,27422,1,1,0)
 ;;=1^Detailed
 ;;^UTILITY(U,$J,358.3,27422,1,2,0)
 ;;=2^99203
 ;;^UTILITY(U,$J,358.3,27423,0)
 ;;=99204^^164^1702^4
 ;;^UTILITY(U,$J,358.3,27423,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,27423,1,1,0)
 ;;=1^Comprehensive, Moderate
 ;;^UTILITY(U,$J,358.3,27423,1,2,0)
 ;;=2^99204
 ;;^UTILITY(U,$J,358.3,27424,0)
 ;;=99205^^164^1702^5
 ;;^UTILITY(U,$J,358.3,27424,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,27424,1,1,0)
 ;;=1^Comprehensive, High
 ;;^UTILITY(U,$J,358.3,27424,1,2,0)
 ;;=2^99205
 ;;^UTILITY(U,$J,358.3,27425,0)
 ;;=99211^^164^1703^1
 ;;^UTILITY(U,$J,358.3,27425,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,27425,1,1,0)
 ;;=1^Brief (no MD seen)
 ;;^UTILITY(U,$J,358.3,27425,1,2,0)
 ;;=2^99211
 ;;^UTILITY(U,$J,358.3,27426,0)
 ;;=99212^^164^1703^2
 ;;^UTILITY(U,$J,358.3,27426,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,27426,1,1,0)
 ;;=1^Problem Focused
 ;;^UTILITY(U,$J,358.3,27426,1,2,0)
 ;;=2^99212
 ;;^UTILITY(U,$J,358.3,27427,0)
 ;;=99213^^164^1703^3
 ;;^UTILITY(U,$J,358.3,27427,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,27427,1,1,0)
 ;;=1^Expanded Problem Focus
 ;;^UTILITY(U,$J,358.3,27427,1,2,0)
 ;;=2^99213
 ;;^UTILITY(U,$J,358.3,27428,0)
 ;;=99214^^164^1703^4
 ;;^UTILITY(U,$J,358.3,27428,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,27428,1,1,0)
 ;;=1^Detailed
 ;;^UTILITY(U,$J,358.3,27428,1,2,0)
 ;;=2^99214
 ;;^UTILITY(U,$J,358.3,27429,0)
 ;;=99215^^164^1703^5
 ;;^UTILITY(U,$J,358.3,27429,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,27429,1,1,0)
 ;;=1^Comprehensive
 ;;^UTILITY(U,$J,358.3,27429,1,2,0)
 ;;=2^99215
 ;;^UTILITY(U,$J,358.3,27430,0)
 ;;=99241^^164^1704^1
 ;;^UTILITY(U,$J,358.3,27430,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,27430,1,1,0)
 ;;=1^Prob Focused Visit
 ;;^UTILITY(U,$J,358.3,27430,1,2,0)
 ;;=2^99241
 ;;^UTILITY(U,$J,358.3,27431,0)
 ;;=99242^^164^1704^2
 ;;^UTILITY(U,$J,358.3,27431,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,27431,1,1,0)
 ;;=1^Exp Prob Focused Visit
 ;;^UTILITY(U,$J,358.3,27431,1,2,0)
 ;;=2^99242
 ;;^UTILITY(U,$J,358.3,27432,0)
 ;;=99243^^164^1704^3
 ;;^UTILITY(U,$J,358.3,27432,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,27432,1,1,0)
 ;;=1^Detailed Visit
 ;;^UTILITY(U,$J,358.3,27432,1,2,0)
 ;;=2^99243
 ;;^UTILITY(U,$J,358.3,27433,0)
 ;;=99244^^164^1704^4
 ;;^UTILITY(U,$J,358.3,27433,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,27433,1,1,0)
 ;;=1^Comp Visit/Mod Decision
 ;;^UTILITY(U,$J,358.3,27433,1,2,0)
 ;;=2^99244
 ;;^UTILITY(U,$J,358.3,27434,0)
 ;;=99245^^164^1704^5
 ;;^UTILITY(U,$J,358.3,27434,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,27434,1,1,0)
 ;;=1^Comp Visit/High Decision