IBDEI32T ; ; 19-NOV-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,51596,0)
 ;;=M19.90^^225^2501^11
 ;;^UTILITY(U,$J,358.3,51596,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,51596,1,3,0)
 ;;=3^Osteoarthritis,Site Unspec
 ;;^UTILITY(U,$J,358.3,51596,1,4,0)
 ;;=4^M19.90
 ;;^UTILITY(U,$J,358.3,51596,2)
 ;;=^5010853
 ;;^UTILITY(U,$J,358.3,51597,0)
 ;;=M47.812^^225^2501^16
 ;;^UTILITY(U,$J,358.3,51597,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,51597,1,3,0)
 ;;=3^Spondylosis w/o Myelopathy/Radiculopathy,Cervical Region
 ;;^UTILITY(U,$J,358.3,51597,1,4,0)
 ;;=4^M47.812
 ;;^UTILITY(U,$J,358.3,51597,2)
 ;;=^5012069
 ;;^UTILITY(U,$J,358.3,51598,0)
 ;;=M47.12^^225^2501^15
 ;;^UTILITY(U,$J,358.3,51598,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,51598,1,3,0)
 ;;=3^Spondylosis w/ Myelopathy,Cervical Region NEC
 ;;^UTILITY(U,$J,358.3,51598,1,4,0)
 ;;=4^M47.12
 ;;^UTILITY(U,$J,358.3,51598,2)
 ;;=^5012052
 ;;^UTILITY(U,$J,358.3,51599,0)
 ;;=M50.30^^225^2501^7
 ;;^UTILITY(U,$J,358.3,51599,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,51599,1,3,0)
 ;;=3^Cervical Disc Degeneration,Unspec Cervical Region NEC
 ;;^UTILITY(U,$J,358.3,51599,1,4,0)
 ;;=4^M50.30
 ;;^UTILITY(U,$J,358.3,51599,2)
 ;;=^5012227
 ;;^UTILITY(U,$J,358.3,51600,0)
 ;;=M48.02^^225^2501^14
 ;;^UTILITY(U,$J,358.3,51600,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,51600,1,3,0)
 ;;=3^Spinal Stenosis,Cervical Region
 ;;^UTILITY(U,$J,358.3,51600,1,4,0)
 ;;=4^M48.02
 ;;^UTILITY(U,$J,358.3,51600,2)
 ;;=^5012089
 ;;^UTILITY(U,$J,358.3,51601,0)
 ;;=M54.2^^225^2501^8
 ;;^UTILITY(U,$J,358.3,51601,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,51601,1,3,0)
 ;;=3^Cervicalgia
 ;;^UTILITY(U,$J,358.3,51601,1,4,0)
 ;;=4^M54.2
 ;;^UTILITY(U,$J,358.3,51601,2)
 ;;=^5012304
 ;;^UTILITY(U,$J,358.3,51602,0)
 ;;=R53.81^^225^2501^10
 ;;^UTILITY(U,$J,358.3,51602,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,51602,1,3,0)
 ;;=3^Malaise NEC
 ;;^UTILITY(U,$J,358.3,51602,1,4,0)
 ;;=4^R53.81
 ;;^UTILITY(U,$J,358.3,51602,2)
 ;;=^5019518
 ;;^UTILITY(U,$J,358.3,51603,0)
 ;;=Z89.511^^225^2501^2
 ;;^UTILITY(U,$J,358.3,51603,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,51603,1,3,0)
 ;;=3^Acquired Absence of Right Leg Below Knee
 ;;^UTILITY(U,$J,358.3,51603,1,4,0)
 ;;=4^Z89.511
 ;;^UTILITY(U,$J,358.3,51603,2)
 ;;=^5063566
 ;;^UTILITY(U,$J,358.3,51604,0)
 ;;=Z89.512^^225^2501^1
 ;;^UTILITY(U,$J,358.3,51604,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,51604,1,3,0)
 ;;=3^Acquired Absence of Left Leg Below Knee
 ;;^UTILITY(U,$J,358.3,51604,1,4,0)
 ;;=4^Z89.512
 ;;^UTILITY(U,$J,358.3,51604,2)
 ;;=^5063567
 ;;^UTILITY(U,$J,358.3,51605,0)
 ;;=Z46.89^^225^2501^9
 ;;^UTILITY(U,$J,358.3,51605,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,51605,1,3,0)
 ;;=3^Fitting/Adjustment of Devices NEC
 ;;^UTILITY(U,$J,358.3,51605,1,4,0)
 ;;=4^Z46.89
 ;;^UTILITY(U,$J,358.3,51605,2)
 ;;=^5063023
 ;;^UTILITY(U,$J,358.3,51606,0)
 ;;=M75.01^^225^2501^4
 ;;^UTILITY(U,$J,358.3,51606,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,51606,1,3,0)
 ;;=3^Adhesive Capsulitis,Right Shoulder
 ;;^UTILITY(U,$J,358.3,51606,1,4,0)
 ;;=4^M75.01
 ;;^UTILITY(U,$J,358.3,51606,2)
 ;;=^5013239
 ;;^UTILITY(U,$J,358.3,51607,0)
 ;;=M75.02^^225^2501^3
 ;;^UTILITY(U,$J,358.3,51607,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,51607,1,3,0)
 ;;=3^Adhesive Capsulitis,Left Shoulder
 ;;^UTILITY(U,$J,358.3,51607,1,4,0)
 ;;=4^M75.02
 ;;^UTILITY(U,$J,358.3,51607,2)
 ;;=^5013240
 ;;^UTILITY(U,$J,358.3,51608,0)
 ;;=M54.12^^225^2501^12
 ;;^UTILITY(U,$J,358.3,51608,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,51608,1,3,0)
 ;;=3^Radiculopathy,Cervical Region
 ;;^UTILITY(U,$J,358.3,51608,1,4,0)
 ;;=4^M54.12
