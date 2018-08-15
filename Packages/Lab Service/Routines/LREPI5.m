LREPI5 ;DALOI/SED,WOIFO/PMK - EMERGING PATHOGENS SEARCH ;31 Dec 2014  11:03 AM
 ;;5.2;LAB SERVICE;**281,315,421,442**;Sep 27, 1994;Build 15
 ; Reference to ^DGPT supported by IA #418
 ; Reference to DGPTFUT supported by IA #6130
 ; Reference to ^ORD supported by IA #872
 ; Reference to PATS^PXRMXX supported by IA #3134
 ; Reference to VADPT supported by IA #10061
 ; Reference to ^AUPNVPOV supported by IA #3094
 ; Reference to $$CODEN^ICDEX supported by IA #5747
 Q
 ;Called from LREPI
PTF ;SEARCH DISCHARGE DATES; NEED ADDITIONAL LATER SPECS
 N J,PTFICD ; ICD array built by PTFICD^DGPTFUT
 S STDT=(LRRPS-.0001),ENDT=(LRRPE+.9999)
 F  S STDT=$O(^DGPT("ADS",STDT)) Q:+STDT'>0!(STDT>ENDT)  D
 .K LRICDX,LRCSYS S LRCSYS=$$ICDSYS^LREPICD(STDT,"D"),LRICDX=$S(LRCSYS="ICD":0,LRCSYS="10D":1,1:-1) Q:LRICDX=-1
 .S IFN=0 F  S IFN=$O(^DGPT("ADS",STDT,IFN)) Q:+IFN'>0  D
 ..Q:$P($G(^DGPT(IFN,0)),U,6)'=3
 ..I $P($G(^DGPT(IFN,300)),U,3)=1 D
 ...I 'LRICDX S LRICDIEN=+$$CODEN^ICDEX("482.84 ",80) D CHKICD
 ...I LRICDX F LRXCODE="A48.1","A48.2","A48.8" D
 ....S LRICDIEN=+$$CODEN^ICDEX(LRXCODE,80) D CHKICD
 ..; I $D(^DGPT(IFN,70)) F LRI=10,11,16:1:24 D
 ..; .S LRICDIEN=$P(^DGPT(IFN,70),U,LRI) D CHKICD
 ..D PTFICD^DGPTFUT(701,IFN,,.PTFICD)
 ..S J="" F  S J=$O(PTFICD(J)) Q:J=""  D
 ...S LRICDIEN=$P(PTFICD(J),"^",1) D CHKICD
 ...Q
 ..;SEARCH SUB FIELDS IN 501-MOVEMENTS
 ..; S LRMV=0 F  S LRMV=$O(^DGPT(IFN,"M",LRMV)) Q:+LRMV'>0  D
 ..D PTFIEN^DGPTFUT(501,IFN,.LRMV)
 ..S LRMV="" F  S LRMV=$O(LRMV(LRMV)) Q:LRMV=""  D
 ...I $P($G(^DGPT(IFN,"M",LRMV,300)),U,3)=1 D
 ....I 'LRICDX S LRICDIEN=+$$CODEN^ICDEX("482.84 ",80) D CHKICD
 ....I LRICDX F LRXCODE="A48.1","A48.2","A48.8" D
 .....S LRICDIEN=+$$CODEN^ICDEX(LRXCODE,80) D CHKICD
 ...; I $D(^DGPT(IFN,"M",LRMV,0)) F LRI=5:1:9,11:1:15 D
 ...; .S LRICDIEN=$P(^DGPT(IFN,"M",LRMV,0),U,LRI) D CHKICD
 ...D PTFICD^DGPTFUT(501,IFN,LRMV,.PTFICD)
 ...S J="" F  S J=$O(PTFICD(J)) Q:J=""  D
 ....S LRICDIEN=$P(PTFICD(J),"^",1) D CHKICD
 ....Q
 K IFN,LRMV,LRICDIEN,LRI,LRXCODE
 Q
CHKICD ;CHECK LRICDIEN CODE AND SAVE
 Q:+LRICDIEN'>0
 Q:'$D(^TMP($J,"ICD",+LRICDIEN))
 S LRPROT=$G(LRPROT,999999) S ^TMP($J,"ICDPROT",+LRICDIEN,LRPROT)=""
 S DFN=$P(^DGPT(IFN,0),U,1),ADMDT=$P(^DGPT(IFN,0),U,2)
 S LRPATH=0 F  S LRPATH=$O(^TMP($J,"ICD",+LRICDIEN,LRPATH)) Q:+LRPATH'>0  D SET
 Q
SET ;SET THE TMP GLOBAL
 S LRPROT=$P(^LAB(69.5,LRPATH,0),U,7)
 S LRCHK=0 D ADDCHK Q:LRCHK
 S:'$D(^TMP($J,LRPROT,DFN,ADMDT)) ^TMP($J,LRPROT,DFN,ADMDT)="I"_U_IFN
 S ^TMP($J,LRPROT,DFN,ADMDT,LRPATH,(9999999-ADMDT),"PTF")=IFN
 Q
ADDCHK ;DO ADDITIONAL CHECKS HERE FOR AGE AND SEX SCREENING.
 ;
 I '$G(DFN) S DFN=$G(LRPAT)
 K VADM
 I $G(DFN) D DEM^VADPT
 ;
 I $P(^LAB(69.5,LRPATH,0),U,10)'="" D
 .S LRSEX=$P(^LAB(69.5,LRPATH,0),U,10)
 .I LRSEX="O"&$P(VADM(5),U,1)="M" S LRCHK=1 Q
 .I LRSEX="O"&$P(VADM(5),U,1)="F" S LRCHK=1 Q
 .I LRSEX'=$P(VADM(5),U,1) S LRCHK=1
 I $P(^LAB(69.5,LRPATH,0),U,11)'=""!$P(^LAB(69.5,LRPATH,0),U,12)'="" D
 .S LRBEF=$P(^LAB(69.5,LRPATH,0),U,11),LRAFT=$P(^LAB(69.5,LRPATH,0),U,12)
 .I LRBEF'=""&($P(VADM(3),U,1)>LRBEF) S LRCHK=1
 .I LRAFT'=""&($P(VADM(3),U,1)<LRAFT) S LRCHK=1
 K LRBEF,LRSEX,LRAFT,VADM
 Q
