IBDEI12W ; ; 19-NOV-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,18001,1,3,0)
 ;;=3^12013
 ;;^UTILITY(U,$J,358.3,18002,0)
 ;;=G0109^^93^894^1^^^^1
 ;;^UTILITY(U,$J,358.3,18002,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,18002,1,2,0)
 ;;=2^DIAB MGMT TRN,GRP PER 30MIN
 ;;^UTILITY(U,$J,358.3,18002,1,3,0)
 ;;=3^G0109
 ;;^UTILITY(U,$J,358.3,18003,0)
 ;;=98960^^93^894^3^^^^1
 ;;^UTILITY(U,$J,358.3,18003,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,18003,1,2,0)
 ;;=2^SELF-MGMT EDUC & TRAIN 1 PT
 ;;^UTILITY(U,$J,358.3,18003,1,3,0)
 ;;=3^98960
 ;;^UTILITY(U,$J,358.3,18004,0)
 ;;=G0108^^93^894^2^^^^1
 ;;^UTILITY(U,$J,358.3,18004,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,18004,1,2,0)
 ;;=2^DIAB MGMT TRN,IND PER 30MIN
 ;;^UTILITY(U,$J,358.3,18004,1,3,0)
 ;;=3^G0108
 ;;^UTILITY(U,$J,358.3,18005,0)
 ;;=90471^^93^895^4^^^^1
 ;;^UTILITY(U,$J,358.3,18005,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,18005,1,2,0)
 ;;=2^IMMUNIZATION ADMIN
 ;;^UTILITY(U,$J,358.3,18005,1,3,0)
 ;;=3^90471
 ;;^UTILITY(U,$J,358.3,18006,0)
 ;;=90472^^93^895^5^^^^1
 ;;^UTILITY(U,$J,358.3,18006,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,18006,1,2,0)
 ;;=2^IMMUNIZATION ADMIN,EA ADDL
 ;;^UTILITY(U,$J,358.3,18006,1,3,0)
 ;;=3^90472
 ;;^UTILITY(U,$J,358.3,18007,0)
 ;;=90658^^93^895^3^^^^1
 ;;^UTILITY(U,$J,358.3,18007,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,18007,1,2,0)
 ;;=2^FLU VACCIN IM (FLULAVAL)
 ;;^UTILITY(U,$J,358.3,18007,1,3,0)
 ;;=3^90658
 ;;^UTILITY(U,$J,358.3,18008,0)
 ;;=90703^^93^895^10^^^^1
 ;;^UTILITY(U,$J,358.3,18008,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,18008,1,2,0)
 ;;=2^TETANUS VACCINE
 ;;^UTILITY(U,$J,358.3,18008,1,3,0)
 ;;=3^90703
 ;;^UTILITY(U,$J,358.3,18009,0)
 ;;=90707^^93^895^6^^^^1
 ;;^UTILITY(U,$J,358.3,18009,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,18009,1,2,0)
 ;;=2^MMR VACCINE
 ;;^UTILITY(U,$J,358.3,18009,1,3,0)
 ;;=3^90707
 ;;^UTILITY(U,$J,358.3,18010,0)
 ;;=90714^^93^895^9^^^^1
 ;;^UTILITY(U,$J,358.3,18010,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,18010,1,2,0)
 ;;=2^TD VACCINE
 ;;^UTILITY(U,$J,358.3,18010,1,3,0)
 ;;=3^90714
 ;;^UTILITY(U,$J,358.3,18011,0)
 ;;=90732^^93^895^7^^^^1
 ;;^UTILITY(U,$J,358.3,18011,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,18011,1,2,0)
 ;;=2^PNEUMOCOCCAL VACCINE 23 VALENT
 ;;^UTILITY(U,$J,358.3,18011,1,3,0)
 ;;=3^90732
 ;;^UTILITY(U,$J,358.3,18012,0)
 ;;=90656^^93^895^2^^^^1
 ;;^UTILITY(U,$J,358.3,18012,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,18012,1,2,0)
 ;;=2^FLU VACC SGLE DOSE SYR (AFLURIA)
 ;;^UTILITY(U,$J,358.3,18012,1,3,0)
 ;;=3^90656
 ;;^UTILITY(U,$J,358.3,18013,0)
 ;;=90662^^93^895^1^^^^1
 ;;^UTILITY(U,$J,358.3,18013,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,18013,1,2,0)
 ;;=2^FLU VACC HIGH DOSE SYR (FLUZONE)
 ;;^UTILITY(U,$J,358.3,18013,1,3,0)
 ;;=3^90662
 ;;^UTILITY(U,$J,358.3,18014,0)
 ;;=90736^^93^895^11^^^^1
 ;;^UTILITY(U,$J,358.3,18014,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,18014,1,2,0)
 ;;=2^ZOSTER (SHINGLES) VACCINE
 ;;^UTILITY(U,$J,358.3,18014,1,3,0)
 ;;=3^90736
 ;;^UTILITY(U,$J,358.3,18015,0)
 ;;=90670^^93^895^8^^^^1
 ;;^UTILITY(U,$J,358.3,18015,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,18015,1,2,0)
 ;;=2^PNEUMOVAX 13 VALENT (PREVNAR)
 ;;^UTILITY(U,$J,358.3,18015,1,3,0)
 ;;=3^90670
 ;;^UTILITY(U,$J,358.3,18016,0)
 ;;=99420^^93^896^1^^^^1
 ;;^UTILITY(U,$J,358.3,18016,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,18016,1,2,0)
 ;;=2^HEALTH RISK ASSESSMENT TEST
 ;;^UTILITY(U,$J,358.3,18016,1,3,0)
 ;;=3^99420
 ;;^UTILITY(U,$J,358.3,18017,0)
 ;;=86485^^93^897^1^^^^1
 ;;^UTILITY(U,$J,358.3,18017,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,18017,1,2,0)
 ;;=2^CANDIDA
