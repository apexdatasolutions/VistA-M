IBDEI297 ; ; 19-NOV-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,37854,1,4,0)
 ;;=4^R10.11
 ;;^UTILITY(U,$J,358.3,37854,2)
 ;;=^5019206
 ;;^UTILITY(U,$J,358.3,37855,0)
 ;;=R10.12^^175^1903^3
 ;;^UTILITY(U,$J,358.3,37855,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,37855,1,3,0)
 ;;=3^Abdominal Pain,Left Upper Quadrant
 ;;^UTILITY(U,$J,358.3,37855,1,4,0)
 ;;=4^R10.12
 ;;^UTILITY(U,$J,358.3,37855,2)
 ;;=^5019207
 ;;^UTILITY(U,$J,358.3,37856,0)
 ;;=R10.31^^175^1903^4
 ;;^UTILITY(U,$J,358.3,37856,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,37856,1,3,0)
 ;;=3^Abdominal Pain,Right Lower Quadrant
 ;;^UTILITY(U,$J,358.3,37856,1,4,0)
 ;;=4^R10.31
 ;;^UTILITY(U,$J,358.3,37856,2)
 ;;=^5019211
 ;;^UTILITY(U,$J,358.3,37857,0)
 ;;=R10.32^^175^1903^2
 ;;^UTILITY(U,$J,358.3,37857,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,37857,1,3,0)
 ;;=3^Abdominal Pain,Left Lower Quadrant
 ;;^UTILITY(U,$J,358.3,37857,1,4,0)
 ;;=4^R10.32
 ;;^UTILITY(U,$J,358.3,37857,2)
 ;;=^5019212
 ;;^UTILITY(U,$J,358.3,37858,0)
 ;;=R10.33^^175^1903^10
 ;;^UTILITY(U,$J,358.3,37858,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,37858,1,3,0)
 ;;=3^Periumbilical Pain
 ;;^UTILITY(U,$J,358.3,37858,1,4,0)
 ;;=4^R10.33
 ;;^UTILITY(U,$J,358.3,37858,2)
 ;;=^5019213
 ;;^UTILITY(U,$J,358.3,37859,0)
 ;;=R10.13^^175^1903^7
 ;;^UTILITY(U,$J,358.3,37859,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,37859,1,3,0)
 ;;=3^Epigastric Pain
 ;;^UTILITY(U,$J,358.3,37859,1,4,0)
 ;;=4^R10.13
 ;;^UTILITY(U,$J,358.3,37859,2)
 ;;=^5019208
 ;;^UTILITY(U,$J,358.3,37860,0)
 ;;=R10.84^^175^1903^1
 ;;^UTILITY(U,$J,358.3,37860,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,37860,1,3,0)
 ;;=3^Abdominal Pain,Generalized
 ;;^UTILITY(U,$J,358.3,37860,1,4,0)
 ;;=4^R10.84
 ;;^UTILITY(U,$J,358.3,37860,2)
 ;;=^5019229
 ;;^UTILITY(U,$J,358.3,37861,0)
 ;;=R10.10^^175^1903^11
 ;;^UTILITY(U,$J,358.3,37861,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,37861,1,3,0)
 ;;=3^Upper Abdominal Pain,Unspec
 ;;^UTILITY(U,$J,358.3,37861,1,4,0)
 ;;=4^R10.10
 ;;^UTILITY(U,$J,358.3,37861,2)
 ;;=^5019205
 ;;^UTILITY(U,$J,358.3,37862,0)
 ;;=R10.2^^175^1903^9
 ;;^UTILITY(U,$J,358.3,37862,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,37862,1,3,0)
 ;;=3^Pelvic & Perineal Pain
 ;;^UTILITY(U,$J,358.3,37862,1,4,0)
 ;;=4^R10.2
 ;;^UTILITY(U,$J,358.3,37862,2)
 ;;=^5019209
 ;;^UTILITY(U,$J,358.3,37863,0)
 ;;=R10.30^^175^1903^8
 ;;^UTILITY(U,$J,358.3,37863,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,37863,1,3,0)
 ;;=3^Lower Abdominal Pain,Unspec
 ;;^UTILITY(U,$J,358.3,37863,1,4,0)
 ;;=4^R10.30
 ;;^UTILITY(U,$J,358.3,37863,2)
 ;;=^5019210
 ;;^UTILITY(U,$J,358.3,37864,0)
 ;;=I21.3^^175^1904^15
 ;;^UTILITY(U,$J,358.3,37864,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,37864,1,3,0)
 ;;=3^STEMI,Unspec Site
 ;;^UTILITY(U,$J,358.3,37864,1,4,0)
 ;;=4^I21.3
 ;;^UTILITY(U,$J,358.3,37864,2)
 ;;=^5007087
 ;;^UTILITY(U,$J,358.3,37865,0)
 ;;=I21.4^^175^1904^11
 ;;^UTILITY(U,$J,358.3,37865,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,37865,1,3,0)
 ;;=3^NSTEMI
 ;;^UTILITY(U,$J,358.3,37865,1,4,0)
 ;;=4^I21.4
 ;;^UTILITY(U,$J,358.3,37865,2)
 ;;=^5007088
 ;;^UTILITY(U,$J,358.3,37866,0)
 ;;=I42.9^^175^1904^5
 ;;^UTILITY(U,$J,358.3,37866,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,37866,1,3,0)
 ;;=3^Cardiomyopathy,Unspec
 ;;^UTILITY(U,$J,358.3,37866,1,4,0)
 ;;=4^I42.9
 ;;^UTILITY(U,$J,358.3,37866,2)
 ;;=^5007200
 ;;^UTILITY(U,$J,358.3,37867,0)
 ;;=I48.91^^175^1904^1
 ;;^UTILITY(U,$J,358.3,37867,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,37867,1,3,0)
 ;;=3^Atrial Fibrillation,Unspec
 ;;^UTILITY(U,$J,358.3,37867,1,4,0)
 ;;=4^I48.91
 ;;^UTILITY(U,$J,358.3,37867,2)
 ;;=^5007229
 ;;^UTILITY(U,$J,358.3,37868,0)
 ;;=I48.92^^175^1904^2
