IBDEI0ZN ; ; 20-MAY-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;OCT 15, 2014
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,17618,1,5,0)
 ;;=5^Alcohol Abuse
 ;;^UTILITY(U,$J,358.3,17618,2)
 ;;=^268227
 ;;^UTILITY(U,$J,358.3,17619,0)
 ;;=305.03^^95^996^10
 ;;^UTILITY(U,$J,358.3,17619,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,17619,1,2,0)
 ;;=2^305.03
 ;;^UTILITY(U,$J,358.3,17619,1,5,0)
 ;;=5^Alcohol Abuse-Remission
 ;;^UTILITY(U,$J,358.3,17619,2)
 ;;=^268230
 ;;^UTILITY(U,$J,358.3,17620,0)
 ;;=304.00^^95^996^74
 ;;^UTILITY(U,$J,358.3,17620,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,17620,1,2,0)
 ;;=2^304.00
 ;;^UTILITY(U,$J,358.3,17620,1,5,0)
 ;;=5^Opioid Dependence
 ;;^UTILITY(U,$J,358.3,17620,2)
 ;;=^81364
 ;;^UTILITY(U,$J,358.3,17621,0)
 ;;=304.23^^95^996^72
 ;;^UTILITY(U,$J,358.3,17621,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,17621,1,2,0)
 ;;=2^304.23
 ;;^UTILITY(U,$J,358.3,17621,1,5,0)
 ;;=5^Opioid Dep-Remission
 ;;^UTILITY(U,$J,358.3,17621,2)
 ;;=^268200
 ;;^UTILITY(U,$J,358.3,17622,0)
 ;;=305.50^^95^996^68
 ;;^UTILITY(U,$J,358.3,17622,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,17622,1,2,0)
 ;;=2^305.50
 ;;^UTILITY(U,$J,358.3,17622,1,5,0)
 ;;=5^Opioid Abuse
 ;;^UTILITY(U,$J,358.3,17622,2)
 ;;=^85868
 ;;^UTILITY(U,$J,358.3,17623,0)
 ;;=305.53^^95^996^71
 ;;^UTILITY(U,$J,358.3,17623,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,17623,1,2,0)
 ;;=2^305.53
 ;;^UTILITY(U,$J,358.3,17623,1,5,0)
 ;;=5^Opioid Abuse-Remission
 ;;^UTILITY(U,$J,358.3,17623,2)
 ;;=^268246
 ;;^UTILITY(U,$J,358.3,17624,0)
 ;;=304.10^^95^996^31
 ;;^UTILITY(U,$J,358.3,17624,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,17624,1,2,0)
 ;;=2^304.10
 ;;^UTILITY(U,$J,358.3,17624,1,5,0)
 ;;=5^Anxiolytic Dependence
 ;;^UTILITY(U,$J,358.3,17624,2)
 ;;=^268194
 ;;^UTILITY(U,$J,358.3,17625,0)
 ;;=304.13^^95^996^28
 ;;^UTILITY(U,$J,358.3,17625,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,17625,1,2,0)
 ;;=2^304.13
 ;;^UTILITY(U,$J,358.3,17625,1,5,0)
 ;;=5^Anxiolytic Dep-Remis
 ;;^UTILITY(U,$J,358.3,17625,2)
 ;;=^268197
 ;;^UTILITY(U,$J,358.3,17626,0)
 ;;=305.40^^95^996^24
 ;;^UTILITY(U,$J,358.3,17626,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,17626,1,2,0)
 ;;=2^305.40
 ;;^UTILITY(U,$J,358.3,17626,1,5,0)
 ;;=5^Anxiolytic Abuse
 ;;^UTILITY(U,$J,358.3,17626,2)
 ;;=^268240
 ;;^UTILITY(U,$J,358.3,17627,0)
 ;;=305.43^^95^996^27
 ;;^UTILITY(U,$J,358.3,17627,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,17627,1,2,0)
 ;;=2^305.43
 ;;^UTILITY(U,$J,358.3,17627,1,5,0)
 ;;=5^Anxiolytic Abuse-Remission
 ;;^UTILITY(U,$J,358.3,17627,2)
 ;;=^268243
 ;;^UTILITY(U,$J,358.3,17628,0)
 ;;=304.20^^95^996^46
 ;;^UTILITY(U,$J,358.3,17628,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,17628,1,2,0)
 ;;=2^304.20
 ;;^UTILITY(U,$J,358.3,17628,1,5,0)
 ;;=5^Cocaine Dependence
 ;;^UTILITY(U,$J,358.3,17628,2)
 ;;=^25599
 ;;^UTILITY(U,$J,358.3,17629,0)
 ;;=305.60^^95^996^40
 ;;^UTILITY(U,$J,358.3,17629,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,17629,1,2,0)
 ;;=2^305.60
 ;;^UTILITY(U,$J,358.3,17629,1,5,0)
 ;;=5^Cocaine Abuse   
 ;;^UTILITY(U,$J,358.3,17629,2)
 ;;=^25596
 ;;^UTILITY(U,$J,358.3,17630,0)
 ;;=305.63^^95^996^43
 ;;^UTILITY(U,$J,358.3,17630,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,17630,1,2,0)
 ;;=2^305.63
 ;;^UTILITY(U,$J,358.3,17630,1,5,0)
 ;;=5^Cocaine Abuse-Remission
 ;;^UTILITY(U,$J,358.3,17630,2)
 ;;=^268249
 ;;^UTILITY(U,$J,358.3,17631,0)
 ;;=304.30^^95^996^39
 ;;^UTILITY(U,$J,358.3,17631,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,17631,1,2,0)
 ;;=2^304.30
 ;;^UTILITY(U,$J,358.3,17631,1,5,0)
 ;;=5^Cannabis Dependence
 ;;^UTILITY(U,$J,358.3,17631,2)
 ;;=^18670
 ;;^UTILITY(U,$J,358.3,17632,0)
 ;;=304.33^^95^996^36
 ;;^UTILITY(U,$J,358.3,17632,1,0)
 ;;=^358.31IA^5^2