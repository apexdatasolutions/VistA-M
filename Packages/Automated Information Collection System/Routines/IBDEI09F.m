IBDEI09F ; ; 20-FEB-2013
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;FEB 20, 2013
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,12499,2)
 ;;=^87463
 ;;^UTILITY(U,$J,358.3,12500,0)
 ;;=493.92^^105^837^4
 ;;^UTILITY(U,$J,358.3,12500,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,12500,1,4,0)
 ;;=4^493.92
 ;;^UTILITY(U,$J,358.3,12500,1,5,0)
 ;;=5^Asthma, Acute Exacerbation
 ;;^UTILITY(U,$J,358.3,12500,2)
 ;;=^322001
 ;;^UTILITY(U,$J,358.3,12501,0)
 ;;=493.20^^105^837^10
 ;;^UTILITY(U,$J,358.3,12501,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,12501,1,4,0)
 ;;=4^493.20
 ;;^UTILITY(U,$J,358.3,12501,1,5,0)
 ;;=5^COPD with Asthma
 ;;^UTILITY(U,$J,358.3,12501,2)
 ;;=COPD with Asthma^269964
 ;;^UTILITY(U,$J,358.3,12502,0)
 ;;=493.91^^105^837^5
 ;;^UTILITY(U,$J,358.3,12502,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,12502,1,4,0)
 ;;=4^493.91
 ;;^UTILITY(U,$J,358.3,12502,1,5,0)
 ;;=5^Asthma, with Status Asthmat
 ;;^UTILITY(U,$J,358.3,12502,2)
 ;;=^269967
 ;;^UTILITY(U,$J,358.3,12503,0)
 ;;=491.21^^105^837^9
 ;;^UTILITY(U,$J,358.3,12503,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,12503,1,4,0)
 ;;=4^491.21
 ;;^UTILITY(U,$J,358.3,12503,1,5,0)
 ;;=5^COPD Exacerbation
 ;;^UTILITY(U,$J,358.3,12503,2)
 ;;=COPD Exacerbation^269954
 ;;^UTILITY(U,$J,358.3,12504,0)
 ;;=494.0^^105^837^7
 ;;^UTILITY(U,$J,358.3,12504,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,12504,1,4,0)
 ;;=4^494.0
 ;;^UTILITY(U,$J,358.3,12504,1,5,0)
 ;;=5^Bronchiectasis, chronic
 ;;^UTILITY(U,$J,358.3,12504,2)
 ;;=^321990
 ;;^UTILITY(U,$J,358.3,12505,0)
 ;;=494.1^^105^837^6
 ;;^UTILITY(U,$J,358.3,12505,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,12505,1,4,0)
 ;;=4^494.1
 ;;^UTILITY(U,$J,358.3,12505,1,5,0)
 ;;=5^Bronchiectasis with exacerb
 ;;^UTILITY(U,$J,358.3,12505,2)
 ;;=^321991
 ;;^UTILITY(U,$J,358.3,12506,0)
 ;;=496.^^105^837^8
 ;;^UTILITY(U,$J,358.3,12506,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,12506,1,4,0)
 ;;=4^496.
 ;;^UTILITY(U,$J,358.3,12506,1,5,0)
 ;;=5^COPD
 ;;^UTILITY(U,$J,358.3,12506,2)
 ;;=COPD, General^24355
 ;;^UTILITY(U,$J,358.3,12507,0)
 ;;=491.20^^105^837^11
 ;;^UTILITY(U,$J,358.3,12507,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,12507,1,4,0)
 ;;=4^491.20
 ;;^UTILITY(U,$J,358.3,12507,1,5,0)
 ;;=5^Chr Obstruct Bronchitis w/o Exac
 ;;^UTILITY(U,$J,358.3,12507,2)
 ;;=Chronic Asthmatic Bronchitis^269953
 ;;^UTILITY(U,$J,358.3,12508,0)
 ;;=491.9^^105^837^12
 ;;^UTILITY(U,$J,358.3,12508,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,12508,1,4,0)
 ;;=4^491.9
 ;;^UTILITY(U,$J,358.3,12508,1,5,0)
 ;;=5^Chronic Bronchitis
 ;;^UTILITY(U,$J,358.3,12508,2)
 ;;=^24359
 ;;^UTILITY(U,$J,358.3,12509,0)
 ;;=786.2^^105^837^13
 ;;^UTILITY(U,$J,358.3,12509,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,12509,1,4,0)
 ;;=4^786.2
 ;;^UTILITY(U,$J,358.3,12509,1,5,0)
 ;;=5^Cough
 ;;^UTILITY(U,$J,358.3,12509,2)
 ;;=Cough^28905
 ;;^UTILITY(U,$J,358.3,12510,0)
 ;;=786.09^^105^837^14
 ;;^UTILITY(U,$J,358.3,12510,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,12510,1,4,0)
 ;;=4^786.09
 ;;^UTILITY(U,$J,358.3,12510,1,5,0)
 ;;=5^Dyspnea
 ;;^UTILITY(U,$J,358.3,12510,2)
 ;;=Dyspnea^87547
 ;;^UTILITY(U,$J,358.3,12511,0)
 ;;=492.8^^105^837^15
 ;;^UTILITY(U,$J,358.3,12511,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,12511,1,4,0)
 ;;=4^492.8
 ;;^UTILITY(U,$J,358.3,12511,1,5,0)
 ;;=5^Emphysema
 ;;^UTILITY(U,$J,358.3,12511,2)
 ;;=Emphysema^87569
 ;;^UTILITY(U,$J,358.3,12512,0)
 ;;=487.1^^105^837^21
 ;;^UTILITY(U,$J,358.3,12512,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,12512,1,4,0)
 ;;=4^487.1
 ;;^UTILITY(U,$J,358.3,12512,1,5,0)
 ;;=5^Influenza with other Resp Manifest
 ;;^UTILITY(U,$J,358.3,12512,2)
 ;;=^63125
 ;;^UTILITY(U,$J,358.3,12513,0)
 ;;=487.0^^105^837^20
 ;;^UTILITY(U,$J,358.3,12513,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,12513,1,4,0)
 ;;=4^487.0
 ;;^UTILITY(U,$J,358.3,12513,1,5,0)
 ;;=5^Influenza w Pneumonia
 ;;^UTILITY(U,$J,358.3,12513,2)
 ;;=^269942
 ;;^UTILITY(U,$J,358.3,12514,0)
 ;;=515.^^105^837^22
 ;;^UTILITY(U,$J,358.3,12514,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,12514,1,4,0)
 ;;=4^515.
 ;;^UTILITY(U,$J,358.3,12514,1,5,0)
 ;;=5^Interstitial Lung disease
 ;;^UTILITY(U,$J,358.3,12514,2)
 ;;=^101072
 ;;^UTILITY(U,$J,358.3,12515,0)
 ;;=786.52^^105^837^24
 ;;^UTILITY(U,$J,358.3,12515,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,12515,1,4,0)
 ;;=4^786.52
 ;;^UTILITY(U,$J,358.3,12515,1,5,0)
 ;;=5^Painful resp, Pleurodynia
 ;;^UTILITY(U,$J,358.3,12515,2)
 ;;=^89126
 ;;^UTILITY(U,$J,358.3,12516,0)
 ;;=511.9^^105^837^25
 ;;^UTILITY(U,$J,358.3,12516,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,12516,1,4,0)
 ;;=4^511.9
 ;;^UTILITY(U,$J,358.3,12516,1,5,0)
 ;;=5^Pleural Effusion, Unsp type
 ;;^UTILITY(U,$J,358.3,12516,2)
 ;;=^123973
 ;;^UTILITY(U,$J,358.3,12517,0)
 ;;=511.0^^105^837^26
 ;;^UTILITY(U,$J,358.3,12517,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,12517,1,4,0)
 ;;=4^511.0
 ;;^UTILITY(U,$J,358.3,12517,1,5,0)
 ;;=5^Pleurisy
 ;;^UTILITY(U,$J,358.3,12517,2)
 ;;=Pleurisy^95432
 ;;^UTILITY(U,$J,358.3,12518,0)
 ;;=486.^^105^837^27
 ;;^UTILITY(U,$J,358.3,12518,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,12518,1,4,0)
 ;;=4^486.
 ;;^UTILITY(U,$J,358.3,12518,1,5,0)
 ;;=5^Pneumonia, Unsp Organism
 ;;^UTILITY(U,$J,358.3,12518,2)
 ;;=^95632
 ;;^UTILITY(U,$J,358.3,12519,0)
 ;;=135.^^105^837^28
 ;;^UTILITY(U,$J,358.3,12519,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,12519,1,4,0)
 ;;=4^135.
 ;;^UTILITY(U,$J,358.3,12519,1,5,0)
 ;;=5^Sarcoidosis
 ;;^UTILITY(U,$J,358.3,12519,2)
 ;;=Sarcoidosis^107916^517.8
 ;;^UTILITY(U,$J,358.3,12520,0)
 ;;=786.05^^105^837^29
 ;;^UTILITY(U,$J,358.3,12520,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,12520,1,4,0)
 ;;=4^786.05
 ;;^UTILITY(U,$J,358.3,12520,1,5,0)
 ;;=5^Shortness of Breath
 ;;^UTILITY(U,$J,358.3,12520,2)
 ;;=Shortness of Breath^37632
 ;;^UTILITY(U,$J,358.3,12521,0)
 ;;=780.57^^105^837^30
 ;;^UTILITY(U,$J,358.3,12521,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,12521,1,4,0)
 ;;=4^780.57
 ;;^UTILITY(U,$J,358.3,12521,1,5,0)
 ;;=5^Sleep Apnea
 ;;^UTILITY(U,$J,358.3,12521,2)
 ;;=Sleep Apnea^293933
 ;;^UTILITY(U,$J,358.3,12522,0)
 ;;=786.1^^105^837^32
 ;;^UTILITY(U,$J,358.3,12522,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,12522,1,4,0)
 ;;=4^786.1
 ;;^UTILITY(U,$J,358.3,12522,1,5,0)
 ;;=5^Stridor
 ;;^UTILITY(U,$J,358.3,12522,2)
 ;;=Stridor^114767
 ;;^UTILITY(U,$J,358.3,12523,0)
 ;;=011.90^^105^837^33
 ;;^UTILITY(U,$J,358.3,12523,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,12523,1,4,0)
 ;;=4^011.90
 ;;^UTILITY(U,$J,358.3,12523,1,5,0)
 ;;=5^TB, Pulmonary, NOS
 ;;^UTILITY(U,$J,358.3,12523,2)
 ;;=TB, Pulmonary^122756
 ;;^UTILITY(U,$J,358.3,12524,0)
 ;;=786.06^^105^837^34
 ;;^UTILITY(U,$J,358.3,12524,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,12524,1,4,0)
 ;;=4^786.06
 ;;^UTILITY(U,$J,358.3,12524,1,5,0)
 ;;=5^Tachypnea
 ;;^UTILITY(U,$J,358.3,12524,2)
 ;;=Tachypnea^321213
 ;;^UTILITY(U,$J,358.3,12525,0)
 ;;=305.1^^105^837^35
 ;;^UTILITY(U,$J,358.3,12525,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,12525,1,4,0)
 ;;=4^305.1
 ;;^UTILITY(U,$J,358.3,12525,1,5,0)
 ;;=5^Tobacco Use
 ;;^UTILITY(U,$J,358.3,12525,2)
 ;;=Tobacco Use^119899
 ;;^UTILITY(U,$J,358.3,12526,0)
 ;;=786.07^^105^837^36
 ;;^UTILITY(U,$J,358.3,12526,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,12526,1,4,0)
 ;;=4^786.07
 ;;^UTILITY(U,$J,358.3,12526,1,5,0)
 ;;=5^Wheezing
 ;;^UTILITY(U,$J,358.3,12526,2)
 ;;=Wheezing^127848
 ;;^UTILITY(U,$J,358.3,12527,0)
 ;;=519.11^^105^837^2
 ;;^UTILITY(U,$J,358.3,12527,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,12527,1,4,0)
 ;;=4^519.11
 ;;^UTILITY(U,$J,358.3,12527,1,5,0)
 ;;=5^Acute Bronchospasm
 ;;^UTILITY(U,$J,358.3,12527,2)
 ;;=^334092
 ;;^UTILITY(U,$J,358.3,12528,0)
 ;;=488.01^^105^837^18
 ;;^UTILITY(U,$J,358.3,12528,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,12528,1,4,0)
 ;;=4^488.01
 ;;^UTILITY(U,$J,358.3,12528,1,5,0)
 ;;=5^Flu DT Iden AVIAN w Pneu
 ;;^UTILITY(U,$J,358.3,12528,2)
 ;;=^339615
 ;;^UTILITY(U,$J,358.3,12529,0)
 ;;=488.02^^105^837^17
 ;;^UTILITY(U,$J,358.3,12529,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,12529,1,4,0)
 ;;=4^488.02
 ;;^UTILITY(U,$J,358.3,12529,1,5,0)
 ;;=5^Flu DT AVIAN w oth Resp
 ;;^UTILITY(U,$J,358.3,12529,2)
 ;;=^339616
 ;;^UTILITY(U,$J,358.3,12530,0)
 ;;=488.09^^105^837^16
 ;;^UTILITY(U,$J,358.3,12530,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,12530,1,4,0)
 ;;=4^488.09
 ;;^UTILITY(U,$J,358.3,12530,1,5,0)
 ;;=5^Flu DT AVIAN Manfest
 ;;^UTILITY(U,$J,358.3,12530,2)
 ;;=^339617
 ;;^UTILITY(U,$J,358.3,12531,0)
 ;;=786.30^^105^837^19
 ;;^UTILITY(U,$J,358.3,12531,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,12531,1,4,0)
 ;;=4^786.30
 ;;^UTILITY(U,$J,358.3,12531,1,5,0)
 ;;=5^Hemoptysis
 ;;^UTILITY(U,$J,358.3,12531,2)
 ;;=^339669
 ;;^UTILITY(U,$J,358.3,12532,0)
 ;;=793.11^^105^837^31
 ;;^UTILITY(U,$J,358.3,12532,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,12532,1,4,0)
 ;;=4^793.11
 ;;^UTILITY(U,$J,358.3,12532,1,5,0)
 ;;=5^Solitary Pulmonary Nodule
 ;;^UTILITY(U,$J,358.3,12532,2)
 ;;=^340570
 ;;^UTILITY(U,$J,358.3,12533,0)
 ;;=793.19^^105^837^23
 ;;^UTILITY(U,$J,358.3,12533,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,12533,1,4,0)
 ;;=4^793.19
 ;;^UTILITY(U,$J,358.3,12533,1,5,0)
 ;;=5^Oth Nonsp Ab Fnd Lung Fld
 ;;^UTILITY(U,$J,358.3,12533,2)
 ;;=^340571
 ;;^UTILITY(U,$J,358.3,12534,0)
 ;;=376.01^^105^838^25
 ;;^UTILITY(U,$J,358.3,12534,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,12534,1,4,0)
 ;;=4^376.01
 ;;^UTILITY(U,$J,358.3,12534,1,5,0)
 ;;=5^Orbital Cellulitis
 ;;^UTILITY(U,$J,358.3,12534,2)
 ;;=^259068
 ;;^UTILITY(U,$J,358.3,12535,0)
 ;;=388.70^^105^838^26
 ;;^UTILITY(U,$J,358.3,12535,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,12535,1,4,0)
 ;;=4^388.70
 ;;^UTILITY(U,$J,358.3,12535,1,5,0)
 ;;=5^Otalgia, Unsp
 ;;^UTILITY(U,$J,358.3,12535,2)
 ;;=^37811
 ;;^UTILITY(U,$J,358.3,12536,0)
 ;;=380.10^^105^838^27
 ;;^UTILITY(U,$J,358.3,12536,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,12536,1,4,0)
 ;;=4^380.10
 ;;^UTILITY(U,$J,358.3,12536,1,5,0)
 ;;=5^Otitis Externa,Infect
 ;;^UTILITY(U,$J,358.3,12536,2)
 ;;=^62807