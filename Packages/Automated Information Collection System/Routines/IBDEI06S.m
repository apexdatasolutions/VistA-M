IBDEI06S ; ; 20-FEB-2013
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;FEB 20, 2013
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,8882,2)
 ;;=Warfarin/Coumadin Use^303459
 ;;^UTILITY(U,$J,358.3,8883,0)
 ;;=282.49^^74^633^134
 ;;^UTILITY(U,$J,358.3,8883,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,8883,1,4,0)
 ;;=4^282.49
 ;;^UTILITY(U,$J,358.3,8883,1,5,0)
 ;;=5^Thalassemia Nec
 ;;^UTILITY(U,$J,358.3,8883,2)
 ;;=^329910
 ;;^UTILITY(U,$J,358.3,8884,0)
 ;;=289.89^^74^633^29
 ;;^UTILITY(U,$J,358.3,8884,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,8884,1,4,0)
 ;;=4^289.89
 ;;^UTILITY(U,$J,358.3,8884,1,5,0)
 ;;=5^Blood Diseases Nec
 ;;^UTILITY(U,$J,358.3,8884,2)
 ;;=^329887
 ;;^UTILITY(U,$J,358.3,8885,0)
 ;;=238.79^^74^633^100
 ;;^UTILITY(U,$J,358.3,8885,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,8885,1,4,0)
 ;;=4^238.79
 ;;^UTILITY(U,$J,358.3,8885,1,5,0)
 ;;=5^Lymph/Hematpoitc Tis Nec
 ;;^UTILITY(U,$J,358.3,8885,2)
 ;;=^334033
 ;;^UTILITY(U,$J,358.3,8886,0)
 ;;=287.30^^74^633^120
 ;;^UTILITY(U,$J,358.3,8886,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,8886,1,4,0)
 ;;=4^287.30
 ;;^UTILITY(U,$J,358.3,8886,1,5,0)
 ;;=5^Primary Thrombocytopenia
 ;;^UTILITY(U,$J,358.3,8886,2)
 ;;=^332841
 ;;^UTILITY(U,$J,358.3,8887,0)
 ;;=288.09^^74^633^15
 ;;^UTILITY(U,$J,358.3,8887,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,8887,1,4,0)
 ;;=4^288.09
 ;;^UTILITY(U,$J,358.3,8887,1,5,0)
 ;;=5^Agranulocytosis
 ;;^UTILITY(U,$J,358.3,8887,2)
 ;;=^334042
 ;;^UTILITY(U,$J,358.3,8888,0)
 ;;=284.81^^74^633^26
 ;;^UTILITY(U,$J,358.3,8888,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,8888,1,4,0)
 ;;=4^284.81
 ;;^UTILITY(U,$J,358.3,8888,1,5,0)
 ;;=5^Aplastic Due To Drugs
 ;;^UTILITY(U,$J,358.3,8888,2)
 ;;=^335245
 ;;^UTILITY(U,$J,358.3,8889,0)
 ;;=284.89^^74^633^25
 ;;^UTILITY(U,$J,358.3,8889,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,8889,1,4,0)
 ;;=4^284.89
 ;;^UTILITY(U,$J,358.3,8889,1,5,0)
 ;;=5^Aplastic Anemia due to Chr disease
 ;;^UTILITY(U,$J,358.3,8889,2)
 ;;=^87880
 ;;^UTILITY(U,$J,358.3,8890,0)
 ;;=284.9^^74^633^23
 ;;^UTILITY(U,$J,358.3,8890,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,8890,1,4,0)
 ;;=4^284.9
 ;;^UTILITY(U,$J,358.3,8890,1,5,0)
 ;;=5^Aplastic Anemia NOS
 ;;^UTILITY(U,$J,358.3,8890,2)
 ;;=^7020
 ;;^UTILITY(U,$J,358.3,8891,0)
 ;;=289.84^^74^633^136
 ;;^UTILITY(U,$J,358.3,8891,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,8891,1,4,0)
 ;;=4^289.84
 ;;^UTILITY(U,$J,358.3,8891,1,5,0)
 ;;=5^Thrombocytopenia,Heparin Induced
 ;;^UTILITY(U,$J,358.3,8891,2)
 ;;=^336542
 ;;^UTILITY(U,$J,358.3,8892,0)
 ;;=204.02^^74^633^12
 ;;^UTILITY(U,$J,358.3,8892,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,8892,1,4,0)
 ;;=4^204.02
 ;;^UTILITY(U,$J,358.3,8892,1,5,0)
 ;;=5^ALL, In Relapse
 ;;^UTILITY(U,$J,358.3,8892,2)
 ;;=^336465
 ;;^UTILITY(U,$J,358.3,8893,0)
 ;;=204.12^^74^633^35
 ;;^UTILITY(U,$J,358.3,8893,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,8893,1,4,0)
 ;;=4^204.12
 ;;^UTILITY(U,$J,358.3,8893,1,5,0)
 ;;=5^CLL, In Remission
 ;;^UTILITY(U,$J,358.3,8893,2)
 ;;=^336466
 ;;^UTILITY(U,$J,358.3,8894,0)
 ;;=204.21^^74^633^129
 ;;^UTILITY(U,$J,358.3,8894,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,8894,1,4,0)
 ;;=4^204.21
 ;;^UTILITY(U,$J,358.3,8894,1,5,0)
 ;;=5^Subacute LL in Remission
 ;;^UTILITY(U,$J,358.3,8894,2)
 ;;=^267526
 ;;^UTILITY(U,$J,358.3,8895,0)
 ;;=204.20^^74^633^130
 ;;^UTILITY(U,$J,358.3,8895,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,8895,1,4,0)
 ;;=4^204.20
 ;;^UTILITY(U,$J,358.3,8895,1,5,0)
 ;;=5^Subacute LL w/o Remission
 ;;^UTILITY(U,$J,358.3,8895,2)
 ;;=^336852
 ;;^UTILITY(U,$J,358.3,8896,0)
 ;;=204.22^^74^633^131
 ;;^UTILITY(U,$J,358.3,8896,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,8896,1,4,0)
 ;;=4^204.22
 ;;^UTILITY(U,$J,358.3,8896,1,5,0)
 ;;=5^Subacute LL, in Relapse
 ;;^UTILITY(U,$J,358.3,8896,2)
 ;;=^336467
 ;;^UTILITY(U,$J,358.3,8897,0)
 ;;=203.02^^74^633^116
 ;;^UTILITY(U,$J,358.3,8897,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,8897,1,4,0)
 ;;=4^203.02
 ;;^UTILITY(U,$J,358.3,8897,1,5,0)
 ;;=5^Multiple Myeloma,In Relapse
 ;;^UTILITY(U,$J,358.3,8897,2)
 ;;=^336462
 ;;^UTILITY(U,$J,358.3,8898,0)
 ;;=205.02^^74^633^13
 ;;^UTILITY(U,$J,358.3,8898,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,8898,1,4,0)
 ;;=4^205.02
 ;;^UTILITY(U,$J,358.3,8898,1,5,0)
 ;;=5^AML, In Relapse
 ;;^UTILITY(U,$J,358.3,8898,2)
 ;;=^336470
 ;;^UTILITY(U,$J,358.3,8899,0)
 ;;=205.12^^74^633^36
 ;;^UTILITY(U,$J,358.3,8899,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,8899,1,4,0)
 ;;=4^205.12
 ;;^UTILITY(U,$J,358.3,8899,1,5,0)
 ;;=5^CML, In Relapse
 ;;^UTILITY(U,$J,358.3,8899,2)
 ;;=^336471
 ;;^UTILITY(U,$J,358.3,8900,0)
 ;;=V10.91^^74^633^76
 ;;^UTILITY(U,$J,358.3,8900,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,8900,1,4,0)
 ;;=4^V10.91
 ;;^UTILITY(U,$J,358.3,8900,1,5,0)
 ;;=5^H/O Neuroendocrine CA Tumor
 ;;^UTILITY(U,$J,358.3,8900,2)
 ;;=^338494
 ;;^UTILITY(U,$J,358.3,8901,0)
 ;;=V10.91^^74^633^86
 ;;^UTILITY(U,$J,358.3,8901,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,8901,1,4,0)
 ;;=4^V10.91
 ;;^UTILITY(U,$J,358.3,8901,1,5,0)
 ;;=5^H/O Unspecified Malignant Neoplasm
 ;;^UTILITY(U,$J,358.3,8901,2)
 ;;=^338494
 ;;^UTILITY(U,$J,358.3,8902,0)
 ;;=465.9^^74^634^73
 ;;^UTILITY(U,$J,358.3,8902,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,8902,1,4,0)
 ;;=4^465.9
 ;;^UTILITY(U,$J,358.3,8902,1,5,0)
 ;;=5^Uri
 ;;^UTILITY(U,$J,358.3,8902,2)
 ;;=URI^269878
 ;;^UTILITY(U,$J,358.3,8903,0)
 ;;=462.^^74^634^60
 ;;^UTILITY(U,$J,358.3,8903,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,8903,1,4,0)
 ;;=4^462.
 ;;^UTILITY(U,$J,358.3,8903,1,5,0)
 ;;=5^Sore Throat
 ;;^UTILITY(U,$J,358.3,8903,2)
 ;;=^2653
 ;;^UTILITY(U,$J,358.3,8904,0)
 ;;=466.0^^74^634^3
 ;;^UTILITY(U,$J,358.3,8904,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,8904,1,4,0)
 ;;=4^466.0
 ;;^UTILITY(U,$J,358.3,8904,1,5,0)
 ;;=5^Bronchitis,Acute
 ;;^UTILITY(U,$J,358.3,8904,2)
 ;;=^259084
 ;;^UTILITY(U,$J,358.3,8905,0)
 ;;=112.1^^74^634^78
 ;;^UTILITY(U,$J,358.3,8905,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,8905,1,4,0)
 ;;=4^112.1
 ;;^UTILITY(U,$J,358.3,8905,1,5,0)
 ;;=5^Vulvovaginitis,Candidal
 ;;^UTILITY(U,$J,358.3,8905,2)
 ;;=^18615
 ;;^UTILITY(U,$J,358.3,8906,0)
 ;;=616.0^^74^634^13
 ;;^UTILITY(U,$J,358.3,8906,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,8906,1,4,0)
 ;;=4^616.0
 ;;^UTILITY(U,$J,358.3,8906,1,5,0)
 ;;=5^Cervicitis
 ;;^UTILITY(U,$J,358.3,8906,2)
 ;;=^21925
 ;;^UTILITY(U,$J,358.3,8907,0)
 ;;=599.0^^74^634^74
 ;;^UTILITY(U,$J,358.3,8907,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,8907,1,4,0)
 ;;=4^599.0
 ;;^UTILITY(U,$J,358.3,8907,1,5,0)
 ;;=5^UTI
 ;;^UTILITY(U,$J,358.3,8907,2)
 ;;=UTI^124436
 ;;^UTILITY(U,$J,358.3,8908,0)
 ;;=460.^^74^634^45
 ;;^UTILITY(U,$J,358.3,8908,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,8908,1,4,0)
 ;;=4^460.
 ;;^UTILITY(U,$J,358.3,8908,1,5,0)
 ;;=5^Nasopharyngitis, Acute
 ;;^UTILITY(U,$J,358.3,8908,2)
 ;;=^26543
 ;;^UTILITY(U,$J,358.3,8909,0)
 ;;=372.30^^74^634^14
 ;;^UTILITY(U,$J,358.3,8909,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,8909,1,4,0)
 ;;=4^372.30
 ;;^UTILITY(U,$J,358.3,8909,1,5,0)
 ;;=5^Conjunctivitis
 ;;^UTILITY(U,$J,358.3,8909,2)
 ;;=^27546
 ;;^UTILITY(U,$J,358.3,8910,0)
 ;;=595.9^^74^634^15
 ;;^UTILITY(U,$J,358.3,8910,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,8910,1,4,0)
 ;;=4^595.9
 ;;^UTILITY(U,$J,358.3,8910,1,5,0)
 ;;=5^Cystitis
 ;;^UTILITY(U,$J,358.3,8910,2)
 ;;=^30304
 ;;^UTILITY(U,$J,358.3,8911,0)
 ;;=110.1^^74^634^16
 ;;^UTILITY(U,$J,358.3,8911,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,8911,1,4,0)
 ;;=4^110.1
 ;;^UTILITY(U,$J,358.3,8911,1,5,0)
 ;;=5^Dermatophytosis Nail
 ;;^UTILITY(U,$J,358.3,8911,2)
 ;;=^33173
 ;;^UTILITY(U,$J,358.3,8912,0)
 ;;=562.11^^74^634^17
 ;;^UTILITY(U,$J,358.3,8912,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,8912,1,4,0)
 ;;=4^562.11
 ;;^UTILITY(U,$J,358.3,8912,1,5,0)
 ;;=5^Diverticulitis
 ;;^UTILITY(U,$J,358.3,8912,2)
 ;;=^270274
 ;;^UTILITY(U,$J,358.3,8913,0)
 ;;=424.90^^74^634^18
 ;;^UTILITY(U,$J,358.3,8913,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,8913,1,4,0)
 ;;=4^424.90
 ;;^UTILITY(U,$J,358.3,8913,1,5,0)
 ;;=5^Endocarditis
 ;;^UTILITY(U,$J,358.3,8913,2)
 ;;=^40327
 ;;^UTILITY(U,$J,358.3,8914,0)
 ;;=604.90^^74^634^19
 ;;^UTILITY(U,$J,358.3,8914,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,8914,1,4,0)
 ;;=4^604.90
 ;;^UTILITY(U,$J,358.3,8914,1,5,0)
 ;;=5^Epididymitis
 ;;^UTILITY(U,$J,358.3,8914,2)
 ;;=^86178
 ;;^UTILITY(U,$J,358.3,8915,0)
 ;;=707.15^^74^634^21
 ;;^UTILITY(U,$J,358.3,8915,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,8915,1,4,0)
 ;;=4^707.15
 ;;^UTILITY(U,$J,358.3,8915,1,5,0)
 ;;=5^Foot Ulcer
 ;;^UTILITY(U,$J,358.3,8915,2)
 ;;=^322148
 ;;^UTILITY(U,$J,358.3,8916,0)
 ;;=558.9^^74^634^22
 ;;^UTILITY(U,$J,358.3,8916,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,8916,1,4,0)
 ;;=4^558.9
 ;;^UTILITY(U,$J,358.3,8916,1,5,0)
 ;;=5^Gastroenteritis
 ;;^UTILITY(U,$J,358.3,8916,2)
 ;;=^87311
 ;;^UTILITY(U,$J,358.3,8917,0)
 ;;=054.71^^74^634^33
 ;;^UTILITY(U,$J,358.3,8917,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,8917,1,4,0)
 ;;=4^054.71
 ;;^UTILITY(U,$J,358.3,8917,1,5,0)
 ;;=5^Herpes Simplex, Mouth/Lip
 ;;^UTILITY(U,$J,358.3,8917,2)
 ;;=^266574
 ;;^UTILITY(U,$J,358.3,8918,0)
 ;;=054.10^^74^634^23
 ;;^UTILITY(U,$J,358.3,8918,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,8918,1,4,0)
 ;;=4^054.10
 ;;^UTILITY(U,$J,358.3,8918,1,5,0)
 ;;=5^Genital Herpes, Unsp
 ;;^UTILITY(U,$J,358.3,8918,2)
 ;;=^56853
 ;;^UTILITY(U,$J,358.3,8919,0)
 ;;=098.0^^74^634^72
 ;;^UTILITY(U,$J,358.3,8919,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,8919,1,4,0)
 ;;=4^098.0
 ;;^UTILITY(U,$J,358.3,8919,1,5,0)
 ;;=5^Urethritis,Gonococcal
 ;;^UTILITY(U,$J,358.3,8919,2)
 ;;=^52567
 ;;^UTILITY(U,$J,358.3,8920,0)
 ;;=054.13^^74^634^35
 ;;^UTILITY(U,$J,358.3,8920,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,8920,1,4,0)
 ;;=4^054.13
 ;;^UTILITY(U,$J,358.3,8920,1,5,0)
 ;;=5^Herpetic Infect Of Penis
 ;;^UTILITY(U,$J,358.3,8920,2)
 ;;=^266560
 ;;^UTILITY(U,$J,358.3,8921,0)
 ;;=054.11^^74^634^36
 ;;^UTILITY(U,$J,358.3,8921,1,0)
 ;;=^358.31IA^5^2