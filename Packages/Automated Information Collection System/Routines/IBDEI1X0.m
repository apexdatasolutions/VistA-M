IBDEI1X0 ; ; 20-MAY-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;OCT 15, 2014
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,34014,1,4,0)
 ;;=4^J98.19
 ;;^UTILITY(U,$J,358.3,34014,2)
 ;;=^5008361
 ;;^UTILITY(U,$J,358.3,34015,0)
 ;;=J98.11^^192^1985^9
 ;;^UTILITY(U,$J,358.3,34015,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,34015,1,3,0)
 ;;=3^Atelectasis
 ;;^UTILITY(U,$J,358.3,34015,1,4,0)
 ;;=4^J98.11
 ;;^UTILITY(U,$J,358.3,34015,2)
 ;;=^5008360
 ;;^UTILITY(U,$J,358.3,34016,0)
 ;;=A31.9^^192^1985^45
 ;;^UTILITY(U,$J,358.3,34016,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,34016,1,3,0)
 ;;=3^Mycobacterial Infection,Unspec
 ;;^UTILITY(U,$J,358.3,34016,1,4,0)
 ;;=4^A31.9
 ;;^UTILITY(U,$J,358.3,34016,2)
 ;;=^5000153
 ;;^UTILITY(U,$J,358.3,34017,0)
 ;;=A31.0^^192^1985^44
 ;;^UTILITY(U,$J,358.3,34017,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,34017,1,3,0)
 ;;=3^Mycobacterial Infection,Pulmonary
 ;;^UTILITY(U,$J,358.3,34017,1,4,0)
 ;;=4^A31.0
 ;;^UTILITY(U,$J,358.3,34017,2)
 ;;=^5000149
 ;;^UTILITY(U,$J,358.3,34018,0)
 ;;=A31.2^^192^1985^22
 ;;^UTILITY(U,$J,358.3,34018,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,34018,1,3,0)
 ;;=3^Disseminated Mycobacterium Avium-Intracellulare Complex
 ;;^UTILITY(U,$J,358.3,34018,1,4,0)
 ;;=4^A31.2
 ;;^UTILITY(U,$J,358.3,34018,2)
 ;;=^5000151
 ;;^UTILITY(U,$J,358.3,34019,0)
 ;;=J47.9^^192^1985^11
 ;;^UTILITY(U,$J,358.3,34019,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,34019,1,3,0)
 ;;=3^Bronchiectasis,Uncomplicated
 ;;^UTILITY(U,$J,358.3,34019,1,4,0)
 ;;=4^J47.9
 ;;^UTILITY(U,$J,358.3,34019,2)
 ;;=^5008260
 ;;^UTILITY(U,$J,358.3,34020,0)
 ;;=J41.8^^192^1985^13
 ;;^UTILITY(U,$J,358.3,34020,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,34020,1,3,0)
 ;;=3^Bronchitis,Chr,Mixed Simple & Mucopurulent
 ;;^UTILITY(U,$J,358.3,34020,1,4,0)
 ;;=4^J41.8
 ;;^UTILITY(U,$J,358.3,34020,2)
 ;;=^5008233
 ;;^UTILITY(U,$J,358.3,34021,0)
 ;;=J20.9^^192^1985^12
 ;;^UTILITY(U,$J,358.3,34021,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,34021,1,3,0)
 ;;=3^Bronchitis,Acute,Unspec
 ;;^UTILITY(U,$J,358.3,34021,1,4,0)
 ;;=4^J20.9
 ;;^UTILITY(U,$J,358.3,34021,2)
 ;;=^5008195
 ;;^UTILITY(U,$J,358.3,34022,0)
 ;;=J41.0^^192^1985^14
 ;;^UTILITY(U,$J,358.3,34022,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,34022,1,3,0)
 ;;=3^Bronchitis,Chr,Simple
 ;;^UTILITY(U,$J,358.3,34022,1,4,0)
 ;;=4^J41.0
 ;;^UTILITY(U,$J,358.3,34022,2)
 ;;=^269946
 ;;^UTILITY(U,$J,358.3,34023,0)
 ;;=J44.1^^192^1985^16
 ;;^UTILITY(U,$J,358.3,34023,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,34023,1,3,0)
 ;;=3^COPD w/ Acute Exacerbation
 ;;^UTILITY(U,$J,358.3,34023,1,4,0)
 ;;=4^J44.1
 ;;^UTILITY(U,$J,358.3,34023,2)
 ;;=^5008240
 ;;^UTILITY(U,$J,358.3,34024,0)
 ;;=I27.81^^192^1985^18
 ;;^UTILITY(U,$J,358.3,34024,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,34024,1,3,0)
 ;;=3^Cor Pulmonale,Chr
 ;;^UTILITY(U,$J,358.3,34024,1,4,0)
 ;;=4^I27.81
 ;;^UTILITY(U,$J,358.3,34024,2)
 ;;=^5007152
 ;;^UTILITY(U,$J,358.3,34025,0)
 ;;=R05.^^192^1985^19
 ;;^UTILITY(U,$J,358.3,34025,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,34025,1,3,0)
 ;;=3^Cough
 ;;^UTILITY(U,$J,358.3,34025,1,4,0)
 ;;=4^R05.
 ;;^UTILITY(U,$J,358.3,34025,2)
 ;;=^5019179
 ;;^UTILITY(U,$J,358.3,34026,0)
 ;;=Q33.0^^192^1985^20
 ;;^UTILITY(U,$J,358.3,34026,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,34026,1,3,0)
 ;;=3^Cystic Lung,Congenital
 ;;^UTILITY(U,$J,358.3,34026,1,4,0)
 ;;=4^Q33.0
 ;;^UTILITY(U,$J,358.3,34026,2)
 ;;=^5018617
 ;;^UTILITY(U,$J,358.3,34027,0)
 ;;=J98.6^^192^1985^21
 ;;^UTILITY(U,$J,358.3,34027,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,34027,1,3,0)
 ;;=3^Diaphragm Disorders
 ;;^UTILITY(U,$J,358.3,34027,1,4,0)
 ;;=4^J98.6
 ;;^UTILITY(U,$J,358.3,34027,2)
 ;;=^5008364