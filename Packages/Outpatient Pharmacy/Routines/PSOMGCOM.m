PSOMGCOM ;BHAM ISC/JMB,SAB - management compile/recompile routine ;9/13/05 8:54am
 ;;7.0;OUTPATIENT PHARMACY;**20,28,174,221,444**;DEC 1997;Build 34
 ;External Ref. to ELIG^VADPT is supp. by DBIA# 10061
 ;External Ref. to ^PSDRUG( is supp. by DBIA# 221
COM1 D:DA=0 ORI D:DA>0 REF Q:'$D(^PSRX(REC,1,DA,0))&(DA>0)  D STA
 Q
ORI Q:'$D(^PSRX(REC,0))  S RX0=^PSRX(REC,0),DV=$S($P($G(^PSRX(REC,2)),"^",9):$P(^PSRX(REC,2),"^",9),1:$O(^PS(59,0)))
 S NEW(DV)=NEW(DV)+1 S:$P(RX0,"^",11)="W" WIND(DV)=WIND(DV)+1 S:$P(RX0,"^",11)="M" MAIL(DV)=MAIL(DV)+1 S DATE=$P(^PSRX(REC,0),"^",2)-.01
 S COST=$P(RX0,"^",7)*$S(+$P(RX0,"^",17):$P(RX0,"^",17),1:+$P($G(^PSDRUG(+$P(RX0,"^",6),660)),"^",6))
 ;W !!!!,REC," ",$$GET1^DIQ(52,REC,.01),"  ",$$GET1^DIQ(52,REC,8)
 D DAYS Q
DAYS ;
 S TFIL=TFIL+1,TDAYS(DV)=$G(TDAYS(DV))+DAYS-(DAYS#30),TFCT=TFCT+COST,EQCOST(DV)=EQCOST(DV)+COST
 ; - Adding up Equivalent Fills (30-Day count) for each Division
 S EQFL(DV)=EQFL(DV)+$$MIN^XLFMTH((DAYS\30)+((DAYS#30)>0),12)
 ;
 ; - Adding up Specific Fills for each Division
 I DAYS<31 S QTY30(DV)=QTY30(DV)+1 Q
 I DAYS>30&(DAYS<61) S QTY60(DV)=QTY60(DV)+1 Q
 I DAYS>60&(DAYS<91) S QTY90(DV)=QTY90(DV)+1 Q
 I DAYS>90 S QTYOVR90(DV)=QTYOVR90(DV)+1 Q
 Q
 ;
REF Q:'$D(^PSRX(REC,1,DA,0))  S RXF=^PSRX(REC,1,DA,0),DV=$S($P(RXF,"^",9):$P(RXF,"^",9),1:$O(^PS(59,0))),REF(DV)=REF(DV)+1 S:$P(RXF,"^",2)="W" WIND(DV)=WIND(DV)+1 S:$P(RXF,"^",2)="M" MAIL(DV)=MAIL(DV)+1 S DATE=$P(^PSRX(REC,1,DA,0),"^")-.01
 S COST=$P(RXF,"^",4)*$S($P(RXF,"^",11):$P(RXF,"^",11),1:+$P($G(^PSDRUG(+$P(^PSRX(REC,0),"^",6),660)),"^",6)) D DAYS
 Q
CLE F DV=0:0 S DV=$O(^PS(59,DV)) Q:'+DV  D
 .S METHAD(DV)=$S($D(^PS(59,DV,5)):$P(^PS(59,DV,5),"^",2),1:0)
 .S (CATA(DV),CATC(DV),OTH(DV),CAT(DV),CATCOST(DV),QTY30(DV),QTY60(DV),QTY90(DV),QTYOVR90(DV),TDAYS(DV),EQFL(DV),EQCOST(DV))=0
 .S (METH(DV),METHCOST(DV),PCPP(DV),PP(DV),PPCOST(DV),PREQ(DV),FEE(DV),FCOST(DV),STAFF(DV),STCOST(DV),NEW(DV),REF(DV),WIND(DV),MAIL(DV),INV(DV))=0
 S (TFIL,TFTY,TFCT)=0 Q
STA S:$P($G(^PSDRUG(+$P(^PSRX(REC,0),"^",6),0)),"^",3)["I" INV(DV)=INV(DV)+1
 I $D(METHAD(DV)),DRUG=METHAD(DV) S METH(DV)=METH(DV)+1,METHCOST(DV)=METHCOST(DV)+COST
 E  K PCAT D CAT
 I $P($G(^VA(200,+$G(PHYS),"PS")),"^",6)=4 S FEE(DV)=FEE(DV)+1,FCOST(DV)=FCOST(DV)+COST
 E  S STAFF(DV)=STAFF(DV)+1,STCOST(DV)=STCOST(DV)+COST
 I '$D(^TMP($J,DV,DFN)) S ^TMP($J,DV,DFN)=$G(PCAT),PREQ(DV)=PREQ(DV)+1
 Q
CAT I '$D(^TMP($J,DV,DFN)) D ELIG^VADPT S PCAT=$P($G(VAEL(9)),"^"),CATCOST(DV)=CATCOST(DV)+COST S:PCAT="A" CATA(DV)=CATA(DV)+1 S:PCAT="C" CATC(DV)=CATC(DV)+1 S:PCAT'="A"&(PCAT'="C") OTH(DV)=OTH(DV)+1 Q
 S PCAT=$G(^TMP($J,DV,DFN)),CATCOST(DV)=CATCOST(DV)+COST S:PCAT="A" CATA(DV)=CATA(DV)+1 S:PCAT="C" CATC(DV)=CATC(DV)+1 S:PCAT'="A"&(PCAT'="C") OTH(DV)=OTH(DV)+1
 Q
BUILD ;SET GLOBAL NODE
 F DV=0:0 S DV=$O(^PS(59,DV)) Q:'+DV  D BLD
 Q
BLD ;
 S CAT(DV)=CATA(DV)+CATC(DV)+OTH(DV)
 S RXPREQ(DV)=$FN($S(CAT(DV)=0!(PREQ(DV)=0):0,1:CAT(DV)/PREQ(DV)),"",1)
 S EQPREQ(DV)=$FN($S(EQFL(DV)=0!(PREQ(DV)=0):0,1:EQFL(DV)/PREQ(DV)),"",0)
 S NODE1=EQFL(DV)_"^"_METH(DV)_"^"_(NEW(DV)+REF(DV))_"^"_(EQFL(DV)+METH(DV))_"^"_PREQ(DV)_"^"_RXPREQ(DV)_"^"_EQPREQ(DV)_"^"_INV(DV)
 S ^PS(59.12,PDATE,1,DV,0)=DV_"^"_CATA(DV)_"^"_CATC(DV)_"^"_OTH(DV)_"^"_CAT(DV)_"^"_QTY30(DV)_"^"_QTY60(DV)_"^"_QTY90(DV)_"^"_QTYOVR90(DV)_"^"_NODE1
 ;
 S COSTPST(DV)=$FN($S(STCOST(DV)=0!(STAFF(DV)=0):0,1:STCOST(DV)/STAFF(DV)),"",2)
 S ^PS(59.12,PDATE,2,DV,0)=DV_"^^"_FEE(DV)_"^"_STAFF(DV)_"^"_(FEE(DV)+STAFF(DV))_"^"_NEW(DV)_"^"_REF(DV)_"^"_(NEW(DV)+REF(DV))_"^"_WIND(DV)_"^"_MAIL(DV)_"^"_(WIND(DV)+MAIL(DV))_"^^"_PP(DV)_"^"_PCPP(DV)
 ;
 S AVGFEE(DV)=$FN($S(FCOST(DV)=0!(FEE(DV)=0):0,1:FCOST(DV)/FEE(DV)),"",2)
 S AVGST(DV)=$FN($S(STCOST(DV)=0!(STAFF(DV)=0):0,1:STCOST(DV)/STAFF(DV)),"",2)
 S AVGCAT(DV)=$FN($S(CATCOST(DV)=0!(CAT(DV)=0):0,1:CATCOST(DV)/CAT(DV)),"",2)
 S AVGEQFL(DV)=$FN($S(EQCOST(DV)=0!(EQFL(DV)=0):0,1:(EQCOST(DV)-METHCOST(DV)/EQFL(DV))),"",2)
 S AVGMETH(DV)=$FN($S(METHCOST(DV)=0!(METH(DV)=0):0,1:METHCOST(DV)/METH(DV)),"",2)
 S ^PS(59.12,PDATE,3,DV,0)=DV_"^"_AVGST(DV)_"^"_AVGFEE(DV)_"^"_AVGCAT(DV)_"^"_AVGEQFL(DV)_"^"_AVGMETH(DV)_"^"_$FN((CATCOST(DV)+METHCOST(DV)),"",2)_"^"_$FN(METHCOST(DV),"",2)_"^0.00^0.00"
 Q
