IBDEI38D ; ; 19-NOV-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,54294,1,4,0)
 ;;=4^I70.645
 ;;^UTILITY(U,$J,358.3,54294,2)
 ;;=^5007751
 ;;^UTILITY(U,$J,358.3,54295,0)
 ;;=K12.0^^256^2764^258
 ;;^UTILITY(U,$J,358.3,54295,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,54295,1,3,0)
 ;;=3^Recurrent Oral Aphthae
 ;;^UTILITY(U,$J,358.3,54295,1,4,0)
 ;;=4^K12.0
 ;;^UTILITY(U,$J,358.3,54295,2)
 ;;=^5008483
 ;;^UTILITY(U,$J,358.3,54296,0)
 ;;=K12.1^^256^2764^271
 ;;^UTILITY(U,$J,358.3,54296,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,54296,1,3,0)
 ;;=3^Stomatitis NEC
 ;;^UTILITY(U,$J,358.3,54296,1,4,0)
 ;;=4^K12.1
 ;;^UTILITY(U,$J,358.3,54296,2)
 ;;=^5008484
 ;;^UTILITY(U,$J,358.3,54297,0)
 ;;=K12.2^^256^2764^94
 ;;^UTILITY(U,$J,358.3,54297,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,54297,1,3,0)
 ;;=3^Cellulitis & Abscess of Mouth
 ;;^UTILITY(U,$J,358.3,54297,1,4,0)
 ;;=4^K12.2
 ;;^UTILITY(U,$J,358.3,54297,2)
 ;;=^5008485
 ;;^UTILITY(U,$J,358.3,54298,0)
 ;;=L02.01^^256^2764^120
 ;;^UTILITY(U,$J,358.3,54298,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,54298,1,3,0)
 ;;=3^Cutaneous Abscess of Face
 ;;^UTILITY(U,$J,358.3,54298,1,4,0)
 ;;=4^L02.01
 ;;^UTILITY(U,$J,358.3,54298,2)
 ;;=^5008944
 ;;^UTILITY(U,$J,358.3,54299,0)
 ;;=L02.11^^256^2764^125
 ;;^UTILITY(U,$J,358.3,54299,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,54299,1,3,0)
 ;;=3^Cutaneous Abscess of Neck
 ;;^UTILITY(U,$J,358.3,54299,1,4,0)
 ;;=4^L02.11
 ;;^UTILITY(U,$J,358.3,54299,2)
 ;;=^5008947
 ;;^UTILITY(U,$J,358.3,54300,0)
 ;;=L02.211^^256^2764^117
 ;;^UTILITY(U,$J,358.3,54300,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,54300,1,3,0)
 ;;=3^Cutaneous Abscess of Abdominal Wall
 ;;^UTILITY(U,$J,358.3,54300,1,4,0)
 ;;=4^L02.211
 ;;^UTILITY(U,$J,358.3,54300,2)
 ;;=^5008950
 ;;^UTILITY(U,$J,358.3,54301,0)
 ;;=L02.212^^256^2764^118
 ;;^UTILITY(U,$J,358.3,54301,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,54301,1,3,0)
 ;;=3^Cutaneous Abscess of Back
 ;;^UTILITY(U,$J,358.3,54301,1,4,0)
 ;;=4^L02.212
 ;;^UTILITY(U,$J,358.3,54301,2)
 ;;=^5008951
 ;;^UTILITY(U,$J,358.3,54302,0)
 ;;=L02.213^^256^2764^119
 ;;^UTILITY(U,$J,358.3,54302,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,54302,1,3,0)
 ;;=3^Cutaneous Abscess of Chest Wall
 ;;^UTILITY(U,$J,358.3,54302,1,4,0)
 ;;=4^L02.213
 ;;^UTILITY(U,$J,358.3,54302,2)
 ;;=^5008952
 ;;^UTILITY(U,$J,358.3,54303,0)
 ;;=L02.214^^256^2764^121
 ;;^UTILITY(U,$J,358.3,54303,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,54303,1,3,0)
 ;;=3^Cutaneous Abscess of Groin
 ;;^UTILITY(U,$J,358.3,54303,1,4,0)
 ;;=4^L02.214
 ;;^UTILITY(U,$J,358.3,54303,2)
 ;;=^5008953
 ;;^UTILITY(U,$J,358.3,54304,0)
 ;;=L02.215^^256^2764^126
 ;;^UTILITY(U,$J,358.3,54304,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,54304,1,3,0)
 ;;=3^Cutaneous Abscess of Perineum
 ;;^UTILITY(U,$J,358.3,54304,1,4,0)
 ;;=4^L02.215
 ;;^UTILITY(U,$J,358.3,54304,2)
 ;;=^5008954
 ;;^UTILITY(U,$J,358.3,54305,0)
 ;;=L02.216^^256^2764^131
 ;;^UTILITY(U,$J,358.3,54305,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,54305,1,3,0)
 ;;=3^Cutaneous Abscess of Unbilicus
 ;;^UTILITY(U,$J,358.3,54305,1,4,0)
 ;;=4^L02.216
 ;;^UTILITY(U,$J,358.3,54305,2)
 ;;=^5008955
 ;;^UTILITY(U,$J,358.3,54306,0)
 ;;=L02.219^^256^2764^130
 ;;^UTILITY(U,$J,358.3,54306,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,54306,1,3,0)
 ;;=3^Cutaneous Abscess of Trunk,Unspec
 ;;^UTILITY(U,$J,358.3,54306,1,4,0)
 ;;=4^L02.219
 ;;^UTILITY(U,$J,358.3,54306,2)
 ;;=^5008956
 ;;^UTILITY(U,$J,358.3,54307,0)
 ;;=L02.32^^256^2764^154
 ;;^UTILITY(U,$J,358.3,54307,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,54307,1,3,0)
 ;;=3^Furuncle of Buttock
 ;;^UTILITY(U,$J,358.3,54307,1,4,0)
 ;;=4^L02.32
