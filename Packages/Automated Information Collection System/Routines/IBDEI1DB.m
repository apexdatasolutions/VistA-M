IBDEI1DB ; ; 20-MAY-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;OCT 15, 2014
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,24541,2)
 ;;=^20266
 ;;^UTILITY(U,$J,358.3,24542,0)
 ;;=380.4^^145^1528^10
 ;;^UTILITY(U,$J,358.3,24542,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,24542,1,4,0)
 ;;=4^380.4
 ;;^UTILITY(U,$J,358.3,24542,1,5,0)
 ;;=5^Cerumen Impacton
 ;;^UTILITY(U,$J,358.3,24542,2)
 ;;=^62061
 ;;^UTILITY(U,$J,358.3,24543,0)
 ;;=372.72^^145^1528^12
 ;;^UTILITY(U,$J,358.3,24543,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,24543,1,4,0)
 ;;=4^372.72
 ;;^UTILITY(U,$J,358.3,24543,1,5,0)
 ;;=5^Conjunctival Hemorrhage
 ;;^UTILITY(U,$J,358.3,24543,2)
 ;;=^27538
 ;;^UTILITY(U,$J,358.3,24544,0)
 ;;=372.30^^145^1528^13
 ;;^UTILITY(U,$J,358.3,24544,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,24544,1,4,0)
 ;;=4^372.30
 ;;^UTILITY(U,$J,358.3,24544,1,5,0)
 ;;=5^Conjunctivitis NOS
 ;;^UTILITY(U,$J,358.3,24544,2)
 ;;=^27546
 ;;^UTILITY(U,$J,358.3,24545,0)
 ;;=918.1^^145^1528^14
 ;;^UTILITY(U,$J,358.3,24545,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,24545,1,4,0)
 ;;=4^918.1
 ;;^UTILITY(U,$J,358.3,24545,1,5,0)
 ;;=5^Corneal Abrasion
 ;;^UTILITY(U,$J,358.3,24545,2)
 ;;=^115829
 ;;^UTILITY(U,$J,358.3,24546,0)
 ;;=784.7^^145^1528^22
 ;;^UTILITY(U,$J,358.3,24546,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,24546,1,4,0)
 ;;=4^784.7
 ;;^UTILITY(U,$J,358.3,24546,1,5,0)
 ;;=5^Nosebleed
 ;;^UTILITY(U,$J,358.3,24546,2)
 ;;=Nosebleed^41658
 ;;^UTILITY(U,$J,358.3,24547,0)
 ;;=365.9^^145^1528^16
 ;;^UTILITY(U,$J,358.3,24547,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,24547,1,4,0)
 ;;=4^365.9
 ;;^UTILITY(U,$J,358.3,24547,1,5,0)
 ;;=5^Glaucoma NOS
 ;;^UTILITY(U,$J,358.3,24547,2)
 ;;=^51160
 ;;^UTILITY(U,$J,358.3,24548,0)
 ;;=389.9^^145^1528^17
 ;;^UTILITY(U,$J,358.3,24548,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,24548,1,4,0)
 ;;=4^389.9
 ;;^UTILITY(U,$J,358.3,24548,1,5,0)
 ;;=5^Hearing Loss
 ;;^UTILITY(U,$J,358.3,24548,2)
 ;;=^54552
 ;;^UTILITY(U,$J,358.3,24549,0)
 ;;=465.0^^145^1528^18
 ;;^UTILITY(U,$J,358.3,24549,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,24549,1,4,0)
 ;;=4^465.0
 ;;^UTILITY(U,$J,358.3,24549,1,5,0)
 ;;=5^Laryngopharyngitis,Acute
 ;;^UTILITY(U,$J,358.3,24549,2)
 ;;=^269876
 ;;^UTILITY(U,$J,358.3,24550,0)
 ;;=386.00^^145^1528^19
 ;;^UTILITY(U,$J,358.3,24550,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,24550,1,4,0)
 ;;=4^386.00
 ;;^UTILITY(U,$J,358.3,24550,1,5,0)
 ;;=5^Meniere's Disease
 ;;^UTILITY(U,$J,358.3,24550,2)
 ;;=^75724
 ;;^UTILITY(U,$J,358.3,24551,0)
 ;;=471.9^^145^1528^20
 ;;^UTILITY(U,$J,358.3,24551,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,24551,1,4,0)
 ;;=4^471.9
 ;;^UTILITY(U,$J,358.3,24551,1,5,0)
 ;;=5^Nasal Polyposis
 ;;^UTILITY(U,$J,358.3,24551,2)
 ;;=^81426
 ;;^UTILITY(U,$J,358.3,24552,0)
 ;;=379.54^^145^1528^23
 ;;^UTILITY(U,$J,358.3,24552,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,24552,1,4,0)
 ;;=4^379.54
 ;;^UTILITY(U,$J,358.3,24552,1,5,0)
 ;;=5^Nystagmus W/ Vestibular Dis
 ;;^UTILITY(U,$J,358.3,24552,2)
 ;;=^269324
 ;;^UTILITY(U,$J,358.3,24553,0)
 ;;=525.9^^145^1528^45
 ;;^UTILITY(U,$J,358.3,24553,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,24553,1,4,0)
 ;;=4^525.9
 ;;^UTILITY(U,$J,358.3,24553,1,5,0)
 ;;=5^Tooth Pain
 ;;^UTILITY(U,$J,358.3,24553,2)
 ;;=Tooth Pain^123871
 ;;^UTILITY(U,$J,358.3,24554,0)
 ;;=522.5^^145^1528^15
 ;;^UTILITY(U,$J,358.3,24554,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,24554,1,4,0)
 ;;=4^522.5
 ;;^UTILITY(U,$J,358.3,24554,1,5,0)
 ;;=5^Dental Abscess
 ;;^UTILITY(U,$J,358.3,24554,2)
 ;;=Dental Abscess^91817
 ;;^UTILITY(U,$J,358.3,24555,0)
 ;;=464.00^^145^1528^2
 ;;^UTILITY(U,$J,358.3,24555,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,24555,1,4,0)
 ;;=4^464.00