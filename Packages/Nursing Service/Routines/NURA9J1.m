NURA9J1 ;HIRMFO/JH,FT-NURSING EDUCATION PROFILE BY LOCATION/SVC. CATEGORY ;8/9/96  11:10
 ;;4.0;NURSING SERVICE;**2,13**;Apr 25, 1997
CAT D HSKEEP G QUIT:$G(NUROUT)
 S ^TMP("NURSCAT",$J,"R")=""
 D EN2^NURSAGP1 W ! G QUIT:$G(NUROUT)
 D DEV G:POP!($D(ZTSK)) QUIT
START ;
 K ^TMP($J),^TMP("NURA",$J),^TMP("NURLOC",$J) U IO S (NURPAGE,NURSW1,NURQUIT)=0,NURSSP="",$P(NURSSP," ",132)=" "
 S NURSTIL="NURSING EDUC. PROFILE BY LOCATION/SVC. CATEGORY",NURSTIL1=$E(NURSSP,1,17)_"SERVICE    EMPLOYEE"_$E(NURSSP,1,16)_"HIGHEST",NURSTIL2="NO.   LOCATION   CATEGORY   NAME"_$E(NURSSP,1,20)_"NURSING DEGREE"
 S NURROU=9,NRPT=6,NURSLEV=4 W ! D EN3^NURAAGS0,CHK G:$G(NUROUT) QUIT D PRINT^NURAGEN G:NX="^" QUIT
 D TOTALS
 G QUIT
POS ;NURSING EDUCATION PROFILE BY LOCATION/SVC. POSITION
 D HSKEEP G QUIT:$G(NUROUT)
 S NRNS=1 W ! D EN2^NURSAGSP G:$G(NUROUT) QUIT
 D EN2^NURSAGP1 W ! G QUIT:$G(NUROUT)
 D DEV G:POP!($D(ZTSK)) QUIT
START1 ;
 K ^TMP($J),^TMP("NURA",$J) U IO S (NURPAGE,NURSW1,NURQUIT)=0,NURSSP="",$P(NURSSP," ",132)=" "
 S NURSTIL="NURSING EDUC. PROFILE BY LOCATION/SVC. POSITION",NURSTIL1=$E(NURSSP,1,17)_"SERVICE    EMPLOYEE"_$E(NURSSP,1,16)_"HIGHEST",NURSTIL2="NO.   LOCATION   POSITION   NAME"_$E(NURSSP,1,20)_"NURSING DEGREE"
 S NURROU=10,NRPT=6,NURSLEV=5 W ! D EN4^NURAAGS0,CHK G:$G(NUROUT) QUIT D PRINT^NURAGEN G:NX="^" QUIT
 D TOTALS
 G QUIT
DEV ;
 S ZTSAVE("^TMP(""NURSCAT"",$J,")="",ZTDESC="Nursing Educ Profile by Location/Service "_$S(ANS2=1:"Category",1:"Position")
 S ZTRTN=$S(ANS2=1:"START",1:"START1")_"^NURA9J1" D EN7^NURSUT0
 Q
QUIT K ^TMP("NURA",$J),^TMP($J) D CLOSE^NURSUT1,^NURAKILL
 Q
CHK D NODATA^NURAGEN
 Q
HSKEEP ;
 D EN1^NURSAUTL Q:$G(NUROUT)
 I NURMDSW S DIC(0)="AEQZ",NURPLSCR=1 D EN5^NURSAGSP Q:$G(NUROUT)
 I NURMDSW=0,NURPLSW=1 S NURPLSCR=1 D PRD^NURSAGSP K NURPLSCR Q:$G(NUROUT)
 W ! D EN1^NURSAGSP
 Q
TOTALS ;
 I $Y>(IOSL-6) D HEADER^NURAGEN
 S X="",$P(X,"-",33)="" W !,?47,X D EN2^NURAED3 W !!,"TOTAL NUMBER OF ASSIGNMENTS ",?47,$J(NTCT,4,0),!!,"TOTAL NUMBER OF PERSONNEL",?47,$J(NTOT,4,0)
 Q