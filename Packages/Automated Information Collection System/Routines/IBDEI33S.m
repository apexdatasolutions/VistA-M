IBDEI33S ; ; 19-NOV-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,52083,1,3,0)
 ;;=3^Mental Hlth Svc for Victim of Parental Child Abuse
 ;;^UTILITY(U,$J,358.3,52083,1,4,0)
 ;;=4^Z69.010
 ;;^UTILITY(U,$J,358.3,52083,2)
 ;;=^5063228
 ;;^UTILITY(U,$J,358.3,52084,0)
 ;;=Z69.011^^235^2562^6
 ;;^UTILITY(U,$J,358.3,52084,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,52084,1,3,0)
 ;;=3^Mental Hlth Svc for Perpetrator of Parental Child Abuse
 ;;^UTILITY(U,$J,358.3,52084,1,4,0)
 ;;=4^Z69.011
 ;;^UTILITY(U,$J,358.3,52084,2)
 ;;=^5063229
 ;;^UTILITY(U,$J,358.3,52085,0)
 ;;=Z62.898^^235^2562^11
 ;;^UTILITY(U,$J,358.3,52085,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,52085,1,3,0)
 ;;=3^Problems Related to Upbringing
 ;;^UTILITY(U,$J,358.3,52085,1,4,0)
 ;;=4^Z62.898
 ;;^UTILITY(U,$J,358.3,52085,2)
 ;;=^5063162
 ;;^UTILITY(U,$J,358.3,52086,0)
 ;;=Z63.79^^235^2562^12
 ;;^UTILITY(U,$J,358.3,52086,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,52086,1,3,0)
 ;;=3^Stressful Life Events
 ;;^UTILITY(U,$J,358.3,52086,1,4,0)
 ;;=4^Z63.79
 ;;^UTILITY(U,$J,358.3,52086,2)
 ;;=^5063173
 ;;^UTILITY(U,$J,358.3,52087,0)
 ;;=Z63.72^^235^2562^2
 ;;^UTILITY(U,$J,358.3,52087,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,52087,1,3,0)
 ;;=3^Alcoholism/Drug Addiction in Family
 ;;^UTILITY(U,$J,358.3,52087,1,4,0)
 ;;=4^Z63.72
 ;;^UTILITY(U,$J,358.3,52087,2)
 ;;=^5063172
 ;;^UTILITY(U,$J,358.3,52088,0)
 ;;=Z63.6^^235^2562^3
 ;;^UTILITY(U,$J,358.3,52088,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,52088,1,3,0)
 ;;=3^Dependent Relative Needing Care at Home
 ;;^UTILITY(U,$J,358.3,52088,1,4,0)
 ;;=4^Z63.6
 ;;^UTILITY(U,$J,358.3,52088,2)
 ;;=^5063170
 ;;^UTILITY(U,$J,358.3,52089,0)
 ;;=Z59.0^^235^2563^4
 ;;^UTILITY(U,$J,358.3,52089,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,52089,1,3,0)
 ;;=3^Homelessness
 ;;^UTILITY(U,$J,358.3,52089,1,4,0)
 ;;=4^Z59.0
 ;;^UTILITY(U,$J,358.3,52089,2)
 ;;=^5063129
 ;;^UTILITY(U,$J,358.3,52090,0)
 ;;=Z59.1^^235^2563^6
 ;;^UTILITY(U,$J,358.3,52090,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,52090,1,3,0)
 ;;=3^Inadequate Housing
 ;;^UTILITY(U,$J,358.3,52090,1,4,0)
 ;;=4^Z59.1
 ;;^UTILITY(U,$J,358.3,52090,2)
 ;;=^5063130
 ;;^UTILITY(U,$J,358.3,52091,0)
 ;;=Z59.5^^235^2563^2
 ;;^UTILITY(U,$J,358.3,52091,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,52091,1,3,0)
 ;;=3^Extreme Poverty
 ;;^UTILITY(U,$J,358.3,52091,1,4,0)
 ;;=4^Z59.5
 ;;^UTILITY(U,$J,358.3,52091,2)
 ;;=^5063134
 ;;^UTILITY(U,$J,358.3,52092,0)
 ;;=Z60.2^^235^2563^8
 ;;^UTILITY(U,$J,358.3,52092,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,52092,1,3,0)
 ;;=3^Problems Related to Living Alone
 ;;^UTILITY(U,$J,358.3,52092,1,4,0)
 ;;=4^Z60.2
 ;;^UTILITY(U,$J,358.3,52092,2)
 ;;=^5063140
 ;;^UTILITY(U,$J,358.3,52093,0)
 ;;=Z74.2^^235^2563^1
 ;;^UTILITY(U,$J,358.3,52093,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,52093,1,3,0)
 ;;=3^Assistance at Home Needed
 ;;^UTILITY(U,$J,358.3,52093,1,4,0)
 ;;=4^Z74.2
 ;;^UTILITY(U,$J,358.3,52093,2)
 ;;=^5063285
 ;;^UTILITY(U,$J,358.3,52094,0)
 ;;=Z75.5^^235^2563^3
 ;;^UTILITY(U,$J,358.3,52094,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,52094,1,3,0)
 ;;=3^Holiday Relief Care
 ;;^UTILITY(U,$J,358.3,52094,1,4,0)
 ;;=4^Z75.5
 ;;^UTILITY(U,$J,358.3,52094,2)
 ;;=^5063294
 ;;^UTILITY(U,$J,358.3,52095,0)
 ;;=Z59.3^^235^2563^9
 ;;^UTILITY(U,$J,358.3,52095,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,52095,1,3,0)
 ;;=3^Problems Related to Living in Residential Institution
 ;;^UTILITY(U,$J,358.3,52095,1,4,0)
 ;;=4^Z59.3
 ;;^UTILITY(U,$J,358.3,52095,2)
 ;;=^5063132
 ;;^UTILITY(U,$J,358.3,52096,0)
 ;;=Z63.8^^235^2563^7
 ;;^UTILITY(U,$J,358.3,52096,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,52096,1,3,0)
 ;;=3^Primary Support Group Problems