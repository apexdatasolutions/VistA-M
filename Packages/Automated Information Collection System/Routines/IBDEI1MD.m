IBDEI1MD ; ; 19-NOV-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,27098,1,3,0)
 ;;=3^Actinic Keratosis
 ;;^UTILITY(U,$J,358.3,27098,1,4,0)
 ;;=4^L57.0
 ;;^UTILITY(U,$J,358.3,27098,2)
 ;;=^66900
 ;;^UTILITY(U,$J,358.3,27099,0)
 ;;=L60.0^^132^1309^161
 ;;^UTILITY(U,$J,358.3,27099,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,27099,1,3,0)
 ;;=3^Ingrowing Nail
 ;;^UTILITY(U,$J,358.3,27099,1,4,0)
 ;;=4^L60.0
 ;;^UTILITY(U,$J,358.3,27099,2)
 ;;=^5009234
 ;;^UTILITY(U,$J,358.3,27100,0)
 ;;=L60.1^^132^1309^234
 ;;^UTILITY(U,$J,358.3,27100,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,27100,1,3,0)
 ;;=3^Onycholysis
 ;;^UTILITY(U,$J,358.3,27100,1,4,0)
 ;;=4^L60.1
 ;;^UTILITY(U,$J,358.3,27100,2)
 ;;=^186837
 ;;^UTILITY(U,$J,358.3,27101,0)
 ;;=L60.2^^132^1309^233
 ;;^UTILITY(U,$J,358.3,27101,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,27101,1,3,0)
 ;;=3^Onychogryphosis
 ;;^UTILITY(U,$J,358.3,27101,1,4,0)
 ;;=4^L60.2
 ;;^UTILITY(U,$J,358.3,27101,2)
 ;;=^5009235
 ;;^UTILITY(U,$J,358.3,27102,0)
 ;;=L60.3^^132^1309^170
 ;;^UTILITY(U,$J,358.3,27102,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,27102,1,3,0)
 ;;=3^Nail Dystrophy
 ;;^UTILITY(U,$J,358.3,27102,1,4,0)
 ;;=4^L60.3
 ;;^UTILITY(U,$J,358.3,27102,2)
 ;;=^5009236
 ;;^UTILITY(U,$J,358.3,27103,0)
 ;;=L60.4^^132^1309^88
 ;;^UTILITY(U,$J,358.3,27103,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,27103,1,3,0)
 ;;=3^Beau's Lines
 ;;^UTILITY(U,$J,358.3,27103,1,4,0)
 ;;=4^L60.4
 ;;^UTILITY(U,$J,358.3,27103,2)
 ;;=^5009237
 ;;^UTILITY(U,$J,358.3,27104,0)
 ;;=L60.5^^132^1309^290
 ;;^UTILITY(U,$J,358.3,27104,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,27104,1,3,0)
 ;;=3^Yellow Nail Syndrome
 ;;^UTILITY(U,$J,358.3,27104,1,4,0)
 ;;=4^L60.5
 ;;^UTILITY(U,$J,358.3,27104,2)
 ;;=^5009238
 ;;^UTILITY(U,$J,358.3,27105,0)
 ;;=L60.8^^132^1309^168
 ;;^UTILITY(U,$J,358.3,27105,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,27105,1,3,0)
 ;;=3^Nail Disorders NEC
 ;;^UTILITY(U,$J,358.3,27105,1,4,0)
 ;;=4^L60.8
 ;;^UTILITY(U,$J,358.3,27105,2)
 ;;=^5009239
 ;;^UTILITY(U,$J,358.3,27106,0)
 ;;=L62.^^132^1309^169
 ;;^UTILITY(U,$J,358.3,27106,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,27106,1,3,0)
 ;;=3^Nail Disorders in Diseases Classified Elsewhere
 ;;^UTILITY(U,$J,358.3,27106,1,4,0)
 ;;=4^L62.
 ;;^UTILITY(U,$J,358.3,27106,2)
 ;;=^5009241
 ;;^UTILITY(U,$J,358.3,27107,0)
 ;;=L64.9^^132^1309^33
 ;;^UTILITY(U,$J,358.3,27107,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,27107,1,3,0)
 ;;=3^Androgenic Alopecia,Unspec
 ;;^UTILITY(U,$J,358.3,27107,1,4,0)
 ;;=4^L64.9
 ;;^UTILITY(U,$J,358.3,27107,2)
 ;;=^5009249
 ;;^UTILITY(U,$J,358.3,27108,0)
 ;;=L65.9^^132^1309^231
 ;;^UTILITY(U,$J,358.3,27108,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,27108,1,3,0)
 ;;=3^Nonscarring Hair Loss,Unspec
 ;;^UTILITY(U,$J,358.3,27108,1,4,0)
 ;;=4^L65.9
 ;;^UTILITY(U,$J,358.3,27108,2)
 ;;=^5009252
 ;;^UTILITY(U,$J,358.3,27109,0)
 ;;=L70.0^^132^1309^6
 ;;^UTILITY(U,$J,358.3,27109,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,27109,1,3,0)
 ;;=3^Acne Vulgaris
 ;;^UTILITY(U,$J,358.3,27109,1,4,0)
 ;;=4^L70.0
 ;;^UTILITY(U,$J,358.3,27109,2)
 ;;=^5009268
 ;;^UTILITY(U,$J,358.3,27110,0)
 ;;=L70.1^^132^1309^1
 ;;^UTILITY(U,$J,358.3,27110,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,27110,1,3,0)
 ;;=3^Acne Conglobata
 ;;^UTILITY(U,$J,358.3,27110,1,4,0)
 ;;=4^L70.1
 ;;^UTILITY(U,$J,358.3,27110,2)
 ;;=^5009269
 ;;^UTILITY(U,$J,358.3,27111,0)
 ;;=L70.3^^132^1309^5
 ;;^UTILITY(U,$J,358.3,27111,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,27111,1,3,0)
 ;;=3^Acne Tropica
 ;;^UTILITY(U,$J,358.3,27111,1,4,0)
 ;;=4^L70.3
 ;;^UTILITY(U,$J,358.3,27111,2)
 ;;=^5009270
 ;;^UTILITY(U,$J,358.3,27112,0)
 ;;=L70.5^^132^1309^2
