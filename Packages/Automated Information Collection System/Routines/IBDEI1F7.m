IBDEI1F7 ; ; 20-MAY-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;OCT 15, 2014
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,25462,1,4,0)
 ;;=4^787.1
 ;;^UTILITY(U,$J,358.3,25462,1,5,0)
 ;;=5^Heartburn
 ;;^UTILITY(U,$J,358.3,25462,2)
 ;;=Heartburn^54996
 ;;^UTILITY(U,$J,358.3,25463,0)
 ;;=786.59^^145^1540^36
 ;;^UTILITY(U,$J,358.3,25463,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,25463,1,4,0)
 ;;=4^786.59
 ;;^UTILITY(U,$J,358.3,25463,1,5,0)
 ;;=5^Chest Pain
 ;;^UTILITY(U,$J,358.3,25463,2)
 ;;=Chest Pain^87384
 ;;^UTILITY(U,$J,358.3,25464,0)
 ;;=787.02^^145^1540^114
 ;;^UTILITY(U,$J,358.3,25464,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,25464,1,4,0)
 ;;=4^787.02
 ;;^UTILITY(U,$J,358.3,25464,1,5,0)
 ;;=5^Nausea Alone
 ;;^UTILITY(U,$J,358.3,25464,2)
 ;;=Nausea Alone^81639
 ;;^UTILITY(U,$J,358.3,25465,0)
 ;;=787.01^^145^1540^113
 ;;^UTILITY(U,$J,358.3,25465,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,25465,1,4,0)
 ;;=4^787.01
 ;;^UTILITY(U,$J,358.3,25465,1,5,0)
 ;;=5^Nausea & vomiting
 ;;^UTILITY(U,$J,358.3,25465,2)
 ;;=nausea and vomiting^81644
 ;;^UTILITY(U,$J,358.3,25466,0)
 ;;=787.03^^145^1540^155
 ;;^UTILITY(U,$J,358.3,25466,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,25466,1,4,0)
 ;;=4^787.03
 ;;^UTILITY(U,$J,358.3,25466,1,5,0)
 ;;=5^Vomiting Alone
 ;;^UTILITY(U,$J,358.3,25466,2)
 ;;=Vomiting Alone^127237
 ;;^UTILITY(U,$J,358.3,25467,0)
 ;;=784.8^^145^1540^29
 ;;^UTILITY(U,$J,358.3,25467,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,25467,1,4,0)
 ;;=4^784.8
 ;;^UTILITY(U,$J,358.3,25467,1,5,0)
 ;;=5^Bleeding from throat
 ;;^UTILITY(U,$J,358.3,25467,2)
 ;;=^273371
 ;;^UTILITY(U,$J,358.3,25468,0)
 ;;=525.9^^145^1540^47
 ;;^UTILITY(U,$J,358.3,25468,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,25468,1,4,0)
 ;;=4^525.9
 ;;^UTILITY(U,$J,358.3,25468,1,5,0)
 ;;=5^Dental Pain
 ;;^UTILITY(U,$J,358.3,25468,2)
 ;;=Dental Pain^123871
 ;;^UTILITY(U,$J,358.3,25469,0)
 ;;=784.7^^145^1540^69
 ;;^UTILITY(U,$J,358.3,25469,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,25469,1,4,0)
 ;;=4^784.7
 ;;^UTILITY(U,$J,358.3,25469,1,5,0)
 ;;=5^Epistaxis
 ;;^UTILITY(U,$J,358.3,25469,2)
 ;;=Epistaxis^41658
 ;;^UTILITY(U,$J,358.3,25470,0)
 ;;=784.0^^145^1540^79
 ;;^UTILITY(U,$J,358.3,25470,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,25470,1,4,0)
 ;;=4^784.0
 ;;^UTILITY(U,$J,358.3,25470,1,5,0)
 ;;=5^Headache
 ;;^UTILITY(U,$J,358.3,25470,2)
 ;;=Headache^54133
 ;;^UTILITY(U,$J,358.3,25471,0)
 ;;=784.2^^145^1540^108
 ;;^UTILITY(U,$J,358.3,25471,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,25471,1,4,0)
 ;;=4^784.2
 ;;^UTILITY(U,$J,358.3,25471,1,5,0)
 ;;=5^Mass or Lump in Head/Neck
 ;;^UTILITY(U,$J,358.3,25471,2)
 ;;=Mass or Lump in Head/Neck^273367
 ;;^UTILITY(U,$J,358.3,25472,0)
 ;;=784.1^^145^1540^149
 ;;^UTILITY(U,$J,358.3,25472,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,25472,1,4,0)
 ;;=4^784.1
 ;;^UTILITY(U,$J,358.3,25472,1,5,0)
 ;;=5^Throat Pain
 ;;^UTILITY(U,$J,358.3,25472,2)
 ;;=Throat Pain^276881
 ;;^UTILITY(U,$J,358.3,25473,0)
 ;;=781.0^^145^1540^12
 ;;^UTILITY(U,$J,358.3,25473,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,25473,1,4,0)
 ;;=4^781.0
 ;;^UTILITY(U,$J,358.3,25473,1,5,0)
 ;;=5^Abnormal Involuntary Movement
 ;;^UTILITY(U,$J,358.3,25473,2)
 ;;=Abnormal Involuntary MMovement^23827
 ;;^UTILITY(U,$J,358.3,25474,0)
 ;;=781.2^^145^1540^16
 ;;^UTILITY(U,$J,358.3,25474,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,25474,1,4,0)
 ;;=4^781.2
 ;;^UTILITY(U,$J,358.3,25474,1,5,0)
 ;;=5^Abnormality of Gait
 ;;^UTILITY(U,$J,358.3,25474,2)
 ;;=^48820
 ;;^UTILITY(U,$J,358.3,25475,0)
 ;;=305.00^^145^1540^19
 ;;^UTILITY(U,$J,358.3,25475,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,25475,1,4,0)
 ;;=4^305.00
 ;;^UTILITY(U,$J,358.3,25475,1,5,0)
 ;;=5^Alcohol Abuse, unsp