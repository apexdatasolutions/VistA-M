IBDEI1GL ; ; 20-MAY-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;OCT 15, 2014
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,26162,1,3,0)
 ;;=3^Dysthymic Disorder
 ;;^UTILITY(U,$J,358.3,26162,1,4,0)
 ;;=4^300.4
 ;;^UTILITY(U,$J,358.3,26162,2)
 ;;=^331913
 ;;^UTILITY(U,$J,358.3,26163,0)
 ;;=305.30^^150^1595^37
 ;;^UTILITY(U,$J,358.3,26163,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,26163,1,3,0)
 ;;=3^Hallucinogen Abuse
 ;;^UTILITY(U,$J,358.3,26163,1,4,0)
 ;;=4^305.30
 ;;^UTILITY(U,$J,358.3,26163,2)
 ;;=^53741
 ;;^UTILITY(U,$J,358.3,26164,0)
 ;;=304.50^^150^1595^38
 ;;^UTILITY(U,$J,358.3,26164,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,26164,1,3,0)
 ;;=3^Hallucinogen Dependence
 ;;^UTILITY(U,$J,358.3,26164,1,4,0)
 ;;=4^304.50
 ;;^UTILITY(U,$J,358.3,26164,2)
 ;;=^53744
 ;;^UTILITY(U,$J,358.3,26165,0)
 ;;=305.90^^150^1595^42
 ;;^UTILITY(U,$J,358.3,26165,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,26165,1,3,0)
 ;;=3^Inhalant Abuse
 ;;^UTILITY(U,$J,358.3,26165,1,4,0)
 ;;=4^305.90
 ;;^UTILITY(U,$J,358.3,26165,2)
 ;;=^63304
 ;;^UTILITY(U,$J,358.3,26166,0)
 ;;=304.60^^150^1595^43
 ;;^UTILITY(U,$J,358.3,26166,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,26166,1,3,0)
 ;;=3^Inhalant Dependence
 ;;^UTILITY(U,$J,358.3,26166,1,4,0)
 ;;=4^304.60
 ;;^UTILITY(U,$J,358.3,26166,2)
 ;;=^63306
 ;;^UTILITY(U,$J,358.3,26167,0)
 ;;=312.34^^150^1595^44
 ;;^UTILITY(U,$J,358.3,26167,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,26167,1,3,0)
 ;;=3^Intermit Explosive D/O
 ;;^UTILITY(U,$J,358.3,26167,1,4,0)
 ;;=4^312.34
 ;;^UTILITY(U,$J,358.3,26167,2)
 ;;=^64512
 ;;^UTILITY(U,$J,358.3,26168,0)
 ;;=296.36^^150^1595^48
 ;;^UTILITY(U,$J,358.3,26168,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,26168,1,3,0)
 ;;=3^Maj Depr, Recurr, Full Rem
 ;;^UTILITY(U,$J,358.3,26168,1,4,0)
 ;;=4^296.36
 ;;^UTILITY(U,$J,358.3,26168,2)
 ;;=^303605
 ;;^UTILITY(U,$J,358.3,26169,0)
 ;;=296.30^^150^1595^49
 ;;^UTILITY(U,$J,358.3,26169,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,26169,1,3,0)
 ;;=3^Maj Depr, Recurr, Unspec
 ;;^UTILITY(U,$J,358.3,26169,1,4,0)
 ;;=4^296.30
 ;;^UTILITY(U,$J,358.3,26169,2)
 ;;=^303614
 ;;^UTILITY(U,$J,358.3,26170,0)
 ;;=V71.09^^150^1595^50
 ;;^UTILITY(U,$J,358.3,26170,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,26170,1,3,0)
 ;;=3^Mental Cond, Other Suspec
 ;;^UTILITY(U,$J,358.3,26170,1,4,0)
 ;;=4^V71.09
 ;;^UTILITY(U,$J,358.3,26170,2)
 ;;=^295604
 ;;^UTILITY(U,$J,358.3,26171,0)
 ;;=293.83^^150^1595^51
 ;;^UTILITY(U,$J,358.3,26171,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,26171,1,3,0)
 ;;=3^Mood Disor d/t Gen Med Cond
 ;;^UTILITY(U,$J,358.3,26171,1,4,0)
 ;;=4^293.83
 ;;^UTILITY(U,$J,358.3,26171,2)
 ;;=^331838
 ;;^UTILITY(U,$J,358.3,26172,0)
 ;;=291.89^^150^1595^52
 ;;^UTILITY(U,$J,358.3,26172,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,26172,1,3,0)
 ;;=3^Mood Disor, Alco-Ind
 ;;^UTILITY(U,$J,358.3,26172,1,4,0)
 ;;=4^291.89
 ;;^UTILITY(U,$J,358.3,26172,2)
 ;;=^303498
 ;;^UTILITY(U,$J,358.3,26173,0)
 ;;=300.3^^150^1595^55
 ;;^UTILITY(U,$J,358.3,26173,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,26173,1,3,0)
 ;;=3^Obsessive-Compulsive Dis
 ;;^UTILITY(U,$J,358.3,26173,1,4,0)
 ;;=4^300.3
 ;;^UTILITY(U,$J,358.3,26173,2)
 ;;=^84904
 ;;^UTILITY(U,$J,358.3,26174,0)
 ;;=305.50^^150^1595^56
 ;;^UTILITY(U,$J,358.3,26174,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,26174,1,3,0)
 ;;=3^Opioid Abuse, Unspec
 ;;^UTILITY(U,$J,358.3,26174,1,4,0)
 ;;=4^305.50
 ;;^UTILITY(U,$J,358.3,26174,2)
 ;;=^85868
 ;;^UTILITY(U,$J,358.3,26175,0)
 ;;=304.00^^150^1595^57
 ;;^UTILITY(U,$J,358.3,26175,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,26175,1,3,0)
 ;;=3^Opioid Dependence, Unspec
 ;;^UTILITY(U,$J,358.3,26175,1,4,0)
 ;;=4^304.00
 ;;^UTILITY(U,$J,358.3,26175,2)
 ;;=^81364