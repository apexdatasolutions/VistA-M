IBDEI0LD ; ; 20-MAY-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;OCT 15, 2014
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,10462,2)
 ;;=^273464
 ;;^UTILITY(U,$J,358.3,10463,0)
 ;;=402.10^^64^684^31
 ;;^UTILITY(U,$J,358.3,10463,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,10463,1,4,0)
 ;;=4^402.10
 ;;^UTILITY(U,$J,358.3,10463,1,5,0)
 ;;=5^HTN w/ Heart Involvement
 ;;^UTILITY(U,$J,358.3,10463,2)
 ;;=^269598
 ;;^UTILITY(U,$J,358.3,10464,0)
 ;;=402.11^^64^684^32
 ;;^UTILITY(U,$J,358.3,10464,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,10464,1,4,0)
 ;;=4^402.11
 ;;^UTILITY(U,$J,358.3,10464,1,5,0)
 ;;=5^HTN with CHF
 ;;^UTILITY(U,$J,358.3,10464,2)
 ;;=HTN with CHF^269599
 ;;^UTILITY(U,$J,358.3,10465,0)
 ;;=403.11^^64^684^37
 ;;^UTILITY(U,$J,358.3,10465,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,10465,1,4,0)
 ;;=4^403.11
 ;;^UTILITY(U,$J,358.3,10465,1,5,0)
 ;;=5^HTN with Renal Failure
 ;;^UTILITY(U,$J,358.3,10465,2)
 ;;=^269608
 ;;^UTILITY(U,$J,358.3,10466,0)
 ;;=404.10^^64^684^35
 ;;^UTILITY(U,$J,358.3,10466,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,10466,1,4,0)
 ;;=4^404.10
 ;;^UTILITY(U,$J,358.3,10466,1,5,0)
 ;;=5^HTN with Heart & Renal Involvement
 ;;^UTILITY(U,$J,358.3,10466,2)
 ;;=^269618
 ;;^UTILITY(U,$J,358.3,10467,0)
 ;;=404.11^^64^684^33
 ;;^UTILITY(U,$J,358.3,10467,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,10467,1,4,0)
 ;;=4^404.11
 ;;^UTILITY(U,$J,358.3,10467,1,5,0)
 ;;=5^HTN with CHF & Renal Involvement
 ;;^UTILITY(U,$J,358.3,10467,2)
 ;;=^269619
 ;;^UTILITY(U,$J,358.3,10468,0)
 ;;=404.12^^64^684^36
 ;;^UTILITY(U,$J,358.3,10468,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,10468,1,4,0)
 ;;=4^404.12
 ;;^UTILITY(U,$J,358.3,10468,1,5,0)
 ;;=5^HTN with Heart Involvement & Renal Failure
 ;;^UTILITY(U,$J,358.3,10468,2)
 ;;=^269620
 ;;^UTILITY(U,$J,358.3,10469,0)
 ;;=404.13^^64^684^34
 ;;^UTILITY(U,$J,358.3,10469,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,10469,1,4,0)
 ;;=4^404.13
 ;;^UTILITY(U,$J,358.3,10469,1,5,0)
 ;;=5^HTN with CHF & Renal failure
 ;;^UTILITY(U,$J,358.3,10469,2)
 ;;=^269621
 ;;^UTILITY(U,$J,358.3,10470,0)
 ;;=401.9^^64^684^57
 ;;^UTILITY(U,$J,358.3,10470,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,10470,1,4,0)
 ;;=4^401.9
 ;;^UTILITY(U,$J,358.3,10470,1,5,0)
 ;;=5^Hypertension, Essential
 ;;^UTILITY(U,$J,358.3,10470,2)
 ;;=^186630
 ;;^UTILITY(U,$J,358.3,10471,0)
 ;;=272.0^^64^684^55
 ;;^UTILITY(U,$J,358.3,10471,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,10471,1,4,0)
 ;;=4^272.0
 ;;^UTILITY(U,$J,358.3,10471,1,5,0)
 ;;=5^Hypercholesterolemia, Pure
 ;;^UTILITY(U,$J,358.3,10471,2)
 ;;=^59973
 ;;^UTILITY(U,$J,358.3,10472,0)
 ;;=272.1^^64^684^58
 ;;^UTILITY(U,$J,358.3,10472,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,10472,1,4,0)
 ;;=4^272.1
 ;;^UTILITY(U,$J,358.3,10472,1,5,0)
 ;;=5^Hypertriglyceridemia
 ;;^UTILITY(U,$J,358.3,10472,2)
 ;;=Hypertriglyceridemia^101303
 ;;^UTILITY(U,$J,358.3,10473,0)
 ;;=272.2^^64^684^63
 ;;^UTILITY(U,$J,358.3,10473,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,10473,1,4,0)
 ;;=4^272.2
 ;;^UTILITY(U,$J,358.3,10473,1,5,0)
 ;;=5^Mixed Hyperlipidemia
 ;;^UTILITY(U,$J,358.3,10473,2)
 ;;=^78424
 ;;^UTILITY(U,$J,358.3,10474,0)
 ;;=396.0^^64^684^11
 ;;^UTILITY(U,$J,358.3,10474,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,10474,1,4,0)
 ;;=4^396.0
 ;;^UTILITY(U,$J,358.3,10474,1,5,0)
 ;;=5^Aortic and Mitral Stenosis
 ;;^UTILITY(U,$J,358.3,10474,2)
 ;;=Aortic and Mitral Stenosis^269580
 ;;^UTILITY(U,$J,358.3,10475,0)
 ;;=414.02^^64^684^18
 ;;^UTILITY(U,$J,358.3,10475,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,10475,1,4,0)
 ;;=4^414.02
 ;;^UTILITY(U,$J,358.3,10475,1,5,0)
 ;;=5^CAD, Occlusion of Venous Graft
 ;;^UTILITY(U,$J,358.3,10475,2)
 ;;=CAD, Occlusion of Venous Graft^303282