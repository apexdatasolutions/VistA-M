IBDEI03I ; ; 20-FEB-2013
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;FEB 20, 2013
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,4245,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,4245,1,2,0)
 ;;=2^Drain abscess finger,complic
 ;;^UTILITY(U,$J,358.3,4245,1,4,0)
 ;;=4^26011
 ;;^UTILITY(U,$J,358.3,4246,0)
 ;;=26020^^43^286^11
 ;;^UTILITY(U,$J,358.3,4246,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,4246,1,2,0)
 ;;=2^Drain tendon sheath,hand
 ;;^UTILITY(U,$J,358.3,4246,1,4,0)
 ;;=4^26020
 ;;^UTILITY(U,$J,358.3,4247,0)
 ;;=10120^^43^286^21
 ;;^UTILITY(U,$J,358.3,4247,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,4247,1,2,0)
 ;;=2^Removal,foreign body,simple
 ;;^UTILITY(U,$J,358.3,4247,1,4,0)
 ;;=4^10120
 ;;^UTILITY(U,$J,358.3,4248,0)
 ;;=10121^^43^286^20
 ;;^UTILITY(U,$J,358.3,4248,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,4248,1,2,0)
 ;;=2^Removal,foreign body,complex
 ;;^UTILITY(U,$J,358.3,4248,1,4,0)
 ;;=4^10121
 ;;^UTILITY(U,$J,358.3,4249,0)
 ;;=26010^^43^286^8^^^^1
 ;;^UTILITY(U,$J,358.3,4249,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,4249,1,2,0)
 ;;=2^Drain abscess finger,simple
 ;;^UTILITY(U,$J,358.3,4249,1,4,0)
 ;;=4^26010
 ;;^UTILITY(U,$J,358.3,4250,0)
 ;;=10180^^43^286^16^^^^1
 ;;^UTILITY(U,$J,358.3,4250,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,4250,1,2,0)
 ;;=2^I&D complex postop wound
 ;;^UTILITY(U,$J,358.3,4250,1,4,0)
 ;;=4^10180
 ;;^UTILITY(U,$J,358.3,4251,0)
 ;;=20600^^43^286^4^^^^1
 ;;^UTILITY(U,$J,358.3,4251,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,4251,1,2,0)
 ;;=2^Aspir/inject bursa/small joint
 ;;^UTILITY(U,$J,358.3,4251,1,4,0)
 ;;=4^20600
 ;;^UTILITY(U,$J,358.3,4252,0)
 ;;=20605^^43^286^2^^^^1
 ;;^UTILITY(U,$J,358.3,4252,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,4252,1,2,0)
 ;;=2^Aspir/inject bursa/intmed joint
 ;;^UTILITY(U,$J,358.3,4252,1,4,0)
 ;;=4^20605
 ;;^UTILITY(U,$J,358.3,4253,0)
 ;;=20610^^43^286^3^^^^1
 ;;^UTILITY(U,$J,358.3,4253,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,4253,1,2,0)
 ;;=2^Aspir/inject bursa/large joint
 ;;^UTILITY(U,$J,358.3,4253,1,4,0)
 ;;=4^20610
 ;;^UTILITY(U,$J,358.3,4254,0)
 ;;=10080^^43^286^9^^^^1
 ;;^UTILITY(U,$J,358.3,4254,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,4254,1,2,0)
 ;;=2^Drain pilonidal cyst, simple
 ;;^UTILITY(U,$J,358.3,4254,1,4,0)
 ;;=4^10080
 ;;^UTILITY(U,$J,358.3,4255,0)
 ;;=10081^^43^286^10^^^^1
 ;;^UTILITY(U,$J,358.3,4255,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,4255,1,2,0)
 ;;=2^Drain pilonidal cyst,complex
 ;;^UTILITY(U,$J,358.3,4255,1,4,0)
 ;;=4^10081
 ;;^UTILITY(U,$J,358.3,4256,0)
 ;;=10021^^43^286^13^^^^1
 ;;^UTILITY(U,$J,358.3,4256,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,4256,1,2,0)
 ;;=2^FNA W/O IMAGE
 ;;^UTILITY(U,$J,358.3,4256,1,4,0)
 ;;=4^10021
 ;;^UTILITY(U,$J,358.3,4257,0)
 ;;=10022^^43^286^12^^^^1
 ;;^UTILITY(U,$J,358.3,4257,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,4257,1,2,0)
 ;;=2^FNA W/IMAGE
 ;;^UTILITY(U,$J,358.3,4257,1,4,0)
 ;;=4^10022
 ;;^UTILITY(U,$J,358.3,4258,0)
 ;;=10040^^43^286^1^^^^1
 ;;^UTILITY(U,$J,358.3,4258,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,4258,1,2,0)
 ;;=2^ACNE SURGERY
 ;;^UTILITY(U,$J,358.3,4258,1,4,0)
 ;;=4^10040
 ;;^UTILITY(U,$J,358.3,4259,0)
 ;;=19020^^43^286^18^^^^1
 ;;^UTILITY(U,$J,358.3,4259,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,4259,1,2,0)
 ;;=2^Mastotomy w/Explor/Drainage of Abscess Deep
 ;;^UTILITY(U,$J,358.3,4259,1,4,0)
 ;;=4^19020
 ;;^UTILITY(U,$J,358.3,4260,0)
 ;;=17000^^43^287^7
 ;;^UTILITY(U,$J,358.3,4260,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,4260,1,2,0)
 ;;=2^Destroy Skin Lesion, first 
 ;;^UTILITY(U,$J,358.3,4260,1,4,0)
 ;;=4^17000
 ;;^UTILITY(U,$J,358.3,4261,0)
 ;;=11200^^43^287^1
 ;;^UTILITY(U,$J,358.3,4261,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,4261,1,2,0)
 ;;=2^Destroy 1-15 Skin Tags, any method
 ;;^UTILITY(U,$J,358.3,4261,1,4,0)
 ;;=4^11200
 ;;^UTILITY(U,$J,358.3,4262,0)
 ;;=17003^^43^287^8^^^^1
 ;;^UTILITY(U,$J,358.3,4262,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,4262,1,2,0)
 ;;=2^Each Addl Lesion 2-14 (use with 17000)
 ;;^UTILITY(U,$J,358.3,4262,1,4,0)
 ;;=4^17003
 ;;^UTILITY(U,$J,358.3,4263,0)
 ;;=17004^^43^287^9^^^^1
 ;;^UTILITY(U,$J,358.3,4263,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,4263,1,2,0)
 ;;=2^Destroy 15+ Skin Lesions
 ;;^UTILITY(U,$J,358.3,4263,1,4,0)
 ;;=4^17004
 ;;^UTILITY(U,$J,358.3,4264,0)
 ;;=11770^^43^287^4^^^^1
 ;;^UTILITY(U,$J,358.3,4264,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,4264,1,2,0)
 ;;=2^Excise Pilonidal Cyst,Sinus,Simple
 ;;^UTILITY(U,$J,358.3,4264,1,4,0)
 ;;=4^11770
 ;;^UTILITY(U,$J,358.3,4265,0)
 ;;=11771^^43^287^5^^^^1
 ;;^UTILITY(U,$J,358.3,4265,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,4265,1,2,0)
 ;;=2^Excise Pilonidal Cyst,Sinus,Extensive
 ;;^UTILITY(U,$J,358.3,4265,1,4,0)
 ;;=4^11771
 ;;^UTILITY(U,$J,358.3,4266,0)
 ;;=11772^^43^287^6^^^^1
 ;;^UTILITY(U,$J,358.3,4266,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,4266,1,2,0)
 ;;=2^Excise Pilonidal Cyst,Sinus,Complicated
 ;;^UTILITY(U,$J,358.3,4266,1,4,0)
 ;;=4^11772
 ;;^UTILITY(U,$J,358.3,4267,0)
 ;;=11201^^43^287^3^^^^1
 ;;^UTILITY(U,$J,358.3,4267,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,4267,1,2,0)
 ;;=2^Destroy Skin Tags,Ea Addl 10
 ;;^UTILITY(U,$J,358.3,4267,1,4,0)
 ;;=4^11201
 ;;^UTILITY(U,$J,358.3,4268,0)
 ;;=11055^^43^288^3^^^^1
 ;;^UTILITY(U,$J,358.3,4268,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,4268,1,2,0)
 ;;=2^Pare/cut corn/callus, single
 ;;^UTILITY(U,$J,358.3,4268,1,4,0)
 ;;=4^11055
 ;;^UTILITY(U,$J,358.3,4269,0)
 ;;=11056^^43^288^1^^^^1
 ;;^UTILITY(U,$J,358.3,4269,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,4269,1,2,0)
 ;;=2^Pare/cut corn/callus, 2-4
 ;;^UTILITY(U,$J,358.3,4269,1,4,0)
 ;;=4^11056
 ;;^UTILITY(U,$J,358.3,4270,0)
 ;;=11057^^43^288^2^^^^1
 ;;^UTILITY(U,$J,358.3,4270,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,4270,1,2,0)
 ;;=2^Pare/cut corn/callus, >4
 ;;^UTILITY(U,$J,358.3,4270,1,4,0)
 ;;=4^11057
 ;;^UTILITY(U,$J,358.3,4271,0)
 ;;=11420^^43^289^1^^^^1
 ;;^UTILITY(U,$J,358.3,4271,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,4271,1,2,0)
 ;;=2^Benign Excision < 0.5cm
 ;;^UTILITY(U,$J,358.3,4271,1,4,0)
 ;;=4^11420
 ;;^UTILITY(U,$J,358.3,4272,0)
 ;;=11421^^43^289^2^^^^1
 ;;^UTILITY(U,$J,358.3,4272,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,4272,1,2,0)
 ;;=2^Benign Excision 0.6-1.0 cm
 ;;^UTILITY(U,$J,358.3,4272,1,4,0)
 ;;=4^11421
 ;;^UTILITY(U,$J,358.3,4273,0)
 ;;=11422^^43^289^3^^^^1
 ;;^UTILITY(U,$J,358.3,4273,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,4273,1,2,0)
 ;;=2^Benign Excision 1.1-2.0 cm
 ;;^UTILITY(U,$J,358.3,4273,1,4,0)
 ;;=4^11422
 ;;^UTILITY(U,$J,358.3,4274,0)
 ;;=11423^^43^289^4^^^^1
 ;;^UTILITY(U,$J,358.3,4274,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,4274,1,2,0)
 ;;=2^Benign Excision 2.1-3.0 cm
 ;;^UTILITY(U,$J,358.3,4274,1,4,0)
 ;;=4^11423
 ;;^UTILITY(U,$J,358.3,4275,0)
 ;;=11424^^43^289^5^^^^1
 ;;^UTILITY(U,$J,358.3,4275,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,4275,1,2,0)
 ;;=2^Benign Excision 3.1-4.0 cm
 ;;^UTILITY(U,$J,358.3,4275,1,4,0)
 ;;=4^11424
 ;;^UTILITY(U,$J,358.3,4276,0)
 ;;=11426^^43^289^6^^^^1
 ;;^UTILITY(U,$J,358.3,4276,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,4276,1,2,0)
 ;;=2^Benign Excision > 4.0 cm
 ;;^UTILITY(U,$J,358.3,4276,1,4,0)
 ;;=4^11426
 ;;^UTILITY(U,$J,358.3,4277,0)
 ;;=11440^^43^290^1^^^^1
 ;;^UTILITY(U,$J,358.3,4277,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,4277,1,2,0)
 ;;=2^Benign Excision < 0.5cm
 ;;^UTILITY(U,$J,358.3,4277,1,4,0)
 ;;=4^11440
 ;;^UTILITY(U,$J,358.3,4278,0)
 ;;=11441^^43^290^2^^^^1
 ;;^UTILITY(U,$J,358.3,4278,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,4278,1,2,0)
 ;;=2^Benign Excision 0.6-1.0 cm
 ;;^UTILITY(U,$J,358.3,4278,1,4,0)
 ;;=4^11441
 ;;^UTILITY(U,$J,358.3,4279,0)
 ;;=11442^^43^290^3^^^^1
 ;;^UTILITY(U,$J,358.3,4279,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,4279,1,2,0)
 ;;=2^Benign Excision 1.1-2.0 cm
 ;;^UTILITY(U,$J,358.3,4279,1,4,0)
 ;;=4^11442
 ;;^UTILITY(U,$J,358.3,4280,0)
 ;;=11443^^43^290^4^^^^1
 ;;^UTILITY(U,$J,358.3,4280,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,4280,1,2,0)
 ;;=2^Benign Excision 2.1-3.0 cm
 ;;^UTILITY(U,$J,358.3,4280,1,4,0)
 ;;=4^11443
 ;;^UTILITY(U,$J,358.3,4281,0)
 ;;=11444^^43^290^5^^^^1
 ;;^UTILITY(U,$J,358.3,4281,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,4281,1,2,0)
 ;;=2^Benign Excision 3.1-4.0 cm
 ;;^UTILITY(U,$J,358.3,4281,1,4,0)
 ;;=4^11444
 ;;^UTILITY(U,$J,358.3,4282,0)
 ;;=11446^^43^290^6^^^^1
 ;;^UTILITY(U,$J,358.3,4282,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,4282,1,2,0)
 ;;=2^Benign Excision > 4.0 cm
 ;;^UTILITY(U,$J,358.3,4282,1,4,0)
 ;;=4^11446
 ;;^UTILITY(U,$J,358.3,4283,0)
 ;;=11400^^43^291^1^^^^1
 ;;^UTILITY(U,$J,358.3,4283,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,4283,1,2,0)
 ;;=2^Benign Excision, Trunk/Arm/Leg <0.5 cm
 ;;^UTILITY(U,$J,358.3,4283,1,4,0)
 ;;=4^11400
 ;;^UTILITY(U,$J,358.3,4284,0)
 ;;=11401^^43^291^2^^^^1
 ;;^UTILITY(U,$J,358.3,4284,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,4284,1,2,0)
 ;;=2^Benign Excision, Trunk/Arm/Leg, 0.6-1.0 cm
 ;;^UTILITY(U,$J,358.3,4284,1,4,0)
 ;;=4^11401
 ;;^UTILITY(U,$J,358.3,4285,0)
 ;;=11402^^43^291^3^^^^1
 ;;^UTILITY(U,$J,358.3,4285,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,4285,1,2,0)
 ;;=2^Benign Excision, Trunk/Arm/Leg, 1.1-2.0 cm
 ;;^UTILITY(U,$J,358.3,4285,1,4,0)
 ;;=4^11402
 ;;^UTILITY(U,$J,358.3,4286,0)
 ;;=11403^^43^291^4^^^^1
 ;;^UTILITY(U,$J,358.3,4286,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,4286,1,2,0)
 ;;=2^Benign Excision, Trunk/Arm/Leg, 2.1-3.0 cm
 ;;^UTILITY(U,$J,358.3,4286,1,4,0)
 ;;=4^11403
 ;;^UTILITY(U,$J,358.3,4287,0)
 ;;=11404^^43^291^5^^^^1
 ;;^UTILITY(U,$J,358.3,4287,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,4287,1,2,0)
 ;;=2^Benign Excision, Trunk/Arm/Leg, 3.1-4.0 cm
 ;;^UTILITY(U,$J,358.3,4287,1,4,0)
 ;;=4^11404
 ;;^UTILITY(U,$J,358.3,4288,0)
 ;;=11406^^43^291^6^^^^1
 ;;^UTILITY(U,$J,358.3,4288,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,4288,1,2,0)
 ;;=2^Benign Excision, Trunk/Arm/Leg, >4.0cm
 ;;^UTILITY(U,$J,358.3,4288,1,4,0)
 ;;=4^11406