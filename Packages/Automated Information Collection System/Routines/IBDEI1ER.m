IBDEI1ER ; ; 19-NOV-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,23500,1,3,0)
 ;;=3^Otitis Externa Infective,Bilateral
 ;;^UTILITY(U,$J,358.3,23500,1,4,0)
 ;;=4^H60.393
 ;;^UTILITY(U,$J,358.3,23500,2)
 ;;=^5006461
 ;;^UTILITY(U,$J,358.3,23501,0)
 ;;=M81.0^^113^1134^13
 ;;^UTILITY(U,$J,358.3,23501,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,23501,1,3,0)
 ;;=3^Osteopor,age-rltd w/o curnt path fractr
 ;;^UTILITY(U,$J,358.3,23501,1,4,0)
 ;;=4^M81.0
 ;;^UTILITY(U,$J,358.3,23501,2)
 ;;=^5013555
 ;;^UTILITY(U,$J,358.3,23502,0)
 ;;=R11.2^^113^1134^2
 ;;^UTILITY(U,$J,358.3,23502,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,23502,1,3,0)
 ;;=3^Nausea w/ Vomiting,Unspec
 ;;^UTILITY(U,$J,358.3,23502,1,4,0)
 ;;=4^R11.2
 ;;^UTILITY(U,$J,358.3,23502,2)
 ;;=^5019237
 ;;^UTILITY(U,$J,358.3,23503,0)
 ;;=H60.321^^113^1134^19
 ;;^UTILITY(U,$J,358.3,23503,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,23503,1,3,0)
 ;;=3^Otitis Externa Hemorrhagic,Right
 ;;^UTILITY(U,$J,358.3,23503,1,4,0)
 ;;=4^H60.321
 ;;^UTILITY(U,$J,358.3,23503,2)
 ;;=^5006451
 ;;^UTILITY(U,$J,358.3,23504,0)
 ;;=H60.322^^113^1134^18
 ;;^UTILITY(U,$J,358.3,23504,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,23504,1,3,0)
 ;;=3^Otitis Externa Hemorrhagic,Left
 ;;^UTILITY(U,$J,358.3,23504,1,4,0)
 ;;=4^H60.322
 ;;^UTILITY(U,$J,358.3,23504,2)
 ;;=^5006452
 ;;^UTILITY(U,$J,358.3,23505,0)
 ;;=H60.323^^113^1134^17
 ;;^UTILITY(U,$J,358.3,23505,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,23505,1,3,0)
 ;;=3^Otitis Externa Hemorrhagic, Bilateral
 ;;^UTILITY(U,$J,358.3,23505,1,4,0)
 ;;=4^H60.323
 ;;^UTILITY(U,$J,358.3,23505,2)
 ;;=^5006453
 ;;^UTILITY(U,$J,358.3,23506,0)
 ;;=H66.91^^113^1134^25
 ;;^UTILITY(U,$J,358.3,23506,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,23506,1,3,0)
 ;;=3^Otitis Media, rt ear, unspec
 ;;^UTILITY(U,$J,358.3,23506,1,4,0)
 ;;=4^H66.91
 ;;^UTILITY(U,$J,358.3,23506,2)
 ;;=^5006640
 ;;^UTILITY(U,$J,358.3,23507,0)
 ;;=H66.92^^113^1134^24
 ;;^UTILITY(U,$J,358.3,23507,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,23507,1,3,0)
 ;;=3^Otitis Media, lft ear, unspec
 ;;^UTILITY(U,$J,358.3,23507,1,4,0)
 ;;=4^H66.92
 ;;^UTILITY(U,$J,358.3,23507,2)
 ;;=^5006641
 ;;^UTILITY(U,$J,358.3,23508,0)
 ;;=H66.93^^113^1134^23
 ;;^UTILITY(U,$J,358.3,23508,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,23508,1,3,0)
 ;;=3^Otitis Media, biltrl, unspec
 ;;^UTILITY(U,$J,358.3,23508,1,4,0)
 ;;=4^H66.93
 ;;^UTILITY(U,$J,358.3,23508,2)
 ;;=^5006642
 ;;^UTILITY(U,$J,358.3,23509,0)
 ;;=E66.01^^113^1134^8
 ;;^UTILITY(U,$J,358.3,23509,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,23509,1,3,0)
 ;;=3^Obesity, morbid d/t excess calories
 ;;^UTILITY(U,$J,358.3,23509,1,4,0)
 ;;=4^E66.01
 ;;^UTILITY(U,$J,358.3,23509,2)
 ;;=^5002826
 ;;^UTILITY(U,$J,358.3,23510,0)
 ;;=E66.9^^113^1134^9
 ;;^UTILITY(U,$J,358.3,23510,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,23510,1,3,0)
 ;;=3^Obesity, unspec
 ;;^UTILITY(U,$J,358.3,23510,1,4,0)
 ;;=4^E66.9
 ;;^UTILITY(U,$J,358.3,23510,2)
 ;;=^5002832
 ;;^UTILITY(U,$J,358.3,23511,0)
 ;;=M19.91^^113^1134^11
 ;;^UTILITY(U,$J,358.3,23511,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,23511,1,3,0)
 ;;=3^Osteoarth, prim, unspec site
 ;;^UTILITY(U,$J,358.3,23511,1,4,0)
 ;;=4^M19.91
 ;;^UTILITY(U,$J,358.3,23511,2)
 ;;=^5010854
 ;;^UTILITY(U,$J,358.3,23512,0)
 ;;=J00.^^113^1134^1
 ;;^UTILITY(U,$J,358.3,23512,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,23512,1,3,0)
 ;;=3^Nasopharyngitis,Acute
 ;;^UTILITY(U,$J,358.3,23512,1,4,0)
 ;;=4^J00.
 ;;^UTILITY(U,$J,358.3,23512,2)
 ;;=^5008115
 ;;^UTILITY(U,$J,358.3,23513,0)
 ;;=M79.2^^113^1134^4
 ;;^UTILITY(U,$J,358.3,23513,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,23513,1,3,0)
 ;;=3^Neuralgia & Neuritis,Unspec
