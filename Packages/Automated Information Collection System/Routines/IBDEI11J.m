IBDEI11J ; ; 20-MAY-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;OCT 15, 2014
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,18542,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,18542,1,2,0)
 ;;=2^97546
 ;;^UTILITY(U,$J,358.3,18542,1,3,0)
 ;;=3^Work Ther, addl hrs after 2
 ;;^UTILITY(U,$J,358.3,18543,0)
 ;;=97537^^102^1067^4^^^^1
 ;;^UTILITY(U,$J,358.3,18543,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,18543,1,2,0)
 ;;=2^97537
 ;;^UTILITY(U,$J,358.3,18543,1,3,0)
 ;;=3^Community/Work Reintegration per 15 min
 ;;^UTILITY(U,$J,358.3,18544,0)
 ;;=97532^^102^1067^3^^^^1
 ;;^UTILITY(U,$J,358.3,18544,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,18544,1,2,0)
 ;;=2^97532
 ;;^UTILITY(U,$J,358.3,18544,1,3,0)
 ;;=3^Cognitive Sk Dev (PhD/OT)per 15min
 ;;^UTILITY(U,$J,358.3,18545,0)
 ;;=97533^^102^1067^26^^^^1
 ;;^UTILITY(U,$J,358.3,18545,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,18545,1,2,0)
 ;;=2^97533
 ;;^UTILITY(U,$J,358.3,18545,1,3,0)
 ;;=3^Sensory Integrat per 15 min
 ;;^UTILITY(U,$J,358.3,18546,0)
 ;;=97535^^102^1067^1^^^^1
 ;;^UTILITY(U,$J,358.3,18546,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,18546,1,2,0)
 ;;=2^97535
 ;;^UTILITY(U,$J,358.3,18546,1,3,0)
 ;;=3^ADL Train per 15 min
 ;;^UTILITY(U,$J,358.3,18547,0)
 ;;=H0004^^102^1067^9^^^^1
 ;;^UTILITY(U,$J,358.3,18547,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,18547,1,2,0)
 ;;=2^H0004
 ;;^UTILITY(U,$J,358.3,18547,1,3,0)
 ;;=3^Ind Counseling, per 15 min
 ;;^UTILITY(U,$J,358.3,18548,0)
 ;;=H0046^^102^1067^16^^^^1
 ;;^UTILITY(U,$J,358.3,18548,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,18548,1,2,0)
 ;;=2^H0046
 ;;^UTILITY(U,$J,358.3,18548,1,3,0)
 ;;=3^PTSD Group
 ;;^UTILITY(U,$J,358.3,18549,0)
 ;;=96119^^102^1067^13^^^^1
 ;;^UTILITY(U,$J,358.3,18549,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,18549,1,2,0)
 ;;=2^96119
 ;;^UTILITY(U,$J,358.3,18549,1,3,0)
 ;;=3^Neuropsych Test by tech,per hr
 ;;^UTILITY(U,$J,358.3,18550,0)
 ;;=96402^^102^1067^10^^^^1
 ;;^UTILITY(U,$J,358.3,18550,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,18550,1,2,0)
 ;;=2^96402
 ;;^UTILITY(U,$J,358.3,18550,1,3,0)
 ;;=3^Injec,IM,anti-neplastic horm
 ;;^UTILITY(U,$J,358.3,18551,0)
 ;;=96102^^102^1067^20^^^^1
 ;;^UTILITY(U,$J,358.3,18551,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,18551,1,2,0)
 ;;=2^96102
 ;;^UTILITY(U,$J,358.3,18551,1,3,0)
 ;;=3^Psych Test by Tech,per hr
 ;;^UTILITY(U,$J,358.3,18552,0)
 ;;=96103^^102^1067^21^^^^1
 ;;^UTILITY(U,$J,358.3,18552,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,18552,1,2,0)
 ;;=2^96103
 ;;^UTILITY(U,$J,358.3,18552,1,3,0)
 ;;=3^Psych Test by computer
 ;;^UTILITY(U,$J,358.3,18553,0)
 ;;=96120^^102^1067^14^^^^1
 ;;^UTILITY(U,$J,358.3,18553,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,18553,1,2,0)
 ;;=2^96120
 ;;^UTILITY(U,$J,358.3,18553,1,3,0)
 ;;=3^Neuropsych Tst Admin w/Comp
 ;;^UTILITY(U,$J,358.3,18554,0)
 ;;=96125^^102^1067^27^^^^1
 ;;^UTILITY(U,$J,358.3,18554,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,18554,1,2,0)
 ;;=2^96125
 ;;^UTILITY(U,$J,358.3,18554,1,3,0)
 ;;=3^Stan Cog Perf Tst, per hr
 ;;^UTILITY(U,$J,358.3,18555,0)
 ;;=96372^^102^1067^29^^^^1
 ;;^UTILITY(U,$J,358.3,18555,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,18555,1,2,0)
 ;;=2^96372
 ;;^UTILITY(U,$J,358.3,18555,1,3,0)
 ;;=3^Ther/Proph/Diag Inj,SC/IM
 ;;^UTILITY(U,$J,358.3,18556,0)
 ;;=Q3014^^102^1067^28^^^^1
 ;;^UTILITY(U,$J,358.3,18556,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,18556,1,2,0)
 ;;=2^Q3014
 ;;^UTILITY(U,$J,358.3,18556,1,3,0)
 ;;=3^Telehealth Facility Fee
 ;;^UTILITY(U,$J,358.3,18557,0)
 ;;=90887^^102^1067^5^^^^1
 ;;^UTILITY(U,$J,358.3,18557,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,18557,1,2,0)
 ;;=2^90887
 ;;^UTILITY(U,$J,358.3,18557,1,3,0)
 ;;=3^Consultation w/Family