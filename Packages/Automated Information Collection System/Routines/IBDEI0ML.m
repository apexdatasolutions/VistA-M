IBDEI0ML ; ; 20-MAY-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;OCT 15, 2014
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,11060,1,4,0)
 ;;=4^626.1
 ;;^UTILITY(U,$J,358.3,11060,1,5,0)
 ;;=5^Oligomenorrhea
 ;;^UTILITY(U,$J,358.3,11060,2)
 ;;=Oligomenorrhea^108125
 ;;^UTILITY(U,$J,358.3,11061,0)
 ;;=733.00^^64^693^36
 ;;^UTILITY(U,$J,358.3,11061,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,11061,1,4,0)
 ;;=4^733.00
 ;;^UTILITY(U,$J,358.3,11061,1,5,0)
 ;;=5^Osteoporosis
 ;;^UTILITY(U,$J,358.3,11061,2)
 ;;=Osteoporosis^87159
 ;;^UTILITY(U,$J,358.3,11062,0)
 ;;=626.5^^64^693^38
 ;;^UTILITY(U,$J,358.3,11062,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,11062,1,4,0)
 ;;=4^626.5
 ;;^UTILITY(U,$J,358.3,11062,1,5,0)
 ;;=5^Ovulation Bleeding
 ;;^UTILITY(U,$J,358.3,11062,2)
 ;;=Ovulation Bleeding^270570
 ;;^UTILITY(U,$J,358.3,11063,0)
 ;;=625.2^^64^693^39
 ;;^UTILITY(U,$J,358.3,11063,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,11063,1,4,0)
 ;;=4^625.2
 ;;^UTILITY(U,$J,358.3,11063,1,5,0)
 ;;=5^Ovulation Pain
 ;;^UTILITY(U,$J,358.3,11063,2)
 ;;=Ovulation Pain^265259
 ;;^UTILITY(U,$J,358.3,11064,0)
 ;;=614.9^^64^693^42
 ;;^UTILITY(U,$J,358.3,11064,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,11064,1,4,0)
 ;;=4^614.9
 ;;^UTILITY(U,$J,358.3,11064,1,5,0)
 ;;=5^Pelvic inflammatory disease
 ;;^UTILITY(U,$J,358.3,11064,2)
 ;;=^3537
 ;;^UTILITY(U,$J,358.3,11065,0)
 ;;=789.30^^64^693^40
 ;;^UTILITY(U,$J,358.3,11065,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,11065,1,4,0)
 ;;=4^789.30
 ;;^UTILITY(U,$J,358.3,11065,1,5,0)
 ;;=5^Pelvic Mass
 ;;^UTILITY(U,$J,358.3,11065,2)
 ;;=Pelvic Mass^917
 ;;^UTILITY(U,$J,358.3,11066,0)
 ;;=622.7^^64^693^44
 ;;^UTILITY(U,$J,358.3,11066,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,11066,1,4,0)
 ;;=4^622.7
 ;;^UTILITY(U,$J,358.3,11066,1,5,0)
 ;;=5^Polyp of Cervix
 ;;^UTILITY(U,$J,358.3,11066,2)
 ;;=Polyp of Cervix^79612
 ;;^UTILITY(U,$J,358.3,11067,0)
 ;;=627.1^^64^693^45
 ;;^UTILITY(U,$J,358.3,11067,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,11067,1,4,0)
 ;;=4^627.1
 ;;^UTILITY(U,$J,358.3,11067,1,5,0)
 ;;=5^Postmenopausal bleeding
 ;;^UTILITY(U,$J,358.3,11067,2)
 ;;=^97040
 ;;^UTILITY(U,$J,358.3,11068,0)
 ;;=V24.2^^64^693^46
 ;;^UTILITY(U,$J,358.3,11068,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,11068,1,4,0)
 ;;=4^V24.2
 ;;^UTILITY(U,$J,358.3,11068,1,5,0)
 ;;=5^Postpartum
 ;;^UTILITY(U,$J,358.3,11068,2)
 ;;=Postpartum^114052
 ;;^UTILITY(U,$J,358.3,11069,0)
 ;;=V22.2^^64^693^47
 ;;^UTILITY(U,$J,358.3,11069,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,11069,1,4,0)
 ;;=4^V22.2
 ;;^UTILITY(U,$J,358.3,11069,1,5,0)
 ;;=5^Pregnancy Status
 ;;^UTILITY(U,$J,358.3,11069,2)
 ;;=Pregnancy Status^97923
 ;;^UTILITY(U,$J,358.3,11070,0)
 ;;=627.0^^64^693^48
 ;;^UTILITY(U,$J,358.3,11070,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,11070,1,4,0)
 ;;=4^627.0
 ;;^UTILITY(U,$J,358.3,11070,1,5,0)
 ;;=5^Premenopausal menorrhagia
 ;;^UTILITY(U,$J,358.3,11070,2)
 ;;=^270575
 ;;^UTILITY(U,$J,358.3,11071,0)
 ;;=625.4^^64^693^49
 ;;^UTILITY(U,$J,358.3,11071,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,11071,1,4,0)
 ;;=4^625.4
 ;;^UTILITY(U,$J,358.3,11071,1,5,0)
 ;;=5^Premenstrual tension
 ;;^UTILITY(U,$J,358.3,11071,2)
 ;;=^98014
 ;;^UTILITY(U,$J,358.3,11072,0)
 ;;=302.70^^64^693^51
 ;;^UTILITY(U,$J,358.3,11072,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,11072,1,4,0)
 ;;=4^302.70
 ;;^UTILITY(U,$J,358.3,11072,1,5,0)
 ;;=5^Sexual dysfunction, psychosexual
 ;;^UTILITY(U,$J,358.3,11072,2)
 ;;=^100647
 ;;^UTILITY(U,$J,358.3,11073,0)
 ;;=599.0^^64^693^55
 ;;^UTILITY(U,$J,358.3,11073,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,11073,1,4,0)
 ;;=4^599.0
 ;;^UTILITY(U,$J,358.3,11073,1,5,0)
 ;;=5^Urinary Tract Infection