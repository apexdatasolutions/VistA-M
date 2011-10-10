PSONEW3 ;IHS/DSD/JCM - EDIT TEMPLATE DURING NEW RX ORDER ENTRY ; 10/17/92 11:43 [ 07/23/96  6:14 PM ]
 ;;7.0;OUTPATIENT PHARMACY;;DEC 1997
 ;
START ;
 S (PSONEW("DFLG"),PSONEW("FIELD"),PSONEW3)=0
 ;
1 S PSONEW("FLD")=1 D ISSDT^PSODIR2(.PSONEW) ; Get Issue Date
 G:PSONEW("DFLG") END G:PSONEW("FIELD") @PSONEW("FIELD")
 ;
2 S PSONEW("FLD")=2 D FILLDT^PSODIR2(.PSONEW) ; Get Fill date
 G:PSONEW("DFLG") END G:PSONEW("FIELD") @PSONEW("FIELD")
 ;
3 S:$G(POERR) PSONEW("ISSUE DATE")=PSOID
 S PSONEW("FLD")=3 D PTSTAT^PSODIR1(.PSONEW) ; Get Patient Status
 ;K PSTMAX S PSDAYS=PSONEW("DAYS SUPPLY"),PSRF=PSONEW("# OF REFILLS"),PTST=$P(^PS(53,PSONEW("PATIENT STATUS"),0),"^"),PTDY=$P(^(0),"^",3),PTRF=$P(^(0),"^",4) D EDSTAT^PSOUTLA
 G:PSONEW("DFLG") END G:PSONEW("FIELD") @PSONEW("FIELD")
 ;
4 S PSONEW("FLD")=4 D PROV^PSODIR(.PSONEW) ; Get Provider
 G:PSONEW("DFLG") END G:PSONEW("FIELD") @PSONEW("FIELD")
 ;
5 S PSONEW("FLD")=5 D CLINIC^PSODIR2(.PSONEW) ; Get Clinic
 G:PSONEW("DFLG") END G:PSONEW("FIELD") @PSONEW("FIELD")
 ;
6 S PSONEW("FLD")=6 D ^PSODRG ; Get drug and related information
 G:PSONEW("DFLG") END G:PSONEW("FIELD") @PSONEW("FIELD")
 ;
7 S PSONEW("FLD")=7 D QTY^PSODIR1(.PSONEW) ; Get quantity
 G:PSONEW("DFLG") END G:PSONEW("FIELD") @PSONEW("FIELD")
 ;
8 S PSONEW("FLD")=8 D DAYS^PSODIR1(.PSONEW) ; Get days supply
 ;K PSMAX,PSTMAX S PSDAYS=PSONEW("DAYS SUPPLY"),PSRF=PSONEW("# OF REFILLS"),PTST=$P(^PS(53,PSONEW("PATIENT STATUS"),0),"^"),PTDY=$P(^(0),"^",3),PTRF=$P(^(0),"^",4),PSODEA=PSODRUG("DEA"),CS=0 D EDNEW^PSOUTLA
 G:PSONEW("DFLG") END G:PSONEW("FIELD") @PSONEW("FIELD")
 ;
9 S PSONEW("FLD")=9 D REFILL^PSODIR1(.PSONEW) ; Get # of refills
 ;K PSMAX,PSTMAX S PSDAYS=PSONEW("DAYS SUPPLY"),PSRF=PSONEW("# OF REFILLS"),PTST=$P(^PS(53,PSONEW("PATIENT STATUS"),0),"^"),PTDY=$P(^(0),"^",3),PTRF=$P(^(0),"^",4),PSODEA=PSODRUG("DEA"),CS=0 D EDNEW^PSOUTLA
 G:PSONEW("DFLG") END G:PSONEW("FIELD") @PSONEW("FIELD")
 ;
10 S PSONEW("FLD")=10 D SIG^PSODIR1(.PSONEW) ; Get sig
 G:PSONEW("DFLG") END G:PSONEW("FIELD") @PSONEW("FIELD")
 ;
11 S PSONEW("FLD")=11 D COPIES^PSODIR1(.PSONEW) ; Get # of copies
 G:PSONEW("DFLG") END G:PSONEW("FIELD") @PSONEW("FIELD")
 ;
12 S PSONEW("FLD")=12 D MW^PSODIR2(.PSONEW) ; Get Mail/Window Info
 G:PSONEW("DFLG") END G:PSONEW("FIELD") @PSONEW("FIELD")
 ;
13 S PSONEW("FLD")=13 D RMK^PSODIR2(.PSONEW) ; Get Remarks
 G:PSONEW("DFLG") END G:PSONEW("FIELD") @PSONEW("FIELD")
 ;
14 I $G(DUZ("AG"))="I" S PSONEW("FLD")=14 D EXP^PSODIR2(.PSONEW) ; Get Expiration Date - Indian Health Service ONLY
 G:PSONEW("DFLG") END G:PSONEW("FIELD") @PSONEW("FIELD")
 ;
15 S PSONEW("FLD")=15 D CLERK^PSODIR2(.PSONEW) ; Get Clerk Code
 G:PSONEW("DFLG") END G:PSONEW("FIELD") @PSONEW("FIELD")
 ;
END ;
 K PSONEW3
 Q
 ;
JUMP ;
 S PSONEW("FIELD")=$S(+Y=3:3,+Y=6:6,+Y=10:10,+Y=7:7,+Y=10.6:11,+Y=8:8,+Y=9:9,+Y=4:4,+Y=29:14,+Y=5:5,+Y=11:12,+Y=12:13,+Y=1:1,+Y=22:2,1:PSONEW("FLD"))
 Q