IBDEI0JX ; ; 20-MAY-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;OCT 15, 2014
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,9694,1,5,0)
 ;;=5^Abdominal pain, Generalized
 ;;^UTILITY(U,$J,358.3,9694,2)
 ;;=^303324
 ;;^UTILITY(U,$J,358.3,9695,0)
 ;;=789.09^^58^637^14
 ;;^UTILITY(U,$J,358.3,9695,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,9695,1,4,0)
 ;;=4^789.09
 ;;^UTILITY(U,$J,358.3,9695,1,5,0)
 ;;=5^Abdominal pain, Oth Spec Site
 ;;^UTILITY(U,$J,358.3,9695,2)
 ;;=^303325
 ;;^UTILITY(U,$J,358.3,9696,0)
 ;;=789.00^^58^637^18
 ;;^UTILITY(U,$J,358.3,9696,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,9696,1,4,0)
 ;;=4^789.00
 ;;^UTILITY(U,$J,358.3,9696,1,5,0)
 ;;=5^Abdominal pain, Site Unspec
 ;;^UTILITY(U,$J,358.3,9696,2)
 ;;=^303317
 ;;^UTILITY(U,$J,358.3,9697,0)
 ;;=789.46^^58^637^19
 ;;^UTILITY(U,$J,358.3,9697,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,9697,1,4,0)
 ;;=4^789.46
 ;;^UTILITY(U,$J,358.3,9697,1,5,0)
 ;;=5^Abdominal rigidity, Epigast
 ;;^UTILITY(U,$J,358.3,9697,2)
 ;;=^303339
 ;;^UTILITY(U,$J,358.3,9698,0)
 ;;=789.47^^58^637^20
 ;;^UTILITY(U,$J,358.3,9698,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,9698,1,4,0)
 ;;=4^789.47
 ;;^UTILITY(U,$J,358.3,9698,1,5,0)
 ;;=5^Abdominal rigidity, Generalized
 ;;^UTILITY(U,$J,358.3,9698,2)
 ;;=^303340
 ;;^UTILITY(U,$J,358.3,9699,0)
 ;;=789.44^^58^637^21
 ;;^UTILITY(U,$J,358.3,9699,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,9699,1,4,0)
 ;;=4^789.44
 ;;^UTILITY(U,$J,358.3,9699,1,5,0)
 ;;=5^Abdominal rigidity, LLQ
 ;;^UTILITY(U,$J,358.3,9699,2)
 ;;=^303337
 ;;^UTILITY(U,$J,358.3,9700,0)
 ;;=789.42^^58^637^22
 ;;^UTILITY(U,$J,358.3,9700,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,9700,1,4,0)
 ;;=4^789.42
 ;;^UTILITY(U,$J,358.3,9700,1,5,0)
 ;;=5^Abdominal rigidity, LUQ
 ;;^UTILITY(U,$J,358.3,9700,2)
 ;;=^303335
 ;;^UTILITY(U,$J,358.3,9701,0)
 ;;=789.49^^58^637^23
 ;;^UTILITY(U,$J,358.3,9701,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,9701,1,4,0)
 ;;=4^789.49
 ;;^UTILITY(U,$J,358.3,9701,1,5,0)
 ;;=5^Abdominal rigidity, Oth Spec Site
 ;;^UTILITY(U,$J,358.3,9701,2)
 ;;=^303341
 ;;^UTILITY(U,$J,358.3,9702,0)
 ;;=789.45^^58^637^24
 ;;^UTILITY(U,$J,358.3,9702,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,9702,1,4,0)
 ;;=4^789.45
 ;;^UTILITY(U,$J,358.3,9702,1,5,0)
 ;;=5^Abdominal rigidity, Periumbil
 ;;^UTILITY(U,$J,358.3,9702,2)
 ;;=^303338
 ;;^UTILITY(U,$J,358.3,9703,0)
 ;;=789.43^^58^637^25
 ;;^UTILITY(U,$J,358.3,9703,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,9703,1,4,0)
 ;;=4^789.43
 ;;^UTILITY(U,$J,358.3,9703,1,5,0)
 ;;=5^Abdominal rigidity, RLQ
 ;;^UTILITY(U,$J,358.3,9703,2)
 ;;=^303336
 ;;^UTILITY(U,$J,358.3,9704,0)
 ;;=789.41^^58^637^26
 ;;^UTILITY(U,$J,358.3,9704,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,9704,1,4,0)
 ;;=4^789.41
 ;;^UTILITY(U,$J,358.3,9704,1,5,0)
 ;;=5^Abdominal rigidity, RUQ
 ;;^UTILITY(U,$J,358.3,9704,2)
 ;;=^303334
 ;;^UTILITY(U,$J,358.3,9705,0)
 ;;=789.39^^58^637^5
 ;;^UTILITY(U,$J,358.3,9705,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,9705,1,4,0)
 ;;=4^789.39
 ;;^UTILITY(U,$J,358.3,9705,1,5,0)
 ;;=5^Abdom/Pelv Swelling, Other Spec Site
 ;;^UTILITY(U,$J,358.3,9705,2)
 ;;=^303333
 ;;^UTILITY(U,$J,358.3,9706,0)
 ;;=789.37^^58^637^2
 ;;^UTILITY(U,$J,358.3,9706,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,9706,1,4,0)
 ;;=4^789.37
 ;;^UTILITY(U,$J,358.3,9706,1,5,0)
 ;;=5^Abdom/Pelv Swelling, Generalized
 ;;^UTILITY(U,$J,358.3,9706,2)
 ;;=^303332
 ;;^UTILITY(U,$J,358.3,9707,0)
 ;;=789.36^^58^637^1
 ;;^UTILITY(U,$J,358.3,9707,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,9707,1,4,0)
 ;;=4^789.36
 ;;^UTILITY(U,$J,358.3,9707,1,5,0)
 ;;=5^Abdom/Pelv Swelling, Epigast
 ;;^UTILITY(U,$J,358.3,9707,2)
 ;;=^303331
 ;;^UTILITY(U,$J,358.3,9708,0)
 ;;=789.34^^58^637^3