IBDEI0LO ; ; 19-NOV-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,9878,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,9878,1,2,0)
 ;;=2^16025
 ;;^UTILITY(U,$J,358.3,9878,1,3,0)
 ;;=3^DRESS/DEBRID PART THICK,INIT/SUB MED (5-10%)
 ;;^UTILITY(U,$J,358.3,9879,0)
 ;;=16030^^66^651^4^^^^1
 ;;^UTILITY(U,$J,358.3,9879,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,9879,1,2,0)
 ;;=2^16030
 ;;^UTILITY(U,$J,358.3,9879,1,3,0)
 ;;=3^DRESS/DEBRID PART THICK,INIT/SUB LG (>10%)
 ;;^UTILITY(U,$J,358.3,9880,0)
 ;;=17000^^66^652^1^^^^1
 ;;^UTILITY(U,$J,358.3,9880,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,9880,1,2,0)
 ;;=2^17000
 ;;^UTILITY(U,$J,358.3,9880,1,3,0)
 ;;=3^DESTR BEN LES,ANY METH,1ST LESION
 ;;^UTILITY(U,$J,358.3,9881,0)
 ;;=17003^^66^652^2^^^^1
 ;;^UTILITY(U,$J,358.3,9881,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,9881,1,2,0)
 ;;=2^17003
 ;;^UTILITY(U,$J,358.3,9881,1,3,0)
 ;;=3^DESTR BEN LES,ANY METH,ADDL LESIONS
 ;;^UTILITY(U,$J,358.3,9882,0)
 ;;=17004^^66^652^3^^^^1
 ;;^UTILITY(U,$J,358.3,9882,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,9882,1,2,0)
 ;;=2^17004
 ;;^UTILITY(U,$J,358.3,9882,1,3,0)
 ;;=3^DESTR BEN LES,OVER 15 LESIONS
 ;;^UTILITY(U,$J,358.3,9883,0)
 ;;=90791^^66^653^5^^^^1
 ;;^UTILITY(U,$J,358.3,9883,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,9883,1,2,0)
 ;;=2^90791
 ;;^UTILITY(U,$J,358.3,9883,1,3,0)
 ;;=3^Psychiatric Diagnostic Evaluation
 ;;^UTILITY(U,$J,358.3,9884,0)
 ;;=90792^^66^653^4^^^^1
 ;;^UTILITY(U,$J,358.3,9884,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,9884,1,2,0)
 ;;=2^90792
 ;;^UTILITY(U,$J,358.3,9884,1,3,0)
 ;;=3^Psychiatric Diagnositic Eval w/ Med Eval
 ;;^UTILITY(U,$J,358.3,9885,0)
 ;;=90839^^66^653^6^^^^1
 ;;^UTILITY(U,$J,358.3,9885,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,9885,1,2,0)
 ;;=2^90839
 ;;^UTILITY(U,$J,358.3,9885,1,3,0)
 ;;=3^Psychotherapy for Crisis;1st 60min
 ;;^UTILITY(U,$J,358.3,9886,0)
 ;;=90840^^66^653^7^^^^1
 ;;^UTILITY(U,$J,358.3,9886,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,9886,1,2,0)
 ;;=2^90840
 ;;^UTILITY(U,$J,358.3,9886,1,3,0)
 ;;=3^Psychotherapy for Crisis;Ea Addl 30min
 ;;^UTILITY(U,$J,358.3,9887,0)
 ;;=90882^^66^653^1^^^^1
 ;;^UTILITY(U,$J,358.3,9887,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,9887,1,2,0)
 ;;=2^90882
 ;;^UTILITY(U,$J,358.3,9887,1,3,0)
 ;;=3^Env Intvn w/ outside agencies for MH pt
 ;;^UTILITY(U,$J,358.3,9888,0)
 ;;=90847^^66^653^2^^^^1
 ;;^UTILITY(U,$J,358.3,9888,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,9888,1,2,0)
 ;;=2^90847
 ;;^UTILITY(U,$J,358.3,9888,1,3,0)
 ;;=3^Family Psychotherapy w/ Patient
 ;;^UTILITY(U,$J,358.3,9889,0)
 ;;=90885^^66^653^3^^^^1
 ;;^UTILITY(U,$J,358.3,9889,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,9889,1,2,0)
 ;;=2^90885
 ;;^UTILITY(U,$J,358.3,9889,1,3,0)
 ;;=3^Psych Eval of records for diagnostic purposes
 ;;^UTILITY(U,$J,358.3,9890,0)
 ;;=99291^^66^654^1^^^^1
 ;;^UTILITY(U,$J,358.3,9890,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,9890,1,2,0)
 ;;=2^99291
 ;;^UTILITY(U,$J,358.3,9890,1,3,0)
 ;;=3^CRITICAL CARE,1ST HR
 ;;^UTILITY(U,$J,358.3,9891,0)
 ;;=99292^^66^654^2^^^^1
 ;;^UTILITY(U,$J,358.3,9891,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,9891,1,2,0)
 ;;=2^99292
 ;;^UTILITY(U,$J,358.3,9891,1,3,0)
 ;;=3^CRITICAL CARE,EA ADDL 30 MIN
 ;;^UTILITY(U,$J,358.3,9892,0)
 ;;=99288^^66^654^3^^^^1
 ;;^UTILITY(U,$J,358.3,9892,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,9892,1,2,0)
 ;;=2^99288
 ;;^UTILITY(U,$J,358.3,9892,1,3,0)
 ;;=3^DIRECT ADVANCED LIFE SUPPORT
 ;;^UTILITY(U,$J,358.3,9893,0)
 ;;=96402^^66^655^1^^^^1
 ;;^UTILITY(U,$J,358.3,9893,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,9893,1,2,0)
 ;;=2^96402
 ;;^UTILITY(U,$J,358.3,9893,1,3,0)
 ;;=3^Chemo Admin SC/IM,Hormonal
