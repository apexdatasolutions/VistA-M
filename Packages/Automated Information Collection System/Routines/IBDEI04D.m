IBDEI04D ; ; 20-FEB-2013
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;FEB 20, 2013
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,5473,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,5473,1,2,0)
 ;;=2^98962
 ;;^UTILITY(U,$J,358.3,5473,1,3,0)
 ;;=3^SELF-MGMT ED/TRN 5-8 PT,30 MIN
 ;;^UTILITY(U,$J,358.3,5474,0)
 ;;=250.00^^53^443^1
 ;;^UTILITY(U,$J,358.3,5474,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,5474,1,3,0)
 ;;=3^250.00
 ;;^UTILITY(U,$J,358.3,5474,1,4,0)
 ;;=4^DMII WO CMP NT ST UNCNTR
 ;;^UTILITY(U,$J,358.3,5474,2)
 ;;=^331779
 ;;^UTILITY(U,$J,358.3,5475,0)
 ;;=250.01^^53^443^2
 ;;^UTILITY(U,$J,358.3,5475,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,5475,1,3,0)
 ;;=3^250.01
 ;;^UTILITY(U,$J,358.3,5475,1,4,0)
 ;;=4^DMI WO CMP NT ST UNCNTRL
 ;;^UTILITY(U,$J,358.3,5475,2)
 ;;=^331780
 ;;^UTILITY(U,$J,358.3,5476,0)
 ;;=250.02^^53^443^3
 ;;^UTILITY(U,$J,358.3,5476,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,5476,1,3,0)
 ;;=3^250.02
 ;;^UTILITY(U,$J,358.3,5476,1,4,0)
 ;;=4^DMII WO CMP UNCNTRLD
 ;;^UTILITY(U,$J,358.3,5476,2)
 ;;=^331781
 ;;^UTILITY(U,$J,358.3,5477,0)
 ;;=250.03^^53^443^4
 ;;^UTILITY(U,$J,358.3,5477,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,5477,1,3,0)
 ;;=3^250.03
 ;;^UTILITY(U,$J,358.3,5477,1,4,0)
 ;;=4^DMI WO CMP UNCNTRLD
 ;;^UTILITY(U,$J,358.3,5477,2)
 ;;=^331782
 ;;^UTILITY(U,$J,358.3,5478,0)
 ;;=250.10^^53^444^1
 ;;^UTILITY(U,$J,358.3,5478,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,5478,1,3,0)
 ;;=3^250.10
 ;;^UTILITY(U,$J,358.3,5478,1,4,0)
 ;;=4^DMII KETO NT ST UNCNTRLD
 ;;^UTILITY(U,$J,358.3,5478,2)
 ;;=^331783
 ;;^UTILITY(U,$J,358.3,5479,0)
 ;;=250.11^^53^444^2
 ;;^UTILITY(U,$J,358.3,5479,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,5479,1,3,0)
 ;;=3^250.11
 ;;^UTILITY(U,$J,358.3,5479,1,4,0)
 ;;=4^DMI KETO NT ST UNCNTRLD
 ;;^UTILITY(U,$J,358.3,5479,2)
 ;;=^331784
 ;;^UTILITY(U,$J,358.3,5480,0)
 ;;=250.12^^53^444^3
 ;;^UTILITY(U,$J,358.3,5480,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,5480,1,3,0)
 ;;=3^250.12
 ;;^UTILITY(U,$J,358.3,5480,1,4,0)
 ;;=4^DMII KETOACD UNCONTROLD
 ;;^UTILITY(U,$J,358.3,5480,2)
 ;;=^331785
 ;;^UTILITY(U,$J,358.3,5481,0)
 ;;=250.13^^53^444^4
 ;;^UTILITY(U,$J,358.3,5481,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,5481,1,3,0)
 ;;=3^250.13
 ;;^UTILITY(U,$J,358.3,5481,1,4,0)
 ;;=4^DMI KETOACD UNCONTROLD
 ;;^UTILITY(U,$J,358.3,5481,2)
 ;;=^331786
 ;;^UTILITY(U,$J,358.3,5482,0)
 ;;=250.20^^53^445^1
 ;;^UTILITY(U,$J,358.3,5482,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,5482,1,3,0)
 ;;=3^250.20
 ;;^UTILITY(U,$J,358.3,5482,1,4,0)
 ;;=4^DMII HPRSM NT ST UNCNTRL
 ;;^UTILITY(U,$J,358.3,5482,2)
 ;;=^331787
 ;;^UTILITY(U,$J,358.3,5483,0)
 ;;=250.21^^53^445^2
 ;;^UTILITY(U,$J,358.3,5483,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,5483,1,3,0)
 ;;=3^250.21
 ;;^UTILITY(U,$J,358.3,5483,1,4,0)
 ;;=4^DMI HPRSM NT ST UNCNTRLD
 ;;^UTILITY(U,$J,358.3,5483,2)
 ;;=^331788
 ;;^UTILITY(U,$J,358.3,5484,0)
 ;;=250.22^^53^445^3
 ;;^UTILITY(U,$J,358.3,5484,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,5484,1,3,0)
 ;;=3^250.22
 ;;^UTILITY(U,$J,358.3,5484,1,4,0)
 ;;=4^DMII HPROSMLR UNCONTROLD
 ;;^UTILITY(U,$J,358.3,5484,2)
 ;;=^331789
 ;;^UTILITY(U,$J,358.3,5485,0)
 ;;=250.23^^53^445^4
 ;;^UTILITY(U,$J,358.3,5485,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,5485,1,3,0)
 ;;=3^250.23
 ;;^UTILITY(U,$J,358.3,5485,1,4,0)
 ;;=4^DMI HPROSMLR UNCONTROLD
 ;;^UTILITY(U,$J,358.3,5485,2)
 ;;=^331790
 ;;^UTILITY(U,$J,358.3,5486,0)
 ;;=250.30^^53^446^1
 ;;^UTILITY(U,$J,358.3,5486,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,5486,1,3,0)
 ;;=3^250.30
 ;;^UTILITY(U,$J,358.3,5486,1,4,0)
 ;;=4^DMII O CM NT ST UNCNTRLD
 ;;^UTILITY(U,$J,358.3,5486,2)
 ;;=^331791
 ;;^UTILITY(U,$J,358.3,5487,0)
 ;;=250.31^^53^446^2
 ;;^UTILITY(U,$J,358.3,5487,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,5487,1,3,0)
 ;;=3^250.31
 ;;^UTILITY(U,$J,358.3,5487,1,4,0)
 ;;=4^DMI O CM NT ST UNCNTRLD
 ;;^UTILITY(U,$J,358.3,5487,2)
 ;;=^331792
 ;;^UTILITY(U,$J,358.3,5488,0)
 ;;=250.32^^53^446^3
 ;;^UTILITY(U,$J,358.3,5488,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,5488,1,3,0)
 ;;=3^250.32
 ;;^UTILITY(U,$J,358.3,5488,1,4,0)
 ;;=4^DMII OTH COMA UNCONTROLD
 ;;^UTILITY(U,$J,358.3,5488,2)
 ;;=^331793
 ;;^UTILITY(U,$J,358.3,5489,0)
 ;;=250.33^^53^446^4
 ;;^UTILITY(U,$J,358.3,5489,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,5489,1,3,0)
 ;;=3^250.33
 ;;^UTILITY(U,$J,358.3,5489,1,4,0)
 ;;=4^DMI OTH COMA UNCONTROLD
 ;;^UTILITY(U,$J,358.3,5489,2)
 ;;=^331794
 ;;^UTILITY(U,$J,358.3,5490,0)
 ;;=1^1^53^447^1^           **use additional renal manifestion code**^1
 ;;^UTILITY(U,$J,358.3,5490,1,0)
 ;;=^358.31IA^0^0
 ;;^UTILITY(U,$J,358.3,5491,0)
 ;;=250.40^^53^447^2
 ;;^UTILITY(U,$J,358.3,5491,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,5491,1,3,0)
 ;;=3^250.40
 ;;^UTILITY(U,$J,358.3,5491,1,4,0)
 ;;=4^DMII RENL NT ST UNCNTRLD
 ;;^UTILITY(U,$J,358.3,5491,2)
 ;;=^331795
 ;;^UTILITY(U,$J,358.3,5492,0)
 ;;=250.41^^53^447^3
 ;;^UTILITY(U,$J,358.3,5492,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,5492,1,3,0)
 ;;=3^250.41
 ;;^UTILITY(U,$J,358.3,5492,1,4,0)
 ;;=4^DMI RENL NT ST UNCNTRLD
 ;;^UTILITY(U,$J,358.3,5492,2)
 ;;=^331796
 ;;^UTILITY(U,$J,358.3,5493,0)
 ;;=250.42^^53^447^4
 ;;^UTILITY(U,$J,358.3,5493,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,5493,1,3,0)
 ;;=3^250.42
 ;;^UTILITY(U,$J,358.3,5493,1,4,0)
 ;;=4^DMII RENAL UNCNTRLD
 ;;^UTILITY(U,$J,358.3,5493,2)
 ;;=^331797
 ;;^UTILITY(U,$J,358.3,5494,0)
 ;;=250.43^^53^447^5
 ;;^UTILITY(U,$J,358.3,5494,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,5494,1,3,0)
 ;;=3^250.43
 ;;^UTILITY(U,$J,358.3,5494,1,4,0)
 ;;=4^DMI RENAL UNCNTRLD
 ;;^UTILITY(U,$J,358.3,5494,2)
 ;;=^331798
 ;;^UTILITY(U,$J,358.3,5495,0)
 ;;=1^1^53^448^1^        **use additional neurological manifest. code**^1
 ;;^UTILITY(U,$J,358.3,5495,1,0)
 ;;=^358.31IA^0^0
 ;;^UTILITY(U,$J,358.3,5496,0)
 ;;=250.60^^53^448^2
 ;;^UTILITY(U,$J,358.3,5496,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,5496,1,3,0)
 ;;=3^250.60
 ;;^UTILITY(U,$J,358.3,5496,1,4,0)
 ;;=4^DMII NEURO NT ST UNCNTRL
 ;;^UTILITY(U,$J,358.3,5496,2)
 ;;=^331803
 ;;^UTILITY(U,$J,358.3,5497,0)
 ;;=250.61^^53^448^3
 ;;^UTILITY(U,$J,358.3,5497,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,5497,1,3,0)
 ;;=3^250.61
 ;;^UTILITY(U,$J,358.3,5497,1,4,0)
 ;;=4^DMI NEURO NT ST UNCNTRLD
 ;;^UTILITY(U,$J,358.3,5497,2)
 ;;=^331804
 ;;^UTILITY(U,$J,358.3,5498,0)
 ;;=250.62^^53^448^4
 ;;^UTILITY(U,$J,358.3,5498,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,5498,1,3,0)
 ;;=3^250.62
 ;;^UTILITY(U,$J,358.3,5498,1,4,0)
 ;;=4^DMII NEURO UNCNTRLD
 ;;^UTILITY(U,$J,358.3,5498,2)
 ;;=^331805
 ;;^UTILITY(U,$J,358.3,5499,0)
 ;;=250.63^^53^448^5
 ;;^UTILITY(U,$J,358.3,5499,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,5499,1,3,0)
 ;;=3^250.63
 ;;^UTILITY(U,$J,358.3,5499,1,4,0)
 ;;=4^DMI NEURO UNCNTRLD
 ;;^UTILITY(U,$J,358.3,5499,2)
 ;;=^331806
 ;;^UTILITY(U,$J,358.3,5500,0)
 ;;=1^1^53^449^1^       **use additional peripheral circ. d/o code**^1
 ;;^UTILITY(U,$J,358.3,5500,1,0)
 ;;=^358.31IA^0^0
 ;;^UTILITY(U,$J,358.3,5501,0)
 ;;=250.70^^53^449^2
 ;;^UTILITY(U,$J,358.3,5501,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,5501,1,3,0)
 ;;=3^250.70
 ;;^UTILITY(U,$J,358.3,5501,1,4,0)
 ;;=4^DMII CIRC NT ST UNCNTRLD
 ;;^UTILITY(U,$J,358.3,5501,2)
 ;;=^331807
 ;;^UTILITY(U,$J,358.3,5502,0)
 ;;=250.71^^53^449^3
 ;;^UTILITY(U,$J,358.3,5502,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,5502,1,3,0)
 ;;=3^250.71
 ;;^UTILITY(U,$J,358.3,5502,1,4,0)
 ;;=4^DMI CIRC NT ST UNCNTRLD
 ;;^UTILITY(U,$J,358.3,5502,2)
 ;;=^331808
 ;;^UTILITY(U,$J,358.3,5503,0)
 ;;=250.72^^53^449^4
 ;;^UTILITY(U,$J,358.3,5503,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,5503,1,3,0)
 ;;=3^250.72
 ;;^UTILITY(U,$J,358.3,5503,1,4,0)
 ;;=4^DMII CIRC UNCNTRLD
 ;;^UTILITY(U,$J,358.3,5503,2)
 ;;=^331809
 ;;^UTILITY(U,$J,358.3,5504,0)
 ;;=250.73^^53^449^5
 ;;^UTILITY(U,$J,358.3,5504,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,5504,1,3,0)
 ;;=3^250.73
 ;;^UTILITY(U,$J,358.3,5504,1,4,0)
 ;;=4^DMI CIRC UNCNTRLD
 ;;^UTILITY(U,$J,358.3,5504,2)
 ;;=^331810
 ;;^UTILITY(U,$J,358.3,5505,0)
 ;;=1^1^53^450^1^       **use additional other manifestion code**^1
 ;;^UTILITY(U,$J,358.3,5505,1,0)
 ;;=^358.31IA^0^0
 ;;^UTILITY(U,$J,358.3,5506,0)
 ;;=250.80^^53^450^2
 ;;^UTILITY(U,$J,358.3,5506,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,5506,1,3,0)
 ;;=3^250.80
 ;;^UTILITY(U,$J,358.3,5506,1,4,0)
 ;;=4^DMII OTH NT ST UNCNTRLD
 ;;^UTILITY(U,$J,358.3,5506,2)
 ;;=^331811
 ;;^UTILITY(U,$J,358.3,5507,0)
 ;;=250.81^^53^450^3
 ;;^UTILITY(U,$J,358.3,5507,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,5507,1,3,0)
 ;;=3^250.81
 ;;^UTILITY(U,$J,358.3,5507,1,4,0)
 ;;=4^DMI OTH NT ST UNCNTRLD
 ;;^UTILITY(U,$J,358.3,5507,2)
 ;;=^331812
 ;;^UTILITY(U,$J,358.3,5508,0)
 ;;=250.82^^53^450^4
 ;;^UTILITY(U,$J,358.3,5508,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,5508,1,3,0)
 ;;=3^250.82
 ;;^UTILITY(U,$J,358.3,5508,1,4,0)
 ;;=4^DMII OTH UNCNTRLD
 ;;^UTILITY(U,$J,358.3,5508,2)
 ;;=^331813
 ;;^UTILITY(U,$J,358.3,5509,0)
 ;;=250.83^^53^450^5
 ;;^UTILITY(U,$J,358.3,5509,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,5509,1,3,0)
 ;;=3^250.83
 ;;^UTILITY(U,$J,358.3,5509,1,4,0)
 ;;=4^DMI OTH UNCNTRLD
 ;;^UTILITY(U,$J,358.3,5509,2)
 ;;=^331814
 ;;^UTILITY(U,$J,358.3,5510,0)
 ;;=250.90^^53^451^1
 ;;^UTILITY(U,$J,358.3,5510,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,5510,1,3,0)
 ;;=3^250.90
 ;;^UTILITY(U,$J,358.3,5510,1,4,0)
 ;;=4^DMII UNSPF NT ST UNCNTRL
 ;;^UTILITY(U,$J,358.3,5510,2)
 ;;=^331815
 ;;^UTILITY(U,$J,358.3,5511,0)
 ;;=250.91^^53^451^2
 ;;^UTILITY(U,$J,358.3,5511,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,5511,1,3,0)
 ;;=3^250.91
 ;;^UTILITY(U,$J,358.3,5511,1,4,0)
 ;;=4^DMI UNSPF NT ST UNCNTRLD
 ;;^UTILITY(U,$J,358.3,5511,2)
 ;;=^331816
 ;;^UTILITY(U,$J,358.3,5512,0)
 ;;=250.92^^53^451^3
 ;;^UTILITY(U,$J,358.3,5512,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,5512,1,3,0)
 ;;=3^250.92
 ;;^UTILITY(U,$J,358.3,5512,1,4,0)
 ;;=4^DMII UNSPF UNCNTRLD
 ;;^UTILITY(U,$J,358.3,5512,2)
 ;;=^331817
 ;;^UTILITY(U,$J,358.3,5513,0)
 ;;=250.93^^53^451^4