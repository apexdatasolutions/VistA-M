IBDEI0SW ; ; 20-MAY-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;OCT 15, 2014
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,14244,1,2,0)
 ;;=2^TIB/Per Revasc,Ea Addl Vessel
 ;;^UTILITY(U,$J,358.3,14244,1,4,0)
 ;;=4^37232
 ;;^UTILITY(U,$J,358.3,14245,0)
 ;;=37233^^86^880^47^^^^1
 ;;^UTILITY(U,$J,358.3,14245,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,14245,1,2,0)
 ;;=2^TIB/Per Revasc w/ Ather,Ea Addl Vessel
 ;;^UTILITY(U,$J,358.3,14245,1,4,0)
 ;;=4^37233
 ;;^UTILITY(U,$J,358.3,14246,0)
 ;;=37234^^86^880^50^^^^1
 ;;^UTILITY(U,$J,358.3,14246,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,14246,1,2,0)
 ;;=2^TIB/Per Revasc w/ Stent,Ea Addl Vessel
 ;;^UTILITY(U,$J,358.3,14246,1,4,0)
 ;;=4^37234
 ;;^UTILITY(U,$J,358.3,14247,0)
 ;;=37235^^86^880^49^^^^1
 ;;^UTILITY(U,$J,358.3,14247,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,14247,1,2,0)
 ;;=2^TIB/Per Revasc w/ Stent&Ather,Add Vessel
 ;;^UTILITY(U,$J,358.3,14247,1,4,0)
 ;;=4^37235
 ;;^UTILITY(U,$J,358.3,14248,0)
 ;;=37250^^86^880^22^^^^1
 ;;^UTILITY(U,$J,358.3,14248,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,14248,1,2,0)
 ;;=2^Intravas US,Non/Cor,Diag/Ther Interv
 ;;^UTILITY(U,$J,358.3,14248,1,4,0)
 ;;=4^37250
 ;;^UTILITY(U,$J,358.3,14249,0)
 ;;=75605^^86^880^3^^^^1
 ;;^UTILITY(U,$J,358.3,14249,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,14249,1,2,0)
 ;;=2^AO Thoracic w/ Serialography
 ;;^UTILITY(U,$J,358.3,14249,1,4,0)
 ;;=4^75605
 ;;^UTILITY(U,$J,358.3,14250,0)
 ;;=37619^^86^880^24^^^^1
 ;;^UTILITY(U,$J,358.3,14250,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,14250,1,2,0)
 ;;=2^Open Inferior Vena Cava Filter Plmnt
 ;;^UTILITY(U,$J,358.3,14250,1,4,0)
 ;;=4^37619
 ;;^UTILITY(U,$J,358.3,14251,0)
 ;;=75625^^86^880^2^^^^1
 ;;^UTILITY(U,$J,358.3,14251,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,14251,1,2,0)
 ;;=2^AO Abd w/o Runoff
 ;;^UTILITY(U,$J,358.3,14251,1,4,0)
 ;;=4^75625
 ;;^UTILITY(U,$J,358.3,14252,0)
 ;;=75630^^86^880^1^^^^1
 ;;^UTILITY(U,$J,358.3,14252,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,14252,1,2,0)
 ;;=2^AO Abd w/ Bilat Iliacs
 ;;^UTILITY(U,$J,358.3,14252,1,4,0)
 ;;=4^75630
 ;;^UTILITY(U,$J,358.3,14253,0)
 ;;=75635^^86^880^8^^^^1
 ;;^UTILITY(U,$J,358.3,14253,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,14253,1,2,0)
 ;;=2^CT Angio Abd Art w/ Contrast
 ;;^UTILITY(U,$J,358.3,14253,1,4,0)
 ;;=4^75635
 ;;^UTILITY(U,$J,358.3,14254,0)
 ;;=75658^^86^880^6^^^^1
 ;;^UTILITY(U,$J,358.3,14254,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,14254,1,2,0)
 ;;=2^Angiography,Brachial,Retrograd,Rad S&I
 ;;^UTILITY(U,$J,358.3,14254,1,4,0)
 ;;=4^75658
 ;;^UTILITY(U,$J,358.3,14255,0)
 ;;=75705^^86^880^42^^^^1
 ;;^UTILITY(U,$J,358.3,14255,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,14255,1,2,0)
 ;;=2^Spinal Selective
 ;;^UTILITY(U,$J,358.3,14255,1,4,0)
 ;;=4^75705
 ;;^UTILITY(U,$J,358.3,14256,0)
 ;;=75710^^86^880^61^^^^1
 ;;^UTILITY(U,$J,358.3,14256,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,14256,1,2,0)
 ;;=2^UE/LE Unilat
 ;;^UTILITY(U,$J,358.3,14256,1,4,0)
 ;;=4^75710
 ;;^UTILITY(U,$J,358.3,14257,0)
 ;;=75716^^86^880^60^^^^1
 ;;^UTILITY(U,$J,358.3,14257,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,14257,1,2,0)
 ;;=2^UE/LE Bilat
 ;;^UTILITY(U,$J,358.3,14257,1,4,0)
 ;;=4^75716
 ;;^UTILITY(U,$J,358.3,14258,0)
 ;;=75726^^86^880^66^^^^1
 ;;^UTILITY(U,$J,358.3,14258,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,14258,1,2,0)
 ;;=2^Visceral Selective
 ;;^UTILITY(U,$J,358.3,14258,1,4,0)
 ;;=4^75726
 ;;^UTILITY(U,$J,358.3,14259,0)
 ;;=75731^^86^880^5^^^^1
 ;;^UTILITY(U,$J,358.3,14259,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,14259,1,2,0)
 ;;=2^Adrenal Unilat Selective
 ;;^UTILITY(U,$J,358.3,14259,1,4,0)
 ;;=4^75731
 ;;^UTILITY(U,$J,358.3,14260,0)
 ;;=75733^^86^880^4^^^^1