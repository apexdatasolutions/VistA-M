IBDEI1D8 ; ; 20-MAY-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;OCT 15, 2014
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,24501,0)
 ;;=786.06^^145^1527^38
 ;;^UTILITY(U,$J,358.3,24501,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,24501,1,4,0)
 ;;=4^786.06
 ;;^UTILITY(U,$J,358.3,24501,1,5,0)
 ;;=5^Tachypnea
 ;;^UTILITY(U,$J,358.3,24501,2)
 ;;=Tachypnea^321213
 ;;^UTILITY(U,$J,358.3,24502,0)
 ;;=305.1^^145^1527^39
 ;;^UTILITY(U,$J,358.3,24502,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,24502,1,4,0)
 ;;=4^305.1
 ;;^UTILITY(U,$J,358.3,24502,1,5,0)
 ;;=5^Tobacco Use
 ;;^UTILITY(U,$J,358.3,24502,2)
 ;;=Tobacco Use^119899
 ;;^UTILITY(U,$J,358.3,24503,0)
 ;;=786.07^^145^1527^40
 ;;^UTILITY(U,$J,358.3,24503,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,24503,1,4,0)
 ;;=4^786.07
 ;;^UTILITY(U,$J,358.3,24503,1,5,0)
 ;;=5^Wheezing
 ;;^UTILITY(U,$J,358.3,24503,2)
 ;;=Wheezing^127848
 ;;^UTILITY(U,$J,358.3,24504,0)
 ;;=519.11^^145^1527^4
 ;;^UTILITY(U,$J,358.3,24504,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,24504,1,4,0)
 ;;=4^519.11
 ;;^UTILITY(U,$J,358.3,24504,1,5,0)
 ;;=5^Acute Bronchospasm
 ;;^UTILITY(U,$J,358.3,24504,2)
 ;;=^334092
 ;;^UTILITY(U,$J,358.3,24505,0)
 ;;=488.01^^145^1527^20
 ;;^UTILITY(U,$J,358.3,24505,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,24505,1,4,0)
 ;;=4^488.01
 ;;^UTILITY(U,$J,358.3,24505,1,5,0)
 ;;=5^Flu DT Iden AVIAN w Pneu
 ;;^UTILITY(U,$J,358.3,24505,2)
 ;;=^339615
 ;;^UTILITY(U,$J,358.3,24506,0)
 ;;=488.02^^145^1527^19
 ;;^UTILITY(U,$J,358.3,24506,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,24506,1,4,0)
 ;;=4^488.02
 ;;^UTILITY(U,$J,358.3,24506,1,5,0)
 ;;=5^Flu DT AVIAN w oth Resp
 ;;^UTILITY(U,$J,358.3,24506,2)
 ;;=^339616
 ;;^UTILITY(U,$J,358.3,24507,0)
 ;;=488.09^^145^1527^18
 ;;^UTILITY(U,$J,358.3,24507,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,24507,1,4,0)
 ;;=4^488.09
 ;;^UTILITY(U,$J,358.3,24507,1,5,0)
 ;;=5^Flu DT AVIAN Manfest
 ;;^UTILITY(U,$J,358.3,24507,2)
 ;;=^339617
 ;;^UTILITY(U,$J,358.3,24508,0)
 ;;=786.30^^145^1527^22
 ;;^UTILITY(U,$J,358.3,24508,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,24508,1,4,0)
 ;;=4^786.30
 ;;^UTILITY(U,$J,358.3,24508,1,5,0)
 ;;=5^Hemoptysis
 ;;^UTILITY(U,$J,358.3,24508,2)
 ;;=^339669
 ;;^UTILITY(U,$J,358.3,24509,0)
 ;;=793.11^^145^1527^1
 ;;^UTILITY(U,$J,358.3,24509,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,24509,1,4,0)
 ;;=4^793.11
 ;;^UTILITY(U,$J,358.3,24509,1,5,0)
 ;;=5^Abn Chest Xray, Lung, Solitary Nodule
 ;;^UTILITY(U,$J,358.3,24509,2)
 ;;=^340570
 ;;^UTILITY(U,$J,358.3,24510,0)
 ;;=793.19^^145^1527^2
 ;;^UTILITY(U,$J,358.3,24510,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,24510,1,4,0)
 ;;=4^793.19
 ;;^UTILITY(U,$J,358.3,24510,1,5,0)
 ;;=5^Abn Chest Xray,Oth Finding, Lung
 ;;^UTILITY(U,$J,358.3,24510,2)
 ;;=^340571
 ;;^UTILITY(U,$J,358.3,24511,0)
 ;;=795.51^^145^1527^32
 ;;^UTILITY(U,$J,358.3,24511,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,24511,1,4,0)
 ;;=4^795.51
 ;;^UTILITY(U,$J,358.3,24511,1,5,0)
 ;;=5^Pos PPD w/o Active TB
 ;;^UTILITY(U,$J,358.3,24511,2)
 ;;=^340572
 ;;^UTILITY(U,$J,358.3,24512,0)
 ;;=795.52^^145^1527^31
 ;;^UTILITY(U,$J,358.3,24512,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,24512,1,4,0)
 ;;=4^795.52
 ;;^UTILITY(U,$J,358.3,24512,1,5,0)
 ;;=5^Pos GMA Interferon w/o Active TB
 ;;^UTILITY(U,$J,358.3,24512,2)
 ;;=^340573
 ;;^UTILITY(U,$J,358.3,24513,0)
 ;;=V15.82^^145^1527^21
 ;;^UTILITY(U,$J,358.3,24513,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,24513,1,4,0)
 ;;=4^V15.82
 ;;^UTILITY(U,$J,358.3,24513,1,5,0)
 ;;=5^H/O Tobacco Abuse
 ;;^UTILITY(U,$J,358.3,24513,2)
 ;;=^303405
 ;;^UTILITY(U,$J,358.3,24514,0)
 ;;=511.89^^145^1527^27
 ;;^UTILITY(U,$J,358.3,24514,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,24514,1,4,0)
 ;;=4^511.89