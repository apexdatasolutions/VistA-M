IBDEI0T3 ; ; 20-MAY-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;OCT 15, 2014
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,14355,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,14355,1,4,0)
 ;;=4^414.01
 ;;^UTILITY(U,$J,358.3,14355,1,5,0)
 ;;=5^Atherosclerosis, native coronary
 ;;^UTILITY(U,$J,358.3,14355,2)
 ;;=CAD, Native Vessel^303281
 ;;^UTILITY(U,$J,358.3,14356,0)
 ;;=413.9^^89^892^2
 ;;^UTILITY(U,$J,358.3,14356,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,14356,1,4,0)
 ;;=4^413.9
 ;;^UTILITY(U,$J,358.3,14356,1,5,0)
 ;;=5^Angina Pectoris
 ;;^UTILITY(U,$J,358.3,14356,2)
 ;;=Angina Pectoris^87258
 ;;^UTILITY(U,$J,358.3,14357,0)
 ;;=413.0^^89^892^3
 ;;^UTILITY(U,$J,358.3,14357,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,14357,1,4,0)
 ;;=4^413.0
 ;;^UTILITY(U,$J,358.3,14357,1,5,0)
 ;;=5^Angina at Rest
 ;;^UTILITY(U,$J,358.3,14357,2)
 ;;=Angina at Rest^265313
 ;;^UTILITY(U,$J,358.3,14358,0)
 ;;=411.1^^89^892^5
 ;;^UTILITY(U,$J,358.3,14358,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,14358,1,4,0)
 ;;=4^411.1
 ;;^UTILITY(U,$J,358.3,14358,1,5,0)
 ;;=5^Angina, Unstable
 ;;^UTILITY(U,$J,358.3,14358,2)
 ;;=Angina, Unstable^7455
 ;;^UTILITY(U,$J,358.3,14359,0)
 ;;=413.1^^89^892^4
 ;;^UTILITY(U,$J,358.3,14359,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,14359,1,4,0)
 ;;=4^413.1
 ;;^UTILITY(U,$J,358.3,14359,1,5,0)
 ;;=5^Angina, Prinzmetal
 ;;^UTILITY(U,$J,358.3,14359,2)
 ;;=^7448
 ;;^UTILITY(U,$J,358.3,14360,0)
 ;;=V58.61^^89^892^6
 ;;^UTILITY(U,$J,358.3,14360,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,14360,1,4,0)
 ;;=4^V58.61
 ;;^UTILITY(U,$J,358.3,14360,1,5,0)
 ;;=5^Anticoag Rx, chronic
 ;;^UTILITY(U,$J,358.3,14360,2)
 ;;=^303459
 ;;^UTILITY(U,$J,358.3,14361,0)
 ;;=441.4^^89^892^7
 ;;^UTILITY(U,$J,358.3,14361,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,14361,1,4,0)
 ;;=4^441.4
 ;;^UTILITY(U,$J,358.3,14361,1,5,0)
 ;;=5^Aortic Aneursym, abdominal
 ;;^UTILITY(U,$J,358.3,14361,2)
 ;;=^269769
 ;;^UTILITY(U,$J,358.3,14362,0)
 ;;=441.2^^89^892^8
 ;;^UTILITY(U,$J,358.3,14362,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,14362,1,4,0)
 ;;=4^441.2
 ;;^UTILITY(U,$J,358.3,14362,1,5,0)
 ;;=5^Aortic Aneursym, thoracic
 ;;^UTILITY(U,$J,358.3,14362,2)
 ;;=^269765
 ;;^UTILITY(U,$J,358.3,14363,0)
 ;;=786.59^^89^892^14
 ;;^UTILITY(U,$J,358.3,14363,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,14363,1,4,0)
 ;;=4^786.59
 ;;^UTILITY(U,$J,358.3,14363,1,5,0)
 ;;=5^Atypical Chest Pain
 ;;^UTILITY(U,$J,358.3,14363,2)
 ;;=^87384
 ;;^UTILITY(U,$J,358.3,14364,0)
 ;;=428.0^^89^892^19
 ;;^UTILITY(U,$J,358.3,14364,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,14364,1,4,0)
 ;;=4^428.0
 ;;^UTILITY(U,$J,358.3,14364,1,5,0)
 ;;=5^CHF
 ;;^UTILITY(U,$J,358.3,14364,2)
 ;;=^54758
 ;;^UTILITY(U,$J,358.3,14365,0)
 ;;=428.1^^89^892^20
 ;;^UTILITY(U,$J,358.3,14365,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,14365,1,4,0)
 ;;=4^428.1
 ;;^UTILITY(U,$J,358.3,14365,1,5,0)
 ;;=5^CHF, left ventricular
 ;;^UTILITY(U,$J,358.3,14365,2)
 ;;=^68721
 ;;^UTILITY(U,$J,358.3,14366,0)
 ;;=785.2^^89^892^82
 ;;^UTILITY(U,$J,358.3,14366,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,14366,1,4,0)
 ;;=4^785.2
 ;;^UTILITY(U,$J,358.3,14366,1,5,0)
 ;;=5^Undiag Cardiac murmurs
 ;;^UTILITY(U,$J,358.3,14366,2)
 ;;=^295854
 ;;^UTILITY(U,$J,358.3,14367,0)
 ;;=429.3^^89^892^22
 ;;^UTILITY(U,$J,358.3,14367,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,14367,1,4,0)
 ;;=4^429.3
 ;;^UTILITY(U,$J,358.3,14367,1,5,0)
 ;;=5^Cardiomegaly
 ;;^UTILITY(U,$J,358.3,14367,2)
 ;;=^54748
 ;;^UTILITY(U,$J,358.3,14368,0)
 ;;=425.5^^89^892^23
 ;;^UTILITY(U,$J,358.3,14368,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,14368,1,4,0)
 ;;=4^425.5
 ;;^UTILITY(U,$J,358.3,14368,1,5,0)
 ;;=5^Cardiomyopathy, Alcoholic