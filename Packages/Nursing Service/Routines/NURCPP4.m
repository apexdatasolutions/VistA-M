NURCPP4 ;HIRMFO/JH/RM-NURSING CARE PLAN DATA OUTPUT  part 4 ;4/29/93
 ;;4.0;NURSING SERVICE;;Apr 25, 1997
ILP1 ;
 S NURSA(0)=$S($D(^TMP($J,"GMRGNAR",NURSRTK,NURSI(1),0)):^(0),1:""),NURSA=$P(NURSA(0),"^"),NURSA(1)=+$P(NURSA(0),"^",3)
 F NURSK=1:1:$P(NURSA(0),"^",2) S ^TMP($J,"NURSDATA",NURSO)="     "_^TMP($J,"GMRGNAR",NURSRTK,NURSI(1),NURSK),NURSO=NURSO+1
 F NURSI=0:0 S NURSI=$O(^TMP($J,"GMRGNAR",NURSI(1),NURSI)) Q:NURSI'>0  S NURSI(0)=NURSI(1) D INTER
 S NURSA(0)=+$O(^GMR(124.3,GMRGPDA,1,"B",NURSA(1),0)) I $D(^GMR(124.3,GMRGPDA,1,NURSA(0),"ADD")),^("ADD")]"" S NURSADD=^("ADD"),NURSLGT=44-(NURSA*3) D FORMAT
 S NURSO=NURSO+1,^TMP($J,"NURSDATA",NURSO)=""
 Q
INTER ; CHECK FOR INTERVENTION DATE
 S NURST(0)=1,^TMP($J,"NURSDATA",NURSO)=$E(NURSSS,1,NURSA*3+5)_"-"_$S($D(^TMP($J,"GMRGNAR",NURSI(0),NURSI,NURST(0))):^(NURST(0)),1:"")
 F NURST(1)=0:0 S NURST(1)=$O(^TMP($J,"NURSDATE",NURSI,NURST(1))) Q:NURST(1)'>0  F NURST=0:0 S NURST=$O(^TMP($J,"NURSDATE",NURSI,NURST(1),NURST)) Q:NURST'>0  D INTER1
 G INTER3
 ;
INTER1 ;
 S X=$S($D(^TMP($J,"NURSDATE",NURSI,NURST(1),NURST)):^(NURST),1:"")
 S Y=$P(X,"^",2) S:Y'="" Y=$E(Y,4,5)_"/"_$E(Y,6,7)_"/"_$E(Y,2,3) S NURSTAT=$S($L($P(X,"^",4)):"("_$P(X,"^",4)_")"_$E(" ",1,2-$L($P(X,"^",4))),1:"    "),NURSRN=$E($S($D(^VA(200,+$P(X,"^",3),0)):$P($P(^(0),"^"),","),1:"")_"          ",1,10)
 S X=^TMP($J,"NURSDATA",NURSO),^(NURSO)=X_$E(NURSSS,1,57-$L(X))_NURSH3_Y_NURSTAT_NURSRN S NURSO=NURSO+1,X=""
 S:$S('$D(^TMP($J,"GMRGNAR",NURSI(0),NURSI,NURST(0)+1)):0,$E(^(NURST(0)+1))'=" ":1,1:0) NURST(0)=NURST(0)+1,X=$E(NURSSS,1,NURSA*3+6)_^(NURST(0)) S ^TMP($J,"NURSDATA",NURSO)=X Q
 ;
INTER3 I $D(^TMP($J,"NURSDATA",NURSO)),^(NURSO)'="" S NURSO=NURSO+1,^(NURSO)=""
 F NURST=NURST(0):0 S NURST=$O(^TMP($J,"GMRGNAR",NURSI(0),NURSI,NURST)) Q:NURST'>0  S ^TMP($J,"NURSDATA",NURSO)=$E(NURSSS,1,NURSA*3+6)_^TMP($J,"GMRGNAR",NURSI(0),NURSI,NURST),NURSO=NURSO+1,^TMP($J,"NURSDATA",NURSO)=""
 Q
FORMAT S NURSLGT(0)=$S(NURSLGT<44:2,1:(NURSLGT=44)),GMRGLEN=NURSLGT,GMRGPLN="Additional Text: "_$E(NURSADD,1,227)
 I ^TMP($J,"NURSDATA",NURSO)'="" S NURSO=NURSO+1,^TMP($J,"NURSDATA",NURSO)=""
 D FITLINE^GMRGRUT1 S ^TMP($J,"NURSDATA",NURSO)="   "_$S(NURSLGT(0)=1:"  -",'NURSLGT(0):"",1:$E(NURSSS,1,NURSA*3+2)_"-")_GMRGPLN(0),NURSO=NURSO+1,^(NURSO)="" S GMRGLEN=NURSLGT,GMRGPLN=GMRGPLN(1)_$E(NURSADD,228,245) D FITLINE^GMRGRUT1
 F NURSK=0:0 Q:GMRGPLN(0)=""  S ^TMP($J,"NURSDATA",NURSO)="   "_$S(NURSLGT(0)=1:"   ",'NURSLGT(0):"",1:$E(NURSSS,1,NURSA+1*3))_GMRGPLN(0),NURSO=NURSO+1,^(NURSO)="",GMRGPLN=GMRGPLN(1),GMRGLEN=NURSLGT D FITLINE^GMRGRUT1
 Q
