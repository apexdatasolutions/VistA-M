PRCHREC2 ;ID/RSD,SF/TKW-CONT. OF RECEIVING ;1/25/93  13:17
V ;;5.1;IFCAP;**81,202**;Oct 20, 2000;Build 27
 ;Per VA Directive 6402, this routine should not be modified.
 ;
TM K I F I=0:0 S I=$O(^PRC(442,PRCHPO,5,I)) Q:'I  I +^(I,0)>0 S I(100-^(0))=^(0)
 S:$O(I(0)) PRCHRT0=I($O(I(0))),PRCHRT=+PRCHRT0/100,PRCHRT0=$P(PRCHRT0,U,1)_"%"_$P(PRCHRT0,U,2)
 I $P(^PRC(442,PRCHPO,0),U,19)=2 S PRCHRT=0
 Q
 ;
MULT S I=1 F Y=Y+.12:.01 Q:'$D(^PRC(442,PRCHPO,2,"AB",Y))  S I=I+1
 W !?3,I," receiving report(s) for ",X," already exist.",$C(7) S %A="     Do you want to continue ",%B="",%=2 D ^PRCFYN K:%'=1 X,Y
 Q
 ;
WP Q:'$D(^PRC(442,PRCHPO,2,+PRCHRIT,1,0))  K ^UTILITY($J,"W") S DIWL=1,DIWR=65,DIWF="" F PRCHI=0:0 S PRCHI=$O(^PRC(442,PRCHPO,2,+PRCHRIT,1,PRCHI)) Q:'PRCHI  S X=^(PRCHI,0) N Y D DIWP^PRCUTL($G(DA))
 F I=0:0 S I=$O(^UTILITY($J,"W",DIWL,I)) Q:'I  W !?5,^(I,0)
 K PRCHI,DIWL,DIWR,DIWF,^UTILITY($J,"W")
 Q
 ;
DEL S %A="   Are you sure you want to delete this Receiving Report ",%B="",%=2 D ^PRCFYN I %'=1 G:'$D(PRCHRDEL) ES Q
 ;
 Q:'$$CHGSTAT()  ;Force Supply status update prior to deleting receiving report - PRC*5.1*202
 ; PRC*5.1*81 - if site runs DynaMed, may need to build update txn
 I $$GET^XPAR("SYS","PRCV COTS INVENTORY",1,"Q")=1 D REC^PRCV442A(PRCHPO,PRCHRPT,2)
 ;
DELP D WAIT^DICD K ^PRC(442,PRCHPO,11,PRCHRPT) S $P(^(0),U,3,4)="0^"_($P(^(0),U,4)-1)
 F PRCHRIT=0:0 S PRCHRIT=$O(^PRC(442,PRCHPO,2,"AB",PRCHRD,PRCHRIT)) Q:'PRCHRIT  S PRCHRI=$O(^(PRCHRIT,0)),DA=PRCHRI,DA(1)=PRCHRIT,DA(2)=PRCHPO,DIK="^PRC(442,PRCHPO,2,PRCHRIT,3," D ^DIK
 F PRCHRIT=0:0 S PRCHRIT=$O(^PRC(442,PRCHPO,2,PRCHRIT)) Q:'PRCHRIT  I $D(^(PRCHRIT,0)) S X=+^(0),Y=$P(^(0),"^",2),Z=0 S:$D(^(2)) Z=$P(^(2),"^",8) I Z<Y S ^PRC(442,PRCHPO,2,"C",X,PRCHRIT)=""
 W !!?5,"Receiving Report Deleted ",$C(7) K PRCHRD,PRCHRPT,PRCHRI,PRCHRIT,DIK,DA G:'$D(PRCHRDEL) Q^PRCHREC
 Q
 ;
DEL1 S DIK="^PRC(442,PRCHPO,2,+PRCHRIT,3,",DA=PRCHRDY,DA(1)=+PRCHRIT,DA(2)=PRCHPO D ^DIK K DIK W "   <DELETED> ",$C(7),!
 Q
 ;
SUB S PRCHRIT=$O(^PRC(442,PRCHPO,2,"AB",PRCHRD,+PRCHRIT)) Q:'PRCHRIT  S PRCHRI=+$O(^(PRCHRIT,0))
 G:'$D(^PRC(442,PRCHPO,2,PRCHRIT,3,PRCHRI,0)) SUB S Y=^(0),PRCHRAM=$P(Y,U,3),PRCHRDA=$P(Y,U,5),$P(Y,U,4)=PRCHRPT,^(0)=Y,PRCHLC=PRCHLC+1
 I $P(^PRC(442,PRCHPO,0),U,6)]"" S PRCHRS=$S($P(^PRC(442,PRCHPO,2,PRCHRIT,2),U,7)]"":$P(^(2),U,7),1:"**")
 I $P(^PRC(442,PRCHPO,0),U,6)="" S PRCHRS="**"
 S PRCHRQ1=$P(^PRC(442,PRCHPO,2,PRCHRIT,0),U,2),PRCHRIT=PRCHRIT_U_$P(^(0),U,1),PRCHRQ2=$P(^(2),U,8) S:'$D(PRCHR("SA",PRCHRS)) PRCHR("SA",PRCHRS)=0
 S PRCHR("SA",PRCHRS)=PRCHR("SA",PRCHRS)+PRCHRAM-PRCHRDA,^PRC(442,PRCHPO,2,+PRCHRIT,3,"AC",PRCHRPT,PRCHRI)=""
 I 'PRCHRFIN K:PRCHRQ1'>PRCHRQ2 ^PRC(442,PRCHPO,2,"C",$P(PRCHRIT,U,2))
 G SUB
 ;
ES W ! I $G(PRCHRFIN) W $C(7) S %A="Is this Receiving Report the FINAL for this ESTIMATED Purchase Order ",%B="",%=2,PRCHRFIN=0 D ^PRCFYN S:%=1 PRCHRFIN=1
 N RRCHK S RRCHK=$P($G(^PRC(411,PRC("SITE"),0)),"^",8)
 N MOPCHK S MOPCHK=$P($G(^PRC(442,PRCHPO,0)),"^",2) S:MOPCHK=25 RRCHK="N"
 I '$D(PRCHPOO) S %A="   Approve this receiving report "_$S($D(PRCHIMP):"and complete the P.O.",((RRCHK="Y")&('$P($G(^PRC(442,PRCHPO,24)),U))):"and print in Receiving ",1:""),%B="",%=1
 I '$D(PRCHPOO) D ^PRCFYN G:%'=1&($D(PRCHIMP)) DEL G:%'=1 ED
 S DA=PRCHPO,P=+PRC("PER") I $D(PRCHPOO) S X=$P(PRC("PER"),"^",2),PRCHNM=X G EN3^PRCHREC
 S PRCSIG="" D ESIG^PRCUESIG(+DUZ,.PRCSIG) S ROUTINE="PRCUESIG" G:PRCSIG'=1 QQ
 G EN3^PRCHREC
 ;
ED S %A="   Edit this receiving report ",%B="",%=1 D ^PRCFYN G:%'=1 DEL
 D ENTD^PRCHREC4 G:PRCHDLVD["^" DEL
 F I=0:0 S I=$O(^PRC(442,PRCHPO,2,"AB",PRCHRD,I)) Q:'I  I $D(^PRC(442,PRCHPO,2,I,0)) S ^PRC(442,PRCHPO,2,"C",+^(0),I)=""
 K PRCHR,^PRC(442,PRCHPO,11,PRCHRPT) S $P(^(0),U,3,4)="0^"_($P(^(0),U,4)-1) W !
 G LI^PRCHREC1
 ;
QQ S:'$D(ROUTINE) ROUTINE=$T(+0) W !!,$$ERR^PRCHQQ(ROUTINE,PRCSIG) W:PRCSIG=0!(PRCSIG=-3) !,"Notify Application Coordinator!",$C(7) S DIR(0)="EAO",DIR("A")="Press <return> to continue" D ^DIR K ROUTINE
 G DEL
CHGSTAT() ;Update supply status
 I '$G(PRCHRDEL) Q 1 ;Only update Supply Status if using the Delete a Receiving Report option
 N PRCHREC,PRCHX,PRCHQ,DIC,DIE,DA,DR
 S PRCHREC=$S($O(^PRC(442,PRCHPO,11,PRCHRPT))>0:1,$O(^PRC(442,PRCHPO,11,PRCHRPT),-1)>0:1,1:0),X=$P($G(^PRC(442,PRCHPO,7)),U,2)
 I PRCHREC S Y=$S(X=30:"25,30",X=31:"26,31",X=33:"28,33",1:X)
 I 'PRCHREC S Y=$S(X=25:"22,20",X=27:22,X=30:"20,22",X=26:"23,21",X=31:"23,21",X=28:10,X=33:10,1:X)
 W !!
 K DIC S DIC("S")="I "_""""_Y_""""_"[($P(^(0),U,2)),$L($P(^(0),U,2))=""2"""
 F  S DIC="^PRCD(442.3,",DIC(0)="AEQMZ",DIC("A")="Update SUPPLY STATUS: " D ^DIC S PRCHX=+Y S PRCHQ=0 Q:Y>0  S PRCHQ=1 Q:$G(DTOUT)!($G(DUOUT))  W "??",!,$C(7)
 I $G(PRCHQ) W !,"A valid status is required to delete receiving report. Receiving report will not be deleted." Q 0
 S X=$P(^PRC(442,PRCHPO,0),U,17),X=X-PRCHEX,$P(^(0),U,17)=X,DR=".5////"_PRCHX,DIE="^PRC(442,",DA=PRCHPO D ^DIE,Q^PRCHE
 Q 1
