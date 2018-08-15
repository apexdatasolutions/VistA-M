RMPR4M ;PHX/HNB,RVD - PURCHASE CARD MODULE FUNCTIONS ;3/1/1996
 ;;3.0;PROSTHETICS;**3,26,28,30,41,62,90,133,189**;Feb 09, 1996;Build 14
 ;Per VA Directive 6402, this routine should not be modified.
 ;
 ; RVD patch #62 - pce and suspense link to 2319
POST2 ;*** Posting Data to 2319 *******************************************
 ;set global to local table/variables
 S R190=$G(^RMPR(664,RMPRA,0))
 S R192=$G(^RMPR(664,RMPRA,2))
 S R193=$G(^RMPR(664,RMPRA,3))
 S R194=$G(^RMPR(664,RMPRA,4))
 W !,"...now posting to file 660..."
ADD ;for adding new entry in 2319
 S RMPHC="" I $D(^TMP("RM",$J,"N")) D
 .F I=0:0 S I=$O(^TMP("RM",$J,"N",I)) Q:I'>0  S RMI=$G(^RMPR(664,RMPRA,1,I,0)) I RMI D
 ..S RMCPT=$P($G(^RMPR(664,RMPRA,1,I,4)),U,2)
 ..S DIC="^RMPR(660,",DIC(0)="L",X=DT
 ..K DD,DO D FILE^DICN
 ..S $P(^RMPR(664,RMPRA,1,I,0),U,13)=+Y
 ..D TOT
 ..S:$P(RMI,U,16) RMPHC=$P(^RMPR(661.1,$P(RMI,U,16),0),U,4)
 ..S R19A=+Y
 ..S R19I=$G(^RMPR(664,RMPRA,1,I,0))
 ..S R19(660,R19A_",",8)=RMPR("STA")
 ..S R19(660,R19A_",",.02)=$P(R190,U,2)
 ..S R19(660,R19A_",",7)=$P(R190,U,4)
 ..S R19(660,R19A_",",4.3)=$P(R194,U,2)
 ..S R19(660,R19A_",",23)=$P(R194,U,5)
 ..S R19(660,R19A_",",1)=$P(R190,U,1)
 ..S R19(660,R19A_",",25)=$P(R193,U,1)
 ..S R19(660,R19A_",",27)=DUZ
 ..S R19(660,R19A_",",2)=$P(R19I,U,9)
 ..S R19(660,R19A_",",4)=$P(R19I,U,1)
 ..S R19(660,R19A_",",5)=$P(R19I,U,4)
 ..S R19(660,R19A_",",4.5)=$P(R19I,U,16)
 ..S R19(660,R19A_",",4.7)=RMCPT
 ..S R19(660,R19A_",",4.1)=RMPHC
 ..S R19(660,R19A_",",12)=$P(R19I,U,12)
 ..S R19(660,R19A_",",78)=$P(R19I,U,5)
 ..S R19(660,R19A_",",16)=$P(R19I,U,8)
 ..S R19(660,R19A_",",24)=$P(R19I,U,2)
 ..S R19(660,R19A_",",62)=$P(R19I,U,10)
 ..S R19(660,R19A_",",63)=$P(R19I,U,11)
 ..S R19(660,R19A_",",24)=$P(R19I,U,2)
 ..S R19(660,R19A_",",14)=RMTOT
 ..S R19(660,R19A_",",9)=$P(R19I,U,15)
 ..S R19(660,R19A_",",11)=14
 ..S R19(660,R19A_",",68)=RGRP1
 ..S R19(660,R19A_",",8.14)=0
 ..; update CONTRACT #, LOT #, and MODEL in 660
 ..S R19(660,R19A_",",9.2)=$$GET1^DIQ(664.02,$$I66402(R19A,RMPRA)_","_RMPRA_",",15.4)
 ..S R19(660,R19A_",",24)=$$GET1^DIQ(664.02,$$I66402(R19A,RMPRA)_","_RMPRA_",",15.6)
 ..S R19(660,R19A_",",38.7)=$P(RMI,U,14)
 ..D FILE^DIE("K","R19","ERROR")
 ..I $D(^RMPR(664,RMPRA,1,I,4)) S $P(^RMPR(660,R19A,4),U,1)=$P(^RMPR(664,RMPRA,1,I,4),U,1)
 ..MERGE ^RMPR(660,R19A,"DES")=^RMPR(664,RMPRA,1,I,1)
 ..S RMPRDFN=$P(R190,U,2)
 ..S RM60LINK(R19A)=""
 ..D CHK
 ;
EDIT ;for editing entry in 2319
 S RMPHC="" I $D(^TMP("RM",$J,"E")) D
 .F I=0:0 S I=$O(^TMP("RM",$J,"E",I)) Q:I'>0  S RMI=$G(^RMPR(664,RMPRA,1,I,0)),DA=$P(RMI,U,13) I DA D
 ..S RMCPT=$P($G(^RMPR(664,RMPRA,1,I,4)),U,2)
 ..D TOT
 ..S:$P(RMI,U,16) RMPHC=$P(^RMPR(661.1,$P(RMI,U,16),0),U,4)
 ..S $P(^RMPR(660,DA,0),U,11)=$P(RMI,U,15)
 ..S $P(^RMPR(660,DA,0),U,4)=$P(RMI,U,9)
 ..S $P(^RMPR(660,DA,0),U,7)=$P(RMI,U,4)
 ..S $P(^RMPR(660,DA,0),U,8)=$P(RMI,U,5)
 ..S $P(^RMPR(660,DA,0),U,13)=14
 ..S $P(^RMPR(660,DA,0),U,16)=RMTOT
 ..S $P(^RMPR(660,DA,"AM"),U,3)=$P(RMI,U,10)
 ..S $P(^RMPR(660,DA,"AM"),U,4)=$P(RMI,U,11)
 ..S $P(^RMPR(660,DA,0),U,22)=RMPHC
 ..S $P(^RMPR(660,DA,1),U,4)=$P(RMI,U,16)
 ..S $P(^RMPR(660,DA,1),U,6)=RMCPT
 ..S $P(^RMPR(660,DA,0),U,18)=$P(RMI,U,8)
 ..; update CONTRACT #, LOT #, and MODEL in 660
 ..S $P(^RMPR(660,DA,2),U,9)=$P(RMI,U,14)
 ..S $P(^RMPR(660,DA,0),U,24)=$$GET1^DIQ(664.02,$$I66402(DA,RMPRA)_","_RMPRA_",",15.6)
 ..S $P(^RMPR(660,DA,9),U,2)=$$GET1^DIQ(664.02,$$I66402(DA,RMPRA)_","_RMPRA_",",15.4)
 ..;update brief description field 24 in 660
 ..S $P(^RMPR(660,DA,1),U,2)=$P(RMI,U,2)
 ..I $D(^RMPR(664,RMPRA,1,I,4)) S $P(^RMPR(660,DA,4),U,1)=$P(^RMPR(664,RMPRA,1,I,4),U,1)
 ..;added by patch #62
 ..I $D(^RMPR(660,DA,10)) S RM10STAT=$P(^RMPR(660,DA,10),U,14)
 ..I '$D(^RMPR(660,DA,10))!'$G(RM10STAT) D
 ...K RM10STAT
 ...S RM60LINK(DA)=""
 ..MERGE ^RMPR(660,DA,"DES")=^RMPR(664,RMPRA,1,I,1)
 ..S DIK="^RMPR(660," D IX1^DIK
SHIP ;for shipping entry in 2319
 I $G(RMSHIF) S DA=$P(R190,U,12) S:$G(DA) $P(^RMPR(660,DA,0),U,17)=$P(R190,U,11),$P(^RMPR(660,DA,0),U,16)=$P(R190,U,11) I '$G(DA) D
 .S DIC="^RMPR(660,",DIC(0)="L",X=DT
 .K DD,DO D FILE^DICN
 .S $P(^RMPR(664,RMPRA,0),U,12)=+Y
 .S R19IEN=$O(^RMPR(664,RMPRA,1,0)) Q:R19IEN=""
 .S R19I=$G(^RMPR(664,RMPRA,1,R19IEN,0))
 .S R19A=+Y
 .S R19(660,R19A_",",8)=RMPR("STA")
 .S R19(660,R19A_",",.02)=$P(R190,U,2)
 .S R19(660,R19A_",",7)=$P(R190,U,4)
 .S R19(660,R19A_",",4.3)=$P(R194,U,2)
 .S R19(660,R19A_",",23)=$P(R194,U,5)
 .S R19(660,R19A_",",1)=$P(R190,U,1)
 .S R19(660,R19A_",",2)="X"
 .S R19(660,R19A_",",25)=$P(R193,U,1)
 .S R19(660,R19A_",",27)=DUZ
 .S R19(660,R19A_",",6)=$P(R190,U,11)
 .S R19(660,R19A_",",14)=$P(R190,U,11)
 .S R19(660,R19A_",",11)=14
 .S R19(660,R19A_",",12)="C"
 .S R19(660,R19A_",",62)=$P(R19I,U,10)
 .S R19(660,R19A_",",63)=$P(R19I,U,11)
 .S R19(660,R19A_",",68)=RGRP1
 .D FILE^DIE("K","R19","ERROR")
 .I $D(^RMPR(660,R19A,10)) S RM10STAT=$P(^RMPR(660,R19A,10),U,14)
 .I '$D(^RMPR(660,R19A,10))!'$G(RM10STAT) D
 ..K RM10STAT
 ..S RM60LINK(R19A)=""
 ;
CAN ;for CANCELING entry in 2319
 ;call pce delete if patient encounter was recorded.
 N RMI
 I $D(^TMP("RM",$J,"C")) S DIK="^RMPR(660," F RMI=0:0 S RMI=$O(^TMP("RM",$J,"C",RMI)) Q:RMI'>0  D
 .I $D(^RMPR(660,RMI,10)),$P(^RMPR(660,RMI,10),U,12) D
 ..S RMCHK=0
 ..S RMCHK=$$DEL^RMPRPCED(RMI)
 .S DA=RMI D ^DIK
 ;
UPD ; Update Percent discount, Bank Authorization and remove shipping entry.
 I $G(RMPERF)!$G(RMBANF) D
 .F I=0:0 S I=$O(^RMPR(664,RMPRA,1,I)) Q:I'>0  S RMI=$G(^(I,0)),DA=$P(RMI,U,13) I DA D
 ..I $G(RMPERF) D TOT S $P(^RMPR(660,DA,0),U,16)=RMTOT
 ..S:$G(RMBANF) $P(^RMPR(660,DA,4),U,2)=$P(R194,U,2)
 I $G(RMSHIF),($P(^RMPR(664,RMPRA,0),U,11)=0) S DA=$P(^(0),U,12),DIK="^RMPR(660," D ^DIK S $P(^RMPR(664,RMPRA,0),U,12)=""
 ;
KILL K RMTOT,RMI,R19I,R19A,DR,DA,RMPERF,RMBANF,RMSHIF,RMPHC,RMCPT
 Q
TOT S RMACT=$P(RMI,U,7),RMUNC=$P(RMI,U,3),RMQTY=$P(RMI,U,4)
 I DCT S RMTOT=$S(RMACT=0!(RMACT>0):RMACT-$J(RMACT*DCT,0,2)*RMQTY,1:RMUNC-$J(RMUNC*DCT,0,2)*RMQTY)
 I 'DCT S RMTOT=$S(RMACT=0!(RMACT>0):RMACT*RMQTY,1:RMUNC*RMQTY)
 Q
CHK I '$D(^RMPR(660,R19A,0)) W !!,$C(7),"**** POSTING TO 2319 FOR ITEM.."_I_" FAILED",!,"PLEASE RUN CLOSE-OUT OPTION AGAIN..." G KTMP^RMPR4E21
 Q
I66402(RMI660,RMI664) ; obtain IEN of line in 664.02 that contains match for pointer to 660
 ; RMI660 - IEN in 660 which is the one that we are checking 664.02 for
 ; RMI664 - IEN in 664 that we are searching on
 N RMNS
 S RMNS=0
 F  S RMNS=$O(^RMPR(664,RMI664,1,RMNS)) Q:+RMNS=0  Q:$P(^RMPR(664,RMI664,1,RMNS,0),U,13)=RMI660
 Q RMNS
