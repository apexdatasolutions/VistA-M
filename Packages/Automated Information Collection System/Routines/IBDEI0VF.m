IBDEI0VF ; ; 19-NOV-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,14460,0)
 ;;=H52.02^^82^778^12
 ;;^UTILITY(U,$J,358.3,14460,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,14460,1,3,0)
 ;;=3^Hypermetropia,Left Eye
 ;;^UTILITY(U,$J,358.3,14460,1,4,0)
 ;;=4^H52.02
 ;;^UTILITY(U,$J,358.3,14460,2)
 ;;=^5006261
 ;;^UTILITY(U,$J,358.3,14461,0)
 ;;=H52.13^^82^778^15
 ;;^UTILITY(U,$J,358.3,14461,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,14461,1,3,0)
 ;;=3^Myopia,Bilateral
 ;;^UTILITY(U,$J,358.3,14461,1,4,0)
 ;;=4^H52.13
 ;;^UTILITY(U,$J,358.3,14461,2)
 ;;=^5006266
 ;;^UTILITY(U,$J,358.3,14462,0)
 ;;=H52.11^^82^778^17
 ;;^UTILITY(U,$J,358.3,14462,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,14462,1,3,0)
 ;;=3^Myopia,Right Eye
 ;;^UTILITY(U,$J,358.3,14462,1,4,0)
 ;;=4^H52.11
 ;;^UTILITY(U,$J,358.3,14462,2)
 ;;=^5006264
 ;;^UTILITY(U,$J,358.3,14463,0)
 ;;=H52.12^^82^778^16
 ;;^UTILITY(U,$J,358.3,14463,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,14463,1,3,0)
 ;;=3^Myopia,Left Eye
 ;;^UTILITY(U,$J,358.3,14463,1,4,0)
 ;;=4^H52.12
 ;;^UTILITY(U,$J,358.3,14463,2)
 ;;=^5006265
 ;;^UTILITY(U,$J,358.3,14464,0)
 ;;=H52.201^^82^778^4
 ;;^UTILITY(U,$J,358.3,14464,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,14464,1,3,0)
 ;;=3^Astigmatism,Right Eye,Unspec
 ;;^UTILITY(U,$J,358.3,14464,1,4,0)
 ;;=4^H52.201
 ;;^UTILITY(U,$J,358.3,14464,2)
 ;;=^5006267
 ;;^UTILITY(U,$J,358.3,14465,0)
 ;;=H52.202^^82^778^3
 ;;^UTILITY(U,$J,358.3,14465,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,14465,1,3,0)
 ;;=3^Astigmatism,Left Eye,Unspec
 ;;^UTILITY(U,$J,358.3,14465,1,4,0)
 ;;=4^H52.202
 ;;^UTILITY(U,$J,358.3,14465,2)
 ;;=^5006268
 ;;^UTILITY(U,$J,358.3,14466,0)
 ;;=H52.31^^82^778^2
 ;;^UTILITY(U,$J,358.3,14466,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,14466,1,3,0)
 ;;=3^Anisometropia
 ;;^UTILITY(U,$J,358.3,14466,1,4,0)
 ;;=4^H52.31
 ;;^UTILITY(U,$J,358.3,14466,2)
 ;;=^7839
 ;;^UTILITY(U,$J,358.3,14467,0)
 ;;=H53.021^^82^778^26
 ;;^UTILITY(U,$J,358.3,14467,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,14467,1,3,0)
 ;;=3^Refractive Amblyopia,Right Eye
 ;;^UTILITY(U,$J,358.3,14467,1,4,0)
 ;;=4^H53.021
 ;;^UTILITY(U,$J,358.3,14467,2)
 ;;=^5006299
 ;;^UTILITY(U,$J,358.3,14468,0)
 ;;=H53.022^^82^778^25
 ;;^UTILITY(U,$J,358.3,14468,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,14468,1,3,0)
 ;;=3^Refractive Amblyopia,Left Eye
 ;;^UTILITY(U,$J,358.3,14468,1,4,0)
 ;;=4^H53.022
 ;;^UTILITY(U,$J,358.3,14468,2)
 ;;=^5006300
 ;;^UTILITY(U,$J,358.3,14469,0)
 ;;=H53.31^^82^778^1
 ;;^UTILITY(U,$J,358.3,14469,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,14469,1,3,0)
 ;;=3^Abnormal Retinal Correspondence
 ;;^UTILITY(U,$J,358.3,14469,1,4,0)
 ;;=4^H53.31
 ;;^UTILITY(U,$J,358.3,14469,2)
 ;;=^268844
 ;;^UTILITY(U,$J,358.3,14470,0)
 ;;=H53.30^^82^778^5
 ;;^UTILITY(U,$J,358.3,14470,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,14470,1,3,0)
 ;;=3^Binocular Vision Disorder,Unspec
 ;;^UTILITY(U,$J,358.3,14470,1,4,0)
 ;;=4^H53.30
 ;;^UTILITY(U,$J,358.3,14470,2)
 ;;=^5006322
 ;;^UTILITY(U,$J,358.3,14471,0)
 ;;=H53.481^^82^778^6
 ;;^UTILITY(U,$J,358.3,14471,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,14471,1,3,0)
 ;;=3^Contraction of Visual Field,Generalized,Right Eye
 ;;^UTILITY(U,$J,358.3,14471,1,4,0)
 ;;=4^H53.481
 ;;^UTILITY(U,$J,358.3,14471,2)
 ;;=^5006344
 ;;^UTILITY(U,$J,358.3,14472,0)
 ;;=H53.482^^82^778^7
 ;;^UTILITY(U,$J,358.3,14472,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,14472,1,3,0)
 ;;=3^Contraction of Visual Field,Generalized,Left Eye
 ;;^UTILITY(U,$J,358.3,14472,1,4,0)
 ;;=4^H53.482
 ;;^UTILITY(U,$J,358.3,14472,2)
 ;;=^5006345
 ;;^UTILITY(U,$J,358.3,14473,0)
 ;;=H53.483^^82^778^8
