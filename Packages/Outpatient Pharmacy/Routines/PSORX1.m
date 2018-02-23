PSORX1 ;BIR/SAB-medication processing driver ;8/17/16 5:10pm
 ;;7.0;OUTPATIENT PHARMACY;**7,22,23,57,62,46,74,71,90,95,115,117,146,139,135,182,195,233,268,300,170,320,326,324,334,251,454,488,497**;DEC 1997;Build 25
 ;
 ;External reference ^PS(55 supported by DBIA 2228
 ;External reference ^DIC(31 supported by DBIA 658
 ;External reference ^DPT(D0,.372 supported by DBIA 1476
 ;External reference DISPPRF^DGPFAPI supported by DBIA #4563
 ;External reference ^ORRDI1 is supported by DBIA 4659
 ;External reference ^XTMP("ORRDI" is supported by DBIA 4660
 ;External reference ^PSUHL supported by DBIA 4803
 ;
 ;PSO*195 add call to display Patient Record Flag (DISPPRF^DGPFAPI)
 ;
START K PSOQFLG,PSOID,PSOFIN,PSOQUIT,PSODRUG,^TMP($J,"PSOTDD"),^TMP("PSORXPO",$J),^TMP("PSORXBO",$J)
 I '$G(PSOONEVA) N PSOONEVA S PSOONEVA=1
 D EOJ S (PSOBCK,PSOERR)=1 D INIT G:PSORX("QFLG") END
 D PT G:$G(PSORX("QFLG")) END D FULL^VALM1 I $G(NOPROC) K NOPROC G NX
 ;call to add bingo board data to file 52.11
 F SLPPL=0:0 S SLPPL=$O(RXRS(SLPPL)) Q:'SLPPL  D
 .I $P($G(^PSRX(SLPPL,"STA")),"^")'=5 K RXRS(SLPPL) Q
 .S RXREC=SLPPL D WIND^PSOSUPOE I $G(PBINGRTE) D BBADD^PSOSUPOE S (BINGCRT,BINGRTE)=1 S:$G(PSOFROM)'="NEW" PSOFROM="REFILL"
 K TM,TM1 I $G(PSORX("PSOL",1))]""!($D(RXRS)) D ^PSORXL K PSORX
 G:$G(NOBG) NX
 S TM=$P(^TMP("PSOBB",$J),"^"),TM1=$P(^TMP("PSOBB",$J),"^",2) K ^TMP("PSOBB",$J)
 I $G(PSOFROM)="NEW"!($G(PSOFROM)="REFILL")!($G(PSOFROM)="PARTIAL")!($G(PSOFROM)="UNHOLD") D:$D(BINGCRT)&($D(BINGRTE)&($D(DISGROUP))) ^PSOBING1 K BINGCRT,BINGRTE,BBRX,BBFLG
NX I $G(POERR("DEAD"))!$G(PSOQFLG) D EOJ G START
 D EOJ G START
END Q
 ;---------------------------------------------------------
INIT ;
 S PSORX("QFLG")=0
 D:'$D(PSOPAR) ^PSOLSET I '$D(PSOPAR) S PSORX("QFLG")=1
 I $P($G(PSOPAR),"^",2),'$D(^XUSEC("PSORPH",DUZ)) S PSORX("VERIFY")=1
INITX Q
 ;
PT ;
 K ^TMP("PSORXDC",$J),^TMP($J,"PSEXC","OUT"),CLOZPAT,DIC,PSODFN,PSOPTLK
 S PSORX("QFLG")=0,DIC(0)="QEAM" D EN^PSOPATLK S Y=PSOPTLK
 I +Y'>0 S PSORX("QFLG")=1 G PTX
OERR N:$G(MEDP) PAT,POERR K PSOXFLG S (DFN,PSODFN)=+Y,PSORX("NAME")=$P(Y,"^",2)
 K NPPROC,PSOQFLG,DIC,DR,DIQ S DIC=2,DA=PSODFN,DR=.351,DIQ="PSOPTPST" D EN^DIQ1
 K DIC,DA,DR,DIQ D DEAD^PSOPTPST I $G(PSOQFLG) S NOPROC=1 Q
 ;PSO*195 move SSN write to here and add DISPPRF call
 S SSN=$P(^DPT(PSODFN,0),"^",9) W !!?10,$C(7),PSORX("NAME")
 W " ("_$E(SSN,1,3)_"-"_$E(SSN,4,5)_"-"_$E(SSN,6,9)_")" K SSN
 I $G(XQY0)["PSO LMOE FINISH",'$G(MEDP),$D(^TMP($J,"PSOFLPO",PSODFN)) D
 .I '$D(IOINORM)!('$D(IOINHI)) S X="IORVOFF;IORVON;IOINHI;IOINORM" D ENDR^%ZISS
 .W "  ",IORVON_IOINHI,"<This patient has flagged orders>",IOINORM_IORVOFF
 S PSONOAL="" D ALLERGY^PSOORUT2 D  I PSONOAL'="" D PAUSE
 .I PSONOAL'="" W !,$C(7),"     No Allergy Assessment!"
 D REMOTE
 ; bwf - 1/9/2014 - PHARMACY INNOVATIONS, adding call and on screen message to get remote rx's from MDWS.
 I $G(PSOONEVA) D
 .N TFL,TFILIST,TFLP,TFLSITE,TFLIEN,TFLCNT,TFLDUP
 .D TFL^VAFCTFU1(.TFL,PSODFN)
 .S TFLCNT=0
 .S TFILIST="^VAMC^M&ROC^M&ROC(M&RO)^OC^OPC^CBOC^PRRTP^DOM^HCS^MC(M)^MC(M&D)^MORC^NHC^VANPH^SOC^SARRTP^"  ; only exact matches
 .S TFLP=0 F  S TFLP=$O(TFL(TFLP)) Q:'TFLP!(TFLCNT=2)  D
 ..S TFLSITE=$P(TFL(TFLP),U) Q:TFLSITE=""
 ..Q:$D(TFLDUP(TFLSITE))
 ..S TFLDUP(TFLSITE)=""
 ..Q:TFILIST'[(U_$P(TFL(TFLP),U,5)_U)
 ..S TFLCNT=$G(TFLCNT)+1
 .I $G(TFLCNT)<2 Q
 .I '$$GET1^DIQ(59.7,1,101,"I") D  Q
 ..W !!,"The OneVA Pharmacy flag is turned off. Queries will NOT"
 ..W !,"be made to other VA Pharmacy locations.",!
 .K DIR S DIR(0)="Y",DIR("B")="YES",DIR("A")="locations",DIR("A",1)="Would you like to query prescriptions from other OneVA Pharmacy" D ^DIR
 .K DIR
 .Q:'Y
 .W !!,"Please wait. Checking for prescriptions at other VA Pharmacy locations. This may take a moment...",!
 .D REMOTERX^PSORRX1(PSODFN,PSOSITE)
 N PSOUPDT
 S PSOUPDT=1
 I $G(XQY0)["PSO LMOE FINISH" S PSOUPDT=0
 D CHKADDR^PSOBAI(PSODFN,1,PSOUPDT)
 D:($G(XQY0)["PSO LMOE FINISH")&('$G(SNGLPAT)) DISPPRF^DGPFAPI(PSODFN)
 ;
 I $P($G(^PS(55,PSODFN,"LAN")),"^") W !?10,"Patient has another language preference!",! H 3
 I $G(^PS(55,"ASTALK",PSODFN)) W !,"Patient is enrolled to receive ScripTalk 'talking' prescription labels.",! H 2 D MAIL
 D NOW^%DTC S TM=$E(%,1,12),TM1=$P(TM,".",2) S ^TMP("PSOBB",$J)=TM_"^"_TM1
 ;Call to display remote/local prescriptions
 I '$G(PSOFIN) D RDICHK^PSORMRX(PSODFN)
 S PSOQFLG=0,DIC="^PS(55,",DLAYGO=55
 I '$D(^PS(55,PSODFN,0)) D
 .K DD,DO S DIC(0)="L",(DINUM,X)=PSODFN D FILE^DICN D:Y<1  K DIC,DA,DR,DD,DO
 ..S $P(^PS(55,PSODFN,0),"^")=PSODFN K DIK S DA=PSODFN,DIK="^PS(55,",DIK(1)=.01 D EN^DIK K DIK
 D RXSTA
 S PSOLOUD=1 D:$P($G(^PS(55,PSODFN,0)),"^",6)'=2 EN^PSOHLUP(PSODFN) K PSOLOUD
 I $G(^PS(55,PSODFN,"PS"))']"" D  I $G(POERR("QFLG")) G EOJ
 .L +^PS(55,PSODFN):$S(+$G(^DD("DILOCKTM"))>0:+^DD("DILOCKTM"),1:3) I '$T W $C(7),!!,"Patient Data is Being Edited by Another User!",! S POERR("QFLG")=1 S:$G(PSOFIN) PSOQUIT=1 Q
 .S PSOXFLG=1,SSN=$P(^DPT(PSODFN,0),"^",9) W !!?10,$C(7),PSORX("NAME")_" ("_$E(SSN,1,3)_"-"_$E(SSN,4,5)_"-"_$E(SSN,6,9)_")",! K SSN
 .S DIE=55,DR=".02;.03;.04;.05;1;D ELIG^PSORX1;3;50;106;106.1",DA=PSODFN W !!,?5,">>PHARMACY PATIENT DATA<<",! D ^DIE L -^PS(55,PSODFN)
 S PSOX=$G(^PS(55,PSODFN,"PS")) I PSOX]"" S PSORX("PATIENT STATUS")=$P($G(^PS(53,PSOX,0)),"^")
 I $G(^PS(55,PSODFN,"PS"))']"" D  I $G(POERR("QFLG")) G EOJ
 .W !!,"Patient Status Required!!",! D ELIG
 .W ! K POERR("QFLG"),DIC,DR,DIE S DIC("A")="RX PATIENT STATUS: ",DIC(0)="QEAMZ",DIC=53 D ^DIC K DIC
 .I $D(DIRUT)!(Y=-1) D  Q
 ..W $C(7),"Required Data!",! S POERR("QFLG")=1 S:$G(PSOFIN) PSOQUIT=1
 ..I $O(^PS(55,PSODFN,0))="" S DA=PSODFN,DIK="^PS(55," D ^DIK
 .S ^PS(55,PSODFN,"PS")=+Y,PSORX("PATIENT STATUS")=$P(^PS(53,+Y,0),"^")
 .K DIRUT,DTOUT,DUOUT,X,Y,DA
 Q:$G(PSOFIN)
 D ^PSOBUILD
 F PT="GET","DEAD","INP","CNH","TPB","ADDRESS","COPAY" S RTN=PT_"^PSOPTPST" D @RTN Q:$G(POERR("DEAD"))!($G(PSOQFLG))
 I $G(POERR("DEAD")) S POERR("QFLG")=1 F II=0:0 S II=$O(^PS(52.41,"P",PSODFN,II)) D:$P($G(^PS(52.41,II,0)),"^",3)'="DC"&($P($G(^(0)),"^",3)'="DE") DC^PSOORFI2
 K PSOERR("DEAD"),II I $G(PSOQFLG) S POERR("QFLG")=1 G EOJ Q
 S (PAT,PSOXXDFN)=PSODFN,POERR=1 D ^PSOORUT2,BLD^PSOORUT1,EN^PSOLMUTL
 D CLEAR^VALM1 G:$G(PSOQUIT) PTX D EN^PSOLMAO
 S (DFN,PSODFN)=PSOXXDFN K DIE,DIC,DLAYGO,DR,DA,PSOX,PSORXED
 I $O(RXFL("")),$P(^PS(55,PSODFN,0),"^",7)="" D
 . N %
 . D NOW^%DTC
 . S $P(^PS(55,PSODFN,0),"^",7)=$E(%,1,12),$P(^(0),"^",8)="A" D LOGDFN^PSUHL(PSODFN)
PTX ;
 K X,Y,^TMP("PS",$J),^TMP($J,"PSEXC","OUT"),C,DEA,PRC,PSCNT,PSOACT,PSOCLC,PSOCS,PSOCT,PSOFINFL,PSOHD,PSOLST,PSOOPT,PSOPF,PSOX,PSOX1,PSOXXDFN,SIGOK,STP,STR,PSOPTLK
 Q
EOJ ;
 I $G(PSODFN) K ^TMP($J,"PSOINTERVENE",PSODFN)
 K PSOERR,PSOMED,PSORX,PSOSD,PSODRUG,PSODFN,PSOOPT,PSOBILL,PSOIBQS,PSOCPAY,PSOPF,PSOPI,COMM,DGI,DGS,PT,PTDY,PTRF,RN,RTN,SERS,ST0,STAT,DFN,STOP,SLPPL,RXREC
 K:'$G(MEDP) PSOQFLG
 D KVA^VADPT,FULL^VALM1 K PSOLST,PSOXFLG,PSCNT,PSDIS,PSOAL,P1,LOG,%,%DT,%I,D0,DAT,DFN,DRG,ORX,PSON,PSOPTPST,PSORX,PTST,PSOBCK,PSOID,PSOBXPUL
 K INCOM,SIG,SG,STP,RX0,RXN,RX2,RX3,RTS,C,DEAD,PS,PSOCLC,PSOCNT,PSOCT,PSODA,PSOFROM,PSOHD,R3,REA,RF,RFD,RFM,RLD,RXNUM,RXP,RXPR,RXRP,RXRS,STR,POERR,VALMSG
 K ^TMP("PSORXDD",$J),^TMP("PSORXDC",$J),^TMP("PSOAL",$J),^TMP("PSOAO",$J),^TMP("PSOSF",$J),^TMP("PSOPF",$J),^TMP("PSOPI",$J),^TMP("PSOPO",$J),^TMP("PSOHDR",$J),^TMP("PSORXPO",$J)
 I '$G(MEDP),'$G(PSOQUIT) K PAT
 K ^TMP("PSORXBO",$J),PSORX,RFN,PSOXXDFN,VALM,VALMKEY,PSOBCK,SPOERR,PSOFLAG,VALMBCK,D,GMRA,GMRAL,GMRAREC,PSOSTA,PSODT,RXFL,NOBG,BBRX,BBFLG,^TMP($J,"PSOFLPO")
 K PPL,PPL1,PSOQFLAG ;*334 ADDED KILLS
 K ^XTMP("PSORRX1",$J),PSORCNT ;*454 added kill
 Q
ELIG ; shows eligibility and disabilities
 D ELIG^VADPT W !,"Eligibility: "_$P(VAEL(1),"^",2)_$S(+VAEL(3):"     SC%: "_$P(VAEL(3),"^",2),1:"") S N=0 F  S N=$O(VAEL(1,N)) Q:'N  W !,?10,$P(VAEL(1,N),"^",2)
 W !,"Disabilities: " F I=0:0 S I=$O(^DPT(DFN,.372,I)) Q:'I  S I1=$S($D(^DPT(DFN,.372,I,0)):^(0),1:"") D:+I1
 .S PSDIS=$S($P($G(^DIC(31,+I1,0)),"^")]""&($P($G(^(0)),"^",4)']""):$P(^(0),"^"),$P($G(^DIC(31,+I1,0)),"^",4)]"":$P(^(0),"^",4),1:""),PSCNT=$P(I1,"^",2)
 .W:$L(PSDIS_"-"_PSCNT_"% ("_$S($P(I1,"^",3):"SC",1:"NSC")_"), ")>80 !,?15
 .W $S($G(PSDIS)]"":PSDIS_"-",1:"")_PSCNT_"% ("_$S($P(I1,"^",3):"SC",1:"NSC")_"), "
 K N
 Q
PROFILE ;
 S (PSORX("REFILL"),PSORX("RENEW"))=0,PSOX="" D ^PSOBUILD
 I '$G(PSOSD) W !,"This patient has no prescriptions" S:'$D(DFN) DFN=PSODFN D GMRA^PSODEM G PROFILEX
 S (PSODRG,PSOX)="" F  S PSODRG=$O(PSOSD(PSODRG)) Q:PSODRG=""  F  S PSOX=$O(PSOSD(PSODRG,PSOX)) Q:PSOX=""  S:$P(PSOSD(PSODRG,PSOX),"^",3)="" PSORX("RENEW")=1 S:$P(PSOSD(PSODRG,PSOX),"^",4)="" PSORX("REFILL")=1
 K PSOX
PROFILEX Q
 ;
MAIL ; MAKE SURE MAIL STATUS IS COMPATIBLE WITH SCRIPTALK PATIENT
 I $P($G(^PS(59,PSOSITE,"STALK")),"^")="" Q  ; NO SCRIPTALK PRINTER SET UP FOR THIS DIVISION
 N MAIL
 S MAIL=$G(^PS(55,PSODFN,0)) I $P(MAIL,"^",3)>1 Q
MAILP W !!,"REMINDER: CMOP does not fill ScripTalk prescriptions. Please select mail"
 W !,"status:  2 (DO NOT MAIL), 3 (LOCAL REGULAR MAIL) or 4 (LOCAL CERTFIED MAIL)."
 R !,"MAIL: ",MAIL:120
 I MAIL?1"^".E Q
 I MAIL<2!(MAIL>4) W !,"INVALID MAIL SETTING - ENTER 2,3, OR 4" G MAILP
 W "  ",$S(MAIL=2:"DO NOT MAIL",MAIL=3:"LOCAL REGULAR MAIL",1:"LOCAL CERTIFIED MAIL")
 S $P(^PS(55,PSODFN,0),"^",3)=MAIL
 Q
REMOTE ; 
 I $T(HAVEHDR^ORRDI1)']"" Q
 I '$$HAVEHDR^ORRDI1 Q
 D HD^PSODDPR2():(($Y+5)'>IOSL)
 I $D(^XTMP("ORRDI","OUTAGE INFO","DOWN")) W !!,"Remote data not available - Only local order checks processed.",! D HD^PSODDPR2():(($Y+5)'>IOSL) Q
 Q
PAUSE ;
 W ! K DIR S DIR(0)="E",DIR("?")="Press Return to continue",DIR("A")="Press Return to continue" D ^DIR K DIR
 Q
 ;
RXSTA ; DISPLAY ELIGIBILITY & PROMPT FOR RX PATIENT STATUS
 N DA,PSOSTA
 I '$G(PSODFN) Q
 S DA=PSODFN,PSOSTA=$G(^PS(55,PSODFN,"PS"))
 I $G(XQY0)["PSO LMOE FINISH"!(XQY0["PSO LM BACKDOOR ORDERS") I PSOSTA]"" D
 .D ELIG^VADPT W !,"Eligibility: "_$P(VAEL(1),"^",2)_$S(+VAEL(3):"     SC%: "_$P(VAEL(3),"^",2),1:"")
 .S N=0 F  S N=$O(VAEL(1,N)) Q:'N  W !,?10,$P(VAEL(1,N),"^",2)
 .S DIC("A")="RX PATIENT STATUS: ",DIC("B")=PSOSTA,DIC(0)="QEAMZ",DIC=53 D ^DIC K DIC
 .I +Y>0,+Y'=PSOSTA S DIE="^PS(55,",DR="3////"_+Y D ^DIE
 Q
