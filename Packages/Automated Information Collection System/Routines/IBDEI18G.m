IBDEI18G ; ; 20-MAY-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;OCT 15, 2014
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,22117,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,22117,1,2,0)
 ;;=2^EMG Head or Neck
 ;;^UTILITY(U,$J,358.3,22117,1,3,0)
 ;;=3^95868
 ;;^UTILITY(U,$J,358.3,22118,0)
 ;;=95870^^127^1324^8^^^^1
 ;;^UTILITY(U,$J,358.3,22118,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,22118,1,2,0)
 ;;=2^EMG Nonparaspinal
 ;;^UTILITY(U,$J,358.3,22118,1,3,0)
 ;;=3^95870
 ;;^UTILITY(U,$J,358.3,22119,0)
 ;;=95861^^127^1324^3^^^^1
 ;;^UTILITY(U,$J,358.3,22119,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,22119,1,2,0)
 ;;=2^EMG 2 Limbs
 ;;^UTILITY(U,$J,358.3,22119,1,3,0)
 ;;=3^95861
 ;;^UTILITY(U,$J,358.3,22120,0)
 ;;=95885^^127^1324^17^^^^1
 ;;^UTILITY(U,$J,358.3,22120,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,22120,1,2,0)
 ;;=2^Needle EM,ea ext;Limited
 ;;^UTILITY(U,$J,358.3,22120,1,3,0)
 ;;=3^95885
 ;;^UTILITY(U,$J,358.3,22121,0)
 ;;=95886^^127^1324^16^^^^1
 ;;^UTILITY(U,$J,358.3,22121,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,22121,1,2,0)
 ;;=2^Needle EM,ea ext;Complete,5>Muscles
 ;;^UTILITY(U,$J,358.3,22121,1,3,0)
 ;;=3^95886
 ;;^UTILITY(U,$J,358.3,22122,0)
 ;;=95887^^127^1324^15^^^^1
 ;;^UTILITY(U,$J,358.3,22122,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,22122,1,2,0)
 ;;=2^Needle EM,Non-Ext,w/Nerve Conduction
 ;;^UTILITY(U,$J,358.3,22122,1,3,0)
 ;;=3^95887
 ;;^UTILITY(U,$J,358.3,22123,0)
 ;;=95831^^127^1324^14^^^^1
 ;;^UTILITY(U,$J,358.3,22123,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,22123,1,2,0)
 ;;=2^Muscle Test,Manual-Limb
 ;;^UTILITY(U,$J,358.3,22123,1,3,0)
 ;;=3^95831
 ;;^UTILITY(U,$J,358.3,22124,0)
 ;;=95832^^127^1324^13^^^^1
 ;;^UTILITY(U,$J,358.3,22124,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,22124,1,2,0)
 ;;=2^Muscle Test,Manual-Hand
 ;;^UTILITY(U,$J,358.3,22124,1,3,0)
 ;;=3^95832
 ;;^UTILITY(U,$J,358.3,22125,0)
 ;;=95833^^127^1324^11^^^^1
 ;;^UTILITY(U,$J,358.3,22125,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,22125,1,2,0)
 ;;=2^Muscl Tst,Man-Body Excl Hand
 ;;^UTILITY(U,$J,358.3,22125,1,3,0)
 ;;=3^95833
 ;;^UTILITY(U,$J,358.3,22126,0)
 ;;=95834^^127^1324^12^^^^1
 ;;^UTILITY(U,$J,358.3,22126,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,22126,1,2,0)
 ;;=2^Muscl Tst,Man-Body Incl Hand
 ;;^UTILITY(U,$J,358.3,22126,1,3,0)
 ;;=3^95834
 ;;^UTILITY(U,$J,358.3,22127,0)
 ;;=95869^^127^1324^9^^^^1
 ;;^UTILITY(U,$J,358.3,22127,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,22127,1,2,0)
 ;;=2^EMG Thor Paraspinal
 ;;^UTILITY(U,$J,358.3,22127,1,3,0)
 ;;=3^95869
 ;;^UTILITY(U,$J,358.3,22128,0)
 ;;=95905^^127^1324^10^^^^1
 ;;^UTILITY(U,$J,358.3,22128,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,22128,1,2,0)
 ;;=2^Motor/Sens Nerv Conduct-ea limb w/F-wv
 ;;^UTILITY(U,$J,358.3,22128,1,3,0)
 ;;=3^95905
 ;;^UTILITY(U,$J,358.3,22129,0)
 ;;=95937^^127^1324^25^^^^1
 ;;^UTILITY(U,$J,358.3,22129,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,22129,1,2,0)
 ;;=2^Neuromuscular Junction Test
 ;;^UTILITY(U,$J,358.3,22129,1,3,0)
 ;;=3^95937
 ;;^UTILITY(U,$J,358.3,22130,0)
 ;;=95907^^127^1324^18^^^^1
 ;;^UTILITY(U,$J,358.3,22130,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,22130,1,2,0)
 ;;=2^Nerve conduction studies; 1-2 studies
 ;;^UTILITY(U,$J,358.3,22130,1,3,0)
 ;;=3^95907
 ;;^UTILITY(U,$J,358.3,22131,0)
 ;;=95908^^127^1324^20^^^^1
 ;;^UTILITY(U,$J,358.3,22131,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,22131,1,2,0)
 ;;=2^Nerve conduction studies; 3-4 studies
 ;;^UTILITY(U,$J,358.3,22131,1,3,0)
 ;;=3^95908
 ;;^UTILITY(U,$J,358.3,22132,0)
 ;;=95909^^127^1324^21^^^^1
 ;;^UTILITY(U,$J,358.3,22132,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,22132,1,2,0)
 ;;=2^Nerve conduction studies; 5-6 studies