IBDEI2GS ; ; 19-NOV-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,41348,1,4,0)
 ;;=4^M06.271
 ;;^UTILITY(U,$J,358.3,41348,2)
 ;;=^5010091
 ;;^UTILITY(U,$J,358.3,41349,0)
 ;;=Z47.2^^189^2095^4
 ;;^UTILITY(U,$J,358.3,41349,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,41349,1,3,0)
 ;;=3^Removal of Internal Fixation Device
 ;;^UTILITY(U,$J,358.3,41349,1,4,0)
 ;;=4^Z47.2
 ;;^UTILITY(U,$J,358.3,41349,2)
 ;;=^5063026
 ;;^UTILITY(U,$J,358.3,41350,0)
 ;;=Z48.89^^189^2096^46
 ;;^UTILITY(U,$J,358.3,41350,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,41350,1,3,0)
 ;;=3^Surg aftercare, oth, spec
 ;;^UTILITY(U,$J,358.3,41350,1,4,0)
 ;;=4^Z48.89
 ;;^UTILITY(U,$J,358.3,41350,2)
 ;;=^5063055
 ;;^UTILITY(U,$J,358.3,41351,0)
 ;;=R20.8^^189^2096^1
 ;;^UTILITY(U,$J,358.3,41351,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,41351,1,3,0)
 ;;=3^Skin Sensation Disturbance NEC
 ;;^UTILITY(U,$J,358.3,41351,1,4,0)
 ;;=4^R20.8
 ;;^UTILITY(U,$J,358.3,41351,2)
 ;;=^5019281
 ;;^UTILITY(U,$J,358.3,41352,0)
 ;;=L72.2^^189^2096^23
 ;;^UTILITY(U,$J,358.3,41352,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,41352,1,3,0)
 ;;=3^Steatocystoma multiplex
 ;;^UTILITY(U,$J,358.3,41352,1,4,0)
 ;;=4^L72.2
 ;;^UTILITY(U,$J,358.3,41352,2)
 ;;=^5009280
 ;;^UTILITY(U,$J,358.3,41353,0)
 ;;=S93.301A^^189^2096^40
 ;;^UTILITY(U,$J,358.3,41353,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,41353,1,3,0)
 ;;=3^Subluxation rt ft, unspec, init enc
 ;;^UTILITY(U,$J,358.3,41353,1,4,0)
 ;;=4^S93.301A
 ;;^UTILITY(U,$J,358.3,41353,2)
 ;;=^5045720
 ;;^UTILITY(U,$J,358.3,41354,0)
 ;;=S93.302A^^189^2096^29
 ;;^UTILITY(U,$J,358.3,41354,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,41354,1,3,0)
 ;;=3^Subluxation lft ft, unspec, init enc
 ;;^UTILITY(U,$J,358.3,41354,1,4,0)
 ;;=4^S93.302A
 ;;^UTILITY(U,$J,358.3,41354,2)
 ;;=^5045723
 ;;^UTILITY(U,$J,358.3,41355,0)
 ;;=S93.311A^^189^2096^43
 ;;^UTILITY(U,$J,358.3,41355,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,41355,1,3,0)
 ;;=3^Subluxation tarsal jnt rt ft, init enc
 ;;^UTILITY(U,$J,358.3,41355,1,4,0)
 ;;=4^S93.311A
 ;;^UTILITY(U,$J,358.3,41355,2)
 ;;=^5045732
 ;;^UTILITY(U,$J,358.3,41356,0)
 ;;=S93.312A^^189^2096^42
 ;;^UTILITY(U,$J,358.3,41356,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,41356,1,3,0)
 ;;=3^Subluxation tarsal jnt lft ft, init enc
 ;;^UTILITY(U,$J,358.3,41356,1,4,0)
 ;;=4^S93.312A
 ;;^UTILITY(U,$J,358.3,41356,2)
 ;;=^5045735
 ;;^UTILITY(U,$J,358.3,41357,0)
 ;;=S93.322A^^189^2096^44
 ;;^UTILITY(U,$J,358.3,41357,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,41357,1,3,0)
 ;;=3^Subluxation tarsometatarsal jt lft ft, init
 ;;^UTILITY(U,$J,358.3,41357,1,4,0)
 ;;=4^S93.322A
 ;;^UTILITY(U,$J,358.3,41357,2)
 ;;=^5045753
 ;;^UTILITY(U,$J,358.3,41358,0)
 ;;=S93.321A^^189^2096^45
 ;;^UTILITY(U,$J,358.3,41358,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,41358,1,3,0)
 ;;=3^Subluxation tarsometatarsal jt rt ft, init
 ;;^UTILITY(U,$J,358.3,41358,1,4,0)
 ;;=4^S93.321A
 ;;^UTILITY(U,$J,358.3,41358,2)
 ;;=^5045750
 ;;^UTILITY(U,$J,358.3,41359,0)
 ;;=S93.331A^^189^2096^39
 ;;^UTILITY(U,$J,358.3,41359,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,41359,1,3,0)
 ;;=3^Subluxation rt ft, oth, init enc
 ;;^UTILITY(U,$J,358.3,41359,1,4,0)
 ;;=4^S93.331A
 ;;^UTILITY(U,$J,358.3,41359,2)
 ;;=^5045768
 ;;^UTILITY(U,$J,358.3,41360,0)
 ;;=S93.332A^^189^2096^28
 ;;^UTILITY(U,$J,358.3,41360,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,41360,1,3,0)
 ;;=3^Subluxation lft ft, oth, init enc
 ;;^UTILITY(U,$J,358.3,41360,1,4,0)
 ;;=4^S93.332A
 ;;^UTILITY(U,$J,358.3,41360,2)
 ;;=^5137660
 ;;^UTILITY(U,$J,358.3,41361,0)
 ;;=S93.142A^^189^2096^31
 ;;^UTILITY(U,$J,358.3,41361,1,0)
 ;;=^358.31IA^4^2
