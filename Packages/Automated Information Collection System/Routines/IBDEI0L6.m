IBDEI0L6 ; ; 19-NOV-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,9594,1,3,0)
 ;;=3^Dementia w/o Behavioral Disturbance,Unspec
 ;;^UTILITY(U,$J,358.3,9594,1,4,0)
 ;;=4^F03.90
 ;;^UTILITY(U,$J,358.3,9594,2)
 ;;=^5003050
 ;;^UTILITY(U,$J,358.3,9595,0)
 ;;=G30.9^^65^624^1
 ;;^UTILITY(U,$J,358.3,9595,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,9595,1,3,0)
 ;;=3^Alzheimer's Disease,Unspec
 ;;^UTILITY(U,$J,358.3,9595,1,4,0)
 ;;=4^G30.9
 ;;^UTILITY(U,$J,358.3,9595,2)
 ;;=^5003808
 ;;^UTILITY(U,$J,358.3,9596,0)
 ;;=R41.3^^65^624^2
 ;;^UTILITY(U,$J,358.3,9596,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,9596,1,3,0)
 ;;=3^Amnesia,Other
 ;;^UTILITY(U,$J,358.3,9596,1,4,0)
 ;;=4^R41.3
 ;;^UTILITY(U,$J,358.3,9596,2)
 ;;=^5019439
 ;;^UTILITY(U,$J,358.3,9597,0)
 ;;=G47.61^^65^625^3
 ;;^UTILITY(U,$J,358.3,9597,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,9597,1,3,0)
 ;;=3^Periodic Limb Movement Disorder
 ;;^UTILITY(U,$J,358.3,9597,1,4,0)
 ;;=4^G47.61
 ;;^UTILITY(U,$J,358.3,9597,2)
 ;;=^5003987
 ;;^UTILITY(U,$J,358.3,9598,0)
 ;;=G25.81^^65^625^4
 ;;^UTILITY(U,$J,358.3,9598,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,9598,1,3,0)
 ;;=3^Restless Legs Syndrome
 ;;^UTILITY(U,$J,358.3,9598,1,4,0)
 ;;=4^G25.81
 ;;^UTILITY(U,$J,358.3,9598,2)
 ;;=^5003801
 ;;^UTILITY(U,$J,358.3,9599,0)
 ;;=G47.419^^65^625^2
 ;;^UTILITY(U,$J,358.3,9599,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,9599,1,3,0)
 ;;=3^Narcolepsy w/o Cataplexy
 ;;^UTILITY(U,$J,358.3,9599,1,4,0)
 ;;=4^G47.419
 ;;^UTILITY(U,$J,358.3,9599,2)
 ;;=^5003982
 ;;^UTILITY(U,$J,358.3,9600,0)
 ;;=G47.9^^65^625^6
 ;;^UTILITY(U,$J,358.3,9600,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,9600,1,3,0)
 ;;=3^Sleep Disorder,Unspec
 ;;^UTILITY(U,$J,358.3,9600,1,4,0)
 ;;=4^G47.9
 ;;^UTILITY(U,$J,358.3,9600,2)
 ;;=^5003990
 ;;^UTILITY(U,$J,358.3,9601,0)
 ;;=G47.10^^65^625^1
 ;;^UTILITY(U,$J,358.3,9601,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,9601,1,3,0)
 ;;=3^Hypersomnia,Unspec
 ;;^UTILITY(U,$J,358.3,9601,1,4,0)
 ;;=4^G47.10
 ;;^UTILITY(U,$J,358.3,9601,2)
 ;;=^332926
 ;;^UTILITY(U,$J,358.3,9602,0)
 ;;=G47.30^^65^625^5
 ;;^UTILITY(U,$J,358.3,9602,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,9602,1,3,0)
 ;;=3^Sleep Apnea,Unspec
 ;;^UTILITY(U,$J,358.3,9602,1,4,0)
 ;;=4^G47.30
 ;;^UTILITY(U,$J,358.3,9602,2)
 ;;=^5003977
 ;;^UTILITY(U,$J,358.3,9603,0)
 ;;=G47.8^^65^625^7
 ;;^UTILITY(U,$J,358.3,9603,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,9603,1,3,0)
 ;;=3^Sleep Disorders,Other
 ;;^UTILITY(U,$J,358.3,9603,1,4,0)
 ;;=4^G47.8
 ;;^UTILITY(U,$J,358.3,9603,2)
 ;;=^5003989
 ;;^UTILITY(U,$J,358.3,9604,0)
 ;;=Z13.850^^65^626^2
 ;;^UTILITY(U,$J,358.3,9604,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,9604,1,3,0)
 ;;=3^Traumatic Brain Injury Screening
 ;;^UTILITY(U,$J,358.3,9604,1,4,0)
 ;;=4^Z13.850
 ;;^UTILITY(U,$J,358.3,9604,2)
 ;;=^5062717
 ;;^UTILITY(U,$J,358.3,9605,0)
 ;;=Z13.858^^65^626^1
 ;;^UTILITY(U,$J,358.3,9605,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,9605,1,3,0)
 ;;=3^Nervous System Disorder Screening
 ;;^UTILITY(U,$J,358.3,9605,1,4,0)
 ;;=4^Z13.858
 ;;^UTILITY(U,$J,358.3,9605,2)
 ;;=^5062718
 ;;^UTILITY(U,$J,358.3,9606,0)
 ;;=E53.8^^65^627^5
 ;;^UTILITY(U,$J,358.3,9606,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,9606,1,3,0)
 ;;=3^Deficiency of Vitamin B Group,Other Spec
 ;;^UTILITY(U,$J,358.3,9606,1,4,0)
 ;;=4^E53.8
 ;;^UTILITY(U,$J,358.3,9606,2)
 ;;=^5002797
 ;;^UTILITY(U,$J,358.3,9607,0)
 ;;=F44.4^^65^627^3
 ;;^UTILITY(U,$J,358.3,9607,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,9607,1,3,0)
 ;;=3^Conversion Disorder w/ Motor Symptom/Deficit
 ;;^UTILITY(U,$J,358.3,9607,1,4,0)
 ;;=4^F44.4
 ;;^UTILITY(U,$J,358.3,9607,2)
 ;;=^5003579
