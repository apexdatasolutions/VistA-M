IBDEI0S3 ; ; 19-NOV-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,12923,2)
 ;;=^5001280
 ;;^UTILITY(U,$J,358.3,12924,0)
 ;;=C69.01^^80^753^114
 ;;^UTILITY(U,$J,358.3,12924,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,12924,1,3,0)
 ;;=3^Malig Neop of Right Conjunctiva
 ;;^UTILITY(U,$J,358.3,12924,1,4,0)
 ;;=4^C69.01
 ;;^UTILITY(U,$J,358.3,12924,2)
 ;;=^5001267
 ;;^UTILITY(U,$J,358.3,12925,0)
 ;;=C69.02^^80^753^112
 ;;^UTILITY(U,$J,358.3,12925,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,12925,1,3,0)
 ;;=3^Malig Neop of Left Conjunctiva
 ;;^UTILITY(U,$J,358.3,12925,1,4,0)
 ;;=4^C69.02
 ;;^UTILITY(U,$J,358.3,12925,2)
 ;;=^5001268
 ;;^UTILITY(U,$J,358.3,12926,0)
 ;;=D31.41^^80^753^17
 ;;^UTILITY(U,$J,358.3,12926,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,12926,1,3,0)
 ;;=3^Benign Neop of Right Ciliary Body
 ;;^UTILITY(U,$J,358.3,12926,1,4,0)
 ;;=4^D31.41
 ;;^UTILITY(U,$J,358.3,12926,2)
 ;;=^5002124
 ;;^UTILITY(U,$J,358.3,12927,0)
 ;;=D31.42^^80^753^15
 ;;^UTILITY(U,$J,358.3,12927,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,12927,1,3,0)
 ;;=3^Benign Neop of Left Ciliary Body
 ;;^UTILITY(U,$J,358.3,12927,1,4,0)
 ;;=4^D31.42
 ;;^UTILITY(U,$J,358.3,12927,2)
 ;;=^5002125
 ;;^UTILITY(U,$J,358.3,12928,0)
 ;;=D31.01^^80^753^18
 ;;^UTILITY(U,$J,358.3,12928,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,12928,1,3,0)
 ;;=3^Benign Neop of Right Conjunctiva
 ;;^UTILITY(U,$J,358.3,12928,1,4,0)
 ;;=4^D31.01
 ;;^UTILITY(U,$J,358.3,12928,2)
 ;;=^5002112
 ;;^UTILITY(U,$J,358.3,12929,0)
 ;;=D31.02^^80^753^16
 ;;^UTILITY(U,$J,358.3,12929,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,12929,1,3,0)
 ;;=3^Benign Neop of Left Conjunctiva
 ;;^UTILITY(U,$J,358.3,12929,1,4,0)
 ;;=4^D31.02
 ;;^UTILITY(U,$J,358.3,12929,2)
 ;;=^5002113
 ;;^UTILITY(U,$J,358.3,12930,0)
 ;;=H20.00^^80^753^91
 ;;^UTILITY(U,$J,358.3,12930,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,12930,1,3,0)
 ;;=3^Iridocyclitis,Acute/Subacute,Unspec
 ;;^UTILITY(U,$J,358.3,12930,1,4,0)
 ;;=4^H20.00
 ;;^UTILITY(U,$J,358.3,12930,2)
 ;;=^5005133
 ;;^UTILITY(U,$J,358.3,12931,0)
 ;;=H20.051^^80^753^88
 ;;^UTILITY(U,$J,358.3,12931,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,12931,1,3,0)
 ;;=3^Hypopyon,Right Eye
 ;;^UTILITY(U,$J,358.3,12931,1,4,0)
 ;;=4^H20.051
 ;;^UTILITY(U,$J,358.3,12931,2)
 ;;=^5005150
 ;;^UTILITY(U,$J,358.3,12932,0)
 ;;=H20.052^^80^753^87
 ;;^UTILITY(U,$J,358.3,12932,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,12932,1,3,0)
 ;;=3^Hypopyon,Left Eye
 ;;^UTILITY(U,$J,358.3,12932,1,4,0)
 ;;=4^H20.052
 ;;^UTILITY(U,$J,358.3,12932,2)
 ;;=^5005151
 ;;^UTILITY(U,$J,358.3,12933,0)
 ;;=H21.01^^80^753^85
 ;;^UTILITY(U,$J,358.3,12933,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,12933,1,3,0)
 ;;=3^Hyphema,Right Eye
 ;;^UTILITY(U,$J,358.3,12933,1,4,0)
 ;;=4^H21.01
 ;;^UTILITY(U,$J,358.3,12933,2)
 ;;=^5005172
 ;;^UTILITY(U,$J,358.3,12934,0)
 ;;=H21.02^^80^753^84
 ;;^UTILITY(U,$J,358.3,12934,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,12934,1,3,0)
 ;;=3^Hyphema,Left Eye
 ;;^UTILITY(U,$J,358.3,12934,1,4,0)
 ;;=4^H21.02
 ;;^UTILITY(U,$J,358.3,12934,2)
 ;;=^5005173
 ;;^UTILITY(U,$J,358.3,12935,0)
 ;;=H21.261^^80^753^94
 ;;^UTILITY(U,$J,358.3,12935,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,12935,1,3,0)
 ;;=3^Iris Atrophy,Right Eye
 ;;^UTILITY(U,$J,358.3,12935,1,4,0)
 ;;=4^H21.261
 ;;^UTILITY(U,$J,358.3,12935,2)
 ;;=^5005199
 ;;^UTILITY(U,$J,358.3,12936,0)
 ;;=H21.262^^80^753^93
 ;;^UTILITY(U,$J,358.3,12936,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,12936,1,3,0)
 ;;=3^Iris Atrophy,Left Eye
 ;;^UTILITY(U,$J,358.3,12936,1,4,0)
 ;;=4^H21.262
 ;;^UTILITY(U,$J,358.3,12936,2)
 ;;=^5005200
 ;;^UTILITY(U,$J,358.3,12937,0)
 ;;=H21.541^^80^753^138
