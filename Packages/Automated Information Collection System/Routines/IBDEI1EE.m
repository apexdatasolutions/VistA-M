IBDEI1EE ; ; 20-MAY-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;OCT 15, 2014
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,25069,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,25069,1,4,0)
 ;;=4^V10.43
 ;;^UTILITY(U,$J,358.3,25069,1,5,0)
 ;;=5^H/O Ovarian Cancer
 ;;^UTILITY(U,$J,358.3,25069,2)
 ;;=^295221
 ;;^UTILITY(U,$J,358.3,25070,0)
 ;;=V10.46^^145^1535^70
 ;;^UTILITY(U,$J,358.3,25070,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,25070,1,4,0)
 ;;=4^V10.46
 ;;^UTILITY(U,$J,358.3,25070,1,5,0)
 ;;=5^H/O Prostate Cancer
 ;;^UTILITY(U,$J,358.3,25070,2)
 ;;=^295224
 ;;^UTILITY(U,$J,358.3,25071,0)
 ;;=V10.06^^145^1535^71
 ;;^UTILITY(U,$J,358.3,25071,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,25071,1,4,0)
 ;;=4^V10.06
 ;;^UTILITY(U,$J,358.3,25071,1,5,0)
 ;;=5^H/O Rectal/Anal Cancer
 ;;^UTILITY(U,$J,358.3,25071,2)
 ;;=^295208
 ;;^UTILITY(U,$J,358.3,25072,0)
 ;;=V10.52^^145^1535^72
 ;;^UTILITY(U,$J,358.3,25072,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,25072,1,4,0)
 ;;=4^V10.52
 ;;^UTILITY(U,$J,358.3,25072,1,5,0)
 ;;=5^H/O Renal Cancer
 ;;^UTILITY(U,$J,358.3,25072,2)
 ;;=H/o Renal Cancer^295229
 ;;^UTILITY(U,$J,358.3,25073,0)
 ;;=V10.04^^145^1535^74
 ;;^UTILITY(U,$J,358.3,25073,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,25073,1,4,0)
 ;;=4^V10.04
 ;;^UTILITY(U,$J,358.3,25073,1,5,0)
 ;;=5^H/O Stomach Cancer
 ;;^UTILITY(U,$J,358.3,25073,2)
 ;;=^295206
 ;;^UTILITY(U,$J,358.3,25074,0)
 ;;=V10.47^^145^1535^75
 ;;^UTILITY(U,$J,358.3,25074,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,25074,1,4,0)
 ;;=4^V10.47
 ;;^UTILITY(U,$J,358.3,25074,1,5,0)
 ;;=5^H/O Testicular Cancer
 ;;^UTILITY(U,$J,358.3,25074,2)
 ;;=^295225
 ;;^UTILITY(U,$J,358.3,25075,0)
 ;;=V10.83^^145^1535^73
 ;;^UTILITY(U,$J,358.3,25075,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,25075,1,4,0)
 ;;=4^V10.83
 ;;^UTILITY(U,$J,358.3,25075,1,5,0)
 ;;=5^H/O Skin Cancer
 ;;^UTILITY(U,$J,358.3,25075,2)
 ;;=H/O Skin Cancer^295241
 ;;^UTILITY(U,$J,358.3,25076,0)
 ;;=285.22^^145^1535^9
 ;;^UTILITY(U,$J,358.3,25076,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,25076,1,4,0)
 ;;=4^285.22
 ;;^UTILITY(U,$J,358.3,25076,1,5,0)
 ;;=5^Anemia In Cancer
 ;;^UTILITY(U,$J,358.3,25076,2)
 ;;=^321978
 ;;^UTILITY(U,$J,358.3,25077,0)
 ;;=285.21^^145^1535^10
 ;;^UTILITY(U,$J,358.3,25077,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,25077,1,4,0)
 ;;=4^285.21
 ;;^UTILITY(U,$J,358.3,25077,1,5,0)
 ;;=5^Anemia In Renal Dis
 ;;^UTILITY(U,$J,358.3,25077,2)
 ;;=^321977
 ;;^UTILITY(U,$J,358.3,25078,0)
 ;;=285.29^^145^1535^11
 ;;^UTILITY(U,$J,358.3,25078,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,25078,1,4,0)
 ;;=4^285.29
 ;;^UTILITY(U,$J,358.3,25078,1,5,0)
 ;;=5^Anemia Of Chronic Dis
 ;;^UTILITY(U,$J,358.3,25078,2)
 ;;=^321979
 ;;^UTILITY(U,$J,358.3,25079,0)
 ;;=284.9^^145^1535^12
 ;;^UTILITY(U,$J,358.3,25079,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,25079,1,4,0)
 ;;=4^284.9
 ;;^UTILITY(U,$J,358.3,25079,1,5,0)
 ;;=5^Aplastic Anemia NOS
 ;;^UTILITY(U,$J,358.3,25079,2)
 ;;=^7020
 ;;^UTILITY(U,$J,358.3,25080,0)
 ;;=282.61^^145^1535^78
 ;;^UTILITY(U,$J,358.3,25080,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,25080,1,4,0)
 ;;=4^282.61
 ;;^UTILITY(U,$J,358.3,25080,1,5,0)
 ;;=5^Hemoglobin S Disease
 ;;^UTILITY(U,$J,358.3,25080,2)
 ;;=^267981
 ;;^UTILITY(U,$J,358.3,25081,0)
 ;;=282.7^^145^1535^77
 ;;^UTILITY(U,$J,358.3,25081,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,25081,1,4,0)
 ;;=4^282.7
 ;;^UTILITY(U,$J,358.3,25081,1,5,0)
 ;;=5^Hemoglobin C Disease
 ;;^UTILITY(U,$J,358.3,25081,2)
 ;;=^87629
 ;;^UTILITY(U,$J,358.3,25082,0)
 ;;=283.9^^145^1535^79
 ;;^UTILITY(U,$J,358.3,25082,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,25082,1,4,0)
 ;;=4^283.9
 ;;^UTILITY(U,$J,358.3,25082,1,5,0)
 ;;=5^Hemolytic Anemia,Acquired