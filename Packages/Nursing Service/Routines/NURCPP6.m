NURCPP6 ;HIRMFO/JH-NURSING CARE PLAN DATA OUTPUT   Part 2 ;9/18/89
 ;;4.0;NURSING SERVICE;;Apr 25, 1997
 ; This is the Patient Problem Listing,Data Processor,Output Routine
 ; 132 Col. Compressed print
 G:'$O(NURSB("G","")) ARG
 F NURSRTK=0:0 S NURSRTK=$O(NURSB("G",NURSRTK)) Q:NURSRTK'>0  D
 .   Q:'(NURSPLN="C"&$D(^GMR(124.3,GMRGPDA,1,"ALIST",NURSRTK))!(NURSPLN="A"&$D(^GMR(124.3,GMRGPDA,1,"B",NURSRTK))))
 .   S NURSB=$O(^GMR(124.3,GMRGPDA,1,"B",NURSRTK,0)) Q:NURSB'>0
 .   F NURSG(1)=0:0 S NURSG(1)=$O(^TMP($J,"GMRGNAR",NURSRTK,NURSG(1))) Q:NURSG(1)'>0  D AG1
 .   I $D(^GMR(124.3,GMRGPDA,1,NURSB,"ADD")),^("ADD")]"" S NURSADD=^("ADD"),NURSLGT=1 S NURSRET=2,NURSO4=NURSO1 D FORMAT^NURCPP7 S NURSO1=NURSO4
 .   Q
 ;
ARG G:'$O(NURSB("I","")) ARI
 F NURSRTK=0:0 S NURSRTK=$O(NURSB("I",NURSRTK)) Q:NURSRTK'>0  D
 .   Q:'(NURSPLN="C"&$D(^GMR(124.3,GMRGPDA,1,"ALIST",NURSRTK))!(NURSPLN="A"&$D(^GMR(124.3,GMRGPDA,1,"B",NURSRTK))))
 .   S NURSB=$O(^GMR(124.3,GMRGPDA,1,"B",NURSRTK,0)) Q:NURSB'>0
 .   F NURSI(1)=0:0 S NURSI(1)=$O(^TMP($J,"GMRGNAR",NURSRTK,NURSI(1))) Q:NURSI(1)'>0  D AL1
 .   I $D(^GMR(124.3,GMRGPDA,1,NURSB,"ADD")),^("ADD")]"" S NURSLGT=1,NURSADD=^("ADD") S NURSRET=3,NURSO4=NURSO2 D FORMAT^NURCPP7 S NURSO2=NURSO4
 .   Q
ARI Q
 ;
AL1 ;
 S NURSC=$S('$D(^GMRD(124.2,+NURSI(1),0)):"",$P(^(0),"^",4)=NURSINCK:1,1:0) D ILP1^NURCPP7:'NURSC I NURSC S NURSA=0,NURSI=NURSI(1),NURSI(0)=NURSRTK D INTER^NURCPP7
 Q
AG1 ;
 S NURSC=$S('$D(^GMRD(124.2,+NURSG(1),0)):"",$P(^(0),"^",4)=NURSGOCK:1,1:0) D GLP1^NURCPP8:'NURSC I NURSC S NURSA=0,NURSG=NURSG(1),NURSG(0)=NURSRTK D GOAL^NURCPP8
 Q