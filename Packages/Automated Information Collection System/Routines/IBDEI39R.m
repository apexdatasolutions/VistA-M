IBDEI39R ; ; 19-NOV-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,54938,2)
 ;;=^5002393
 ;;^UTILITY(U,$J,358.3,54939,0)
 ;;=D59.0^^256^2775^56
 ;;^UTILITY(U,$J,358.3,54939,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,54939,1,3,0)
 ;;=3^Drug-Induced Autoimmune Hemolytic Anemia
 ;;^UTILITY(U,$J,358.3,54939,1,4,0)
 ;;=4^D59.0
 ;;^UTILITY(U,$J,358.3,54939,2)
 ;;=^5002323
 ;;^UTILITY(U,$J,358.3,54940,0)
 ;;=D59.2^^256^2775^57
 ;;^UTILITY(U,$J,358.3,54940,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,54940,1,3,0)
 ;;=3^Drug-Induced Nonautoimmune Hemolytic Anemia
 ;;^UTILITY(U,$J,358.3,54940,1,4,0)
 ;;=4^D59.2
 ;;^UTILITY(U,$J,358.3,54940,2)
 ;;=^5002325
 ;;^UTILITY(U,$J,358.3,54941,0)
 ;;=R59.9^^256^2775^60
 ;;^UTILITY(U,$J,358.3,54941,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,54941,1,3,0)
 ;;=3^Enlarged Lymph Nodes,Unspec
 ;;^UTILITY(U,$J,358.3,54941,1,4,0)
 ;;=4^R59.9
 ;;^UTILITY(U,$J,358.3,54941,2)
 ;;=^5019531
 ;;^UTILITY(U,$J,358.3,54942,0)
 ;;=D47.3^^256^2775^61
 ;;^UTILITY(U,$J,358.3,54942,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,54942,1,3,0)
 ;;=3^Essential Thrombocythemia
 ;;^UTILITY(U,$J,358.3,54942,1,4,0)
 ;;=4^D47.3
 ;;^UTILITY(U,$J,358.3,54942,2)
 ;;=^5002258
 ;;^UTILITY(U,$J,358.3,54943,0)
 ;;=C82.09^^256^2775^62
 ;;^UTILITY(U,$J,358.3,54943,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,54943,1,3,0)
 ;;=3^Follicular Lymphoma Grade I,Extranodal/Solid Organ Sites
 ;;^UTILITY(U,$J,358.3,54943,1,4,0)
 ;;=4^C82.09
 ;;^UTILITY(U,$J,358.3,54943,2)
 ;;=^5001470
 ;;^UTILITY(U,$J,358.3,54944,0)
 ;;=C82.00^^256^2775^63
 ;;^UTILITY(U,$J,358.3,54944,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,54944,1,3,0)
 ;;=3^Follicular Lymphoma Grade I,Unspec Site
 ;;^UTILITY(U,$J,358.3,54944,1,4,0)
 ;;=4^C82.00
 ;;^UTILITY(U,$J,358.3,54944,2)
 ;;=^5001461
 ;;^UTILITY(U,$J,358.3,54945,0)
 ;;=C82.19^^256^2775^64
 ;;^UTILITY(U,$J,358.3,54945,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,54945,1,3,0)
 ;;=3^Follicular Lymphoma Grade II,Extranodal/Solid Organ Sites
 ;;^UTILITY(U,$J,358.3,54945,1,4,0)
 ;;=4^C82.19
 ;;^UTILITY(U,$J,358.3,54945,2)
 ;;=^5001480
 ;;^UTILITY(U,$J,358.3,54946,0)
 ;;=C82.10^^256^2775^65
 ;;^UTILITY(U,$J,358.3,54946,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,54946,1,3,0)
 ;;=3^Follicular Lymphoma Grade II,Unspec Site
 ;;^UTILITY(U,$J,358.3,54946,1,4,0)
 ;;=4^C82.10
 ;;^UTILITY(U,$J,358.3,54946,2)
 ;;=^5001471
 ;;^UTILITY(U,$J,358.3,54947,0)
 ;;=C82.29^^256^2775^66
 ;;^UTILITY(U,$J,358.3,54947,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,54947,1,3,0)
 ;;=3^Follicular Lymphoma Grade III,Extranodal/Solid Organ Sites
 ;;^UTILITY(U,$J,358.3,54947,1,4,0)
 ;;=4^C82.29
 ;;^UTILITY(U,$J,358.3,54947,2)
 ;;=^5001490
 ;;^UTILITY(U,$J,358.3,54948,0)
 ;;=C82.20^^256^2775^67
 ;;^UTILITY(U,$J,358.3,54948,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,54948,1,3,0)
 ;;=3^Follicular Lymphoma Grade III,Unspec Site
 ;;^UTILITY(U,$J,358.3,54948,1,4,0)
 ;;=4^C82.20
 ;;^UTILITY(U,$J,358.3,54948,2)
 ;;=^5001481
 ;;^UTILITY(U,$J,358.3,54949,0)
 ;;=C82.39^^256^2775^68
 ;;^UTILITY(U,$J,358.3,54949,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,54949,1,3,0)
 ;;=3^Follicular Lymphoma Grade IIIa,Extranodal/Solid Organ Sites
 ;;^UTILITY(U,$J,358.3,54949,1,4,0)
 ;;=4^C82.39
 ;;^UTILITY(U,$J,358.3,54949,2)
 ;;=^5001500
 ;;^UTILITY(U,$J,358.3,54950,0)
 ;;=C82.30^^256^2775^69
 ;;^UTILITY(U,$J,358.3,54950,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,54950,1,3,0)
 ;;=3^Follicular Lymphoma Grade IIIa,Unspec Site
 ;;^UTILITY(U,$J,358.3,54950,1,4,0)
 ;;=4^C82.30
 ;;^UTILITY(U,$J,358.3,54950,2)
 ;;=^5001491
 ;;^UTILITY(U,$J,358.3,54951,0)
 ;;=C82.49^^256^2775^70
 ;;^UTILITY(U,$J,358.3,54951,1,0)
 ;;=^358.31IA^4^2
