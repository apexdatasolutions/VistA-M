IBDEI0SG ; ; 19-NOV-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,13091,2)
 ;;=^5005736
 ;;^UTILITY(U,$J,358.3,13092,0)
 ;;=H40.042^^80^754^122
 ;;^UTILITY(U,$J,358.3,13092,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,13092,1,3,0)
 ;;=3^Steroid Responder,Left Eye
 ;;^UTILITY(U,$J,358.3,13092,1,4,0)
 ;;=4^H40.042
 ;;^UTILITY(U,$J,358.3,13092,2)
 ;;=^5005737
 ;;^UTILITY(U,$J,358.3,13093,0)
 ;;=H40.051^^80^754^76
 ;;^UTILITY(U,$J,358.3,13093,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,13093,1,3,0)
 ;;=3^Ocular Hypertension,Right Eye
 ;;^UTILITY(U,$J,358.3,13093,1,4,0)
 ;;=4^H40.051
 ;;^UTILITY(U,$J,358.3,13093,2)
 ;;=^5005740
 ;;^UTILITY(U,$J,358.3,13094,0)
 ;;=H40.052^^80^754^75
 ;;^UTILITY(U,$J,358.3,13094,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,13094,1,3,0)
 ;;=3^Ocular Hypertension,Left Eye
 ;;^UTILITY(U,$J,358.3,13094,1,4,0)
 ;;=4^H40.052
 ;;^UTILITY(U,$J,358.3,13094,2)
 ;;=^5005741
 ;;^UTILITY(U,$J,358.3,13095,0)
 ;;=H40.053^^80^754^74
 ;;^UTILITY(U,$J,358.3,13095,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,13095,1,3,0)
 ;;=3^Ocular Hypertension,Bilateral
 ;;^UTILITY(U,$J,358.3,13095,1,4,0)
 ;;=4^H40.053
 ;;^UTILITY(U,$J,358.3,13095,2)
 ;;=^5005742
 ;;^UTILITY(U,$J,358.3,13096,0)
 ;;=H40.061^^80^754^106
 ;;^UTILITY(U,$J,358.3,13096,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,13096,1,3,0)
 ;;=3^Primary Angle-Closure w/o Glaucoma Damage,Right Eye
 ;;^UTILITY(U,$J,358.3,13096,1,4,0)
 ;;=4^H40.061
 ;;^UTILITY(U,$J,358.3,13096,2)
 ;;=^5005744
 ;;^UTILITY(U,$J,358.3,13097,0)
 ;;=H40.062^^80^754^107
 ;;^UTILITY(U,$J,358.3,13097,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,13097,1,3,0)
 ;;=3^Primary Angle-Closure w/o Glaucoma Damage,Left Eye
 ;;^UTILITY(U,$J,358.3,13097,1,4,0)
 ;;=4^H40.062
 ;;^UTILITY(U,$J,358.3,13097,2)
 ;;=^5005745
 ;;^UTILITY(U,$J,358.3,13098,0)
 ;;=H40.10X0^^80^754^81
 ;;^UTILITY(U,$J,358.3,13098,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,13098,1,3,0)
 ;;=3^Open-Angle Glaucoma,Stage Unspec
 ;;^UTILITY(U,$J,358.3,13098,1,4,0)
 ;;=4^H40.10X0
 ;;^UTILITY(U,$J,358.3,13098,2)
 ;;=^5005748
 ;;^UTILITY(U,$J,358.3,13099,0)
 ;;=H40.10X1^^80^754^78
 ;;^UTILITY(U,$J,358.3,13099,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,13099,1,3,0)
 ;;=3^Open-Angle Glaucoma,Mild Stage
 ;;^UTILITY(U,$J,358.3,13099,1,4,0)
 ;;=4^H40.10X1
 ;;^UTILITY(U,$J,358.3,13099,2)
 ;;=^5005749
 ;;^UTILITY(U,$J,358.3,13100,0)
 ;;=H40.10X2^^80^754^79
 ;;^UTILITY(U,$J,358.3,13100,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,13100,1,3,0)
 ;;=3^Open-Angle Glaucoma,Moderate Stage
 ;;^UTILITY(U,$J,358.3,13100,1,4,0)
 ;;=4^H40.10X2
 ;;^UTILITY(U,$J,358.3,13100,2)
 ;;=^5005750
 ;;^UTILITY(U,$J,358.3,13101,0)
 ;;=H40.10X3^^80^754^80
 ;;^UTILITY(U,$J,358.3,13101,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,13101,1,3,0)
 ;;=3^Open-Angle Glaucoma,Severe Stage
 ;;^UTILITY(U,$J,358.3,13101,1,4,0)
 ;;=4^H40.10X3
 ;;^UTILITY(U,$J,358.3,13101,2)
 ;;=^5005751
 ;;^UTILITY(U,$J,358.3,13102,0)
 ;;=H40.10X4^^80^754^77
 ;;^UTILITY(U,$J,358.3,13102,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,13102,1,3,0)
 ;;=3^Open-Angle Glaucoma,Indeterminate Stage
 ;;^UTILITY(U,$J,358.3,13102,1,4,0)
 ;;=4^H40.10X4
 ;;^UTILITY(U,$J,358.3,13102,2)
 ;;=^5005752
 ;;^UTILITY(U,$J,358.3,13103,0)
 ;;=H40.11X1^^80^754^110
 ;;^UTILITY(U,$J,358.3,13103,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,13103,1,3,0)
 ;;=3^Primary Open-Angle Glaucoma,Mild Stage
 ;;^UTILITY(U,$J,358.3,13103,1,4,0)
 ;;=4^H40.11X1
 ;;^UTILITY(U,$J,358.3,13103,2)
 ;;=^5005754
 ;;^UTILITY(U,$J,358.3,13104,0)
 ;;=H40.11X2^^80^754^111
 ;;^UTILITY(U,$J,358.3,13104,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,13104,1,3,0)
 ;;=3^Primary Open-Angle Glaucoma,Moderate Stage
