IBDEI1KW ; ; 19-NOV-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,26404,2)
 ;;=^5005740
 ;;^UTILITY(U,$J,358.3,26405,0)
 ;;=H40.052^^130^1290^15
 ;;^UTILITY(U,$J,358.3,26405,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,26405,1,3,0)
 ;;=3^Ocular HTN,Left Eye
 ;;^UTILITY(U,$J,358.3,26405,1,4,0)
 ;;=4^H40.052
 ;;^UTILITY(U,$J,358.3,26405,2)
 ;;=^5005741
 ;;^UTILITY(U,$J,358.3,26406,0)
 ;;=H40.053^^130^1290^17
 ;;^UTILITY(U,$J,358.3,26406,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,26406,1,3,0)
 ;;=3^Ocular Hypertension,Bilateral
 ;;^UTILITY(U,$J,358.3,26406,1,4,0)
 ;;=4^H40.053
 ;;^UTILITY(U,$J,358.3,26406,2)
 ;;=^5005742
 ;;^UTILITY(U,$J,358.3,26407,0)
 ;;=H40.061^^130^1290^68
 ;;^UTILITY(U,$J,358.3,26407,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,26407,1,3,0)
 ;;=3^glc,Primary Angle Closure w/o Glaucoma Damage,Right Eye
 ;;^UTILITY(U,$J,358.3,26407,1,4,0)
 ;;=4^H40.061
 ;;^UTILITY(U,$J,358.3,26407,2)
 ;;=^5005744
 ;;^UTILITY(U,$J,358.3,26408,0)
 ;;=H40.062^^130^1290^69
 ;;^UTILITY(U,$J,358.3,26408,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,26408,1,3,0)
 ;;=3^glc,Primary Angle Closure w/o Glaucoma Damage,Left Eye
 ;;^UTILITY(U,$J,358.3,26408,1,4,0)
 ;;=4^H40.062
 ;;^UTILITY(U,$J,358.3,26408,2)
 ;;=^5005745
 ;;^UTILITY(U,$J,358.3,26409,0)
 ;;=H40.063^^130^1290^70
 ;;^UTILITY(U,$J,358.3,26409,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,26409,1,3,0)
 ;;=3^glc,Primary Angle Closure w/o Glaucoma Damage,Bilateral
 ;;^UTILITY(U,$J,358.3,26409,1,4,0)
 ;;=4^H40.063
 ;;^UTILITY(U,$J,358.3,26409,2)
 ;;=^5005746
 ;;^UTILITY(U,$J,358.3,26410,0)
 ;;=H40.10X0^^130^1290^47
 ;;^UTILITY(U,$J,358.3,26410,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,26410,1,3,0)
 ;;=3^glc,Open-Angle Unspec,Stage Unspec
 ;;^UTILITY(U,$J,358.3,26410,1,4,0)
 ;;=4^H40.10X0
 ;;^UTILITY(U,$J,358.3,26410,2)
 ;;=^5005748
 ;;^UTILITY(U,$J,358.3,26411,0)
 ;;=H40.10X1^^130^1290^44
 ;;^UTILITY(U,$J,358.3,26411,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,26411,1,3,0)
 ;;=3^glc,Open-Angle Unspec,Mild Stage
 ;;^UTILITY(U,$J,358.3,26411,1,4,0)
 ;;=4^H40.10X1
 ;;^UTILITY(U,$J,358.3,26411,2)
 ;;=^5005749
 ;;^UTILITY(U,$J,358.3,26412,0)
 ;;=H40.10X2^^130^1290^45
 ;;^UTILITY(U,$J,358.3,26412,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,26412,1,3,0)
 ;;=3^glc,Open-Angle Unspec,Moderate Stage
 ;;^UTILITY(U,$J,358.3,26412,1,4,0)
 ;;=4^H40.10X2
 ;;^UTILITY(U,$J,358.3,26412,2)
 ;;=^5005750
 ;;^UTILITY(U,$J,358.3,26413,0)
 ;;=H40.10X3^^130^1290^46
 ;;^UTILITY(U,$J,358.3,26413,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,26413,1,3,0)
 ;;=3^glc,Open-Angle Unspec,Severe Stage
 ;;^UTILITY(U,$J,358.3,26413,1,4,0)
 ;;=4^H40.10X3
 ;;^UTILITY(U,$J,358.3,26413,2)
 ;;=^5005751
 ;;^UTILITY(U,$J,358.3,26414,0)
 ;;=H40.1210^^130^1290^42
 ;;^UTILITY(U,$J,358.3,26414,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,26414,1,3,0)
 ;;=3^glc,Low-Tension,Right Eye,Stage Unspec
 ;;^UTILITY(U,$J,358.3,26414,1,4,0)
 ;;=4^H40.1210
 ;;^UTILITY(U,$J,358.3,26414,2)
 ;;=^5005758
 ;;^UTILITY(U,$J,358.3,26415,0)
 ;;=H40.1211^^130^1290^39
 ;;^UTILITY(U,$J,358.3,26415,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,26415,1,3,0)
 ;;=3^glc,Low-Tension,Right Eye,Mild Stage
 ;;^UTILITY(U,$J,358.3,26415,1,4,0)
 ;;=4^H40.1211
 ;;^UTILITY(U,$J,358.3,26415,2)
 ;;=^5005759
 ;;^UTILITY(U,$J,358.3,26416,0)
 ;;=H40.1212^^130^1290^40
 ;;^UTILITY(U,$J,358.3,26416,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,26416,1,3,0)
 ;;=3^glc,Low-Tension,Right Eye,Moderate Stage
 ;;^UTILITY(U,$J,358.3,26416,1,4,0)
 ;;=4^H40.1212
 ;;^UTILITY(U,$J,358.3,26416,2)
 ;;=^5005760
 ;;^UTILITY(U,$J,358.3,26417,0)
 ;;=H40.1213^^130^1290^41
 ;;^UTILITY(U,$J,358.3,26417,1,0)
 ;;=^358.31IA^4^2
