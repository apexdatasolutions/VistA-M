IBDEI1DP ; ; 20-MAY-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;OCT 15, 2014
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,24731,0)
 ;;=438.50^^145^1530^24
 ;;^UTILITY(U,$J,358.3,24731,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,24731,1,4,0)
 ;;=4^438.50
 ;;^UTILITY(U,$J,358.3,24731,1,5,0)
 ;;=5^CVA w/Oth Paralysis,Unspec
 ;;^UTILITY(U,$J,358.3,24731,2)
 ;;=^317919
 ;;^UTILITY(U,$J,358.3,24732,0)
 ;;=438.51^^145^1530^21
 ;;^UTILITY(U,$J,358.3,24732,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,24732,1,4,0)
 ;;=4^438.51
 ;;^UTILITY(U,$J,358.3,24732,1,5,0)
 ;;=5^CVA w/Oth Paralysis Dominant Side
 ;;^UTILITY(U,$J,358.3,24732,2)
 ;;=^317920
 ;;^UTILITY(U,$J,358.3,24733,0)
 ;;=438.52^^145^1530^22
 ;;^UTILITY(U,$J,358.3,24733,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,24733,1,4,0)
 ;;=4^438.52
 ;;^UTILITY(U,$J,358.3,24733,1,5,0)
 ;;=5^CVA w/Oth Paralysis Nondominant Side
 ;;^UTILITY(U,$J,358.3,24733,2)
 ;;=^317921
 ;;^UTILITY(U,$J,358.3,24734,0)
 ;;=438.53^^145^1530^23
 ;;^UTILITY(U,$J,358.3,24734,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,24734,1,4,0)
 ;;=4^438.53
 ;;^UTILITY(U,$J,358.3,24734,1,5,0)
 ;;=5^CVA w/Oth Paralysis,Bilateral
 ;;^UTILITY(U,$J,358.3,24734,2)
 ;;=^321176
 ;;^UTILITY(U,$J,358.3,24735,0)
 ;;=438.81^^145^1530^4
 ;;^UTILITY(U,$J,358.3,24735,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,24735,1,4,0)
 ;;=4^438.81
 ;;^UTILITY(U,$J,358.3,24735,1,5,0)
 ;;=5^CVA w/Apraxi NEC
 ;;^UTILITY(U,$J,358.3,24735,2)
 ;;=^317922
 ;;^UTILITY(U,$J,358.3,24736,0)
 ;;=438.83^^145^1530^9
 ;;^UTILITY(U,$J,358.3,24736,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,24736,1,4,0)
 ;;=4^438.83
 ;;^UTILITY(U,$J,358.3,24736,1,5,0)
 ;;=5^CVA w/Facial Weakness
 ;;^UTILITY(U,$J,358.3,24736,2)
 ;;=^328505
 ;;^UTILITY(U,$J,358.3,24737,0)
 ;;=438.85^^145^1530^25
 ;;^UTILITY(U,$J,358.3,24737,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,24737,1,4,0)
 ;;=4^438.85
 ;;^UTILITY(U,$J,358.3,24737,1,5,0)
 ;;=5^CVA w/Vertigo
 ;;^UTILITY(U,$J,358.3,24737,2)
 ;;=^328508
 ;;^UTILITY(U,$J,358.3,24738,0)
 ;;=438.21^^145^1530^12
 ;;^UTILITY(U,$J,358.3,24738,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,24738,1,4,0)
 ;;=4^438.21
 ;;^UTILITY(U,$J,358.3,24738,1,5,0)
 ;;=5^CVA w/Hemiplegia Dominant Side
 ;;^UTILITY(U,$J,358.3,24738,2)
 ;;=^317911
 ;;^UTILITY(U,$J,358.3,24739,0)
 ;;=438.22^^145^1530^13
 ;;^UTILITY(U,$J,358.3,24739,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,24739,1,4,0)
 ;;=4^438.22
 ;;^UTILITY(U,$J,358.3,24739,1,5,0)
 ;;=5^CVA w/Hemiplegia Nondominant Side
 ;;^UTILITY(U,$J,358.3,24739,2)
 ;;=^317912
 ;;^UTILITY(U,$J,358.3,24740,0)
 ;;=342.00^^145^1530^38
 ;;^UTILITY(U,$J,358.3,24740,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,24740,1,4,0)
 ;;=4^342.00
 ;;^UTILITY(U,$J,358.3,24740,1,5,0)
 ;;=5^Flaccid Hemiplegia & Hemiparesis,Unspec Side
 ;;^UTILITY(U,$J,358.3,24740,2)
 ;;=^303258
 ;;^UTILITY(U,$J,358.3,24741,0)
 ;;=342.01^^145^1530^36
 ;;^UTILITY(U,$J,358.3,24741,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,24741,1,4,0)
 ;;=4^342.01
 ;;^UTILITY(U,$J,358.3,24741,1,5,0)
 ;;=5^Flaccid Hemiplegia & Hemiparesis Dom
 ;;^UTILITY(U,$J,358.3,24741,2)
 ;;=^303259
 ;;^UTILITY(U,$J,358.3,24742,0)
 ;;=342.02^^145^1530^37
 ;;^UTILITY(U,$J,358.3,24742,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,24742,1,4,0)
 ;;=4^342.02
 ;;^UTILITY(U,$J,358.3,24742,1,5,0)
 ;;=5^Flaccid Hemiplegia & Hemiparesis Nondom
 ;;^UTILITY(U,$J,358.3,24742,2)
 ;;=^303260
 ;;^UTILITY(U,$J,358.3,24743,0)
 ;;=342.80^^145^1530^68
 ;;^UTILITY(U,$J,358.3,24743,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,24743,1,4,0)
 ;;=4^342.80
 ;;^UTILITY(U,$J,358.3,24743,1,5,0)
 ;;=5^Hemiplegia & Hemiparesis NEC,Unspec Side
 ;;^UTILITY(U,$J,358.3,24743,2)
 ;;=^303264
 ;;^UTILITY(U,$J,358.3,24744,0)
 ;;=342.81^^145^1530^66