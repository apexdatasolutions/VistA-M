IBDEI3CA ; ; 19-NOV-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,56110,0)
 ;;=V00.892A^^256^2794^99
 ;;^UTILITY(U,$J,358.3,56110,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,56110,1,3,0)
 ;;=3^Pedestrian Conveyance Colliding w/ Stationary Obj,Init Encntr
 ;;^UTILITY(U,$J,358.3,56110,1,4,0)
 ;;=4^V00.892A
 ;;^UTILITY(U,$J,358.3,56110,2)
 ;;=^5055967
 ;;^UTILITY(U,$J,358.3,56111,0)
 ;;=V00.892D^^256^2794^100
 ;;^UTILITY(U,$J,358.3,56111,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,56111,1,3,0)
 ;;=3^Pedestrian Conveyance Colliding w/ Stationary Obj,Subs Encntr
 ;;^UTILITY(U,$J,358.3,56111,1,4,0)
 ;;=4^V00.892D
 ;;^UTILITY(U,$J,358.3,56111,2)
 ;;=^5055968
 ;;^UTILITY(U,$J,358.3,56112,0)
 ;;=V00.898A^^256^2794^97
 ;;^UTILITY(U,$J,358.3,56112,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,56112,1,3,0)
 ;;=3^Pedestrian Conveyance Accident NEC,Init Encntr
 ;;^UTILITY(U,$J,358.3,56112,1,4,0)
 ;;=4^V00.898A
 ;;^UTILITY(U,$J,358.3,56112,2)
 ;;=^5055970
 ;;^UTILITY(U,$J,358.3,56113,0)
 ;;=V00.898D^^256^2794^98
 ;;^UTILITY(U,$J,358.3,56113,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,56113,1,3,0)
 ;;=3^Pedestrian Conveyance Accident NEC,Subs Encntr
 ;;^UTILITY(U,$J,358.3,56113,1,4,0)
 ;;=4^V00.898D
 ;;^UTILITY(U,$J,358.3,56113,2)
 ;;=^5055971
 ;;^UTILITY(U,$J,358.3,56114,0)
 ;;=W00.0XXA^^256^2794^79
 ;;^UTILITY(U,$J,358.3,56114,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,56114,1,3,0)
 ;;=3^Fall on Same Level d/t Ice/Snow,Init Encntr
 ;;^UTILITY(U,$J,358.3,56114,1,4,0)
 ;;=4^W00.0XXA
 ;;^UTILITY(U,$J,358.3,56114,2)
 ;;=^5059510
 ;;^UTILITY(U,$J,358.3,56115,0)
 ;;=W00.0XXD^^256^2794^80
 ;;^UTILITY(U,$J,358.3,56115,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,56115,1,3,0)
 ;;=3^Fall on Same Level d/t Ice/Snow,Subs Encntr
 ;;^UTILITY(U,$J,358.3,56115,1,4,0)
 ;;=4^W00.0XXD
 ;;^UTILITY(U,$J,358.3,56115,2)
 ;;=^5059511
 ;;^UTILITY(U,$J,358.3,56116,0)
 ;;=W00.1XXA^^256^2794^59
 ;;^UTILITY(U,$J,358.3,56116,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,56116,1,3,0)
 ;;=3^Fall from Stairs/Steps d/t Ice/Snow,Init Encntr
 ;;^UTILITY(U,$J,358.3,56116,1,4,0)
 ;;=4^W00.1XXA
 ;;^UTILITY(U,$J,358.3,56116,2)
 ;;=^5059513
 ;;^UTILITY(U,$J,358.3,56117,0)
 ;;=W00.1XXD^^256^2794^60
 ;;^UTILITY(U,$J,358.3,56117,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,56117,1,3,0)
 ;;=3^Fall from Stairs/Steps d/t Ice/Snow,Subs Encntr
 ;;^UTILITY(U,$J,358.3,56117,1,4,0)
 ;;=4^W00.1XXD
 ;;^UTILITY(U,$J,358.3,56117,2)
 ;;=^5059514
 ;;^UTILITY(U,$J,358.3,56118,0)
 ;;=W00.2XXA^^256^2794^53
 ;;^UTILITY(U,$J,358.3,56118,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,56118,1,3,0)
 ;;=3^Fall from One Level to Another d/t Ice/Snow,Init Encntr
 ;;^UTILITY(U,$J,358.3,56118,1,4,0)
 ;;=4^W00.2XXA
 ;;^UTILITY(U,$J,358.3,56118,2)
 ;;=^5059516
 ;;^UTILITY(U,$J,358.3,56119,0)
 ;;=W00.2XXD^^256^2794^54
 ;;^UTILITY(U,$J,358.3,56119,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,56119,1,3,0)
 ;;=3^Fall from One Level to Another d/t Ice/Snow,Subs Encntr
 ;;^UTILITY(U,$J,358.3,56119,1,4,0)
 ;;=4^W00.2XXD
 ;;^UTILITY(U,$J,358.3,56119,2)
 ;;=^5059517
 ;;^UTILITY(U,$J,358.3,56120,0)
 ;;=W00.9XXA^^256^2794^25
 ;;^UTILITY(U,$J,358.3,56120,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,56120,1,3,0)
 ;;=3^Fall d/t Ice/Snow,Unspec,Init Encntr
 ;;^UTILITY(U,$J,358.3,56120,1,4,0)
 ;;=4^W00.9XXA
 ;;^UTILITY(U,$J,358.3,56120,2)
 ;;=^5059519
 ;;^UTILITY(U,$J,358.3,56121,0)
 ;;=W00.9XXD^^256^2794^26
 ;;^UTILITY(U,$J,358.3,56121,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,56121,1,3,0)
 ;;=3^Fall d/t Ice/Snow,Unspec,Subs Encntr
 ;;^UTILITY(U,$J,358.3,56121,1,4,0)
 ;;=4^W00.9XXD
 ;;^UTILITY(U,$J,358.3,56121,2)
 ;;=^5059520
