IBDEI0NI ; ; 20-MAY-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;OCT 15, 2014
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,11511,1,4,0)
 ;;=4^789.01
 ;;^UTILITY(U,$J,358.3,11511,1,5,0)
 ;;=5^Abdominal pain, RUQ
 ;;^UTILITY(U,$J,358.3,11511,2)
 ;;=^303318
 ;;^UTILITY(U,$J,358.3,11512,0)
 ;;=789.02^^64^699^4
 ;;^UTILITY(U,$J,358.3,11512,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,11512,1,4,0)
 ;;=4^789.02
 ;;^UTILITY(U,$J,358.3,11512,1,5,0)
 ;;=5^Abdominal pain, LUQ
 ;;^UTILITY(U,$J,358.3,11512,2)
 ;;=^303319
 ;;^UTILITY(U,$J,358.3,11513,0)
 ;;=789.03^^64^699^6
 ;;^UTILITY(U,$J,358.3,11513,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,11513,1,4,0)
 ;;=4^789.03
 ;;^UTILITY(U,$J,358.3,11513,1,5,0)
 ;;=5^Abdominal pain, RLQ
 ;;^UTILITY(U,$J,358.3,11513,2)
 ;;=^303320
 ;;^UTILITY(U,$J,358.3,11514,0)
 ;;=789.04^^64^699^3
 ;;^UTILITY(U,$J,358.3,11514,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,11514,1,4,0)
 ;;=4^789.04
 ;;^UTILITY(U,$J,358.3,11514,1,5,0)
 ;;=5^Abdominal pain, LLQ
 ;;^UTILITY(U,$J,358.3,11514,2)
 ;;=^303321
 ;;^UTILITY(U,$J,358.3,11515,0)
 ;;=789.06^^64^699^2
 ;;^UTILITY(U,$J,358.3,11515,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,11515,1,4,0)
 ;;=4^789.06
 ;;^UTILITY(U,$J,358.3,11515,1,5,0)
 ;;=5^Abdominal pain, Epigastric
 ;;^UTILITY(U,$J,358.3,11515,2)
 ;;=^303323
 ;;^UTILITY(U,$J,358.3,11516,0)
 ;;=789.05^^64^699^5
 ;;^UTILITY(U,$J,358.3,11516,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,11516,1,4,0)
 ;;=4^789.05
 ;;^UTILITY(U,$J,358.3,11516,1,5,0)
 ;;=5^Abdominal pain, Periumbilical
 ;;^UTILITY(U,$J,358.3,11516,2)
 ;;=^303322
 ;;^UTILITY(U,$J,358.3,11517,0)
 ;;=789.40^^64^699^8
 ;;^UTILITY(U,$J,358.3,11517,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,11517,1,4,0)
 ;;=4^789.40
 ;;^UTILITY(U,$J,358.3,11517,1,5,0)
 ;;=5^Abdominal rigidity, unsp site
 ;;^UTILITY(U,$J,358.3,11517,2)
 ;;=^273393
 ;;^UTILITY(U,$J,358.3,11518,0)
 ;;=789.1^^64^699^83
 ;;^UTILITY(U,$J,358.3,11518,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,11518,1,4,0)
 ;;=4^789.1
 ;;^UTILITY(U,$J,358.3,11518,1,5,0)
 ;;=5^Hepatomegaly
 ;;^UTILITY(U,$J,358.3,11518,2)
 ;;=Hepatomegaly^56494
 ;;^UTILITY(U,$J,358.3,11519,0)
 ;;=789.30^^64^699^1
 ;;^UTILITY(U,$J,358.3,11519,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,11519,1,4,0)
 ;;=4^789.30
 ;;^UTILITY(U,$J,358.3,11519,1,5,0)
 ;;=5^Abdominal Mass/Lump
 ;;^UTILITY(U,$J,358.3,11519,2)
 ;;=Abdominal Mass/Lump^917
 ;;^UTILITY(U,$J,358.3,11520,0)
 ;;=789.2^^64^699^140
 ;;^UTILITY(U,$J,358.3,11520,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,11520,1,4,0)
 ;;=4^789.2
 ;;^UTILITY(U,$J,358.3,11520,1,5,0)
 ;;=5^Splenomegaly
 ;;^UTILITY(U,$J,358.3,11520,2)
 ;;=Splenomegaly^113452
 ;;^UTILITY(U,$J,358.3,11521,0)
 ;;=785.2^^64^699^34
 ;;^UTILITY(U,$J,358.3,11521,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,11521,1,4,0)
 ;;=4^785.2
 ;;^UTILITY(U,$J,358.3,11521,1,5,0)
 ;;=5^Cardiac murmurs, undiagnosed
 ;;^UTILITY(U,$J,358.3,11521,2)
 ;;=^295854
 ;;^UTILITY(U,$J,358.3,11522,0)
 ;;=786.50^^64^699^37
 ;;^UTILITY(U,$J,358.3,11522,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,11522,1,4,0)
 ;;=4^786.50
 ;;^UTILITY(U,$J,358.3,11522,1,5,0)
 ;;=5^Chest pain/Discomfort (nonsp) chest pain diff from discomfort
 ;;^UTILITY(U,$J,358.3,11522,2)
 ;;=^22485
 ;;^UTILITY(U,$J,358.3,11523,0)
 ;;=786.51^^64^699^131
 ;;^UTILITY(U,$J,358.3,11523,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,11523,1,4,0)
 ;;=4^786.51
 ;;^UTILITY(U,$J,358.3,11523,1,5,0)
 ;;=5^Precordial Pain
 ;;^UTILITY(U,$J,358.3,11523,2)
 ;;=Precordial Pain^276877
 ;;^UTILITY(U,$J,358.3,11524,0)
 ;;=786.2^^64^699^45
 ;;^UTILITY(U,$J,358.3,11524,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,11524,1,4,0)
 ;;=4^786.2
 ;;^UTILITY(U,$J,358.3,11524,1,5,0)
 ;;=5^Cough