IBDEI0JC ; ; 20-MAY-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;OCT 15, 2014
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,9399,1,5,0)
 ;;=5^Aortic Aneursym, thoracic
 ;;^UTILITY(U,$J,358.3,9399,2)
 ;;=^269765
 ;;^UTILITY(U,$J,358.3,9400,0)
 ;;=429.3^^58^629^10
 ;;^UTILITY(U,$J,358.3,9400,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,9400,1,4,0)
 ;;=4^429.3
 ;;^UTILITY(U,$J,358.3,9400,1,5,0)
 ;;=5^Cardiomegaly
 ;;^UTILITY(U,$J,358.3,9400,2)
 ;;=^54748
 ;;^UTILITY(U,$J,358.3,9401,0)
 ;;=433.10^^58^629^12
 ;;^UTILITY(U,$J,358.3,9401,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,9401,1,4,0)
 ;;=4^433.10
 ;;^UTILITY(U,$J,358.3,9401,1,5,0)
 ;;=5^Carotid Artery disease
 ;;^UTILITY(U,$J,358.3,9401,2)
 ;;=^295801
 ;;^UTILITY(U,$J,358.3,9402,0)
 ;;=458.0^^58^629^18
 ;;^UTILITY(U,$J,358.3,9402,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,9402,1,4,0)
 ;;=4^458.0
 ;;^UTILITY(U,$J,358.3,9402,1,5,0)
 ;;=5^Orthostatic Hypotension
 ;;^UTILITY(U,$J,358.3,9402,2)
 ;;=^60741
 ;;^UTILITY(U,$J,358.3,9403,0)
 ;;=443.9^^58^629^19
 ;;^UTILITY(U,$J,358.3,9403,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,9403,1,4,0)
 ;;=4^443.9
 ;;^UTILITY(U,$J,358.3,9403,1,5,0)
 ;;=5^PVD
 ;;^UTILITY(U,$J,358.3,9403,2)
 ;;=^184182
 ;;^UTILITY(U,$J,358.3,9404,0)
 ;;=V45.81^^58^629^21
 ;;^UTILITY(U,$J,358.3,9404,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,9404,1,4,0)
 ;;=4^V45.81
 ;;^UTILITY(U,$J,358.3,9404,1,5,0)
 ;;=5^S/P CABG
 ;;^UTILITY(U,$J,358.3,9404,2)
 ;;=^97129
 ;;^UTILITY(U,$J,358.3,9405,0)
 ;;=459.81^^58^629^28
 ;;^UTILITY(U,$J,358.3,9405,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,9405,1,4,0)
 ;;=4^459.81
 ;;^UTILITY(U,$J,358.3,9405,1,5,0)
 ;;=5^Venous Insufficiency
 ;;^UTILITY(U,$J,358.3,9405,2)
 ;;=^125826
 ;;^UTILITY(U,$J,358.3,9406,0)
 ;;=V45.01^^58^629^24
 ;;^UTILITY(U,$J,358.3,9406,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,9406,1,4,0)
 ;;=4^V45.01
 ;;^UTILITY(U,$J,358.3,9406,1,5,0)
 ;;=5^S/P Pacer Placement
 ;;^UTILITY(U,$J,358.3,9406,2)
 ;;=^303419
 ;;^UTILITY(U,$J,358.3,9407,0)
 ;;=427.81^^58^629^25
 ;;^UTILITY(U,$J,358.3,9407,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,9407,1,4,0)
 ;;=4^427.81
 ;;^UTILITY(U,$J,358.3,9407,1,5,0)
 ;;=5^Sick Sinus Syndrome
 ;;^UTILITY(U,$J,358.3,9407,2)
 ;;=^110852
 ;;^UTILITY(U,$J,358.3,9408,0)
 ;;=424.1^^58^629^3
 ;;^UTILITY(U,$J,358.3,9408,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,9408,1,4,0)
 ;;=4^424.1
 ;;^UTILITY(U,$J,358.3,9408,1,5,0)
 ;;=5^Aortic Stenosis
 ;;^UTILITY(U,$J,358.3,9408,2)
 ;;=Aortic Stenosis^9330
 ;;^UTILITY(U,$J,358.3,9409,0)
 ;;=424.0^^58^629^16
 ;;^UTILITY(U,$J,358.3,9409,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,9409,1,4,0)
 ;;=4^424.0
 ;;^UTILITY(U,$J,358.3,9409,1,5,0)
 ;;=5^Mitral Valve Prolapse
 ;;^UTILITY(U,$J,358.3,9409,2)
 ;;=^78367
 ;;^UTILITY(U,$J,358.3,9410,0)
 ;;=394.0^^58^629^15
 ;;^UTILITY(U,$J,358.3,9410,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,9410,1,4,0)
 ;;=4^394.0
 ;;^UTILITY(U,$J,358.3,9410,1,5,0)
 ;;=5^Mitral Stenosis
 ;;^UTILITY(U,$J,358.3,9410,2)
 ;;=Mitral Stenosis^78404
 ;;^UTILITY(U,$J,358.3,9411,0)
 ;;=V43.3^^58^629^23
 ;;^UTILITY(U,$J,358.3,9411,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,9411,1,4,0)
 ;;=4^V43.3
 ;;^UTILITY(U,$J,358.3,9411,1,5,0)
 ;;=5^S/P Heart Valve Replacement
 ;;^UTILITY(U,$J,358.3,9411,2)
 ;;=^295440
 ;;^UTILITY(U,$J,358.3,9412,0)
 ;;=396.0^^58^629^5
 ;;^UTILITY(U,$J,358.3,9412,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,9412,1,4,0)
 ;;=4^396.0
 ;;^UTILITY(U,$J,358.3,9412,1,5,0)
 ;;=5^Aortic and Mitral Stenosis
 ;;^UTILITY(U,$J,358.3,9412,2)
 ;;=Aortic and Mitral Stenosis^269580
 ;;^UTILITY(U,$J,358.3,9413,0)
 ;;=396.3^^58^629^4
 ;;^UTILITY(U,$J,358.3,9413,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,9413,1,4,0)
 ;;=4^396.3