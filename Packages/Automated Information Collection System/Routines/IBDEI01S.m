IBDEI01S ; ; 19-NOV-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,50,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,50,1,1,0)
 ;;=1^DETAILED HX OR EXAM;MOD COMPLEX MDM
 ;;^UTILITY(U,$J,358.3,50,1,2,0)
 ;;=2^99214
 ;;^UTILITY(U,$J,358.3,51,0)
 ;;=99215^^2^7^4
 ;;^UTILITY(U,$J,358.3,51,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,51,1,1,0)
 ;;=1^COMPREH HX OR EXAM;HIGH COMPLEX MDM
 ;;^UTILITY(U,$J,358.3,51,1,2,0)
 ;;=2^99215
 ;;^UTILITY(U,$J,358.3,52,0)
 ;;=99241^^2^8^1
 ;;^UTILITY(U,$J,358.3,52,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,52,1,1,0)
 ;;=1^PROBLEM FOCUSED HX & EXAM;SF MDM
 ;;^UTILITY(U,$J,358.3,52,1,2,0)
 ;;=2^99241
 ;;^UTILITY(U,$J,358.3,53,0)
 ;;=99242^^2^8^2
 ;;^UTILITY(U,$J,358.3,53,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,53,1,1,0)
 ;;=1^EXPAND PROB FOCUS HX & EXAM;SF MDM
 ;;^UTILITY(U,$J,358.3,53,1,2,0)
 ;;=2^99242
 ;;^UTILITY(U,$J,358.3,54,0)
 ;;=99243^^2^8^3
 ;;^UTILITY(U,$J,358.3,54,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,54,1,1,0)
 ;;=1^DETAILED HX & EXAM;LOW COMPLEX MDM
 ;;^UTILITY(U,$J,358.3,54,1,2,0)
 ;;=2^99243
 ;;^UTILITY(U,$J,358.3,55,0)
 ;;=99244^^2^8^4
 ;;^UTILITY(U,$J,358.3,55,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,55,1,1,0)
 ;;=1^COMPREH HX & EXAM;MOD COMPLEX MDM
 ;;^UTILITY(U,$J,358.3,55,1,2,0)
 ;;=2^99244
 ;;^UTILITY(U,$J,358.3,56,0)
 ;;=99245^^2^8^5
 ;;^UTILITY(U,$J,358.3,56,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,56,1,1,0)
 ;;=1^COMPREH HX & EXAM;HIGH COMPLEX MDM
 ;;^UTILITY(U,$J,358.3,56,1,2,0)
 ;;=2^99245
 ;;^UTILITY(U,$J,358.3,57,0)
 ;;=99201^^2^9^1
 ;;^UTILITY(U,$J,358.3,57,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,57,1,1,0)
 ;;=1^PROBLEM FOCUSED HX & EXAM;SF MDM
 ;;^UTILITY(U,$J,358.3,57,1,2,0)
 ;;=2^99201
 ;;^UTILITY(U,$J,358.3,58,0)
 ;;=99202^^2^9^2
 ;;^UTILITY(U,$J,358.3,58,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,58,1,1,0)
 ;;=1^EXPAND PROB FOCUS HX & EXAM;SF MDM
 ;;^UTILITY(U,$J,358.3,58,1,2,0)
 ;;=2^99202
 ;;^UTILITY(U,$J,358.3,59,0)
 ;;=99203^^2^9^3
 ;;^UTILITY(U,$J,358.3,59,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,59,1,1,0)
 ;;=1^DETAILED HX & EXAM;LOW COMPLEX MDM
 ;;^UTILITY(U,$J,358.3,59,1,2,0)
 ;;=2^99203
 ;;^UTILITY(U,$J,358.3,60,0)
 ;;=99204^^2^9^4
 ;;^UTILITY(U,$J,358.3,60,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,60,1,1,0)
 ;;=1^COMPREH HX & EXAM;MOD COMPLEX MDM
 ;;^UTILITY(U,$J,358.3,60,1,2,0)
 ;;=2^99204
 ;;^UTILITY(U,$J,358.3,61,0)
 ;;=99205^^2^9^5
 ;;^UTILITY(U,$J,358.3,61,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,61,1,1,0)
 ;;=1^COMPREH HX & EXAM;HIGH COMPLEX MDM
 ;;^UTILITY(U,$J,358.3,61,1,2,0)
 ;;=2^99205
 ;;^UTILITY(U,$J,358.3,62,0)
 ;;=99251^^2^10^1
 ;;^UTILITY(U,$J,358.3,62,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,62,1,1,0)
 ;;=1^PROBLEM FOCUSED HX & EXAM;SF MDM
 ;;^UTILITY(U,$J,358.3,62,1,2,0)
 ;;=2^99251
 ;;^UTILITY(U,$J,358.3,63,0)
 ;;=99252^^2^10^2
 ;;^UTILITY(U,$J,358.3,63,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,63,1,1,0)
 ;;=1^EXPAN PROB FOCUS HX & EXAM;SF MDM
 ;;^UTILITY(U,$J,358.3,63,1,2,0)
 ;;=2^99252
 ;;^UTILITY(U,$J,358.3,64,0)
 ;;=99253^^2^10^3
 ;;^UTILITY(U,$J,358.3,64,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,64,1,1,0)
 ;;=1^DETAILED HX & EXAM;LOW COMPLEX MDM
 ;;^UTILITY(U,$J,358.3,64,1,2,0)
 ;;=2^99253
 ;;^UTILITY(U,$J,358.3,65,0)
 ;;=99254^^2^10^4
 ;;^UTILITY(U,$J,358.3,65,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,65,1,1,0)
 ;;=1^COMPREH HX & EXAM;MOD COMPLEX MDM
 ;;^UTILITY(U,$J,358.3,65,1,2,0)
 ;;=2^99254
 ;;^UTILITY(U,$J,358.3,66,0)
 ;;=99255^^2^10^5
 ;;^UTILITY(U,$J,358.3,66,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,66,1,1,0)
 ;;=1^COMPREH HX & EXAM;HIGH COMPLEX MDM
 ;;^UTILITY(U,$J,358.3,66,1,2,0)
 ;;=2^99255
