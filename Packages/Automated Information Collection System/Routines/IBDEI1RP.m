IBDEI1RP ; ; 19-NOV-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,29592,1,4,0)
 ;;=4^E04.0
 ;;^UTILITY(U,$J,358.3,29592,2)
 ;;=^5002477
 ;;^UTILITY(U,$J,358.3,29593,0)
 ;;=E04.1^^135^1364^41
 ;;^UTILITY(U,$J,358.3,29593,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,29593,1,3,0)
 ;;=3^Nontoxic Single Thyroid Nodule
 ;;^UTILITY(U,$J,358.3,29593,1,4,0)
 ;;=4^E04.1
 ;;^UTILITY(U,$J,358.3,29593,2)
 ;;=^5002478
 ;;^UTILITY(U,$J,358.3,29594,0)
 ;;=E04.2^^135^1364^40
 ;;^UTILITY(U,$J,358.3,29594,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,29594,1,3,0)
 ;;=3^Nontoxic Multinodular Goiter
 ;;^UTILITY(U,$J,358.3,29594,1,4,0)
 ;;=4^E04.2
 ;;^UTILITY(U,$J,358.3,29594,2)
 ;;=^267790
 ;;^UTILITY(U,$J,358.3,29595,0)
 ;;=E01.1^^135^1364^36
 ;;^UTILITY(U,$J,358.3,29595,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,29595,1,3,0)
 ;;=3^Iodine-Deficiency Related Multinodular (Endemic) Goiter
 ;;^UTILITY(U,$J,358.3,29595,1,4,0)
 ;;=4^E01.1
 ;;^UTILITY(U,$J,358.3,29595,2)
 ;;=^5002465
 ;;^UTILITY(U,$J,358.3,29596,0)
 ;;=E05.00^^135^1364^56
 ;;^UTILITY(U,$J,358.3,29596,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,29596,1,3,0)
 ;;=3^Thyrotoxicosis w/ Diffuse Goiter w/o Thyrotoxic Crisis
 ;;^UTILITY(U,$J,358.3,29596,1,4,0)
 ;;=4^E05.00
 ;;^UTILITY(U,$J,358.3,29596,2)
 ;;=^5002481
 ;;^UTILITY(U,$J,358.3,29597,0)
 ;;=E05.01^^135^1364^55
 ;;^UTILITY(U,$J,358.3,29597,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,29597,1,3,0)
 ;;=3^Thyrotoxicosis w/ Diffuse Goiter w/ Thyrotoxic Crisis/Storm
 ;;^UTILITY(U,$J,358.3,29597,1,4,0)
 ;;=4^E05.01
 ;;^UTILITY(U,$J,358.3,29597,2)
 ;;=^5002482
 ;;^UTILITY(U,$J,358.3,29598,0)
 ;;=E05.90^^135^1364^58
 ;;^UTILITY(U,$J,358.3,29598,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,29598,1,3,0)
 ;;=3^Thyrotoxicosis,Unspec w/o Thyrotoxic Crisis/Storm
 ;;^UTILITY(U,$J,358.3,29598,1,4,0)
 ;;=4^E05.90
 ;;^UTILITY(U,$J,358.3,29598,2)
 ;;=^5002492
 ;;^UTILITY(U,$J,358.3,29599,0)
 ;;=E05.91^^135^1364^57
 ;;^UTILITY(U,$J,358.3,29599,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,29599,1,3,0)
 ;;=3^Thyrotoxicosis,Unspec w/ Thyrotoxic Crisis/Storm
 ;;^UTILITY(U,$J,358.3,29599,1,4,0)
 ;;=4^E05.91
 ;;^UTILITY(U,$J,358.3,29599,2)
 ;;=^5002493
 ;;^UTILITY(U,$J,358.3,29600,0)
 ;;=E89.0^^135^1364^50
 ;;^UTILITY(U,$J,358.3,29600,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,29600,1,3,0)
 ;;=3^Postprocedural Hypothyroidism
 ;;^UTILITY(U,$J,358.3,29600,1,4,0)
 ;;=4^E89.0
 ;;^UTILITY(U,$J,358.3,29600,2)
 ;;=^5003035
 ;;^UTILITY(U,$J,358.3,29601,0)
 ;;=E03.2^^135^1364^32
 ;;^UTILITY(U,$J,358.3,29601,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,29601,1,3,0)
 ;;=3^Hypothyroidism d/t Meds/Oth Exogenous Substances
 ;;^UTILITY(U,$J,358.3,29601,1,4,0)
 ;;=4^E03.2
 ;;^UTILITY(U,$J,358.3,29601,2)
 ;;=^5002471
 ;;^UTILITY(U,$J,358.3,29602,0)
 ;;=E03.9^^135^1364^33
 ;;^UTILITY(U,$J,358.3,29602,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,29602,1,3,0)
 ;;=3^Hypothyroidism,Unspec
 ;;^UTILITY(U,$J,358.3,29602,1,4,0)
 ;;=4^E03.9
 ;;^UTILITY(U,$J,358.3,29602,2)
 ;;=^5002476
 ;;^UTILITY(U,$J,358.3,29603,0)
 ;;=E06.0^^135^1364^53
 ;;^UTILITY(U,$J,358.3,29603,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,29603,1,3,0)
 ;;=3^Thyroiditis,Acute
 ;;^UTILITY(U,$J,358.3,29603,1,4,0)
 ;;=4^E06.0
 ;;^UTILITY(U,$J,358.3,29603,2)
 ;;=^2692
 ;;^UTILITY(U,$J,358.3,29604,0)
 ;;=E06.1^^135^1364^54
 ;;^UTILITY(U,$J,358.3,29604,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,29604,1,3,0)
 ;;=3^Thyroiditis,Subacute
 ;;^UTILITY(U,$J,358.3,29604,1,4,0)
 ;;=4^E06.1
 ;;^UTILITY(U,$J,358.3,29604,2)
 ;;=^119376
 ;;^UTILITY(U,$J,358.3,29605,0)
 ;;=C73.^^135^1364^37
 ;;^UTILITY(U,$J,358.3,29605,1,0)
 ;;=^358.31IA^4^2
