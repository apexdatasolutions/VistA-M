IBDEI17B ; ; 20-MAY-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;OCT 15, 2014
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,21522,1,3,0)
 ;;=3^Stenosis,w/o Neurogenic Claudication
 ;;^UTILITY(U,$J,358.3,21522,1,4,0)
 ;;=4^724.02
 ;;^UTILITY(U,$J,358.3,21522,2)
 ;;=^272505
 ;;^UTILITY(U,$J,358.3,21523,0)
 ;;=847.2^^121^1288^12
 ;;^UTILITY(U,$J,358.3,21523,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,21523,1,3,0)
 ;;=3^Sprain 
 ;;^UTILITY(U,$J,358.3,21523,1,4,0)
 ;;=4^847.2
 ;;^UTILITY(U,$J,358.3,21523,2)
 ;;=^274527
 ;;^UTILITY(U,$J,358.3,21524,0)
 ;;=846.0^^121^1288^7
 ;;^UTILITY(U,$J,358.3,21524,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,21524,1,3,0)
 ;;=3^Lumbosacral Sprain
 ;;^UTILITY(U,$J,358.3,21524,1,4,0)
 ;;=4^846.0
 ;;^UTILITY(U,$J,358.3,21524,2)
 ;;=^274519
 ;;^UTILITY(U,$J,358.3,21525,0)
 ;;=846.1^^121^1288^9
 ;;^UTILITY(U,$J,358.3,21525,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,21525,1,3,0)
 ;;=3^Sacroiliac Sprain
 ;;^UTILITY(U,$J,358.3,21525,1,4,0)
 ;;=4^846.1
 ;;^UTILITY(U,$J,358.3,21525,2)
 ;;=^274520
 ;;^UTILITY(U,$J,358.3,21526,0)
 ;;=722.93^^121^1288^3
 ;;^UTILITY(U,$J,358.3,21526,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,21526,1,3,0)
 ;;=3^Discitis
 ;;^UTILITY(U,$J,358.3,21526,1,4,0)
 ;;=4^722.93
 ;;^UTILITY(U,$J,358.3,21526,2)
 ;;=^272495
 ;;^UTILITY(U,$J,358.3,21527,0)
 ;;=724.03^^121^1288^13
 ;;^UTILITY(U,$J,358.3,21527,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,21527,1,3,0)
 ;;=3^Stenosis w/ Neurogenic Claud
 ;;^UTILITY(U,$J,358.3,21527,1,4,0)
 ;;=4^724.03
 ;;^UTILITY(U,$J,358.3,21527,2)
 ;;=^339622
 ;;^UTILITY(U,$J,358.3,21528,0)
 ;;=724.79^^121^1289^1
 ;;^UTILITY(U,$J,358.3,21528,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,21528,1,3,0)
 ;;=3^Coccydogynia
 ;;^UTILITY(U,$J,358.3,21528,1,4,0)
 ;;=4^724.79
 ;;^UTILITY(U,$J,358.3,21528,2)
 ;;=^272516
 ;;^UTILITY(U,$J,358.3,21529,0)
 ;;=839.41^^121^1289^2
 ;;^UTILITY(U,$J,358.3,21529,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,21529,1,3,0)
 ;;=3^Dislocation Coccyx
 ;;^UTILITY(U,$J,358.3,21529,1,4,0)
 ;;=4^839.41
 ;;^UTILITY(U,$J,358.3,21529,2)
 ;;=^274444
 ;;^UTILITY(U,$J,358.3,21530,0)
 ;;=839.42^^121^1289^3
 ;;^UTILITY(U,$J,358.3,21530,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,21530,1,3,0)
 ;;=3^Dislocation Sacrum
 ;;^UTILITY(U,$J,358.3,21530,1,4,0)
 ;;=4^839.42
 ;;^UTILITY(U,$J,358.3,21530,2)
 ;;=^274447
 ;;^UTILITY(U,$J,358.3,21531,0)
 ;;=805.6^^121^1289^4
 ;;^UTILITY(U,$J,358.3,21531,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,21531,1,3,0)
 ;;=3^Fracture
 ;;^UTILITY(U,$J,358.3,21531,1,4,0)
 ;;=4^805.6
 ;;^UTILITY(U,$J,358.3,21531,2)
 ;;=^273893
 ;;^UTILITY(U,$J,358.3,21532,0)
 ;;=720.2^^121^1289^5
 ;;^UTILITY(U,$J,358.3,21532,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,21532,1,3,0)
 ;;=3^Sacroilitis
 ;;^UTILITY(U,$J,358.3,21532,1,4,0)
 ;;=4^720.2
 ;;^UTILITY(U,$J,358.3,21532,2)
 ;;=^259118
 ;;^UTILITY(U,$J,358.3,21533,0)
 ;;=733.42^^121^1290^1
 ;;^UTILITY(U,$J,358.3,21533,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,21533,1,3,0)
 ;;=3^Avascular Necrosis
 ;;^UTILITY(U,$J,358.3,21533,1,4,0)
 ;;=4^733.42
 ;;^UTILITY(U,$J,358.3,21533,2)
 ;;=^10798
 ;;^UTILITY(U,$J,358.3,21534,0)
 ;;=726.5^^121^1290^2
 ;;^UTILITY(U,$J,358.3,21534,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,21534,1,3,0)
 ;;=3^Bursitis
 ;;^UTILITY(U,$J,358.3,21534,1,4,0)
 ;;=4^726.5
 ;;^UTILITY(U,$J,358.3,21534,2)
 ;;=^272537
 ;;^UTILITY(U,$J,358.3,21535,0)
 ;;=924.01^^121^1290^3
 ;;^UTILITY(U,$J,358.3,21535,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,21535,1,3,0)
 ;;=3^Contusion
 ;;^UTILITY(U,$J,358.3,21535,1,4,0)
 ;;=4^924.01
 ;;^UTILITY(U,$J,358.3,21535,2)
 ;;=^275416
 ;;^UTILITY(U,$J,358.3,21536,0)
 ;;=835.03^^121^1290^4
 ;;^UTILITY(U,$J,358.3,21536,1,0)
 ;;=^358.31IA^4^2