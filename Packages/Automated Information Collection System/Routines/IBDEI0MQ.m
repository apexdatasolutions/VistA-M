IBDEI0MQ ; ; 20-MAY-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;OCT 15, 2014
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,11128,1,5,0)
 ;;=5^Soft Tissue Sarcoma
 ;;^UTILITY(U,$J,358.3,11128,2)
 ;;=^267165
 ;;^UTILITY(U,$J,358.3,11129,0)
 ;;=186.9^^64^694^52
 ;;^UTILITY(U,$J,358.3,11129,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,11129,1,4,0)
 ;;=4^186.9
 ;;^UTILITY(U,$J,358.3,11129,1,5,0)
 ;;=5^Ca Testicular
 ;;^UTILITY(U,$J,358.3,11129,2)
 ;;=^267242
 ;;^UTILITY(U,$J,358.3,11130,0)
 ;;=198.7^^64^694^7
 ;;^UTILITY(U,$J,358.3,11130,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,11130,1,4,0)
 ;;=4^198.7
 ;;^UTILITY(U,$J,358.3,11130,1,5,0)
 ;;=5^Adrenal Metastasis
 ;;^UTILITY(U,$J,358.3,11130,2)
 ;;=^267337
 ;;^UTILITY(U,$J,358.3,11131,0)
 ;;=198.5^^64^694^95
 ;;^UTILITY(U,$J,358.3,11131,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,11131,1,4,0)
 ;;=4^198.5
 ;;^UTILITY(U,$J,358.3,11131,1,5,0)
 ;;=5^Mets to Bone or Bone Marrow
 ;;^UTILITY(U,$J,358.3,11131,2)
 ;;=^267336
 ;;^UTILITY(U,$J,358.3,11132,0)
 ;;=198.3^^64^694^96
 ;;^UTILITY(U,$J,358.3,11132,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,11132,1,4,0)
 ;;=4^198.3
 ;;^UTILITY(U,$J,358.3,11132,1,5,0)
 ;;=5^Mets to Brain
 ;;^UTILITY(U,$J,358.3,11132,2)
 ;;=Brain Metatastasis^267334
 ;;^UTILITY(U,$J,358.3,11133,0)
 ;;=197.7^^64^694^39
 ;;^UTILITY(U,$J,358.3,11133,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,11133,1,4,0)
 ;;=4^197.7
 ;;^UTILITY(U,$J,358.3,11133,1,5,0)
 ;;=5^Ca Liver, Secondary
 ;;^UTILITY(U,$J,358.3,11133,2)
 ;;=CA Liver, Secondary^267328
 ;;^UTILITY(U,$J,358.3,11134,0)
 ;;=197.0^^64^694^97
 ;;^UTILITY(U,$J,358.3,11134,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,11134,1,4,0)
 ;;=4^197.0
 ;;^UTILITY(U,$J,358.3,11134,1,5,0)
 ;;=5^Mets to Lung
 ;;^UTILITY(U,$J,358.3,11134,2)
 ;;=Mets to Lung^267322
 ;;^UTILITY(U,$J,358.3,11135,0)
 ;;=196.2^^64^694^98
 ;;^UTILITY(U,$J,358.3,11135,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,11135,1,4,0)
 ;;=4^196.2
 ;;^UTILITY(U,$J,358.3,11135,1,5,0)
 ;;=5^Mets to Lymph Nodes,Abdominal
 ;;^UTILITY(U,$J,358.3,11135,2)
 ;;=^267316
 ;;^UTILITY(U,$J,358.3,11136,0)
 ;;=196.3^^64^694^99
 ;;^UTILITY(U,$J,358.3,11136,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,11136,1,4,0)
 ;;=4^196.3
 ;;^UTILITY(U,$J,358.3,11136,1,5,0)
 ;;=5^Mets to Lymph Nodes,Axillary Or Brachial
 ;;^UTILITY(U,$J,358.3,11136,2)
 ;;=^267317
 ;;^UTILITY(U,$J,358.3,11137,0)
 ;;=196.0^^64^694^100
 ;;^UTILITY(U,$J,358.3,11137,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,11137,1,4,0)
 ;;=4^196.0
 ;;^UTILITY(U,$J,358.3,11137,1,5,0)
 ;;=5^Mets to Lymph Nodes,Cervical
 ;;^UTILITY(U,$J,358.3,11137,2)
 ;;=Lymph Nodes^267314
 ;;^UTILITY(U,$J,358.3,11138,0)
 ;;=196.1^^64^694^101
 ;;^UTILITY(U,$J,358.3,11138,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,11138,1,4,0)
 ;;=4^196.1
 ;;^UTILITY(U,$J,358.3,11138,1,5,0)
 ;;=5^Mets to Lymph Nodes,Mediastinal 
 ;;^UTILITY(U,$J,358.3,11138,2)
 ;;=Lymph Nodes^267315
 ;;^UTILITY(U,$J,358.3,11139,0)
 ;;=196.8^^64^694^102
 ;;^UTILITY(U,$J,358.3,11139,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,11139,1,4,0)
 ;;=4^196.8
 ;;^UTILITY(U,$J,358.3,11139,1,5,0)
 ;;=5^Mets to Lymph Nodes,Multiple Sites
 ;;^UTILITY(U,$J,358.3,11139,2)
 ;;=^267320
 ;;^UTILITY(U,$J,358.3,11140,0)
 ;;=V10.51^^64^694^56
 ;;^UTILITY(U,$J,358.3,11140,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,11140,1,4,0)
 ;;=4^V10.51
 ;;^UTILITY(U,$J,358.3,11140,1,5,0)
 ;;=5^H/O Bladder Cancer
 ;;^UTILITY(U,$J,358.3,11140,2)
 ;;=^295228
 ;;^UTILITY(U,$J,358.3,11141,0)
 ;;=V10.3^^64^694^57
 ;;^UTILITY(U,$J,358.3,11141,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,11141,1,4,0)
 ;;=4^V10.3
 ;;^UTILITY(U,$J,358.3,11141,1,5,0)
 ;;=5^H/O Breast Cancer
 ;;^UTILITY(U,$J,358.3,11141,2)
 ;;=^295217