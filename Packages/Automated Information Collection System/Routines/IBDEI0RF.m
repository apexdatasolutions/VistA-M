IBDEI0RF ; ; 20-MAY-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;OCT 15, 2014
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,13503,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,13503,1,4,0)
 ;;=4^786.30
 ;;^UTILITY(U,$J,358.3,13503,1,5,0)
 ;;=5^Hemoptysis NOS
 ;;^UTILITY(U,$J,358.3,13503,2)
 ;;=^339669
 ;;^UTILITY(U,$J,358.3,13504,0)
 ;;=786.39^^83^853^15
 ;;^UTILITY(U,$J,358.3,13504,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,13504,1,4,0)
 ;;=4^786.39
 ;;^UTILITY(U,$J,358.3,13504,1,5,0)
 ;;=5^Hemoptysis NEC
 ;;^UTILITY(U,$J,358.3,13504,2)
 ;;=^339640
 ;;^UTILITY(U,$J,358.3,13505,0)
 ;;=512.89^^83^853^23
 ;;^UTILITY(U,$J,358.3,13505,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,13505,1,4,0)
 ;;=4^512.89
 ;;^UTILITY(U,$J,358.3,13505,1,5,0)
 ;;=5^Pneumothorax
 ;;^UTILITY(U,$J,358.3,13505,2)
 ;;=^340533
 ;;^UTILITY(U,$J,358.3,13506,0)
 ;;=795.51^^83^853^18
 ;;^UTILITY(U,$J,358.3,13506,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,13506,1,4,0)
 ;;=4^795.51
 ;;^UTILITY(U,$J,358.3,13506,1,5,0)
 ;;=5^PPD Pos w/o Active TB
 ;;^UTILITY(U,$J,358.3,13506,2)
 ;;=^340572
 ;;^UTILITY(U,$J,358.3,13507,0)
 ;;=482.9^^83^853^8
 ;;^UTILITY(U,$J,358.3,13507,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,13507,1,4,0)
 ;;=4^482.9
 ;;^UTILITY(U,$J,358.3,13507,1,5,0)
 ;;=5^Bacterial Pneumonia
 ;;^UTILITY(U,$J,358.3,13507,2)
 ;;=^12347
 ;;^UTILITY(U,$J,358.3,13508,0)
 ;;=507.0^^83^853^5
 ;;^UTILITY(U,$J,358.3,13508,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,13508,1,4,0)
 ;;=4^507.0
 ;;^UTILITY(U,$J,358.3,13508,1,5,0)
 ;;=5^Aspiration Pneumonia
 ;;^UTILITY(U,$J,358.3,13508,2)
 ;;=^95581
 ;;^UTILITY(U,$J,358.3,13509,0)
 ;;=518.51^^83^853^2
 ;;^UTILITY(U,$J,358.3,13509,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,13509,1,4,0)
 ;;=4^518.51
 ;;^UTILITY(U,$J,358.3,13509,1,5,0)
 ;;=5^AC Resp Failure Following Trauma/Surgery
 ;;^UTILITY(U,$J,358.3,13509,2)
 ;;=^340548
 ;;^UTILITY(U,$J,358.3,13510,0)
 ;;=518.84^^83^853^3
 ;;^UTILITY(U,$J,358.3,13510,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,13510,1,4,0)
 ;;=4^518.84
 ;;^UTILITY(U,$J,358.3,13510,1,5,0)
 ;;=5^Acute and Chr Respiratory Failure
 ;;^UTILITY(U,$J,358.3,13510,2)
 ;;=^321183
 ;;^UTILITY(U,$J,358.3,13511,0)
 ;;=724.5^^83^854^3
 ;;^UTILITY(U,$J,358.3,13511,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,13511,1,4,0)
 ;;=4^724.5
 ;;^UTILITY(U,$J,358.3,13511,1,5,0)
 ;;=5^Back Pain
 ;;^UTILITY(U,$J,358.3,13511,2)
 ;;=^12250
 ;;^UTILITY(U,$J,358.3,13512,0)
 ;;=729.1^^83^854^6
 ;;^UTILITY(U,$J,358.3,13512,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,13512,1,4,0)
 ;;=4^729.1
 ;;^UTILITY(U,$J,358.3,13512,1,5,0)
 ;;=5^Fibromyalgia
 ;;^UTILITY(U,$J,358.3,13512,2)
 ;;=^80160
 ;;^UTILITY(U,$J,358.3,13513,0)
 ;;=723.1^^83^854^5
 ;;^UTILITY(U,$J,358.3,13513,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,13513,1,4,0)
 ;;=4^723.1
 ;;^UTILITY(U,$J,358.3,13513,1,5,0)
 ;;=5^Cervicalgia
 ;;^UTILITY(U,$J,358.3,13513,2)
 ;;=^21917
 ;;^UTILITY(U,$J,358.3,13514,0)
 ;;=729.2^^83^854^22
 ;;^UTILITY(U,$J,358.3,13514,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,13514,1,4,0)
 ;;=4^729.2
 ;;^UTILITY(U,$J,358.3,13514,1,5,0)
 ;;=5^Neuropathic Pain
 ;;^UTILITY(U,$J,358.3,13514,2)
 ;;=Neuropathic Pain^82605
 ;;^UTILITY(U,$J,358.3,13515,0)
 ;;=721.0^^83^854^4
 ;;^UTILITY(U,$J,358.3,13515,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,13515,1,4,0)
 ;;=4^721.0
 ;;^UTILITY(U,$J,358.3,13515,1,5,0)
 ;;=5^Cervical Spondylosis
 ;;^UTILITY(U,$J,358.3,13515,2)
 ;;=^272452
 ;;^UTILITY(U,$J,358.3,13516,0)
 ;;=720.0^^83^854^1
 ;;^UTILITY(U,$J,358.3,13516,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,13516,1,4,0)
 ;;=4^720.0
 ;;^UTILITY(U,$J,358.3,13516,1,5,0)
 ;;=5^Ankylosing Spondylitis
 ;;^UTILITY(U,$J,358.3,13516,2)
 ;;=^113484