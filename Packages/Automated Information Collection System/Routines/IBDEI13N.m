IBDEI13N ; ; 20-MAY-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;OCT 15, 2014
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,19588,1,3,0)
 ;;=3^EEG, Awake and Drowsy
 ;;^UTILITY(U,$J,358.3,19589,0)
 ;;=95819^^109^1164^4^^^^1
 ;;^UTILITY(U,$J,358.3,19589,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,19589,1,2,0)
 ;;=2^95819
 ;;^UTILITY(U,$J,358.3,19589,1,3,0)
 ;;=3^EEG, Awake and Asleep
 ;;^UTILITY(U,$J,358.3,19590,0)
 ;;=95822^^109^1164^5^^^^1
 ;;^UTILITY(U,$J,358.3,19590,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,19590,1,2,0)
 ;;=2^95822
 ;;^UTILITY(U,$J,358.3,19590,1,3,0)
 ;;=3^EEG, Sleep or Coma only
 ;;^UTILITY(U,$J,358.3,19591,0)
 ;;=95827^^109^1164^6^^^^1
 ;;^UTILITY(U,$J,358.3,19591,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,19591,1,2,0)
 ;;=2^95827
 ;;^UTILITY(U,$J,358.3,19591,1,3,0)
 ;;=3^EEG, all night monitor
 ;;^UTILITY(U,$J,358.3,19592,0)
 ;;=95812^^109^1164^1^^^^1
 ;;^UTILITY(U,$J,358.3,19592,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,19592,1,2,0)
 ;;=2^95812
 ;;^UTILITY(U,$J,358.3,19592,1,3,0)
 ;;=3^EEG, 41-60 minutes
 ;;^UTILITY(U,$J,358.3,19593,0)
 ;;=95813^^109^1164^2^^^^1
 ;;^UTILITY(U,$J,358.3,19593,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,19593,1,2,0)
 ;;=2^95813
 ;;^UTILITY(U,$J,358.3,19593,1,3,0)
 ;;=3^EEG, Over 1 hour
 ;;^UTILITY(U,$J,358.3,19594,0)
 ;;=95957^^109^1164^7^^^^1
 ;;^UTILITY(U,$J,358.3,19594,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,19594,1,2,0)
 ;;=2^95957
 ;;^UTILITY(U,$J,358.3,19594,1,3,0)
 ;;=3^EEG, Digital Analysis
 ;;^UTILITY(U,$J,358.3,19595,0)
 ;;=95951^^109^1164^10^^^^1
 ;;^UTILITY(U,$J,358.3,19595,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,19595,1,2,0)
 ;;=2^95951
 ;;^UTILITY(U,$J,358.3,19595,1,3,0)
 ;;=3^EEG Monitoring/Videorecord
 ;;^UTILITY(U,$J,358.3,19596,0)
 ;;=95806^^109^1165^9^^^^1
 ;;^UTILITY(U,$J,358.3,19596,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,19596,1,2,0)
 ;;=2^95806
 ;;^UTILITY(U,$J,358.3,19596,1,3,0)
 ;;=3^Sleep Study/Unattended
 ;;^UTILITY(U,$J,358.3,19597,0)
 ;;=95807^^109^1165^8^^^^1
 ;;^UTILITY(U,$J,358.3,19597,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,19597,1,2,0)
 ;;=2^95807
 ;;^UTILITY(U,$J,358.3,19597,1,3,0)
 ;;=3^Sleep Study in Hosp/Clinic
 ;;^UTILITY(U,$J,358.3,19598,0)
 ;;=95805^^109^1165^3^^^^1
 ;;^UTILITY(U,$J,358.3,19598,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,19598,1,2,0)
 ;;=2^95805
 ;;^UTILITY(U,$J,358.3,19598,1,3,0)
 ;;=3^Multiple Sleep Latency Test
 ;;^UTILITY(U,$J,358.3,19599,0)
 ;;=95808^^109^1165^4^^^^1
 ;;^UTILITY(U,$J,358.3,19599,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,19599,1,2,0)
 ;;=2^95808
 ;;^UTILITY(U,$J,358.3,19599,1,3,0)
 ;;=3^Polysomnography,1-3
 ;;^UTILITY(U,$J,358.3,19600,0)
 ;;=G8839^^109^1165^7^^^^1
 ;;^UTILITY(U,$J,358.3,19600,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,19600,1,2,0)
 ;;=2^G8839
 ;;^UTILITY(U,$J,358.3,19600,1,3,0)
 ;;=3^Sleep Apnea Assess
 ;;^UTILITY(U,$J,358.3,19601,0)
 ;;=92585^^109^1165^2^^^^1
 ;;^UTILITY(U,$J,358.3,19601,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,19601,1,2,0)
 ;;=2^92585
 ;;^UTILITY(U,$J,358.3,19601,1,3,0)
 ;;=3^Auditor Evoke Potent,Compre
 ;;^UTILITY(U,$J,358.3,19602,0)
 ;;=95803^^109^1165^1^^^^1
 ;;^UTILITY(U,$J,358.3,19602,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,19602,1,2,0)
 ;;=2^95803
 ;;^UTILITY(U,$J,358.3,19602,1,3,0)
 ;;=3^Actigraphy Testing
 ;;^UTILITY(U,$J,358.3,19603,0)
 ;;=95810^^109^1165^5^^^^1
 ;;^UTILITY(U,$J,358.3,19603,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,19603,1,2,0)
 ;;=2^95810
 ;;^UTILITY(U,$J,358.3,19603,1,3,0)
 ;;=3^Polysomnography w/ 4+ Parameters         
 ;;^UTILITY(U,$J,358.3,19604,0)
 ;;=95811^^109^1165^6^^^^1
 ;;^UTILITY(U,$J,358.3,19604,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,19604,1,2,0)
 ;;=2^95811