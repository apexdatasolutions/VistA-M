IBDEI1UH ; ; 20-MAY-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;OCT 15, 2014
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,32890,0)
 ;;=X32.XXXA^^190^1962^13
 ;;^UTILITY(U,$J,358.3,32890,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,32890,1,3,0)
 ;;=3^Exp to Sunlight,Init Encntr
 ;;^UTILITY(U,$J,358.3,32890,1,4,0)
 ;;=4^X32.XXXA
 ;;^UTILITY(U,$J,358.3,32890,2)
 ;;=^5060847
 ;;^UTILITY(U,$J,358.3,32891,0)
 ;;=X32.XXXD^^190^1962^14
 ;;^UTILITY(U,$J,358.3,32891,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,32891,1,3,0)
 ;;=3^Exp to Sunlight,Subs Encntr
 ;;^UTILITY(U,$J,358.3,32891,1,4,0)
 ;;=4^X32.XXXD
 ;;^UTILITY(U,$J,358.3,32891,2)
 ;;=^5060848
 ;;^UTILITY(U,$J,358.3,32892,0)
 ;;=Y04.0XXA^^190^1962^7
 ;;^UTILITY(U,$J,358.3,32892,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,32892,1,3,0)
 ;;=3^Assault by Unarmed Fight,Init Encntr
 ;;^UTILITY(U,$J,358.3,32892,1,4,0)
 ;;=4^Y04.0XXA
 ;;^UTILITY(U,$J,358.3,32892,2)
 ;;=^5061165
 ;;^UTILITY(U,$J,358.3,32893,0)
 ;;=Y04.0XXD^^190^1962^8
 ;;^UTILITY(U,$J,358.3,32893,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,32893,1,3,0)
 ;;=3^Assault by Unarmed Fight,Subs Encntr
 ;;^UTILITY(U,$J,358.3,32893,1,4,0)
 ;;=4^Y04.0XXD
 ;;^UTILITY(U,$J,358.3,32893,2)
 ;;=^5061166
 ;;^UTILITY(U,$J,358.3,32894,0)
 ;;=Y04.1XXA^^190^1962^1
 ;;^UTILITY(U,$J,358.3,32894,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,32894,1,3,0)
 ;;=3^Assault by Human Bite,Init Encntr
 ;;^UTILITY(U,$J,358.3,32894,1,4,0)
 ;;=4^Y04.1XXA
 ;;^UTILITY(U,$J,358.3,32894,2)
 ;;=^5061168
 ;;^UTILITY(U,$J,358.3,32895,0)
 ;;=Y04.1XXD^^190^1962^2
 ;;^UTILITY(U,$J,358.3,32895,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,32895,1,3,0)
 ;;=3^Assault by Human Bite,Subs Encntr
 ;;^UTILITY(U,$J,358.3,32895,1,4,0)
 ;;=4^Y04.1XXD
 ;;^UTILITY(U,$J,358.3,32895,2)
 ;;=^5061169
 ;;^UTILITY(U,$J,358.3,32896,0)
 ;;=Y04.2XXA^^190^1962^5
 ;;^UTILITY(U,$J,358.3,32896,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,32896,1,3,0)
 ;;=3^Assault by Strike/Bumped by Another Person,Init Encntr
 ;;^UTILITY(U,$J,358.3,32896,1,4,0)
 ;;=4^Y04.2XXA
 ;;^UTILITY(U,$J,358.3,32896,2)
 ;;=^5061171
 ;;^UTILITY(U,$J,358.3,32897,0)
 ;;=Y04.8XXA^^190^1962^3
 ;;^UTILITY(U,$J,358.3,32897,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,32897,1,3,0)
 ;;=3^Assault by Oth Bodily Force,Init Encntr
 ;;^UTILITY(U,$J,358.3,32897,1,4,0)
 ;;=4^Y04.8XXA
 ;;^UTILITY(U,$J,358.3,32897,2)
 ;;=^5061174
 ;;^UTILITY(U,$J,358.3,32898,0)
 ;;=Y04.2XXD^^190^1962^6
 ;;^UTILITY(U,$J,358.3,32898,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,32898,1,3,0)
 ;;=3^Assault by Strike/Bumped by Another Person,Subs Encntr
 ;;^UTILITY(U,$J,358.3,32898,1,4,0)
 ;;=4^Y04.2XXD
 ;;^UTILITY(U,$J,358.3,32898,2)
 ;;=^5061172
 ;;^UTILITY(U,$J,358.3,32899,0)
 ;;=Y04.8XXD^^190^1962^4
 ;;^UTILITY(U,$J,358.3,32899,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,32899,1,3,0)
 ;;=3^Assault by Oth Bodily Force,Subs Encntr
 ;;^UTILITY(U,$J,358.3,32899,1,4,0)
 ;;=4^Y04.8XXD
 ;;^UTILITY(U,$J,358.3,32899,2)
 ;;=^5061175
 ;;^UTILITY(U,$J,358.3,32900,0)
 ;;=Y36.200A^^190^1962^113
 ;;^UTILITY(U,$J,358.3,32900,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,32900,1,3,0)
 ;;=3^War Op Inv Unspec Explosion/Fragments,Milt,Init Encntr
 ;;^UTILITY(U,$J,358.3,32900,1,4,0)
 ;;=4^Y36.200A
 ;;^UTILITY(U,$J,358.3,32900,2)
 ;;=^5061607
 ;;^UTILITY(U,$J,358.3,32901,0)
 ;;=Y36.200D^^190^1962^114
 ;;^UTILITY(U,$J,358.3,32901,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,32901,1,3,0)
 ;;=3^War Op Inv Unspec Explosion/Fragments,Milt,Subs Encntr
 ;;^UTILITY(U,$J,358.3,32901,1,4,0)
 ;;=4^Y36.200D
 ;;^UTILITY(U,$J,358.3,32901,2)
 ;;=^5061608
 ;;^UTILITY(U,$J,358.3,32902,0)
 ;;=Y36.300A^^190^1962^115
 ;;^UTILITY(U,$J,358.3,32902,1,0)
 ;;=^358.31IA^4^2