IBDEI0B3 ; ; 19-NOV-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,4701,1,2,0)
 ;;=2^32554
 ;;^UTILITY(U,$J,358.3,4701,1,3,0)
 ;;=3^ASPIRATE PLEURA W/O IMAGING
 ;;^UTILITY(U,$J,358.3,4702,0)
 ;;=32555^^36^312^1^^^^1
 ;;^UTILITY(U,$J,358.3,4702,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,4702,1,2,0)
 ;;=2^32555
 ;;^UTILITY(U,$J,358.3,4702,1,3,0)
 ;;=3^ASPIRATE PLEURA W/ IMAGING
 ;;^UTILITY(U,$J,358.3,4703,0)
 ;;=99291^^36^313^1^^^^1
 ;;^UTILITY(U,$J,358.3,4703,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,4703,1,2,0)
 ;;=2^99291
 ;;^UTILITY(U,$J,358.3,4703,1,3,0)
 ;;=3^CRITICAL CARE E&M,30-74 MIN
 ;;^UTILITY(U,$J,358.3,4704,0)
 ;;=99292^^36^313^2^^^^1
 ;;^UTILITY(U,$J,358.3,4704,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,4704,1,2,0)
 ;;=2^99292
 ;;^UTILITY(U,$J,358.3,4704,1,3,0)
 ;;=3^CRITICAL CARE E&M,EA ADDL 30 MIN
 ;;^UTILITY(U,$J,358.3,4705,0)
 ;;=G0425^^36^314^1^^^^1
 ;;^UTILITY(U,$J,358.3,4705,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,4705,1,2,0)
 ;;=2^G0425
 ;;^UTILITY(U,$J,358.3,4705,1,3,0)
 ;;=3^INPT/TELECONSULT,INIT,30 MIN
 ;;^UTILITY(U,$J,358.3,4706,0)
 ;;=G0426^^36^314^2^^^^1
 ;;^UTILITY(U,$J,358.3,4706,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,4706,1,2,0)
 ;;=2^G0426
 ;;^UTILITY(U,$J,358.3,4706,1,3,0)
 ;;=3^INPT/TELECONSULT,INIT,50 MIN
 ;;^UTILITY(U,$J,358.3,4707,0)
 ;;=G0427^^36^314^3^^^^1
 ;;^UTILITY(U,$J,358.3,4707,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,4707,1,2,0)
 ;;=2^G0427
 ;;^UTILITY(U,$J,358.3,4707,1,3,0)
 ;;=3^INPT/TELECONSULT,INIT,70 MIN
 ;;^UTILITY(U,$J,358.3,4708,0)
 ;;=G0406^^36^314^4^^^^1
 ;;^UTILITY(U,$J,358.3,4708,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,4708,1,2,0)
 ;;=2^G0406
 ;;^UTILITY(U,$J,358.3,4708,1,3,0)
 ;;=3^INPT/TELE FOLLOW-UP,15 MIN
 ;;^UTILITY(U,$J,358.3,4709,0)
 ;;=G0407^^36^314^5^^^^1
 ;;^UTILITY(U,$J,358.3,4709,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,4709,1,2,0)
 ;;=2^G0407
 ;;^UTILITY(U,$J,358.3,4709,1,3,0)
 ;;=3^INPT/TELE FOLLOW-UP,25 MIN
 ;;^UTILITY(U,$J,358.3,4710,0)
 ;;=G0408^^36^314^6^^^^1
 ;;^UTILITY(U,$J,358.3,4710,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,4710,1,2,0)
 ;;=2^G0408
 ;;^UTILITY(U,$J,358.3,4710,1,3,0)
 ;;=3^INPT/TELE FOLLOW-UP,35 MIN
 ;;^UTILITY(U,$J,358.3,4711,0)
 ;;=G0459^^36^314^7^^^^1
 ;;^UTILITY(U,$J,358.3,4711,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,4711,1,2,0)
 ;;=2^G0459
 ;;^UTILITY(U,$J,358.3,4711,1,3,0)
 ;;=3^INPT/TELE PHARM MGMT
 ;;^UTILITY(U,$J,358.3,4712,0)
 ;;=I63.50^^37^315^1
 ;;^UTILITY(U,$J,358.3,4712,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,4712,1,3,0)
 ;;=3^Cerebral Infarction d/t Occls/Stenosis of Unspec Cerebral Artery
 ;;^UTILITY(U,$J,358.3,4712,1,4,0)
 ;;=4^I63.50
 ;;^UTILITY(U,$J,358.3,4712,2)
 ;;=^5007343
 ;;^UTILITY(U,$J,358.3,4713,0)
 ;;=I63.511^^37^315^2
 ;;^UTILITY(U,$J,358.3,4713,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,4713,1,3,0)
 ;;=3^Cerebral Infarction d/t Occls/Stenosis of Right Mid Cerebral Artery
 ;;^UTILITY(U,$J,358.3,4713,1,4,0)
 ;;=4^I63.511
 ;;^UTILITY(U,$J,358.3,4713,2)
 ;;=^5007344
 ;;^UTILITY(U,$J,358.3,4714,0)
 ;;=I63.512^^37^315^3
 ;;^UTILITY(U,$J,358.3,4714,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,4714,1,3,0)
 ;;=3^Cerebral Infarction d/t Occls/Stenosis of Left Mid Cerebral Artery
 ;;^UTILITY(U,$J,358.3,4714,1,4,0)
 ;;=4^I63.512
 ;;^UTILITY(U,$J,358.3,4714,2)
 ;;=^5007345
 ;;^UTILITY(U,$J,358.3,4715,0)
 ;;=I63.521^^37^315^4
 ;;^UTILITY(U,$J,358.3,4715,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,4715,1,3,0)
 ;;=3^Cerebral Infarction d/t Occls/Stenosis of Right Ant Cerebral Artery
 ;;^UTILITY(U,$J,358.3,4715,1,4,0)
 ;;=4^I63.521
 ;;^UTILITY(U,$J,358.3,4715,2)
 ;;=^5007346
