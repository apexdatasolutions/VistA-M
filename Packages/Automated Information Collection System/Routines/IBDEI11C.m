IBDEI11C ; ; 20-MAY-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;OCT 15, 2014
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,18446,1,5,0)
 ;;=5^Hx Combat/Operational Stress
 ;;^UTILITY(U,$J,358.3,18446,2)
 ;;=^339674
 ;;^UTILITY(U,$J,358.3,18447,0)
 ;;=V60.1^^101^1055^20
 ;;^UTILITY(U,$J,358.3,18447,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,18447,1,2,0)
 ;;=2^V60.1
 ;;^UTILITY(U,$J,358.3,18447,1,5,0)
 ;;=5^Inadequate Housing
 ;;^UTILITY(U,$J,358.3,18447,2)
 ;;=^295540
 ;;^UTILITY(U,$J,358.3,18448,0)
 ;;=V62.84^^101^1055^49
 ;;^UTILITY(U,$J,358.3,18448,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,18448,1,2,0)
 ;;=2^V62.84
 ;;^UTILITY(U,$J,358.3,18448,1,5,0)
 ;;=5^Suicidal Ideation
 ;;^UTILITY(U,$J,358.3,18448,2)
 ;;=^332876
 ;;^UTILITY(U,$J,358.3,18449,0)
 ;;=V62.85^^101^1055^16
 ;;^UTILITY(U,$J,358.3,18449,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,18449,1,2,0)
 ;;=2^V62.85
 ;;^UTILITY(U,$J,358.3,18449,1,5,0)
 ;;=5^Homicidal Ideation
 ;;^UTILITY(U,$J,358.3,18449,2)
 ;;=^339690
 ;;^UTILITY(U,$J,358.3,18450,0)
 ;;=V58.61^^101^1055^23
 ;;^UTILITY(U,$J,358.3,18450,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,18450,1,2,0)
 ;;=2^V58.61
 ;;^UTILITY(U,$J,358.3,18450,1,5,0)
 ;;=5^L/T (Current) Anticoagulant Use
 ;;^UTILITY(U,$J,358.3,18450,2)
 ;;=^303459
 ;;^UTILITY(U,$J,358.3,18451,0)
 ;;=V58.62^^101^1055^22
 ;;^UTILITY(U,$J,358.3,18451,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,18451,1,2,0)
 ;;=2^V58.62
 ;;^UTILITY(U,$J,358.3,18451,1,5,0)
 ;;=5^L/T (Current) Antibiotics Use
 ;;^UTILITY(U,$J,358.3,18451,2)
 ;;=^321546
 ;;^UTILITY(U,$J,358.3,18452,0)
 ;;=V58.63^^101^1055^24
 ;;^UTILITY(U,$J,358.3,18452,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,18452,1,2,0)
 ;;=2^V58.63
 ;;^UTILITY(U,$J,358.3,18452,1,5,0)
 ;;=5^L/T (Current) Antiplts/Antithrmbtcs
 ;;^UTILITY(U,$J,358.3,18452,2)
 ;;=^329978
 ;;^UTILITY(U,$J,358.3,18453,0)
 ;;=V58.64^^101^1055^28
 ;;^UTILITY(U,$J,358.3,18453,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,18453,1,2,0)
 ;;=2^V58.64
 ;;^UTILITY(U,$J,358.3,18453,1,5,0)
 ;;=5^L/T (Current) NSAIDS Use
 ;;^UTILITY(U,$J,358.3,18453,2)
 ;;=^329979
 ;;^UTILITY(U,$J,358.3,18454,0)
 ;;=V58.65^^101^1055^30
 ;;^UTILITY(U,$J,358.3,18454,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,18454,1,2,0)
 ;;=2^V58.65
 ;;^UTILITY(U,$J,358.3,18454,1,5,0)
 ;;=5^L/T (Current) Steroids Use
 ;;^UTILITY(U,$J,358.3,18454,2)
 ;;=^329980
 ;;^UTILITY(U,$J,358.3,18455,0)
 ;;=V58.66^^101^1055^25
 ;;^UTILITY(U,$J,358.3,18455,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,18455,1,2,0)
 ;;=2^V58.66
 ;;^UTILITY(U,$J,358.3,18455,1,5,0)
 ;;=5^L/T (Current) Aspirin Use
 ;;^UTILITY(U,$J,358.3,18455,2)
 ;;=^331584
 ;;^UTILITY(U,$J,358.3,18456,0)
 ;;=V58.67^^101^1055^27
 ;;^UTILITY(U,$J,358.3,18456,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,18456,1,2,0)
 ;;=2^V58.67
 ;;^UTILITY(U,$J,358.3,18456,1,5,0)
 ;;=5^L/T (Current) Insulin Use
 ;;^UTILITY(U,$J,358.3,18456,2)
 ;;=^331585
 ;;^UTILITY(U,$J,358.3,18457,0)
 ;;=V58.68^^101^1055^26
 ;;^UTILITY(U,$J,358.3,18457,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,18457,1,2,0)
 ;;=2^V58.68
 ;;^UTILITY(U,$J,358.3,18457,1,5,0)
 ;;=5^L/T (Current) Bisphos Use
 ;;^UTILITY(U,$J,358.3,18457,2)
 ;;=^340624
 ;;^UTILITY(U,$J,358.3,18458,0)
 ;;=V58.69^^101^1055^29
 ;;^UTILITY(U,$J,358.3,18458,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,18458,1,2,0)
 ;;=2^V58.69
 ;;^UTILITY(U,$J,358.3,18458,1,5,0)
 ;;=5^L/T (Current) Other Meds Use
 ;;^UTILITY(U,$J,358.3,18458,2)
 ;;=^303460
 ;;^UTILITY(U,$J,358.3,18459,0)
 ;;=V58.83^^101^1055^50
 ;;^UTILITY(U,$J,358.3,18459,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,18459,1,2,0)
 ;;=2^V58.83
 ;;^UTILITY(U,$J,358.3,18459,1,5,0)
 ;;=5^Therapeutic Drug Monitoring