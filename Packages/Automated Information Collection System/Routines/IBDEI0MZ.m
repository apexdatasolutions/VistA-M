IBDEI0MZ ; ; 20-MAY-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;OCT 15, 2014
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,11251,1,5,0)
 ;;=5^Otitis Externa 
 ;;^UTILITY(U,$J,358.3,11251,2)
 ;;=380.10^62807
 ;;^UTILITY(U,$J,358.3,11252,0)
 ;;=382.9^^64^695^49
 ;;^UTILITY(U,$J,358.3,11252,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,11252,1,4,0)
 ;;=4^382.9
 ;;^UTILITY(U,$J,358.3,11252,1,5,0)
 ;;=5^Otitis Media
 ;;^UTILITY(U,$J,358.3,11252,2)
 ;;=^123967
 ;;^UTILITY(U,$J,358.3,11253,0)
 ;;=614.9^^64^695^50
 ;;^UTILITY(U,$J,358.3,11253,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,11253,1,4,0)
 ;;=4^614.9
 ;;^UTILITY(U,$J,358.3,11253,1,5,0)
 ;;=5^Pelvic Inflammatory Disease
 ;;^UTILITY(U,$J,358.3,11253,2)
 ;;=^3537
 ;;^UTILITY(U,$J,358.3,11254,0)
 ;;=486.^^64^695^52
 ;;^UTILITY(U,$J,358.3,11254,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,11254,1,4,0)
 ;;=4^486.
 ;;^UTILITY(U,$J,358.3,11254,1,5,0)
 ;;=5^Pneumonia
 ;;^UTILITY(U,$J,358.3,11254,2)
 ;;=^95632
 ;;^UTILITY(U,$J,358.3,11255,0)
 ;;=136.3^^64^695^51
 ;;^UTILITY(U,$J,358.3,11255,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,11255,1,4,0)
 ;;=4^136.3
 ;;^UTILITY(U,$J,358.3,11255,1,5,0)
 ;;=5^Pneumocystosis
 ;;^UTILITY(U,$J,358.3,11255,2)
 ;;=^95635
 ;;^UTILITY(U,$J,358.3,11256,0)
 ;;=601.9^^64^695^56
 ;;^UTILITY(U,$J,358.3,11256,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,11256,1,4,0)
 ;;=4^601.9
 ;;^UTILITY(U,$J,358.3,11256,1,5,0)
 ;;=5^Prostatitis NOS
 ;;^UTILITY(U,$J,358.3,11256,2)
 ;;=^99489
 ;;^UTILITY(U,$J,358.3,11257,0)
 ;;=590.80^^64^695^57
 ;;^UTILITY(U,$J,358.3,11257,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,11257,1,4,0)
 ;;=4^590.80
 ;;^UTILITY(U,$J,358.3,11257,1,5,0)
 ;;=5^Pyelonephritis NOS
 ;;^UTILITY(U,$J,358.3,11257,2)
 ;;=^101463
 ;;^UTILITY(U,$J,358.3,11258,0)
 ;;=711.00^^64^695^58
 ;;^UTILITY(U,$J,358.3,11258,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,11258,1,4,0)
 ;;=4^711.00
 ;;^UTILITY(U,$J,358.3,11258,1,5,0)
 ;;=5^Septic Joint
 ;;^UTILITY(U,$J,358.3,11258,2)
 ;;=^263780
 ;;^UTILITY(U,$J,358.3,11259,0)
 ;;=461.9^^64^695^60
 ;;^UTILITY(U,$J,358.3,11259,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,11259,1,4,0)
 ;;=4^461.9
 ;;^UTILITY(U,$J,358.3,11259,1,5,0)
 ;;=5^Sinusitis, Acute
 ;;^UTILITY(U,$J,358.3,11259,2)
 ;;=^259080
 ;;^UTILITY(U,$J,358.3,11260,0)
 ;;=473.9^^64^695^59
 ;;^UTILITY(U,$J,358.3,11260,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,11260,1,4,0)
 ;;=4^473.9
 ;;^UTILITY(U,$J,358.3,11260,1,5,0)
 ;;=5^Sinusitis Chronic
 ;;^UTILITY(U,$J,358.3,11260,2)
 ;;=^123985
 ;;^UTILITY(U,$J,358.3,11261,0)
 ;;=091.0^^64^695^65
 ;;^UTILITY(U,$J,358.3,11261,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,11261,1,4,0)
 ;;=4^091.0
 ;;^UTILITY(U,$J,358.3,11261,1,5,0)
 ;;=5^Syphilis,Primary Genital
 ;;^UTILITY(U,$J,358.3,11261,2)
 ;;=^50581
 ;;^UTILITY(U,$J,358.3,11262,0)
 ;;=097.0^^64^695^63
 ;;^UTILITY(U,$J,358.3,11262,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,11262,1,4,0)
 ;;=4^097.0
 ;;^UTILITY(U,$J,358.3,11262,1,5,0)
 ;;=5^Syphilis,Latent
 ;;^UTILITY(U,$J,358.3,11262,2)
 ;;=^266781
 ;;^UTILITY(U,$J,358.3,11263,0)
 ;;=094.9^^64^695^64
 ;;^UTILITY(U,$J,358.3,11263,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,11263,1,4,0)
 ;;=4^094.9
 ;;^UTILITY(U,$J,358.3,11263,1,5,0)
 ;;=5^Syphilis,Neurosyphilis
 ;;^UTILITY(U,$J,358.3,11263,2)
 ;;=^83026
 ;;^UTILITY(U,$J,358.3,11264,0)
 ;;=097.9^^64^695^62
 ;;^UTILITY(U,$J,358.3,11264,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,11264,1,4,0)
 ;;=4^097.9
 ;;^UTILITY(U,$J,358.3,11264,1,5,0)
 ;;=5^Syphilis NOS
 ;;^UTILITY(U,$J,358.3,11264,2)
 ;;=^116808
 ;;^UTILITY(U,$J,358.3,11265,0)
 ;;=463.^^64^695^66
 ;;^UTILITY(U,$J,358.3,11265,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,11265,1,4,0)
 ;;=4^463.