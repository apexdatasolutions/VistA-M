IBDEI0NN ; ; 20-MAY-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;OCT 15, 2014
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,11579,1,4,0)
 ;;=4^782.1
 ;;^UTILITY(U,$J,358.3,11579,1,5,0)
 ;;=5^Skin eruption, nonspec
 ;;^UTILITY(U,$J,358.3,11579,2)
 ;;=^102948
 ;;^UTILITY(U,$J,358.3,11580,0)
 ;;=788.35^^64^699^54
 ;;^UTILITY(U,$J,358.3,11580,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,11580,1,4,0)
 ;;=4^788.35
 ;;^UTILITY(U,$J,358.3,11580,1,5,0)
 ;;=5^Dribbling, post-void
 ;;^UTILITY(U,$J,358.3,11580,2)
 ;;=^293938
 ;;^UTILITY(U,$J,358.3,11581,0)
 ;;=788.1^^64^699^61
 ;;^UTILITY(U,$J,358.3,11581,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,11581,1,4,0)
 ;;=4^788.1
 ;;^UTILITY(U,$J,358.3,11581,1,5,0)
 ;;=5^Dysuria
 ;;^UTILITY(U,$J,358.3,11581,2)
 ;;=Dysuria^37716
 ;;^UTILITY(U,$J,358.3,11582,0)
 ;;=788.36^^64^699^68
 ;;^UTILITY(U,$J,358.3,11582,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,11582,1,4,0)
 ;;=4^788.36
 ;;^UTILITY(U,$J,358.3,11582,1,5,0)
 ;;=5^Enuresis, nocturnal
 ;;^UTILITY(U,$J,358.3,11582,2)
 ;;=^293939
 ;;^UTILITY(U,$J,358.3,11583,0)
 ;;=788.41^^64^699^77
 ;;^UTILITY(U,$J,358.3,11583,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,11583,1,4,0)
 ;;=4^788.41
 ;;^UTILITY(U,$J,358.3,11583,1,5,0)
 ;;=5^Frequency of urine
 ;;^UTILITY(U,$J,358.3,11583,2)
 ;;=^124396
 ;;^UTILITY(U,$J,358.3,11584,0)
 ;;=788.21^^64^699^91
 ;;^UTILITY(U,$J,358.3,11584,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,11584,1,4,0)
 ;;=4^788.21
 ;;^UTILITY(U,$J,358.3,11584,1,5,0)
 ;;=5^Incomplet bladder emptying
 ;;^UTILITY(U,$J,358.3,11584,2)
 ;;=^295766
 ;;^UTILITY(U,$J,358.3,11585,0)
 ;;=788.34^^64^699^93
 ;;^UTILITY(U,$J,358.3,11585,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,11585,1,4,0)
 ;;=4^788.34
 ;;^UTILITY(U,$J,358.3,11585,1,5,0)
 ;;=5^Incontinence, continuous
 ;;^UTILITY(U,$J,358.3,11585,2)
 ;;=^293937
 ;;^UTILITY(U,$J,358.3,11586,0)
 ;;=788.33^^64^699^94
 ;;^UTILITY(U,$J,358.3,11586,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,11586,1,4,0)
 ;;=4^788.33
 ;;^UTILITY(U,$J,358.3,11586,1,5,0)
 ;;=5^Incontinence, mixed
 ;;^UTILITY(U,$J,358.3,11586,2)
 ;;=^293936
 ;;^UTILITY(U,$J,358.3,11587,0)
 ;;=788.30^^64^699^95
 ;;^UTILITY(U,$J,358.3,11587,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,11587,1,4,0)
 ;;=4^788.30
 ;;^UTILITY(U,$J,358.3,11587,1,5,0)
 ;;=5^Incontinence, other
 ;;^UTILITY(U,$J,358.3,11587,2)
 ;;=Incontinence, other^124400
 ;;^UTILITY(U,$J,358.3,11588,0)
 ;;=788.32^^64^699^97
 ;;^UTILITY(U,$J,358.3,11588,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,11588,1,4,0)
 ;;=4^788.32
 ;;^UTILITY(U,$J,358.3,11588,1,5,0)
 ;;=5^Incontinence, stress, male
 ;;^UTILITY(U,$J,358.3,11588,2)
 ;;=^293934
 ;;^UTILITY(U,$J,358.3,11589,0)
 ;;=625.6^^64^699^96
 ;;^UTILITY(U,$J,358.3,11589,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,11589,1,4,0)
 ;;=4^625.6
 ;;^UTILITY(U,$J,358.3,11589,1,5,0)
 ;;=5^Incontinence, stress, female
 ;;^UTILITY(U,$J,358.3,11589,2)
 ;;=^114717
 ;;^UTILITY(U,$J,358.3,11590,0)
 ;;=788.31^^64^699^98
 ;;^UTILITY(U,$J,358.3,11590,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,11590,1,4,0)
 ;;=4^788.31
 ;;^UTILITY(U,$J,358.3,11590,1,5,0)
 ;;=5^Incontinence, urge
 ;;^UTILITY(U,$J,358.3,11590,2)
 ;;=^260046
 ;;^UTILITY(U,$J,358.3,11591,0)
 ;;=788.43^^64^699^116
 ;;^UTILITY(U,$J,358.3,11591,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,11591,1,4,0)
 ;;=4^788.43
 ;;^UTILITY(U,$J,358.3,11591,1,5,0)
 ;;=5^Nocturia
 ;;^UTILITY(U,$J,358.3,11591,2)
 ;;=Nocturia^84740
 ;;^UTILITY(U,$J,358.3,11592,0)
 ;;=788.5^^64^699^119
 ;;^UTILITY(U,$J,358.3,11592,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,11592,1,4,0)
 ;;=4^788.5
 ;;^UTILITY(U,$J,358.3,11592,1,5,0)
 ;;=5^Oliguria/Anuria
 ;;^UTILITY(U,$J,358.3,11592,2)
 ;;=Oliguria/Anuria^85458