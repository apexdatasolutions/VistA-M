IBDEI1OC ; ; 20-MAY-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;OCT 15, 2014
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,30080,1,3,0)
 ;;=3^Anorectal Abscess
 ;;^UTILITY(U,$J,358.3,30080,1,4,0)
 ;;=4^K61.2
 ;;^UTILITY(U,$J,358.3,30080,2)
 ;;=^5008750
 ;;^UTILITY(U,$J,358.3,30081,0)
 ;;=K61.3^^189^1905^47
 ;;^UTILITY(U,$J,358.3,30081,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,30081,1,3,0)
 ;;=3^Ischiorectal Abscess
 ;;^UTILITY(U,$J,358.3,30081,1,4,0)
 ;;=4^K61.3
 ;;^UTILITY(U,$J,358.3,30081,2)
 ;;=^5008751
 ;;^UTILITY(U,$J,358.3,30082,0)
 ;;=K61.4^^189^1905^44
 ;;^UTILITY(U,$J,358.3,30082,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,30082,1,3,0)
 ;;=3^Intrasphincteric Abscess
 ;;^UTILITY(U,$J,358.3,30082,1,4,0)
 ;;=4^K61.4
 ;;^UTILITY(U,$J,358.3,30082,2)
 ;;=^5008752
 ;;^UTILITY(U,$J,358.3,30083,0)
 ;;=K63.5^^189^1905^15
 ;;^UTILITY(U,$J,358.3,30083,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,30083,1,3,0)
 ;;=3^Colon Polyp
 ;;^UTILITY(U,$J,358.3,30083,1,4,0)
 ;;=4^K63.5
 ;;^UTILITY(U,$J,358.3,30083,2)
 ;;=^5008765
 ;;^UTILITY(U,$J,358.3,30084,0)
 ;;=K70.2^^189^1905^1
 ;;^UTILITY(U,$J,358.3,30084,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,30084,1,3,0)
 ;;=3^Alcoholic Fibrosis/Sclerosis of Liver
 ;;^UTILITY(U,$J,358.3,30084,1,4,0)
 ;;=4^K70.2
 ;;^UTILITY(U,$J,358.3,30084,2)
 ;;=^5008787
 ;;^UTILITY(U,$J,358.3,30085,0)
 ;;=K74.0^^189^1905^39
 ;;^UTILITY(U,$J,358.3,30085,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,30085,1,3,0)
 ;;=3^Hepatic Fibrosis
 ;;^UTILITY(U,$J,358.3,30085,1,4,0)
 ;;=4^K74.0
 ;;^UTILITY(U,$J,358.3,30085,2)
 ;;=^5008816
 ;;^UTILITY(U,$J,358.3,30086,0)
 ;;=K80.20^^189^1905^12
 ;;^UTILITY(U,$J,358.3,30086,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,30086,1,3,0)
 ;;=3^Calculus of Gallbladder w/o Cholecystitis/Obstruction
 ;;^UTILITY(U,$J,358.3,30086,1,4,0)
 ;;=4^K80.20
 ;;^UTILITY(U,$J,358.3,30086,2)
 ;;=^5008846
 ;;^UTILITY(U,$J,358.3,30087,0)
 ;;=K80.80^^189^1905^14
 ;;^UTILITY(U,$J,358.3,30087,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,30087,1,3,0)
 ;;=3^Cholelithiasis w/o Obstruction NEC
 ;;^UTILITY(U,$J,358.3,30087,1,4,0)
 ;;=4^K80.80
 ;;^UTILITY(U,$J,358.3,30087,2)
 ;;=^5008871
 ;;^UTILITY(U,$J,358.3,30088,0)
 ;;=K81.9^^189^1905^13
 ;;^UTILITY(U,$J,358.3,30088,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,30088,1,3,0)
 ;;=3^Cholecystitis,Unspec
 ;;^UTILITY(U,$J,358.3,30088,1,4,0)
 ;;=4^K81.9
 ;;^UTILITY(U,$J,358.3,30088,2)
 ;;=^87388
 ;;^UTILITY(U,$J,358.3,30089,0)
 ;;=K92.1^^189^1905^81
 ;;^UTILITY(U,$J,358.3,30089,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,30089,1,3,0)
 ;;=3^Melena
 ;;^UTILITY(U,$J,358.3,30089,1,4,0)
 ;;=4^K92.1
 ;;^UTILITY(U,$J,358.3,30089,2)
 ;;=^5008914
 ;;^UTILITY(U,$J,358.3,30090,0)
 ;;=K94.01^^189^1905^17
 ;;^UTILITY(U,$J,358.3,30090,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,30090,1,3,0)
 ;;=3^Colostomy Hemorrhage
 ;;^UTILITY(U,$J,358.3,30090,1,4,0)
 ;;=4^K94.01
 ;;^UTILITY(U,$J,358.3,30090,2)
 ;;=^5008919
 ;;^UTILITY(U,$J,358.3,30091,0)
 ;;=K94.02^^189^1905^18
 ;;^UTILITY(U,$J,358.3,30091,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,30091,1,3,0)
 ;;=3^Colostomy Infection
 ;;^UTILITY(U,$J,358.3,30091,1,4,0)
 ;;=4^K94.02
 ;;^UTILITY(U,$J,358.3,30091,2)
 ;;=^5008920
 ;;^UTILITY(U,$J,358.3,30092,0)
 ;;=K94.03^^189^1905^19
 ;;^UTILITY(U,$J,358.3,30092,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,30092,1,3,0)
 ;;=3^Colostomy Malfunction
 ;;^UTILITY(U,$J,358.3,30092,1,4,0)
 ;;=4^K94.03
 ;;^UTILITY(U,$J,358.3,30092,2)
 ;;=^5008921
 ;;^UTILITY(U,$J,358.3,30093,0)
 ;;=K94.09^^189^1905^16
 ;;^UTILITY(U,$J,358.3,30093,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,30093,1,3,0)
 ;;=3^Colostomy Complications NEC
 ;;^UTILITY(U,$J,358.3,30093,1,4,0)
 ;;=4^K94.09