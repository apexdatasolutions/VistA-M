IBDEI2JX ; ; 19-NOV-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,42791,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,42791,1,3,0)
 ;;=3^Surg aftercare, oth, spec
 ;;^UTILITY(U,$J,358.3,42791,1,4,0)
 ;;=4^Z48.89
 ;;^UTILITY(U,$J,358.3,42791,2)
 ;;=^5063055
 ;;^UTILITY(U,$J,358.3,42792,0)
 ;;=R20.8^^192^2147^1
 ;;^UTILITY(U,$J,358.3,42792,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,42792,1,3,0)
 ;;=3^Skin Sensation Disturbance NEC
 ;;^UTILITY(U,$J,358.3,42792,1,4,0)
 ;;=4^R20.8
 ;;^UTILITY(U,$J,358.3,42792,2)
 ;;=^5019281
 ;;^UTILITY(U,$J,358.3,42793,0)
 ;;=L72.2^^192^2147^23
 ;;^UTILITY(U,$J,358.3,42793,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,42793,1,3,0)
 ;;=3^Steatocystoma multiplex
 ;;^UTILITY(U,$J,358.3,42793,1,4,0)
 ;;=4^L72.2
 ;;^UTILITY(U,$J,358.3,42793,2)
 ;;=^5009280
 ;;^UTILITY(U,$J,358.3,42794,0)
 ;;=S93.301A^^192^2147^40
 ;;^UTILITY(U,$J,358.3,42794,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,42794,1,3,0)
 ;;=3^Subluxation rt ft, unspec, init enc
 ;;^UTILITY(U,$J,358.3,42794,1,4,0)
 ;;=4^S93.301A
 ;;^UTILITY(U,$J,358.3,42794,2)
 ;;=^5045720
 ;;^UTILITY(U,$J,358.3,42795,0)
 ;;=S93.302A^^192^2147^29
 ;;^UTILITY(U,$J,358.3,42795,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,42795,1,3,0)
 ;;=3^Subluxation lft ft, unspec, init enc
 ;;^UTILITY(U,$J,358.3,42795,1,4,0)
 ;;=4^S93.302A
 ;;^UTILITY(U,$J,358.3,42795,2)
 ;;=^5045723
 ;;^UTILITY(U,$J,358.3,42796,0)
 ;;=S93.311A^^192^2147^43
 ;;^UTILITY(U,$J,358.3,42796,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,42796,1,3,0)
 ;;=3^Subluxation tarsal jnt rt ft, init enc
 ;;^UTILITY(U,$J,358.3,42796,1,4,0)
 ;;=4^S93.311A
 ;;^UTILITY(U,$J,358.3,42796,2)
 ;;=^5045732
 ;;^UTILITY(U,$J,358.3,42797,0)
 ;;=S93.312A^^192^2147^42
 ;;^UTILITY(U,$J,358.3,42797,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,42797,1,3,0)
 ;;=3^Subluxation tarsal jnt lft ft, init enc
 ;;^UTILITY(U,$J,358.3,42797,1,4,0)
 ;;=4^S93.312A
 ;;^UTILITY(U,$J,358.3,42797,2)
 ;;=^5045735
 ;;^UTILITY(U,$J,358.3,42798,0)
 ;;=S93.322A^^192^2147^44
 ;;^UTILITY(U,$J,358.3,42798,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,42798,1,3,0)
 ;;=3^Subluxation tarsometatarsal jt lft ft, init
 ;;^UTILITY(U,$J,358.3,42798,1,4,0)
 ;;=4^S93.322A
 ;;^UTILITY(U,$J,358.3,42798,2)
 ;;=^5045753
 ;;^UTILITY(U,$J,358.3,42799,0)
 ;;=S93.321A^^192^2147^45
 ;;^UTILITY(U,$J,358.3,42799,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,42799,1,3,0)
 ;;=3^Subluxation tarsometatarsal jt rt ft, init
 ;;^UTILITY(U,$J,358.3,42799,1,4,0)
 ;;=4^S93.321A
 ;;^UTILITY(U,$J,358.3,42799,2)
 ;;=^5045750
 ;;^UTILITY(U,$J,358.3,42800,0)
 ;;=S93.331A^^192^2147^39
 ;;^UTILITY(U,$J,358.3,42800,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,42800,1,3,0)
 ;;=3^Subluxation rt ft, oth, init enc
 ;;^UTILITY(U,$J,358.3,42800,1,4,0)
 ;;=4^S93.331A
 ;;^UTILITY(U,$J,358.3,42800,2)
 ;;=^5045768
 ;;^UTILITY(U,$J,358.3,42801,0)
 ;;=S93.332A^^192^2147^28
 ;;^UTILITY(U,$J,358.3,42801,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,42801,1,3,0)
 ;;=3^Subluxation lft ft, oth, init enc
 ;;^UTILITY(U,$J,358.3,42801,1,4,0)
 ;;=4^S93.332A
 ;;^UTILITY(U,$J,358.3,42801,2)
 ;;=^5137660
 ;;^UTILITY(U,$J,358.3,42802,0)
 ;;=S93.142A^^192^2147^31
 ;;^UTILITY(U,$J,358.3,42802,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,42802,1,3,0)
 ;;=3^Subluxation of MTP jt lft grt toe, init
 ;;^UTILITY(U,$J,358.3,42802,1,4,0)
 ;;=4^S93.142A
 ;;^UTILITY(U,$J,358.3,42802,2)
 ;;=^5045702
 ;;^UTILITY(U,$J,358.3,42803,0)
 ;;=S93.141A^^192^2147^33
 ;;^UTILITY(U,$J,358.3,42803,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,42803,1,3,0)
 ;;=3^Subluxation of MTP jt rt grt toe, init
 ;;^UTILITY(U,$J,358.3,42803,1,4,0)
 ;;=4^S93.141A
