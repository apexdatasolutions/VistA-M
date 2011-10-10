PSXVIEW ;BIR/HTW-CMOP Data for View Prescription ;[ 02/02/98  7:46 AM ]
 ;;2.0;CMOP;**11**;11 Apr 97
 S PSXM=$O(^PSRX(DA,4,0)) G:'$G(PSXM) FINI K PSXM
 D PAGE Q:$G(ANS)]""
FOUR ;  Get data from event multiple
 D HEADER
 F PSXA=0:0 S PSXA=$O(^PSRX(DA,4,PSXA)) Q:'PSXA!($G(ANS)["^")  S PSX4=^(PSXA,0) D
 .D FIX
 .I $Y>20 D PAGE Q:$G(ANS)["^"  D HEADER
 .D PRINT Q:$G(ANS)["^"
 D JUMP Q:$G(ANS)["^"
 D PSXLOT
FINI K ANS,Y,%,I,Z,PSXLOT,PSXL,PSX4,F,PSXA,C,ER,PSXFIL,PSX4,PSXREA,PSXVID
 K PSXREL,PSXTRDT,PSXT,PSXLOC,DTOUT,DUOUT,PSXSEQ,PSXA,PSXML,P,I1,I2
 K PSXP,PSXE,PSXE1,PSXERR,PSXBAT,ZD1,ZD2,ZDT,RXREF,PSXZ,PSXTST,PSXTCAN
 K PSXRDT,PSXNDC,PSXM,PSXL1,PSXCAN,PSX1,EXPDT,PSXBREF,RXREF1
 Q
PRINT ;
 W !!,$S($G(PSXTST)=3:PSXTCAN,$G(PSXTST)=1:$G(PSXRDT),1:$G(PSXTRDT))
 W ?15,$S(PSXFIL=0:"ORIG",1:"REF "_$G(PSXFIL))
 W ?22,$G(PSXBREF)
 W ?36,$G(PSXT)
 W ?42,$S($G(PSXTST)=3:$E($G(PSXCAN),1,35),$G(PSXNDC)]"":"NDC: "_PSXNDC,1:"")
 Q
PSXLOT ;
 Q:$O(^PSRX(DA,5,0))'>0
 W @IOF
 W "CMOP LOT#/EXPIRATION DATE LOG:"
 W !,"RX REF",?20,"LOT #",?40,"EXPIRATION DATE",!
 D Z1
 W !
 F PSXZ=0:0 S PSXZ=$O(^PSRX(DA,5,PSXZ)) Q:PSXZ']""  S PSXLOT=^(PSXZ,0) D
 .S EXPDT=$P(PSXLOT,U,2)
 .S EXPDT=$E(EXPDT,4,5)_"/"_$E(EXPDT,6,7)_"/"_$E(EXPDT,2,3)
 .S RXREF=$P(PSXLOT,U,3)
 .W !,$S(RXREF=0:"ORIG",RXREF>0:"REF "_RXREF,1:""),?20,$P(PSXLOT,U),?43,EXPDT
 .Q
JUMP S PSXL=22-$Y F PSXP=1:1:PSXL W !
PAGE K DIR S DIR(0)="FO",DIR("A")="Press RETURN to continue or ""^"" to exit" D ^DIR K DIR S:$D(DTOUT)!($D(DUOUT)) (ANS)="^"
 Q
HEADER ;
 W @IOF,"CMOP EVENT LOG:"
 W !,"DATE",?15,"RX REF",?22,"TRN-ORDER #",?36,"STAT",?42,"COMMENTS"
 W ! F C=1:1:79 W "="
 Q
FIX ; Translate data
 S PSXBAT=$P(PSX4,U),PSXSEQ=$P(PSX4,U,2)
 S PSXFIL=$P(PSX4,U,3),PSXTST=$P(PSX4,U,4)
 S PSXBREF=$G(PSXBAT)_"-"_$G(PSXSEQ)
 S PSXZT=$P(PSX4,U,5),PSXZT1=$P(PSXZT,"."),PSXZT2=$P(PSXZT,".",2)
 I $G(PSXZT)']"" K PSXZT,PSXZT1,PSXZT2 G F1
 S PSXZT2=$E(PSXZT2,1,4)
 S PSXZT1=$E(PSXZT1,4,5)_"/"_$E(PSXZT1,6,7)_"/"_$E(PSXZT1,2,3)
 S PSXTCAN=PSXZT1_"@"_PSXZT2 K PSXZT1,PSXZT2,PSXZT
F1 S PSXNDC=$P(PSX4,U,8)
 S PSXCAN=$G(^PSRX(DA,4,PSXA,1))
 ; Get CMOP site
 S I1=$O(^PSX(550.2,"B",PSXBAT,""))
P1 ; Get transmission d/t
 S ZDT=$P(^PSX(550.2,I1,0),U,6),ZD1=$P(ZDT,"."),ZD2=$P(ZDT,".",2)
 S ZD2=$E(ZD2,1,4)
 S ZD1=$E(ZD1,4,5)_"/"_$E(ZD1,6,7)_"/"_$E(ZD1,2,3)
 S PSXTRDT=ZD1_"@"_ZD2
Q1 S:PSXTST=0 PSXT="TRAN"
 I PSXTST=1 D
 .I PSXFIL>0,('$D(^PSRX(DA,1,PSXFIL,0))) S PSXT="DISP REFILL DELETED" Q
 .S PSX1=$S(PSXFIL=0:$P(^PSRX(DA,2),"^",13),1:$P(^PSRX(DA,1,PSXFIL,0),"^",18))
 .Q:PSX1']""
 .I PSX1'["." S PSXRDT=$E(PSX1,4,5)_"/"_$E(PSX1,6,7)_"/"_$E(PSX1,2,3) G SKIP
 .S ZR=PSX1,ZR1=$P(ZR,"."),ZR2=$P(ZR,".",2)
 .S ZR2=$E(ZR2,1,4)
 .S PSXRDT=$E(ZR1,4,5)_"/"_$E(ZR1,6,7)_"/"_$E(ZR1,2,3)_"@"_ZR2
 .K ZR,ZR1,ZR2
SKIP .S PSXT="DISP"
 S:PSXTST=2 PSXT="RTRN"
 S:PSXTST=3 PSXT="NDISP"
 Q
T1 X ^DD("DD") Q
Z1 F C=1:1:79 W "="
 K C
 Q