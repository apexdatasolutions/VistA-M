IBDEI05U ; ; 19-NOV-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,2128,0)
 ;;=78451^^17^185^2^^^^1
 ;;^UTILITY(U,$J,358.3,2128,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,2128,1,2,0)
 ;;=2^78451
 ;;^UTILITY(U,$J,358.3,2128,1,3,0)
 ;;=3^SPECT,Single Study
 ;;^UTILITY(U,$J,358.3,2129,0)
 ;;=93350^^17^185^3^^^^1
 ;;^UTILITY(U,$J,358.3,2129,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,2129,1,2,0)
 ;;=2^93350
 ;;^UTILITY(U,$J,358.3,2129,1,3,0)
 ;;=3^Stress TTE Only
 ;;^UTILITY(U,$J,358.3,2130,0)
 ;;=99401^^17^186^1^^^^1
 ;;^UTILITY(U,$J,358.3,2130,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,2130,1,2,0)
 ;;=2^99401
 ;;^UTILITY(U,$J,358.3,2130,1,3,0)
 ;;=3^Preventive Counseling,15 min
 ;;^UTILITY(U,$J,358.3,2131,0)
 ;;=99402^^17^186^2^^^^1
 ;;^UTILITY(U,$J,358.3,2131,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,2131,1,2,0)
 ;;=2^99402
 ;;^UTILITY(U,$J,358.3,2131,1,3,0)
 ;;=3^Preventive Counseling,30 min
 ;;^UTILITY(U,$J,358.3,2132,0)
 ;;=99403^^17^186^3^^^^1
 ;;^UTILITY(U,$J,358.3,2132,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,2132,1,2,0)
 ;;=2^99403
 ;;^UTILITY(U,$J,358.3,2132,1,3,0)
 ;;=3^Preventive Counseling,45 min
 ;;^UTILITY(U,$J,358.3,2133,0)
 ;;=99404^^17^186^4^^^^1
 ;;^UTILITY(U,$J,358.3,2133,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,2133,1,2,0)
 ;;=2^99404
 ;;^UTILITY(U,$J,358.3,2133,1,3,0)
 ;;=3^Preventive Counseling,60 min
 ;;^UTILITY(U,$J,358.3,2134,0)
 ;;=99201^^18^187^1
 ;;^UTILITY(U,$J,358.3,2134,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,2134,1,1,0)
 ;;=1^Problem Focus
 ;;^UTILITY(U,$J,358.3,2134,1,2,0)
 ;;=2^99201
 ;;^UTILITY(U,$J,358.3,2135,0)
 ;;=99202^^18^187^2
 ;;^UTILITY(U,$J,358.3,2135,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,2135,1,1,0)
 ;;=1^Expanded Problem Focus
 ;;^UTILITY(U,$J,358.3,2135,1,2,0)
 ;;=2^99202
 ;;^UTILITY(U,$J,358.3,2136,0)
 ;;=99203^^18^187^3
 ;;^UTILITY(U,$J,358.3,2136,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,2136,1,1,0)
 ;;=1^Detailed
 ;;^UTILITY(U,$J,358.3,2136,1,2,0)
 ;;=2^99203
 ;;^UTILITY(U,$J,358.3,2137,0)
 ;;=99204^^18^187^4
 ;;^UTILITY(U,$J,358.3,2137,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,2137,1,1,0)
 ;;=1^Comprehensive, Moderate
 ;;^UTILITY(U,$J,358.3,2137,1,2,0)
 ;;=2^99204
 ;;^UTILITY(U,$J,358.3,2138,0)
 ;;=99205^^18^187^5
 ;;^UTILITY(U,$J,358.3,2138,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,2138,1,1,0)
 ;;=1^Comprehensive, High
 ;;^UTILITY(U,$J,358.3,2138,1,2,0)
 ;;=2^99205
 ;;^UTILITY(U,$J,358.3,2139,0)
 ;;=99211^^18^188^1
 ;;^UTILITY(U,$J,358.3,2139,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,2139,1,1,0)
 ;;=1^Brief (no MD seen)
 ;;^UTILITY(U,$J,358.3,2139,1,2,0)
 ;;=2^99211
 ;;^UTILITY(U,$J,358.3,2140,0)
 ;;=99212^^18^188^2
 ;;^UTILITY(U,$J,358.3,2140,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,2140,1,1,0)
 ;;=1^Problem Focused
 ;;^UTILITY(U,$J,358.3,2140,1,2,0)
 ;;=2^99212
 ;;^UTILITY(U,$J,358.3,2141,0)
 ;;=99213^^18^188^3
 ;;^UTILITY(U,$J,358.3,2141,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,2141,1,1,0)
 ;;=1^Expanded Problem Focus
 ;;^UTILITY(U,$J,358.3,2141,1,2,0)
 ;;=2^99213
 ;;^UTILITY(U,$J,358.3,2142,0)
 ;;=99214^^18^188^4
 ;;^UTILITY(U,$J,358.3,2142,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,2142,1,1,0)
 ;;=1^Detailed
 ;;^UTILITY(U,$J,358.3,2142,1,2,0)
 ;;=2^99214
 ;;^UTILITY(U,$J,358.3,2143,0)
 ;;=99215^^18^188^5
 ;;^UTILITY(U,$J,358.3,2143,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,2143,1,1,0)
 ;;=1^Comprehensive
 ;;^UTILITY(U,$J,358.3,2143,1,2,0)
 ;;=2^99215
 ;;^UTILITY(U,$J,358.3,2144,0)
 ;;=99241^^18^189^1
 ;;^UTILITY(U,$J,358.3,2144,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,2144,1,1,0)
 ;;=1^Problem Focused
 ;;^UTILITY(U,$J,358.3,2144,1,2,0)
 ;;=2^99241
