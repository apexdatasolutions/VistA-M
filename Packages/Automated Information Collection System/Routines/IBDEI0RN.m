IBDEI0RN ; ; 20-MAY-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;OCT 15, 2014
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,13614,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,13614,1,4,0)
 ;;=4^788.20
 ;;^UTILITY(U,$J,358.3,13614,1,5,0)
 ;;=5^Urinary Retention
 ;;^UTILITY(U,$J,358.3,13614,2)
 ;;=^295812
 ;;^UTILITY(U,$J,358.3,13615,0)
 ;;=584.9^^83^857^16
 ;;^UTILITY(U,$J,358.3,13615,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,13615,1,4,0)
 ;;=4^584.9
 ;;^UTILITY(U,$J,358.3,13615,1,5,0)
 ;;=5^Renal Failure, Acute
 ;;^UTILITY(U,$J,358.3,13615,2)
 ;;=^67114
 ;;^UTILITY(U,$J,358.3,13616,0)
 ;;=595.9^^83^857^4
 ;;^UTILITY(U,$J,358.3,13616,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,13616,1,4,0)
 ;;=4^595.9
 ;;^UTILITY(U,$J,358.3,13616,1,5,0)
 ;;=5^Cystitis
 ;;^UTILITY(U,$J,358.3,13616,2)
 ;;=^30304
 ;;^UTILITY(U,$J,358.3,13617,0)
 ;;=592.0^^83^857^8
 ;;^UTILITY(U,$J,358.3,13617,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,13617,1,4,0)
 ;;=4^592.0
 ;;^UTILITY(U,$J,358.3,13617,1,5,0)
 ;;=5^Kidney Stone
 ;;^UTILITY(U,$J,358.3,13617,2)
 ;;=^67056
 ;;^UTILITY(U,$J,358.3,13618,0)
 ;;=600.00^^83^857^2
 ;;^UTILITY(U,$J,358.3,13618,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,13618,1,4,0)
 ;;=4^600.00
 ;;^UTILITY(U,$J,358.3,13618,1,5,0)
 ;;=5^BPH w/o Urinary Obstruc
 ;;^UTILITY(U,$J,358.3,13618,2)
 ;;=^329932
 ;;^UTILITY(U,$J,358.3,13619,0)
 ;;=585.6^^83^857^6
 ;;^UTILITY(U,$J,358.3,13619,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,13619,1,4,0)
 ;;=4^585.6
 ;;^UTILITY(U,$J,358.3,13619,1,5,0)
 ;;=5^End Stage Renal Disease
 ;;^UTILITY(U,$J,358.3,13619,2)
 ;;=^303986
 ;;^UTILITY(U,$J,358.3,13620,0)
 ;;=600.01^^83^857^1
 ;;^UTILITY(U,$J,358.3,13620,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,13620,1,4,0)
 ;;=4^600.01
 ;;^UTILITY(U,$J,358.3,13620,1,5,0)
 ;;=5^BPH w/ Urinary Obstruc
 ;;^UTILITY(U,$J,358.3,13620,2)
 ;;=^334256
 ;;^UTILITY(U,$J,358.3,13621,0)
 ;;=590.01^^83^857^14
 ;;^UTILITY(U,$J,358.3,13621,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,13621,1,4,0)
 ;;=4^590.01
 ;;^UTILITY(U,$J,358.3,13621,1,5,0)
 ;;=5^Pyelonephritis, Chr w/ Med Necr
 ;;^UTILITY(U,$J,358.3,13621,2)
 ;;=^270368
 ;;^UTILITY(U,$J,358.3,13622,0)
 ;;=18^1^83^858^19^Head, Neck and Lung ^1^1
 ;;^UTILITY(U,$J,358.3,13622,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,13622,1,4,0)
 ;;=4
 ;;^UTILITY(U,$J,358.3,13622,1,5,0)
 ;;=5
 ;;^UTILITY(U,$J,358.3,13623,0)
 ;;=6^1^83^858^6^Gastrointestinal Cancer^1
 ;;^UTILITY(U,$J,358.3,13623,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,13623,1,4,0)
 ;;=4
 ;;^UTILITY(U,$J,358.3,13623,1,5,0)
 ;;=5
 ;;^UTILITY(U,$J,358.3,13624,0)
 ;;=1^1^83^858^1^Carcinoma In Situ^1^1
 ;;^UTILITY(U,$J,358.3,13624,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,13624,1,4,0)
 ;;=4
 ;;^UTILITY(U,$J,358.3,13624,1,5,0)
 ;;=5
 ;;^UTILITY(U,$J,358.3,13625,0)
 ;;=27^1^83^858^28^Genitourinary/Reproductive^1^1
 ;;^UTILITY(U,$J,358.3,13625,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,13625,1,4,0)
 ;;=4
 ;;^UTILITY(U,$J,358.3,13625,1,5,0)
 ;;=5
 ;;^UTILITY(U,$J,358.3,13626,0)
 ;;=38^1^83^858^41^Metastatic Sites^1^1
 ;;^UTILITY(U,$J,358.3,13626,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,13626,1,4,0)
 ;;=4
 ;;^UTILITY(U,$J,358.3,13626,1,5,0)
 ;;=5
 ;;^UTILITY(U,$J,358.3,13627,0)
 ;;=50^1^83^858^47^Past History of Cancer^1
 ;;^UTILITY(U,$J,358.3,13627,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,13627,1,4,0)
 ;;=4
 ;;^UTILITY(U,$J,358.3,13627,1,5,0)
 ;;=5
 ;;^UTILITY(U,$J,358.3,13628,0)
 ;;=233.7^^83^858^2
 ;;^UTILITY(U,$J,358.3,13628,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,13628,1,4,0)
 ;;=4^233.7
 ;;^UTILITY(U,$J,358.3,13628,1,5,0)
 ;;=5^  Bladder
 ;;^UTILITY(U,$J,358.3,13628,2)
 ;;=^267742
 ;;^UTILITY(U,$J,358.3,13629,0)
 ;;=233.0^^83^858^3