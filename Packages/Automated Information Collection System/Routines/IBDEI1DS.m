IBDEI1DS ; ; 20-MAY-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;OCT 15, 2014
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,24771,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,24771,1,4,0)
 ;;=4^298.9
 ;;^UTILITY(U,$J,358.3,24771,1,5,0)
 ;;=5^Psychosis
 ;;^UTILITY(U,$J,358.3,24771,2)
 ;;=^1
 ;;^UTILITY(U,$J,358.3,24772,0)
 ;;=309.81^^145^1531^30
 ;;^UTILITY(U,$J,358.3,24772,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,24772,1,4,0)
 ;;=4^309.81
 ;;^UTILITY(U,$J,358.3,24772,1,5,0)
 ;;=5^PTSD (chronic)
 ;;^UTILITY(U,$J,358.3,24772,2)
 ;;=^114716
 ;;^UTILITY(U,$J,358.3,24773,0)
 ;;=295.90^^145^1531^33
 ;;^UTILITY(U,$J,358.3,24773,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,24773,1,4,0)
 ;;=4^295.90
 ;;^UTILITY(U,$J,358.3,24773,1,5,0)
 ;;=5^Schizophrenia 
 ;;^UTILITY(U,$J,358.3,24773,2)
 ;;=^108287
 ;;^UTILITY(U,$J,358.3,24774,0)
 ;;=300.81^^145^1531^34
 ;;^UTILITY(U,$J,358.3,24774,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,24774,1,4,0)
 ;;=4^300.81
 ;;^UTILITY(U,$J,358.3,24774,1,5,0)
 ;;=5^Somatization Disorder
 ;;^UTILITY(U,$J,358.3,24774,2)
 ;;=^112280
 ;;^UTILITY(U,$J,358.3,24775,0)
 ;;=306.9^^145^1531^35
 ;;^UTILITY(U,$J,358.3,24775,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,24775,1,4,0)
 ;;=4^306.9
 ;;^UTILITY(U,$J,358.3,24775,1,5,0)
 ;;=5^Somatization Reaction
 ;;^UTILITY(U,$J,358.3,24775,2)
 ;;=^123979
 ;;^UTILITY(U,$J,358.3,24776,0)
 ;;=305.1^^145^1531^37
 ;;^UTILITY(U,$J,358.3,24776,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,24776,1,4,0)
 ;;=4^305.1
 ;;^UTILITY(U,$J,358.3,24776,1,5,0)
 ;;=5^Tobacco Dependence
 ;;^UTILITY(U,$J,358.3,24776,2)
 ;;=^119899
 ;;^UTILITY(U,$J,358.3,24777,0)
 ;;=V61.01^^145^1531^21
 ;;^UTILITY(U,$J,358.3,24777,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,24777,1,4,0)
 ;;=4^V61.01
 ;;^UTILITY(U,$J,358.3,24777,1,5,0)
 ;;=5^Family Dsrpt-Military Deployment
 ;;^UTILITY(U,$J,358.3,24777,2)
 ;;=^336799
 ;;^UTILITY(U,$J,358.3,24778,0)
 ;;=V61.02^^145^1531^22
 ;;^UTILITY(U,$J,358.3,24778,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,24778,1,4,0)
 ;;=4^V61.02
 ;;^UTILITY(U,$J,358.3,24778,1,5,0)
 ;;=5^Family Dsrpt-Return from Military Deployment
 ;;^UTILITY(U,$J,358.3,24778,2)
 ;;=^336800
 ;;^UTILITY(U,$J,358.3,24779,0)
 ;;=V62.84^^145^1531^36
 ;;^UTILITY(U,$J,358.3,24779,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,24779,1,4,0)
 ;;=4^V62.84
 ;;^UTILITY(U,$J,358.3,24779,1,5,0)
 ;;=5^Suicidal Ideation
 ;;^UTILITY(U,$J,358.3,24779,2)
 ;;=^332876
 ;;^UTILITY(U,$J,358.3,24780,0)
 ;;=V62.85^^145^1531^23
 ;;^UTILITY(U,$J,358.3,24780,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,24780,1,4,0)
 ;;=4^V62.85
 ;;^UTILITY(U,$J,358.3,24780,1,5,0)
 ;;=5^Homicidal Ideation
 ;;^UTILITY(U,$J,358.3,24780,2)
 ;;=^339690
 ;;^UTILITY(U,$J,358.3,24781,0)
 ;;=296.80^^145^1531^5
 ;;^UTILITY(U,$J,358.3,24781,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,24781,1,4,0)
 ;;=4^296.80
 ;;^UTILITY(U,$J,358.3,24781,1,5,0)
 ;;=5^Bipolar Disorder NOS
 ;;^UTILITY(U,$J,358.3,24781,2)
 ;;=^331892
 ;;^UTILITY(U,$J,358.3,24782,0)
 ;;=296.50^^145^1531^6
 ;;^UTILITY(U,$J,358.3,24782,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,24782,1,4,0)
 ;;=4^296.50
 ;;^UTILITY(U,$J,358.3,24782,1,5,0)
 ;;=5^Bipolar Disorder,Current Depressed NOS
 ;;^UTILITY(U,$J,358.3,24782,2)
 ;;=^331877
 ;;^UTILITY(U,$J,358.3,24783,0)
 ;;=296.40^^145^1531^7
 ;;^UTILITY(U,$J,358.3,24783,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,24783,1,4,0)
 ;;=4^296.40
 ;;^UTILITY(U,$J,358.3,24783,1,5,0)
 ;;=5^Bipolar Disorder,Current Manic NOS
 ;;^UTILITY(U,$J,358.3,24783,2)
 ;;=^331870
 ;;^UTILITY(U,$J,358.3,24784,0)
 ;;=296.60^^145^1531^8
 ;;^UTILITY(U,$J,358.3,24784,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,24784,1,4,0)
 ;;=4^296.60
 ;;^UTILITY(U,$J,358.3,24784,1,5,0)
 ;;=5^Bipolar Disorder,Current Mixed NOS