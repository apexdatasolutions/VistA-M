IBDEI03X ; ; 20-FEB-2013
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;FEB 20, 2013
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,4835,1,4,0)
 ;;=4^293.0
 ;;^UTILITY(U,$J,358.3,4835,1,5,0)
 ;;=5^DELIRIUM D/T OTHER CONDITION
 ;;^UTILITY(U,$J,358.3,4835,2)
 ;;=^331835
 ;;^UTILITY(U,$J,358.3,4836,0)
 ;;=293.1^^46^334^2
 ;;^UTILITY(U,$J,358.3,4836,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,4836,1,4,0)
 ;;=4^293.1
 ;;^UTILITY(U,$J,358.3,4836,1,5,0)
 ;;=5^SUBACUTE DELIRIUM
 ;;^UTILITY(U,$J,358.3,4836,2)
 ;;=^268037
 ;;^UTILITY(U,$J,358.3,4837,0)
 ;;=96020^^47^335^1^^^^1
 ;;^UTILITY(U,$J,358.3,4837,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,4837,1,2,0)
 ;;=2^NEUROFUNCTIONAL TESTING
 ;;^UTILITY(U,$J,358.3,4837,1,3,0)
 ;;=3^96020
 ;;^UTILITY(U,$J,358.3,4838,0)
 ;;=96116^^47^336^3^^^^1
 ;;^UTILITY(U,$J,358.3,4838,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,4838,1,2,0)
 ;;=2^NEUROBEHAVIORAL STATUS EXAM BY PSYCH/PHYS
 ;;^UTILITY(U,$J,358.3,4838,1,3,0)
 ;;=3^96116
 ;;^UTILITY(U,$J,358.3,4839,0)
 ;;=96118^^47^336^6^^^^1
 ;;^UTILITY(U,$J,358.3,4839,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,4839,1,2,0)
 ;;=2^NEUROPSYCH TST BY PSYCH/PHYS
 ;;^UTILITY(U,$J,358.3,4839,1,3,0)
 ;;=3^96118
 ;;^UTILITY(U,$J,358.3,4840,0)
 ;;=96119^^47^336^4^^^^1
 ;;^UTILITY(U,$J,358.3,4840,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,4840,1,2,0)
 ;;=2^NEUROPSYCH TESTING BY TECH
 ;;^UTILITY(U,$J,358.3,4840,1,3,0)
 ;;=3^96119
 ;;^UTILITY(U,$J,358.3,4841,0)
 ;;=96120^^47^336^5^^^^1
 ;;^UTILITY(U,$J,358.3,4841,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,4841,1,2,0)
 ;;=2^NEUROPSYCH TST ADMIN INT & RPT
 ;;^UTILITY(U,$J,358.3,4841,1,3,0)
 ;;=3^96120
 ;;^UTILITY(U,$J,358.3,4842,0)
 ;;=96125^^47^336^2^^^^1
 ;;^UTILITY(U,$J,358.3,4842,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,4842,1,2,0)
 ;;=2^COGNITIVE PERF TEST BY HCP
 ;;^UTILITY(U,$J,358.3,4842,1,3,0)
 ;;=3^96125
 ;;^UTILITY(U,$J,358.3,4843,0)
 ;;=96105^^47^336^1^^^^1
 ;;^UTILITY(U,$J,358.3,4843,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,4843,1,2,0)
 ;;=2^ASSESSMENT OF APHASIA INTERP & RPT
 ;;^UTILITY(U,$J,358.3,4843,1,3,0)
 ;;=3^96105
 ;;^UTILITY(U,$J,358.3,4844,0)
 ;;=99201^^48^337^1
 ;;^UTILITY(U,$J,358.3,4844,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,4844,1,1,0)
 ;;=1^Problem Focus
 ;;^UTILITY(U,$J,358.3,4844,1,2,0)
 ;;=2^99201
 ;;^UTILITY(U,$J,358.3,4845,0)
 ;;=99202^^48^337^2
 ;;^UTILITY(U,$J,358.3,4845,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,4845,1,1,0)
 ;;=1^Expanded Problem Focus
 ;;^UTILITY(U,$J,358.3,4845,1,2,0)
 ;;=2^99202
 ;;^UTILITY(U,$J,358.3,4846,0)
 ;;=99203^^48^337^3
 ;;^UTILITY(U,$J,358.3,4846,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,4846,1,1,0)
 ;;=1^Detailed
 ;;^UTILITY(U,$J,358.3,4846,1,2,0)
 ;;=2^99203
 ;;^UTILITY(U,$J,358.3,4847,0)
 ;;=99204^^48^337^4
 ;;^UTILITY(U,$J,358.3,4847,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,4847,1,1,0)
 ;;=1^Comprehensive, Moderate
 ;;^UTILITY(U,$J,358.3,4847,1,2,0)
 ;;=2^99204
 ;;^UTILITY(U,$J,358.3,4848,0)
 ;;=99205^^48^337^5
 ;;^UTILITY(U,$J,358.3,4848,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,4848,1,1,0)
 ;;=1^Comprehensive, High
 ;;^UTILITY(U,$J,358.3,4848,1,2,0)
 ;;=2^99205
 ;;^UTILITY(U,$J,358.3,4849,0)
 ;;=99211^^48^338^1
 ;;^UTILITY(U,$J,358.3,4849,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,4849,1,1,0)
 ;;=1^Brief (no MD seen)
 ;;^UTILITY(U,$J,358.3,4849,1,2,0)
 ;;=2^99211
 ;;^UTILITY(U,$J,358.3,4850,0)
 ;;=99212^^48^338^2
 ;;^UTILITY(U,$J,358.3,4850,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,4850,1,1,0)
 ;;=1^Problem Focused
 ;;^UTILITY(U,$J,358.3,4850,1,2,0)
 ;;=2^99212
 ;;^UTILITY(U,$J,358.3,4851,0)
 ;;=99213^^48^338^3
 ;;^UTILITY(U,$J,358.3,4851,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,4851,1,1,0)
 ;;=1^Expanded Problem Focus
 ;;^UTILITY(U,$J,358.3,4851,1,2,0)
 ;;=2^99213
 ;;^UTILITY(U,$J,358.3,4852,0)
 ;;=99214^^48^338^4
 ;;^UTILITY(U,$J,358.3,4852,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,4852,1,1,0)
 ;;=1^Detailed
 ;;^UTILITY(U,$J,358.3,4852,1,2,0)
 ;;=2^99214
 ;;^UTILITY(U,$J,358.3,4853,0)
 ;;=99215^^48^338^5
 ;;^UTILITY(U,$J,358.3,4853,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,4853,1,1,0)
 ;;=1^Comprehensive
 ;;^UTILITY(U,$J,358.3,4853,1,2,0)
 ;;=2^99215
 ;;^UTILITY(U,$J,358.3,4854,0)
 ;;=99241^^48^339^1
 ;;^UTILITY(U,$J,358.3,4854,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,4854,1,1,0)
 ;;=1^Problem Focused
 ;;^UTILITY(U,$J,358.3,4854,1,2,0)
 ;;=2^99241
 ;;^UTILITY(U,$J,358.3,4855,0)
 ;;=99242^^48^339^2
 ;;^UTILITY(U,$J,358.3,4855,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,4855,1,1,0)
 ;;=1^Expanded Problem Focus
 ;;^UTILITY(U,$J,358.3,4855,1,2,0)
 ;;=2^99242
 ;;^UTILITY(U,$J,358.3,4856,0)
 ;;=99243^^48^339^3
 ;;^UTILITY(U,$J,358.3,4856,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,4856,1,1,0)
 ;;=1^Detailed
 ;;^UTILITY(U,$J,358.3,4856,1,2,0)
 ;;=2^99243
 ;;^UTILITY(U,$J,358.3,4857,0)
 ;;=99244^^48^339^4
 ;;^UTILITY(U,$J,358.3,4857,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,4857,1,1,0)
 ;;=1^Comprehensive, Moderate
 ;;^UTILITY(U,$J,358.3,4857,1,2,0)
 ;;=2^99244
 ;;^UTILITY(U,$J,358.3,4858,0)
 ;;=99245^^48^339^5
 ;;^UTILITY(U,$J,358.3,4858,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,4858,1,1,0)
 ;;=1^Comprehensive, High
 ;;^UTILITY(U,$J,358.3,4858,1,2,0)
 ;;=2^99245
 ;;^UTILITY(U,$J,358.3,4859,0)
 ;;=11000^^49^340^1^^^^1
 ;;^UTILITY(U,$J,358.3,4859,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,4859,1,2,0)
 ;;=2^11000
 ;;^UTILITY(U,$J,358.3,4859,1,3,0)
 ;;=3^Debride ext eczematous skin,<10%
 ;;^UTILITY(U,$J,358.3,4860,0)
 ;;=11001^^49^340^2^^^^1
 ;;^UTILITY(U,$J,358.3,4860,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,4860,1,2,0)
 ;;=2^11001
 ;;^UTILITY(U,$J,358.3,4860,1,3,0)
 ;;=3^Debride ext eczematous skin,Ea 10%
 ;;^UTILITY(U,$J,358.3,4861,0)
 ;;=17000^^49^341^1^^^^1
 ;;^UTILITY(U,$J,358.3,4861,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,4861,1,2,0)
 ;;=2^17000
 ;;^UTILITY(U,$J,358.3,4861,1,3,0)
 ;;=3^Destroy first benign or premalignant lesion
 ;;^UTILITY(U,$J,358.3,4862,0)
 ;;=17004^^49^341^2^^^^1
 ;;^UTILITY(U,$J,358.3,4862,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,4862,1,2,0)
 ;;=2^17004
 ;;^UTILITY(U,$J,358.3,4862,1,3,0)
 ;;=3^Destroy 15+ benign or premalignant lesions
 ;;^UTILITY(U,$J,358.3,4863,0)
 ;;=17110^^49^341^3^^^^1
 ;;^UTILITY(U,$J,358.3,4863,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,4863,1,2,0)
 ;;=2^17110
 ;;^UTILITY(U,$J,358.3,4863,1,3,0)
 ;;=3^Dest flat warts,1-14
 ;;^UTILITY(U,$J,358.3,4864,0)
 ;;=17111^^49^341^4^^^^1
 ;;^UTILITY(U,$J,358.3,4864,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,4864,1,2,0)
 ;;=2^17111
 ;;^UTILITY(U,$J,358.3,4864,1,3,0)
 ;;=3^Dest flat warts,15 or more
 ;;^UTILITY(U,$J,358.3,4865,0)
 ;;=17003^^49^341^1.01^^^^1
 ;;^UTILITY(U,$J,358.3,4865,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,4865,1,2,0)
 ;;=2^17003
 ;;^UTILITY(U,$J,358.3,4865,1,3,0)
 ;;=3^Destroy 2-14 benign or premalignant lesions
 ;;^UTILITY(U,$J,358.3,4866,0)
 ;;=17260^^49^342^1^^^^1
 ;;^UTILITY(U,$J,358.3,4866,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,4866,1,2,0)
 ;;=2^17260
 ;;^UTILITY(U,$J,358.3,4866,1,3,0)
 ;;=3^Lesion diameter: 0.5 or less
 ;;^UTILITY(U,$J,358.3,4867,0)
 ;;=17261^^49^342^2^^^^1
 ;;^UTILITY(U,$J,358.3,4867,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,4867,1,2,0)
 ;;=2^17261
 ;;^UTILITY(U,$J,358.3,4867,1,3,0)
 ;;=3^Lesion diameter: 0.6 to 1.0 cm
 ;;^UTILITY(U,$J,358.3,4868,0)
 ;;=17262^^49^342^3^^^^1
 ;;^UTILITY(U,$J,358.3,4868,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,4868,1,2,0)
 ;;=2^17262
 ;;^UTILITY(U,$J,358.3,4868,1,3,0)
 ;;=3^Lesion diameter: 1.1 to 2.0 cm
 ;;^UTILITY(U,$J,358.3,4869,0)
 ;;=17263^^49^342^4^^^^1
 ;;^UTILITY(U,$J,358.3,4869,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,4869,1,2,0)
 ;;=2^17263
 ;;^UTILITY(U,$J,358.3,4869,1,3,0)
 ;;=3^Lesion diameter: 2.1 to 3.0 cm
 ;;^UTILITY(U,$J,358.3,4870,0)
 ;;=17264^^49^342^5^^^^1
 ;;^UTILITY(U,$J,358.3,4870,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,4870,1,2,0)
 ;;=2^17264
 ;;^UTILITY(U,$J,358.3,4870,1,3,0)
 ;;=3^Lesion diameter: 3.1 to 4.0 cm
 ;;^UTILITY(U,$J,358.3,4871,0)
 ;;=17266^^49^342^6^^^^1
 ;;^UTILITY(U,$J,358.3,4871,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,4871,1,2,0)
 ;;=2^17266
 ;;^UTILITY(U,$J,358.3,4871,1,3,0)
 ;;=3^Lesion diameter over 4.0 cm
 ;;^UTILITY(U,$J,358.3,4872,0)
 ;;=11400^^49^343^1^^^^1
 ;;^UTILITY(U,$J,358.3,4872,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,4872,1,2,0)
 ;;=2^11400
 ;;^UTILITY(U,$J,358.3,4872,1,3,0)
 ;;=3^Lesion diameter: 0.5 or less
 ;;^UTILITY(U,$J,358.3,4873,0)
 ;;=11401^^49^343^2^^^^1
 ;;^UTILITY(U,$J,358.3,4873,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,4873,1,2,0)
 ;;=2^11401
 ;;^UTILITY(U,$J,358.3,4873,1,3,0)
 ;;=3^Lesion diameter: 0.6 to 1.0 cm
 ;;^UTILITY(U,$J,358.3,4874,0)
 ;;=11402^^49^343^3^^^^1
 ;;^UTILITY(U,$J,358.3,4874,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,4874,1,2,0)
 ;;=2^11402
 ;;^UTILITY(U,$J,358.3,4874,1,3,0)
 ;;=3^Lesion diameter: 1.1 to 2.0 cm
 ;;^UTILITY(U,$J,358.3,4875,0)
 ;;=11403^^49^343^4^^^^1
 ;;^UTILITY(U,$J,358.3,4875,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,4875,1,2,0)
 ;;=2^11403
 ;;^UTILITY(U,$J,358.3,4875,1,3,0)
 ;;=3^Lesion diameter: 2.1 to 3.0 cm
 ;;^UTILITY(U,$J,358.3,4876,0)
 ;;=11404^^49^343^5^^^^1
 ;;^UTILITY(U,$J,358.3,4876,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,4876,1,2,0)
 ;;=2^11404
 ;;^UTILITY(U,$J,358.3,4876,1,3,0)
 ;;=3^Lesion diameter: 3.1 to 4.0 cm
 ;;^UTILITY(U,$J,358.3,4877,0)
 ;;=11406^^49^343^6^^^^1
 ;;^UTILITY(U,$J,358.3,4877,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,4877,1,2,0)
 ;;=2^11406
 ;;^UTILITY(U,$J,358.3,4877,1,3,0)
 ;;=3^Lesion diameter over 4.0 cm
 ;;^UTILITY(U,$J,358.3,4878,0)
 ;;=11600^^49^344^1^^^^1
 ;;^UTILITY(U,$J,358.3,4878,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,4878,1,2,0)
 ;;=2^11600
 ;;^UTILITY(U,$J,358.3,4878,1,3,0)
 ;;=3^Lesion diameter: 0.5 or less
 ;;^UTILITY(U,$J,358.3,4879,0)
 ;;=11601^^49^344^2^^^^1
 ;;^UTILITY(U,$J,358.3,4879,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,4879,1,2,0)
 ;;=2^11601