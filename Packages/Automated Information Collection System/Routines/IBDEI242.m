IBDEI242 ; ; 19-NOV-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,35444,0)
 ;;=81002^^164^1809^2^^^^1
 ;;^UTILITY(U,$J,358.3,35444,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,35444,1,2,0)
 ;;=2^81002
 ;;^UTILITY(U,$J,358.3,35444,1,3,0)
 ;;=3^URINALYSIS BY DIP STICK
 ;;^UTILITY(U,$J,358.3,35445,0)
 ;;=82948^^164^1809^1^^^^1
 ;;^UTILITY(U,$J,358.3,35445,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,35445,1,2,0)
 ;;=2^82948
 ;;^UTILITY(U,$J,358.3,35445,1,3,0)
 ;;=3^FINGERSTICK, GLUCOSE
 ;;^UTILITY(U,$J,358.3,35446,0)
 ;;=81025^^164^1809^3^^^^1
 ;;^UTILITY(U,$J,358.3,35446,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,35446,1,2,0)
 ;;=2^81025
 ;;^UTILITY(U,$J,358.3,35446,1,3,0)
 ;;=3^URINE PREGNANCY TEST BY DIPSTICK
 ;;^UTILITY(U,$J,358.3,35447,0)
 ;;=J1642^^164^1810^1^^^^1
 ;;^UTILITY(U,$J,358.3,35447,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,35447,1,2,0)
 ;;=2^J1642
 ;;^UTILITY(U,$J,358.3,35447,1,3,0)
 ;;=3^HEP LOCK FLUSH PER 10U
 ;;^UTILITY(U,$J,358.3,35448,0)
 ;;=A4670^^164^1811^1^^^^1
 ;;^UTILITY(U,$J,358.3,35448,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,35448,1,2,0)
 ;;=2^A4670
 ;;^UTILITY(U,$J,358.3,35448,1,3,0)
 ;;=3^AUTOMATIC BP MONITOR,DIAL
 ;;^UTILITY(U,$J,358.3,35449,0)
 ;;=3511F^^164^1811^3^^^^1
 ;;^UTILITY(U,$J,358.3,35449,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,35449,1,2,0)
 ;;=2^3511F
 ;;^UTILITY(U,$J,358.3,35449,1,3,0)
 ;;=3^CHLMYD/GONRH TSTS DOCD DONE
 ;;^UTILITY(U,$J,358.3,35450,0)
 ;;=S4989^^164^1811^4^^^^1
 ;;^UTILITY(U,$J,358.3,35450,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,35450,1,2,0)
 ;;=2^S4989
 ;;^UTILITY(U,$J,358.3,35450,1,3,0)
 ;;=3^CONTRACEPT IUD
 ;;^UTILITY(U,$J,358.3,35451,0)
 ;;=94760^^164^1811^5^^^^1
 ;;^UTILITY(U,$J,358.3,35451,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,35451,1,2,0)
 ;;=2^94760
 ;;^UTILITY(U,$J,358.3,35451,1,3,0)
 ;;=3^MEASURE BLOOD OXYGEN LEVEL
 ;;^UTILITY(U,$J,358.3,35452,0)
 ;;=99000^^164^1811^7^^^^1
 ;;^UTILITY(U,$J,358.3,35452,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,35452,1,2,0)
 ;;=2^99000
 ;;^UTILITY(U,$J,358.3,35452,1,3,0)
 ;;=3^SPECIMEN HANDLING OFFICE-LAB
 ;;^UTILITY(U,$J,358.3,35453,0)
 ;;=2010F^^164^1811^8^^^^1
 ;;^UTILITY(U,$J,358.3,35453,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,35453,1,2,0)
 ;;=2^2010F
 ;;^UTILITY(U,$J,358.3,35453,1,3,0)
 ;;=3^VITAL SIGNS RECORDED
 ;;^UTILITY(U,$J,358.3,35454,0)
 ;;=2001F^^164^1811^9^^^^1
 ;;^UTILITY(U,$J,358.3,35454,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,35454,1,2,0)
 ;;=2^2001F
 ;;^UTILITY(U,$J,358.3,35454,1,3,0)
 ;;=3^WEIGHT RECORD
 ;;^UTILITY(U,$J,358.3,35455,0)
 ;;=99450^^164^1811^2^^^^1
 ;;^UTILITY(U,$J,358.3,35455,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,35455,1,2,0)
 ;;=2^99450
 ;;^UTILITY(U,$J,358.3,35455,1,3,0)
 ;;=3^BASIC LIFE/DISABILITY EXAM
 ;;^UTILITY(U,$J,358.3,35456,0)
 ;;=99075^^164^1811^6^^^^1
 ;;^UTILITY(U,$J,358.3,35456,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,35456,1,2,0)
 ;;=2^99075
 ;;^UTILITY(U,$J,358.3,35456,1,3,0)
 ;;=3^MEDICAL TESTIMONY
 ;;^UTILITY(U,$J,358.3,35457,0)
 ;;=59200^^164^1812^1^^^^1
 ;;^UTILITY(U,$J,358.3,35457,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,35457,1,2,0)
 ;;=2^59200
 ;;^UTILITY(U,$J,358.3,35457,1,3,0)
 ;;=3^INSERT CERVICAL DILATOR
 ;;^UTILITY(U,$J,358.3,35458,0)
 ;;=59400^^164^1812^2^^^^1
 ;;^UTILITY(U,$J,358.3,35458,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,35458,1,2,0)
 ;;=2^59400
 ;;^UTILITY(U,$J,358.3,35458,1,3,0)
 ;;=3^OBSTETRICAL CARE
 ;;^UTILITY(U,$J,358.3,35459,0)
 ;;=59425^^164^1812^3^^^^1
 ;;^UTILITY(U,$J,358.3,35459,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,35459,1,2,0)
 ;;=2^59425
 ;;^UTILITY(U,$J,358.3,35459,1,3,0)
 ;;=3^ANTEPARTUM CARE ONLY-4-6 VISITS
