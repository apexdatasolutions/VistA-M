PSSGIU ;BIR/CML3-GENERIC "APPLICATION PACKAGES' USE" SET ; 09/09/97 9:31
 ;;1.0;PHARMACY DATA MANAGEMENT;;9/30/97
 ;
EN ;
 Q:$S('$D(PSIUDA):1,'$D(PSIUX):1,PSIUX'?1E1"^"1.E:1,1:'$D(^PSDRUG(PSIUDA,0)))  S PSIUO=$P($G(^(2)),"^",3) S PSIUT=$P(PSIUX,"^",2),PSIUT=$S($E(PSIUT,1,4)="UNIT":"",1:$E("N","AEIOU"[$E(PSIUT)))_" "_PSIUT,(%,PSIUQ)=PSIUO'[$E(PSIUX)+1
 F  W !!,"A",PSIUT," ITEM" D YN^DICN Q:%  D MQ S %=PSIUQ
 I %<0 S PSIUA="^" G DONE
 S PSIUA=$E("YN",%) G:%=PSIUQ DONE I %=1 S PSIUY=PSIUO_$P(PSIUX,"^"),$P(^PSDRUG(PSIUDA,2),"^",3)=PSIUY I $P(^(0),"^")]"" S ^PSDRUG("AIU"_$P(PSIUX,"^"),$P(^(0),"^"),PSIUDA)=""
 I %=2 D CMOP S PSIUY=$P(PSIUO,$P(PSIUX,"^"))_$P(PSIUO,$P(PSIUX,"^"),2),$P(^PSDRUG(PSIUDA,2),"^",3)=PSIUY I $P(^(0),"^")]"" K ^PSDRUG("AIU"_$P(PSIUX,"^"),$P(^(0),"^"),PSIUDA)
 K:PSIUO]"" ^PSDRUG("IU",PSIUO,PSIUDA) S:PSIUY]"" ^PSDRUG("IU",PSIUY,PSIUDA)=""
 ;
DONE ;
 K PSIU,PSIUO,PSIUQ,PSIUT,PSIUY Q
 ;
MQ ;
 S X="Enter 'YES' (or 'Y') to mark this drug as a"_$S($E(PSIUT,1,2)="N ":"n"_$E(PSIUT,2,99),1:PSIUT)_" item.  Enter 'NO' (or 'N') to not mark (or unmark) this drug."
 W !!?2 F PSIU=1:1:$L(X," ") S Y=$P(X," ",PSIU) W:$X+$L(Y)>79 ! W Y," "
 Q
CMOP I PSIUX="O^Outpatient Pharmacy",$P($G(^PSDRUG(PSIUDA,3)),"^",1)=1 W !,"This item has just been UNMARKED for CMOP transmission.",! S $P(^PSDRUG(PSIUDA,3),"^")=0 K ^PSDRUG("AQ",PSIUDA) S DA=PSIUDA N % D ^PSSREF
 Q
 ;
ENS ;
 Q:$S('$D(PSIUDA):1,'$D(PSIUX):1,'PSIUDA:1,$L($P(PSIUX,"^"))'=1:1,1:'$D(^PSDRUG(PSIUDA,0)))  S PSIU=$P(^(0),"^"),(PSIUO,PSIUY)=$P($G(^(2)),"^",3),PSIUT=$P(PSIUX,"^")
 I PSIUY'[PSIUT S PSIUY=PSIUY_PSIUT,$P(^PSDRUG(PSIUDA,2),"^",3)=PSIUY K:PSIUO]"" ^PSDRUG("IU",PSIUO,PSIUDA)
 S ^PSDRUG("IU",PSIUY,PSIUDA)="" I PSIU]"" S ^PSDRUG("AIU"_PSIUT,PSIU,PSIUDA)=""
 G DONE
 ;
END ;
 Q:$S('$D(PSIUDA):1,'$D(PSIUX):1,'PSIUDA:1,$L($P(PSIUX,"^"))'=1:1,1:'$D(^PSDRUG(PSIUDA,0)))  S PSIU=$P(^(0),"^"),(PSIUO,PSIUY)=$P($G(^(2)),"^",3),PSIUT=$P(PSIUX,"^")
 I PSIUY[PSIUT S PSIUY=$P(PSIUY,PSIUT)_$P(PSIUY,PSIUT,2),$P(^PSDRUG(PSIUDA,2),"^",3)=PSIUY K ^PSDRUG("IU",PSIUO,PSIUDA)
 S:PSIUY]"" ^PSDRUG("IU",PSIUY,PSIUDA)="" I PSIU]"" K ^PSDRUG("AIU"_PSIUT,PSIU,PSIUDA)
 G DONE
