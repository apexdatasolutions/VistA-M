IBDEI11I ; ; 20-MAY-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;OCT 15, 2014
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,18526,1,5,0)
 ;;=5^Brain Damage D/O,Oth Spec
 ;;^UTILITY(U,$J,358.3,18526,2)
 ;;=^268320
 ;;^UTILITY(U,$J,358.3,18527,0)
 ;;=90833^^102^1065^1^^^^1
 ;;^UTILITY(U,$J,358.3,18527,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,18527,1,2,0)
 ;;=2^90833
 ;;^UTILITY(U,$J,358.3,18527,1,3,0)
 ;;=3^Psytx 16-37 min;Report w/ E&M
 ;;^UTILITY(U,$J,358.3,18528,0)
 ;;=90836^^102^1065^2^^^^1
 ;;^UTILITY(U,$J,358.3,18528,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,18528,1,2,0)
 ;;=2^90836
 ;;^UTILITY(U,$J,358.3,18528,1,3,0)
 ;;=3^Psytx 38-52 min;Report w/ E&M
 ;;^UTILITY(U,$J,358.3,18529,0)
 ;;=90838^^102^1065^3^^^^1
 ;;^UTILITY(U,$J,358.3,18529,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,18529,1,2,0)
 ;;=2^90838
 ;;^UTILITY(U,$J,358.3,18529,1,3,0)
 ;;=3^Psytx >52 min;Report w/ E&M
 ;;^UTILITY(U,$J,358.3,18530,0)
 ;;=90853^^102^1066^4^^^^1
 ;;^UTILITY(U,$J,358.3,18530,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,18530,1,2,0)
 ;;=2^90853
 ;;^UTILITY(U,$J,358.3,18530,1,3,0)
 ;;=3^Group Psychotherapy
 ;;^UTILITY(U,$J,358.3,18531,0)
 ;;=90846^^102^1066^5^^^^1
 ;;^UTILITY(U,$J,358.3,18531,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,18531,1,2,0)
 ;;=2^90846
 ;;^UTILITY(U,$J,358.3,18531,1,3,0)
 ;;=3^Family Psychotherapy w/o pt.
 ;;^UTILITY(U,$J,358.3,18532,0)
 ;;=90847^^102^1066^6^^^^1
 ;;^UTILITY(U,$J,358.3,18532,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,18532,1,2,0)
 ;;=2^90847
 ;;^UTILITY(U,$J,358.3,18532,1,3,0)
 ;;=3^Family Psychotherpy w/pt.
 ;;^UTILITY(U,$J,358.3,18533,0)
 ;;=90875^^102^1066^7^^^^1
 ;;^UTILITY(U,$J,358.3,18533,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,18533,1,2,0)
 ;;=2^90875
 ;;^UTILITY(U,$J,358.3,18533,1,3,0)
 ;;=3^Psychophysiological Tx w/ Biofeedback,30 min
 ;;^UTILITY(U,$J,358.3,18534,0)
 ;;=90876^^102^1066^8^^^^1
 ;;^UTILITY(U,$J,358.3,18534,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,18534,1,2,0)
 ;;=2^90876
 ;;^UTILITY(U,$J,358.3,18534,1,3,0)
 ;;=3^Psychophysiological Tx w/ Biofeedback,45 min
 ;;^UTILITY(U,$J,358.3,18535,0)
 ;;=90832^^102^1066^1^^^^1
 ;;^UTILITY(U,$J,358.3,18535,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,18535,1,2,0)
 ;;=2^90832
 ;;^UTILITY(U,$J,358.3,18535,1,3,0)
 ;;=3^Psychotherapy 16-37 min
 ;;^UTILITY(U,$J,358.3,18536,0)
 ;;=90834^^102^1066^2^^^^1
 ;;^UTILITY(U,$J,358.3,18536,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,18536,1,2,0)
 ;;=2^90834
 ;;^UTILITY(U,$J,358.3,18536,1,3,0)
 ;;=3^Psychotherapy 38-52 min
 ;;^UTILITY(U,$J,358.3,18537,0)
 ;;=90837^^102^1066^3^^^^1
 ;;^UTILITY(U,$J,358.3,18537,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,18537,1,2,0)
 ;;=2^90837
 ;;^UTILITY(U,$J,358.3,18537,1,3,0)
 ;;=3^Psychotherapy 53+ min
 ;;^UTILITY(U,$J,358.3,18538,0)
 ;;=90899^^102^1067^12^^^^1
 ;;^UTILITY(U,$J,358.3,18538,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,18538,1,2,0)
 ;;=2^90899
 ;;^UTILITY(U,$J,358.3,18538,1,3,0)
 ;;=3^NOS Psych Service
 ;;^UTILITY(U,$J,358.3,18539,0)
 ;;=J1631^^102^1067^7^^^^1
 ;;^UTILITY(U,$J,358.3,18539,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,18539,1,2,0)
 ;;=2^J1631
 ;;^UTILITY(U,$J,358.3,18539,1,3,0)
 ;;=3^Haldol, per 50 mg
 ;;^UTILITY(U,$J,358.3,18540,0)
 ;;=J2680^^102^1067^18^^^^1
 ;;^UTILITY(U,$J,358.3,18540,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,18540,1,2,0)
 ;;=2^J2680
 ;;^UTILITY(U,$J,358.3,18540,1,3,0)
 ;;=3^Prolixin, per 25mg
 ;;^UTILITY(U,$J,358.3,18541,0)
 ;;=97545^^102^1067^34^^^^1
 ;;^UTILITY(U,$J,358.3,18541,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,18541,1,2,0)
 ;;=2^97545
 ;;^UTILITY(U,$J,358.3,18541,1,3,0)
 ;;=3^Work Therapy, Init 2 hrs
 ;;^UTILITY(U,$J,358.3,18542,0)
 ;;=97546^^102^1067^33^^^^1