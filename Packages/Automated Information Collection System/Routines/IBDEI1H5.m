IBDEI1H5 ; ; 19-NOV-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,24646,0)
 ;;=R10.33^^121^1221^174
 ;;^UTILITY(U,$J,358.3,24646,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,24646,1,3,0)
 ;;=3^Periumbilical Pain
 ;;^UTILITY(U,$J,358.3,24646,1,4,0)
 ;;=4^R10.33
 ;;^UTILITY(U,$J,358.3,24646,2)
 ;;=^5019213
 ;;^UTILITY(U,$J,358.3,24647,0)
 ;;=R10.31^^121^1221^196
 ;;^UTILITY(U,$J,358.3,24647,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,24647,1,3,0)
 ;;=3^RLQ Pain
 ;;^UTILITY(U,$J,358.3,24647,1,4,0)
 ;;=4^R10.31
 ;;^UTILITY(U,$J,358.3,24647,2)
 ;;=^5019211
 ;;^UTILITY(U,$J,358.3,24648,0)
 ;;=R10.13^^121^1221^77
 ;;^UTILITY(U,$J,358.3,24648,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,24648,1,3,0)
 ;;=3^Epigastric Pain
 ;;^UTILITY(U,$J,358.3,24648,1,4,0)
 ;;=4^R10.13
 ;;^UTILITY(U,$J,358.3,24648,2)
 ;;=^5019208
 ;;^UTILITY(U,$J,358.3,24649,0)
 ;;=R10.12^^121^1221^129
 ;;^UTILITY(U,$J,358.3,24649,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,24649,1,3,0)
 ;;=3^LUQ Pain
 ;;^UTILITY(U,$J,358.3,24649,1,4,0)
 ;;=4^R10.12
 ;;^UTILITY(U,$J,358.3,24649,2)
 ;;=^5019207
 ;;^UTILITY(U,$J,358.3,24650,0)
 ;;=R10.11^^121^1221^197
 ;;^UTILITY(U,$J,358.3,24650,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,24650,1,3,0)
 ;;=3^RUQ Pain
 ;;^UTILITY(U,$J,358.3,24650,1,4,0)
 ;;=4^R10.11
 ;;^UTILITY(U,$J,358.3,24650,2)
 ;;=^5019206
 ;;^UTILITY(U,$J,358.3,24651,0)
 ;;=Y95.^^121^1221^160
 ;;^UTILITY(U,$J,358.3,24651,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,24651,1,3,0)
 ;;=3^Nosocomial Condition
 ;;^UTILITY(U,$J,358.3,24651,1,4,0)
 ;;=4^Y95.
 ;;^UTILITY(U,$J,358.3,24651,2)
 ;;=^5062593
 ;;^UTILITY(U,$J,358.3,24652,0)
 ;;=Z91.14^^121^1221^159
 ;;^UTILITY(U,$J,358.3,24652,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,24652,1,3,0)
 ;;=3^Noncompliance w/ Medication Regimen
 ;;^UTILITY(U,$J,358.3,24652,1,4,0)
 ;;=4^Z91.14
 ;;^UTILITY(U,$J,358.3,24652,2)
 ;;=^5063616
 ;;^UTILITY(U,$J,358.3,24653,0)
 ;;=Z91.19^^121^1221^158
 ;;^UTILITY(U,$J,358.3,24653,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,24653,1,3,0)
 ;;=3^Noncompliance w/ Medical Treatment/Regimen
 ;;^UTILITY(U,$J,358.3,24653,1,4,0)
 ;;=4^Z91.19
 ;;^UTILITY(U,$J,358.3,24653,2)
 ;;=^5063618
 ;;^UTILITY(U,$J,358.3,24654,0)
 ;;=A41.9^^121^1221^202
 ;;^UTILITY(U,$J,358.3,24654,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,24654,1,3,0)
 ;;=3^Sepsis,Unspec Organism
 ;;^UTILITY(U,$J,358.3,24654,1,4,0)
 ;;=4^A41.9
 ;;^UTILITY(U,$J,358.3,24654,2)
 ;;=^5000214
 ;;^UTILITY(U,$J,358.3,24655,0)
 ;;=J69.0^^121^1221^21
 ;;^UTILITY(U,$J,358.3,24655,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,24655,1,3,0)
 ;;=3^Aspiration Pneumonia
 ;;^UTILITY(U,$J,358.3,24655,1,4,0)
 ;;=4^J69.0
 ;;^UTILITY(U,$J,358.3,24655,2)
 ;;=^5008288
 ;;^UTILITY(U,$J,358.3,24656,0)
 ;;=J69.1^^121^1221^182
 ;;^UTILITY(U,$J,358.3,24656,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,24656,1,3,0)
 ;;=3^Pneumonitis d/t Inhalation of Oils/Essences
 ;;^UTILITY(U,$J,358.3,24656,1,4,0)
 ;;=4^J69.1
 ;;^UTILITY(U,$J,358.3,24656,2)
 ;;=^95664
 ;;^UTILITY(U,$J,358.3,24657,0)
 ;;=J68.0^^121^1221^29
 ;;^UTILITY(U,$J,358.3,24657,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,24657,1,3,0)
 ;;=3^Bronchitis/Pneumonitis d/t Chemicals/Gases/Fumes/Vapors
 ;;^UTILITY(U,$J,358.3,24657,1,4,0)
 ;;=4^J68.0
 ;;^UTILITY(U,$J,358.3,24657,2)
 ;;=^5008281
 ;;^UTILITY(U,$J,358.3,24658,0)
 ;;=Z21.^^121^1222^.1
 ;;^UTILITY(U,$J,358.3,24658,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,24658,1,3,0)
 ;;=3^HIV+ Status (Asymptomatic)
 ;;^UTILITY(U,$J,358.3,24658,1,4,0)
 ;;=4^Z21.
 ;;^UTILITY(U,$J,358.3,24658,2)
 ;;=^5062777
 ;;^UTILITY(U,$J,358.3,24659,0)
 ;;=B20.^^121^1222^.5
 ;;^UTILITY(U,$J,358.3,24659,1,0)
 ;;=^358.31IA^4^2
