IBDEI34O ; ; 19-NOV-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,52499,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,52499,1,3,0)
 ;;=3^Relationship Distress w/ Spouse/Partner
 ;;^UTILITY(U,$J,358.3,52499,1,4,0)
 ;;=4^Z63.0
 ;;^UTILITY(U,$J,358.3,52499,2)
 ;;=^5063164
 ;;^UTILITY(U,$J,358.3,52500,0)
 ;;=Z63.5^^237^2610^2
 ;;^UTILITY(U,$J,358.3,52500,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,52500,1,3,0)
 ;;=3^Disruption of Family by Separation or Divorce
 ;;^UTILITY(U,$J,358.3,52500,1,4,0)
 ;;=4^Z63.5
 ;;^UTILITY(U,$J,358.3,52500,2)
 ;;=^5063169
 ;;^UTILITY(U,$J,358.3,52501,0)
 ;;=Z63.8^^237^2610^3
 ;;^UTILITY(U,$J,358.3,52501,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,52501,1,3,0)
 ;;=3^High Exporessed Emotion Level w/in Family
 ;;^UTILITY(U,$J,358.3,52501,1,4,0)
 ;;=4^Z63.8
 ;;^UTILITY(U,$J,358.3,52501,2)
 ;;=^5063174
 ;;^UTILITY(U,$J,358.3,52502,0)
 ;;=Z63.4^^237^2610^7
 ;;^UTILITY(U,$J,358.3,52502,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,52502,1,3,0)
 ;;=3^Uncomplicated Bereavement
 ;;^UTILITY(U,$J,358.3,52502,1,4,0)
 ;;=4^Z63.4
 ;;^UTILITY(U,$J,358.3,52502,2)
 ;;=^5063168
 ;;^UTILITY(U,$J,358.3,52503,0)
 ;;=F20.9^^237^2611^5
 ;;^UTILITY(U,$J,358.3,52503,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,52503,1,3,0)
 ;;=3^Schizophrenia
 ;;^UTILITY(U,$J,358.3,52503,1,4,0)
 ;;=4^F20.9
 ;;^UTILITY(U,$J,358.3,52503,2)
 ;;=^5003476
 ;;^UTILITY(U,$J,358.3,52504,0)
 ;;=F20.81^^237^2611^6
 ;;^UTILITY(U,$J,358.3,52504,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,52504,1,3,0)
 ;;=3^Schizophreniform Disorder
 ;;^UTILITY(U,$J,358.3,52504,1,4,0)
 ;;=4^F20.81
 ;;^UTILITY(U,$J,358.3,52504,2)
 ;;=^5003474
 ;;^UTILITY(U,$J,358.3,52505,0)
 ;;=F22.^^237^2611^2
 ;;^UTILITY(U,$J,358.3,52505,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,52505,1,3,0)
 ;;=3^Delusional Disorder
 ;;^UTILITY(U,$J,358.3,52505,1,4,0)
 ;;=4^F22.
 ;;^UTILITY(U,$J,358.3,52505,2)
 ;;=^5003478
 ;;^UTILITY(U,$J,358.3,52506,0)
 ;;=F23.^^237^2611^1
 ;;^UTILITY(U,$J,358.3,52506,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,52506,1,3,0)
 ;;=3^Brief Psychotic Disorder
 ;;^UTILITY(U,$J,358.3,52506,1,4,0)
 ;;=4^F23.
 ;;^UTILITY(U,$J,358.3,52506,2)
 ;;=^5003479
 ;;^UTILITY(U,$J,358.3,52507,0)
 ;;=F25.0^^237^2611^3
 ;;^UTILITY(U,$J,358.3,52507,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,52507,1,3,0)
 ;;=3^Schizoaffective Disorder,Bipolar Type
 ;;^UTILITY(U,$J,358.3,52507,1,4,0)
 ;;=4^F25.0
 ;;^UTILITY(U,$J,358.3,52507,2)
 ;;=^5003480
 ;;^UTILITY(U,$J,358.3,52508,0)
 ;;=F25.1^^237^2611^4
 ;;^UTILITY(U,$J,358.3,52508,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,52508,1,3,0)
 ;;=3^Schizoaffective Disorder,Depressive Type
 ;;^UTILITY(U,$J,358.3,52508,1,4,0)
 ;;=4^F25.1
 ;;^UTILITY(U,$J,358.3,52508,2)
 ;;=^5003481
 ;;^UTILITY(U,$J,358.3,52509,0)
 ;;=F52.32^^237^2612^1
 ;;^UTILITY(U,$J,358.3,52509,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,52509,1,3,0)
 ;;=3^Delayed Ejaculation
 ;;^UTILITY(U,$J,358.3,52509,1,4,0)
 ;;=4^F52.32
 ;;^UTILITY(U,$J,358.3,52509,2)
 ;;=^331927
 ;;^UTILITY(U,$J,358.3,52510,0)
 ;;=F52.21^^237^2612^2
 ;;^UTILITY(U,$J,358.3,52510,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,52510,1,3,0)
 ;;=3^Erectile Disorder
 ;;^UTILITY(U,$J,358.3,52510,1,4,0)
 ;;=4^F52.21
 ;;^UTILITY(U,$J,358.3,52510,2)
 ;;=^5003620
 ;;^UTILITY(U,$J,358.3,52511,0)
 ;;=F52.31^^237^2612^3
 ;;^UTILITY(U,$J,358.3,52511,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,52511,1,3,0)
 ;;=3^Female Orgasmic Disorder
 ;;^UTILITY(U,$J,358.3,52511,1,4,0)
 ;;=4^F52.31
 ;;^UTILITY(U,$J,358.3,52511,2)
 ;;=^331926
 ;;^UTILITY(U,$J,358.3,52512,0)
 ;;=F52.22^^237^2612^4
 ;;^UTILITY(U,$J,358.3,52512,1,0)
 ;;=^358.31IA^4^2
