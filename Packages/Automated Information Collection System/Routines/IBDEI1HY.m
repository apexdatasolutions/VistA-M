IBDEI1HY ; ; 20-MAY-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;OCT 15, 2014
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,26868,2)
 ;;=Laryngotracheitis, Acute^269869
 ;;^UTILITY(U,$J,358.3,26869,0)
 ;;=380.22^^161^1657^32
 ;;^UTILITY(U,$J,358.3,26869,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,26869,1,3,0)
 ;;=3^380.22
 ;;^UTILITY(U,$J,358.3,26869,1,4,0)
 ;;=4^Otitis Externa
 ;;^UTILITY(U,$J,358.3,26869,2)
 ;;=Otitis Externa^269352
 ;;^UTILITY(U,$J,358.3,26870,0)
 ;;=382.9^^161^1657^33
 ;;^UTILITY(U,$J,358.3,26870,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,26870,1,3,0)
 ;;=3^382.9
 ;;^UTILITY(U,$J,358.3,26870,1,4,0)
 ;;=4^Otitis Media
 ;;^UTILITY(U,$J,358.3,26870,2)
 ;;=Otitis Media^123967
 ;;^UTILITY(U,$J,358.3,26871,0)
 ;;=462.^^161^1657^34
 ;;^UTILITY(U,$J,358.3,26871,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,26871,1,3,0)
 ;;=3^462.
 ;;^UTILITY(U,$J,358.3,26871,1,4,0)
 ;;=4^Pharyngitis
 ;;^UTILITY(U,$J,358.3,26871,2)
 ;;=Pharyngitis^2653
 ;;^UTILITY(U,$J,358.3,26872,0)
 ;;=461.9^^161^1657^63
 ;;^UTILITY(U,$J,358.3,26872,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,26872,1,3,0)
 ;;=3^461.9
 ;;^UTILITY(U,$J,358.3,26872,1,4,0)
 ;;=4^Sinusitis, Acute
 ;;^UTILITY(U,$J,358.3,26872,2)
 ;;=Sinusitis, Acute^259080
 ;;^UTILITY(U,$J,358.3,26873,0)
 ;;=473.9^^161^1657^64
 ;;^UTILITY(U,$J,358.3,26873,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,26873,1,3,0)
 ;;=3^473.9
 ;;^UTILITY(U,$J,358.3,26873,1,4,0)
 ;;=4^Sinusitis, Chronic
 ;;^UTILITY(U,$J,358.3,26873,2)
 ;;=Sinusitis, Chronic^123985
 ;;^UTILITY(U,$J,358.3,26874,0)
 ;;=463.^^161^1657^68
 ;;^UTILITY(U,$J,358.3,26874,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,26874,1,3,0)
 ;;=3^463.
 ;;^UTILITY(U,$J,358.3,26874,1,4,0)
 ;;=4^Tonsillitis, Acute
 ;;^UTILITY(U,$J,358.3,26874,2)
 ;;=Tonsillitis, Acute^2695
 ;;^UTILITY(U,$J,358.3,26875,0)
 ;;=465.9^^161^1657^69
 ;;^UTILITY(U,$J,358.3,26875,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,26875,1,3,0)
 ;;=3^465.9
 ;;^UTILITY(U,$J,358.3,26875,1,4,0)
 ;;=4^URI
 ;;^UTILITY(U,$J,358.3,26875,2)
 ;;=URI^269878
 ;;^UTILITY(U,$J,358.3,26876,0)
 ;;=478.30^^161^1657^72
 ;;^UTILITY(U,$J,358.3,26876,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,26876,1,3,0)
 ;;=3^478.30
 ;;^UTILITY(U,$J,358.3,26876,1,4,0)
 ;;=4^Vocal Cord Paralysis
 ;;^UTILITY(U,$J,358.3,26876,2)
 ;;=Vocal Cord Paralysis^127133
 ;;^UTILITY(U,$J,358.3,26877,0)
 ;;=018.90^^161^1657^27
 ;;^UTILITY(U,$J,358.3,26877,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,26877,1,3,0)
 ;;=3^018.90
 ;;^UTILITY(U,$J,358.3,26877,1,4,0)
 ;;=4^Miliary TB
 ;;^UTILITY(U,$J,358.3,26877,2)
 ;;=^122716
 ;;^UTILITY(U,$J,358.3,26878,0)
 ;;=137.0^^161^1657^31
 ;;^UTILITY(U,$J,358.3,26878,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,26878,1,3,0)
 ;;=3^137.0
 ;;^UTILITY(U,$J,358.3,26878,1,4,0)
 ;;=4^Old TB
 ;;^UTILITY(U,$J,358.3,26878,2)
 ;;=Late Effect of TB^266974
 ;;^UTILITY(U,$J,358.3,26879,0)
 ;;=010.00^^161^1657^61
 ;;^UTILITY(U,$J,358.3,26879,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,26879,1,3,0)
 ;;=3^010.00
 ;;^UTILITY(U,$J,358.3,26879,1,4,0)
 ;;=4^Primary TB Infection
 ;;^UTILITY(U,$J,358.3,26879,2)
 ;;=^265990
 ;;^UTILITY(U,$J,358.3,26880,0)
 ;;=011.90^^161^1657^67
 ;;^UTILITY(U,$J,358.3,26880,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,26880,1,3,0)
 ;;=3^011.90
 ;;^UTILITY(U,$J,358.3,26880,1,4,0)
 ;;=4^TB, Active
 ;;^UTILITY(U,$J,358.3,26880,2)
 ;;=TB, Active^122756
 ;;^UTILITY(U,$J,358.3,26881,0)
 ;;=010.10^^161^1657^66
 ;;^UTILITY(U,$J,358.3,26881,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,26881,1,3,0)
 ;;=3^010.10
 ;;^UTILITY(U,$J,358.3,26881,1,4,0)
 ;;=4^TB Pleurisy
 ;;^UTILITY(U,$J,358.3,26881,2)
 ;;=TB Pleurisy^265999
 ;;^UTILITY(U,$J,358.3,26882,0)
 ;;=491.22^^161^1657^10