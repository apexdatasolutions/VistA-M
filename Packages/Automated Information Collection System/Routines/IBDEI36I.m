IBDEI36I ; ; 19-NOV-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,53375,1,3,0)
 ;;=3^Otitis Externa Infective,Left Ear
 ;;^UTILITY(U,$J,358.3,53375,1,4,0)
 ;;=4^H60.392
 ;;^UTILITY(U,$J,358.3,53375,2)
 ;;=^5006460
 ;;^UTILITY(U,$J,358.3,53376,0)
 ;;=H60.323^^245^2684^19
 ;;^UTILITY(U,$J,358.3,53376,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,53376,1,3,0)
 ;;=3^Otitis Externa Infective,Bilateral
 ;;^UTILITY(U,$J,358.3,53376,1,4,0)
 ;;=4^H60.323
 ;;^UTILITY(U,$J,358.3,53376,2)
 ;;=^5006453
 ;;^UTILITY(U,$J,358.3,53377,0)
 ;;=H66.91^^245^2684^24
 ;;^UTILITY(U,$J,358.3,53377,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,53377,1,3,0)
 ;;=3^Otitis Media,Unspec,Right Ear
 ;;^UTILITY(U,$J,358.3,53377,1,4,0)
 ;;=4^H66.91
 ;;^UTILITY(U,$J,358.3,53377,2)
 ;;=^5006640
 ;;^UTILITY(U,$J,358.3,53378,0)
 ;;=H66.92^^245^2684^23
 ;;^UTILITY(U,$J,358.3,53378,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,53378,1,3,0)
 ;;=3^Otitis Media,Unspec,Left Ear
 ;;^UTILITY(U,$J,358.3,53378,1,4,0)
 ;;=4^H66.92
 ;;^UTILITY(U,$J,358.3,53378,2)
 ;;=^5006641
 ;;^UTILITY(U,$J,358.3,53379,0)
 ;;=H66.93^^245^2684^22
 ;;^UTILITY(U,$J,358.3,53379,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,53379,1,3,0)
 ;;=3^Otitis Media,Unspec,Bilateral
 ;;^UTILITY(U,$J,358.3,53379,1,4,0)
 ;;=4^H66.93
 ;;^UTILITY(U,$J,358.3,53379,2)
 ;;=^5006642
 ;;^UTILITY(U,$J,358.3,53380,0)
 ;;=H92.01^^245^2684^12
 ;;^UTILITY(U,$J,358.3,53380,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,53380,1,3,0)
 ;;=3^Otalgia,Right Ear
 ;;^UTILITY(U,$J,358.3,53380,1,4,0)
 ;;=4^H92.01
 ;;^UTILITY(U,$J,358.3,53380,2)
 ;;=^5006945
 ;;^UTILITY(U,$J,358.3,53381,0)
 ;;=H92.02^^245^2684^11
 ;;^UTILITY(U,$J,358.3,53381,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,53381,1,3,0)
 ;;=3^Otalgia,Left Ear
 ;;^UTILITY(U,$J,358.3,53381,1,4,0)
 ;;=4^H92.02
 ;;^UTILITY(U,$J,358.3,53381,2)
 ;;=^5006946
 ;;^UTILITY(U,$J,358.3,53382,0)
 ;;=H92.03^^245^2684^10
 ;;^UTILITY(U,$J,358.3,53382,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,53382,1,3,0)
 ;;=3^Otalgia,Bilateral
 ;;^UTILITY(U,$J,358.3,53382,1,4,0)
 ;;=4^H92.03
 ;;^UTILITY(U,$J,358.3,53382,2)
 ;;=^5006947
 ;;^UTILITY(U,$J,358.3,53383,0)
 ;;=H61.21^^245^2684^6
 ;;^UTILITY(U,$J,358.3,53383,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,53383,1,3,0)
 ;;=3^Impacted cerumen, right ear
 ;;^UTILITY(U,$J,358.3,53383,1,4,0)
 ;;=4^H61.21
 ;;^UTILITY(U,$J,358.3,53383,2)
 ;;=^5006531
 ;;^UTILITY(U,$J,358.3,53384,0)
 ;;=H61.22^^245^2684^5
 ;;^UTILITY(U,$J,358.3,53384,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,53384,1,3,0)
 ;;=3^Impacted cerumen, left ear
 ;;^UTILITY(U,$J,358.3,53384,1,4,0)
 ;;=4^H61.22
 ;;^UTILITY(U,$J,358.3,53384,2)
 ;;=^5006532
 ;;^UTILITY(U,$J,358.3,53385,0)
 ;;=H61.23^^245^2684^4
 ;;^UTILITY(U,$J,358.3,53385,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,53385,1,3,0)
 ;;=3^Impacted cerumen, bilateral
 ;;^UTILITY(U,$J,358.3,53385,1,4,0)
 ;;=4^H61.23
 ;;^UTILITY(U,$J,358.3,53385,2)
 ;;=^5006533
 ;;^UTILITY(U,$J,358.3,53386,0)
 ;;=H91.91^^245^2684^3
 ;;^UTILITY(U,$J,358.3,53386,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,53386,1,3,0)
 ;;=3^Hearing loss, unspec, right ear
 ;;^UTILITY(U,$J,358.3,53386,1,4,0)
 ;;=4^H91.91
 ;;^UTILITY(U,$J,358.3,53386,2)
 ;;=^5133553
 ;;^UTILITY(U,$J,358.3,53387,0)
 ;;=H91.92^^245^2684^2
 ;;^UTILITY(U,$J,358.3,53387,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,53387,1,3,0)
 ;;=3^Hearing loss, unspec, left ear
 ;;^UTILITY(U,$J,358.3,53387,1,4,0)
 ;;=4^H91.92
 ;;^UTILITY(U,$J,358.3,53387,2)
 ;;=^5133554
 ;;^UTILITY(U,$J,358.3,53388,0)
 ;;=H91.93^^245^2684^1
 ;;^UTILITY(U,$J,358.3,53388,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,53388,1,3,0)
 ;;=3^Hearing loss, unspec, bilateral
