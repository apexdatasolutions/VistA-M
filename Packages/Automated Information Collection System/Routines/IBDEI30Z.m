IBDEI30Z ; ; 19-NOV-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,50718,0)
 ;;=20526^^220^2460^1^^^^1
 ;;^UTILITY(U,$J,358.3,50718,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,50718,1,2,0)
 ;;=2^20526
 ;;^UTILITY(U,$J,358.3,50718,1,3,0)
 ;;=3^Carpal Tunnel Injection
 ;;^UTILITY(U,$J,358.3,50719,0)
 ;;=20551^^220^2460^7^^^^1
 ;;^UTILITY(U,$J,358.3,50719,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,50719,1,2,0)
 ;;=2^20551
 ;;^UTILITY(U,$J,358.3,50719,1,3,0)
 ;;=3^Tendon Insertion
 ;;^UTILITY(U,$J,358.3,50720,0)
 ;;=20550^^220^2460^3^^^^1
 ;;^UTILITY(U,$J,358.3,50720,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,50720,1,2,0)
 ;;=2^20550
 ;;^UTILITY(U,$J,358.3,50720,1,3,0)
 ;;=3^Inj Tendon Sheath/Ligamnt
 ;;^UTILITY(U,$J,358.3,50721,0)
 ;;=20552^^220^2460^9^^^^1
 ;;^UTILITY(U,$J,358.3,50721,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,50721,1,2,0)
 ;;=2^20552
 ;;^UTILITY(U,$J,358.3,50721,1,3,0)
 ;;=3^Trigger Inj Point 1 or 2
 ;;^UTILITY(U,$J,358.3,50722,0)
 ;;=20553^^220^2460^10^^^^1
 ;;^UTILITY(U,$J,358.3,50722,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,50722,1,2,0)
 ;;=2^20553
 ;;^UTILITY(U,$J,358.3,50722,1,3,0)
 ;;=3^Trigger Inj Points 3+
 ;;^UTILITY(U,$J,358.3,50723,0)
 ;;=J1600^^220^2461^2^^^^1
 ;;^UTILITY(U,$J,358.3,50723,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,50723,1,2,0)
 ;;=2^J1600
 ;;^UTILITY(U,$J,358.3,50723,1,3,0)
 ;;=3^Gold Inj up to 50mg
 ;;^UTILITY(U,$J,358.3,50724,0)
 ;;=J9250^^220^2461^4^^^^1
 ;;^UTILITY(U,$J,358.3,50724,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,50724,1,2,0)
 ;;=2^J9250
 ;;^UTILITY(U,$J,358.3,50724,1,3,0)
 ;;=3^Methotrexate Inj 5mg
 ;;^UTILITY(U,$J,358.3,50725,0)
 ;;=96372^^220^2461^6^^^^1
 ;;^UTILITY(U,$J,358.3,50725,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,50725,1,2,0)
 ;;=2^96372
 ;;^UTILITY(U,$J,358.3,50725,1,3,0)
 ;;=3^Ther/Proph Inj, SC/IM
 ;;^UTILITY(U,$J,358.3,50726,0)
 ;;=96374^^220^2461^7^^^^1
 ;;^UTILITY(U,$J,358.3,50726,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,50726,1,2,0)
 ;;=2^96374
 ;;^UTILITY(U,$J,358.3,50726,1,3,0)
 ;;=3^Ther/Proph/Diag Inj IV
 ;;^UTILITY(U,$J,358.3,50727,0)
 ;;=96375^^220^2461^5^^^^1
 ;;^UTILITY(U,$J,358.3,50727,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,50727,1,2,0)
 ;;=2^96375
 ;;^UTILITY(U,$J,358.3,50727,1,3,0)
 ;;=3^Ther/Proph Inj IV Ea Addl
 ;;^UTILITY(U,$J,358.3,50728,0)
 ;;=J3301^^220^2461^3^^^^1
 ;;^UTILITY(U,$J,358.3,50728,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,50728,1,2,0)
 ;;=2^J3301
 ;;^UTILITY(U,$J,358.3,50728,1,3,0)
 ;;=3^Kenalog Inj 10mg
 ;;^UTILITY(U,$J,358.3,50729,0)
 ;;=J7323^^220^2461^1^^^^1
 ;;^UTILITY(U,$J,358.3,50729,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,50729,1,2,0)
 ;;=2^J7323
 ;;^UTILITY(U,$J,358.3,50729,1,3,0)
 ;;=3^Euflexxa Inj per dose
 ;;^UTILITY(U,$J,358.3,50730,0)
 ;;=76942^^220^2462^3^^^^1
 ;;^UTILITY(U,$J,358.3,50730,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,50730,1,2,0)
 ;;=2^76942
 ;;^UTILITY(U,$J,358.3,50730,1,3,0)
 ;;=3^U/S Guidance for Needle Placement
 ;;^UTILITY(U,$J,358.3,50731,0)
 ;;=76881^^220^2462^1^^^^1
 ;;^UTILITY(U,$J,358.3,50731,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,50731,1,2,0)
 ;;=2^76881
 ;;^UTILITY(U,$J,358.3,50731,1,3,0)
 ;;=3^Diagnostic Ultrasound,Complete
 ;;^UTILITY(U,$J,358.3,50732,0)
 ;;=76882^^220^2462^2^^^^1
 ;;^UTILITY(U,$J,358.3,50732,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,50732,1,2,0)
 ;;=2^76882
 ;;^UTILITY(U,$J,358.3,50732,1,3,0)
 ;;=3^Diagnostic Ultrasound,Limited
 ;;^UTILITY(U,$J,358.3,50733,0)
 ;;=99201^^221^2463^1
 ;;^UTILITY(U,$J,358.3,50733,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,50733,1,1,0)
 ;;=1^Problem Focused
 ;;^UTILITY(U,$J,358.3,50733,1,2,0)
 ;;=2^99201