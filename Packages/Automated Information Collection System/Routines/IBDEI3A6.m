IBDEI3A6 ; ; 19-NOV-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,55130,1,4,0)
 ;;=4^Z77.123
 ;;^UTILITY(U,$J,358.3,55130,2)
 ;;=^5063321
 ;;^UTILITY(U,$J,358.3,55131,0)
 ;;=Z77.122^^256^2776^68
 ;;^UTILITY(U,$J,358.3,55131,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,55131,1,3,0)
 ;;=3^Noise Contact/Exposure
 ;;^UTILITY(U,$J,358.3,55131,1,4,0)
 ;;=4^Z77.122
 ;;^UTILITY(U,$J,358.3,55131,2)
 ;;=^5063320
 ;;^UTILITY(U,$J,358.3,55132,0)
 ;;=Z77.118^^256^2776^19
 ;;^UTILITY(U,$J,358.3,55132,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,55132,1,3,0)
 ;;=3^Environmental Pollution Contact/Exposure
 ;;^UTILITY(U,$J,358.3,55132,1,4,0)
 ;;=4^Z77.118
 ;;^UTILITY(U,$J,358.3,55132,2)
 ;;=^5063317
 ;;^UTILITY(U,$J,358.3,55133,0)
 ;;=Z77.9^^256^2776^54
 ;;^UTILITY(U,$J,358.3,55133,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,55133,1,3,0)
 ;;=3^Health Hazard Contact/Exposure
 ;;^UTILITY(U,$J,358.3,55133,1,4,0)
 ;;=4^Z77.9
 ;;^UTILITY(U,$J,358.3,55133,2)
 ;;=^5063326
 ;;^UTILITY(U,$J,358.3,55134,0)
 ;;=Z77.22^^256^2776^18
 ;;^UTILITY(U,$J,358.3,55134,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,55134,1,3,0)
 ;;=3^Environmental Exposure Tobacco Smoke/Second-Hand Smoke
 ;;^UTILITY(U,$J,358.3,55134,1,4,0)
 ;;=4^Z77.22
 ;;^UTILITY(U,$J,358.3,55134,2)
 ;;=^5063324
 ;;^UTILITY(U,$J,358.3,55135,0)
 ;;=Z80.0^^256^2776^35
 ;;^UTILITY(U,$J,358.3,55135,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,55135,1,3,0)
 ;;=3^Family Hx of Malig Neop of Digestive Organs
 ;;^UTILITY(U,$J,358.3,55135,1,4,0)
 ;;=4^Z80.0
 ;;^UTILITY(U,$J,358.3,55135,2)
 ;;=^5063344
 ;;^UTILITY(U,$J,358.3,55136,0)
 ;;=Z80.1^^256^2776^41
 ;;^UTILITY(U,$J,358.3,55136,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,55136,1,3,0)
 ;;=3^Family Hx of Malig Neop of Trachea,Bronc & Lung
 ;;^UTILITY(U,$J,358.3,55136,1,4,0)
 ;;=4^Z80.1
 ;;^UTILITY(U,$J,358.3,55136,2)
 ;;=^5063345
 ;;^UTILITY(U,$J,358.3,55137,0)
 ;;=Z80.3^^256^2776^34
 ;;^UTILITY(U,$J,358.3,55137,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,55137,1,3,0)
 ;;=3^Family Hx of Malig Neop of Breast
 ;;^UTILITY(U,$J,358.3,55137,1,4,0)
 ;;=4^Z80.3
 ;;^UTILITY(U,$J,358.3,55137,2)
 ;;=^5063347
 ;;^UTILITY(U,$J,358.3,55138,0)
 ;;=Z80.41^^256^2776^38
 ;;^UTILITY(U,$J,358.3,55138,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,55138,1,3,0)
 ;;=3^Family Hx of Malig Neop of Ovary
 ;;^UTILITY(U,$J,358.3,55138,1,4,0)
 ;;=4^Z80.41
 ;;^UTILITY(U,$J,358.3,55138,2)
 ;;=^5063348
 ;;^UTILITY(U,$J,358.3,55139,0)
 ;;=Z80.42^^256^2776^39
 ;;^UTILITY(U,$J,358.3,55139,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,55139,1,3,0)
 ;;=3^Family Hx of Malig Neop of Prostate
 ;;^UTILITY(U,$J,358.3,55139,1,4,0)
 ;;=4^Z80.42
 ;;^UTILITY(U,$J,358.3,55139,2)
 ;;=^5063349
 ;;^UTILITY(U,$J,358.3,55140,0)
 ;;=Z80.43^^256^2776^40
 ;;^UTILITY(U,$J,358.3,55140,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,55140,1,3,0)
 ;;=3^Family Hx of Malig Neop of Testis
 ;;^UTILITY(U,$J,358.3,55140,1,4,0)
 ;;=4^Z80.43
 ;;^UTILITY(U,$J,358.3,55140,2)
 ;;=^5063350
 ;;^UTILITY(U,$J,358.3,55141,0)
 ;;=Z80.6^^256^2776^32
 ;;^UTILITY(U,$J,358.3,55141,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,55141,1,3,0)
 ;;=3^Family Hx of Leukemia
 ;;^UTILITY(U,$J,358.3,55141,1,4,0)
 ;;=4^Z80.6
 ;;^UTILITY(U,$J,358.3,55141,2)
 ;;=^5063354
 ;;^UTILITY(U,$J,358.3,55142,0)
 ;;=Z80.8^^256^2776^37
 ;;^UTILITY(U,$J,358.3,55142,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,55142,1,3,0)
 ;;=3^Family Hx of Malig Neop of Organs/Systems
 ;;^UTILITY(U,$J,358.3,55142,1,4,0)
 ;;=4^Z80.8
 ;;^UTILITY(U,$J,358.3,55142,2)
 ;;=^5063356
 ;;^UTILITY(U,$J,358.3,55143,0)
 ;;=Z81.8^^256^2776^42
 ;;^UTILITY(U,$J,358.3,55143,1,0)
 ;;=^358.31IA^4^2
