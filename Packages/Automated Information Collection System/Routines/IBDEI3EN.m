IBDEI3EN ; ; 19-NOV-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,57253,1,4,0)
 ;;=4^T81.31XA
 ;;^UTILITY(U,$J,358.3,57253,2)
 ;;=^5054470
 ;;^UTILITY(U,$J,358.3,57254,0)
 ;;=T81.4XXA^^264^2854^4
 ;;^UTILITY(U,$J,358.3,57254,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,57254,1,3,0)
 ;;=3^Infection Following Procedure,Init Encntr
 ;;^UTILITY(U,$J,358.3,57254,1,4,0)
 ;;=4^T81.4XXA
 ;;^UTILITY(U,$J,358.3,57254,2)
 ;;=^5054479
 ;;^UTILITY(U,$J,358.3,57255,0)
 ;;=T81.83XA^^264^2854^5
 ;;^UTILITY(U,$J,358.3,57255,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,57255,1,3,0)
 ;;=3^Persistent Postprocedural Fistual,Init Encntr
 ;;^UTILITY(U,$J,358.3,57255,1,4,0)
 ;;=4^T81.83XA
 ;;^UTILITY(U,$J,358.3,57255,2)
 ;;=^5054659
 ;;^UTILITY(U,$J,358.3,57256,0)
 ;;=T81.89XA^^264^2854^1
 ;;^UTILITY(U,$J,358.3,57256,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,57256,1,3,0)
 ;;=3^Compl of Procedure NEC,Init Encntr
 ;;^UTILITY(U,$J,358.3,57256,1,4,0)
 ;;=4^T81.89XA
 ;;^UTILITY(U,$J,358.3,57256,2)
 ;;=^5054662
 ;;^UTILITY(U,$J,358.3,57257,0)
 ;;=C34.11^^264^2855^13
 ;;^UTILITY(U,$J,358.3,57257,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,57257,1,3,0)
 ;;=3^Malig Neop,Upper Lobe,Rt Bronchus/Lung
 ;;^UTILITY(U,$J,358.3,57257,1,4,0)
 ;;=4^C34.11
 ;;^UTILITY(U,$J,358.3,57257,2)
 ;;=^5000961
 ;;^UTILITY(U,$J,358.3,57258,0)
 ;;=C34.12^^264^2855^12
 ;;^UTILITY(U,$J,358.3,57258,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,57258,1,3,0)
 ;;=3^Malig Neop,Upper Lobe,Lt Bronchus/Lung
 ;;^UTILITY(U,$J,358.3,57258,1,4,0)
 ;;=4^C34.12
 ;;^UTILITY(U,$J,358.3,57258,2)
 ;;=^5000962
 ;;^UTILITY(U,$J,358.3,57259,0)
 ;;=C34.2^^264^2855^7
 ;;^UTILITY(U,$J,358.3,57259,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,57259,1,3,0)
 ;;=3^Malig Neop,Middle Lobe,Lung
 ;;^UTILITY(U,$J,358.3,57259,1,4,0)
 ;;=4^C34.2
 ;;^UTILITY(U,$J,358.3,57259,2)
 ;;=^267137
 ;;^UTILITY(U,$J,358.3,57260,0)
 ;;=C34.31^^264^2855^6
 ;;^UTILITY(U,$J,358.3,57260,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,57260,1,3,0)
 ;;=3^Malig Neop,Lower Lobe,Rt Bronchus/Lung
 ;;^UTILITY(U,$J,358.3,57260,1,4,0)
 ;;=4^C34.31
 ;;^UTILITY(U,$J,358.3,57260,2)
 ;;=^5133321
 ;;^UTILITY(U,$J,358.3,57261,0)
 ;;=C34.32^^264^2855^5
 ;;^UTILITY(U,$J,358.3,57261,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,57261,1,3,0)
 ;;=3^Malig Neop,Lower Lobe,Lt Bronch/Lung
 ;;^UTILITY(U,$J,358.3,57261,1,4,0)
 ;;=4^C34.32
 ;;^UTILITY(U,$J,358.3,57261,2)
 ;;=^5133322
 ;;^UTILITY(U,$J,358.3,57262,0)
 ;;=C34.81^^264^2855^9
 ;;^UTILITY(U,$J,358.3,57262,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,57262,1,3,0)
 ;;=3^Malig Neop,Overlapping,Rt Bronchus/Lung
 ;;^UTILITY(U,$J,358.3,57262,1,4,0)
 ;;=4^C34.81
 ;;^UTILITY(U,$J,358.3,57262,2)
 ;;=^5000964
 ;;^UTILITY(U,$J,358.3,57263,0)
 ;;=C34.82^^264^2855^8
 ;;^UTILITY(U,$J,358.3,57263,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,57263,1,3,0)
 ;;=3^Malig Neop,Overlapping,Lt Bronch/Lung
 ;;^UTILITY(U,$J,358.3,57263,1,4,0)
 ;;=4^C34.82
 ;;^UTILITY(U,$J,358.3,57263,2)
 ;;=^5000965
 ;;^UTILITY(U,$J,358.3,57264,0)
 ;;=C34.91^^264^2855^11
 ;;^UTILITY(U,$J,358.3,57264,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,57264,1,3,0)
 ;;=3^Malig Neop,Unspec Part,Rt Bronchus/Lung
 ;;^UTILITY(U,$J,358.3,57264,1,4,0)
 ;;=4^C34.91
 ;;^UTILITY(U,$J,358.3,57264,2)
 ;;=^5000967
 ;;^UTILITY(U,$J,358.3,57265,0)
 ;;=C34.92^^264^2855^10
 ;;^UTILITY(U,$J,358.3,57265,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,57265,1,3,0)
 ;;=3^Malig Neop,Unspec Part,Lt Bronchus/Lung
 ;;^UTILITY(U,$J,358.3,57265,1,4,0)
 ;;=4^C34.92
 ;;^UTILITY(U,$J,358.3,57265,2)
 ;;=^5000968
 ;;^UTILITY(U,$J,358.3,57266,0)
 ;;=J20.9^^264^2855^3
 ;;^UTILITY(U,$J,358.3,57266,1,0)
 ;;=^358.31IA^4^2
