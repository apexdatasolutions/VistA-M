IBDEI0LR ; ; 20-MAY-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;OCT 15, 2014
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,10651,1,4,0)
 ;;=4^719.46
 ;;^UTILITY(U,$J,358.3,10651,1,5,0)
 ;;=5^Pain in Knee
 ;;^UTILITY(U,$J,358.3,10651,2)
 ;;=^272403
 ;;^UTILITY(U,$J,358.3,10652,0)
 ;;=729.1^^64^688^28
 ;;^UTILITY(U,$J,358.3,10652,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,10652,1,4,0)
 ;;=4^729.1
 ;;^UTILITY(U,$J,358.3,10652,1,5,0)
 ;;=5^Fibromyalgia
 ;;^UTILITY(U,$J,358.3,10652,2)
 ;;=^80160
 ;;^UTILITY(U,$J,358.3,10653,0)
 ;;=723.1^^64^688^7
 ;;^UTILITY(U,$J,358.3,10653,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,10653,1,4,0)
 ;;=4^723.1
 ;;^UTILITY(U,$J,358.3,10653,1,5,0)
 ;;=5^Cervicalgia
 ;;^UTILITY(U,$J,358.3,10653,2)
 ;;=^21917
 ;;^UTILITY(U,$J,358.3,10654,0)
 ;;=729.2^^64^688^37
 ;;^UTILITY(U,$J,358.3,10654,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,10654,1,4,0)
 ;;=4^729.2
 ;;^UTILITY(U,$J,358.3,10654,1,5,0)
 ;;=5^Neuropathic Pain
 ;;^UTILITY(U,$J,358.3,10654,2)
 ;;=Neuropathic Pain^82605
 ;;^UTILITY(U,$J,358.3,10655,0)
 ;;=719.49^^64^688^52
 ;;^UTILITY(U,$J,358.3,10655,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,10655,1,4,0)
 ;;=4^719.49
 ;;^UTILITY(U,$J,358.3,10655,1,5,0)
 ;;=5^Pain in Multiple Joints
 ;;^UTILITY(U,$J,358.3,10655,2)
 ;;=^276885
 ;;^UTILITY(U,$J,358.3,10656,0)
 ;;=719.41^^64^688^53
 ;;^UTILITY(U,$J,358.3,10656,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,10656,1,4,0)
 ;;=4^719.41
 ;;^UTILITY(U,$J,358.3,10656,1,5,0)
 ;;=5^Pain in Shoulder
 ;;^UTILITY(U,$J,358.3,10656,2)
 ;;=^272398
 ;;^UTILITY(U,$J,358.3,10657,0)
 ;;=719.43^^64^688^55
 ;;^UTILITY(U,$J,358.3,10657,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,10657,1,4,0)
 ;;=4^719.43
 ;;^UTILITY(U,$J,358.3,10657,1,5,0)
 ;;=5^Pain in Wrist
 ;;^UTILITY(U,$J,358.3,10657,2)
 ;;=^272400
 ;;^UTILITY(U,$J,358.3,10658,0)
 ;;=721.0^^64^688^6
 ;;^UTILITY(U,$J,358.3,10658,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,10658,1,4,0)
 ;;=4^721.0
 ;;^UTILITY(U,$J,358.3,10658,1,5,0)
 ;;=5^Cervical Spondylosis
 ;;^UTILITY(U,$J,358.3,10658,2)
 ;;=^272452
 ;;^UTILITY(U,$J,358.3,10659,0)
 ;;=721.3^^64^688^18
 ;;^UTILITY(U,$J,358.3,10659,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,10659,1,4,0)
 ;;=4^721.3
 ;;^UTILITY(U,$J,358.3,10659,1,5,0)
 ;;=5^DJD of Lumbar Spine
 ;;^UTILITY(U,$J,358.3,10659,2)
 ;;=DJD of Lumbar Spine^272456
 ;;^UTILITY(U,$J,358.3,10660,0)
 ;;=721.2^^64^688^22
 ;;^UTILITY(U,$J,358.3,10660,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,10660,1,4,0)
 ;;=4^721.2
 ;;^UTILITY(U,$J,358.3,10660,1,5,0)
 ;;=5^DJD of Thoracic Spine
 ;;^UTILITY(U,$J,358.3,10660,2)
 ;;=^272455
 ;;^UTILITY(U,$J,358.3,10661,0)
 ;;=715.94^^64^688^15
 ;;^UTILITY(U,$J,358.3,10661,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,10661,1,4,0)
 ;;=4^715.94
 ;;^UTILITY(U,$J,358.3,10661,1,5,0)
 ;;=5^DJD of Hand
 ;;^UTILITY(U,$J,358.3,10661,2)
 ;;=^272165
 ;;^UTILITY(U,$J,358.3,10662,0)
 ;;=715.95^^64^688^16
 ;;^UTILITY(U,$J,358.3,10662,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,10662,1,4,0)
 ;;=4^715.95
 ;;^UTILITY(U,$J,358.3,10662,1,5,0)
 ;;=5^DJD of Hip
 ;;^UTILITY(U,$J,358.3,10662,2)
 ;;=DJD of Hip^272166
 ;;^UTILITY(U,$J,358.3,10663,0)
 ;;=715.96^^64^688^17
 ;;^UTILITY(U,$J,358.3,10663,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,10663,1,4,0)
 ;;=4^715.96
 ;;^UTILITY(U,$J,358.3,10663,1,5,0)
 ;;=5^DJD of Knee
 ;;^UTILITY(U,$J,358.3,10663,2)
 ;;=DJD of Knee^272167
 ;;^UTILITY(U,$J,358.3,10664,0)
 ;;=715.91^^64^688^20
 ;;^UTILITY(U,$J,358.3,10664,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,10664,1,4,0)
 ;;=4^715.91
 ;;^UTILITY(U,$J,358.3,10664,1,5,0)
 ;;=5^DJD of Shoulder
 ;;^UTILITY(U,$J,358.3,10664,2)
 ;;=DJD of Shoulder^272162
 ;;^UTILITY(U,$J,358.3,10665,0)
 ;;=721.90^^64^688^21