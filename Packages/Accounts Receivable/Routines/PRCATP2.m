PRCATP2 ; GENERATED FROM 'PRCA MEANS PROFILE' PRINT TEMPLATE (#388) ; 02/25/17 ; (FILE 430, MARGIN=80)
 G BEGIN
N W !
T W:$X ! I '$D(DIOT(2)),DN,$D(IOSL),$S('$D(DIWF):1,$P(DIWF,"B",2):$P(DIWF,"B",2),1:1)+$Y'<IOSL,$D(^UTILITY($J,1))#2,^(1)?1U1P1E.E X ^(1)
 S DISTP=DISTP+1,DILCT=DILCT+1 D:'(DISTP#100) CSTP^DIO2
 Q
DT I $G(DUZ("LANG"))>1,Y W $$OUT^DIALOGU(Y,"DD") Q
 X ^DD("DD")
 W Y Q
M D @DIXX
 Q
BEGIN ;
 S:'$D(DN) DN=1 S DISTP=$G(DISTP),DILCT=$G(DILCT)
 I $D(DXS)<9 M DXS=^DIPT(388,"DXS")
 S I(0)="^PRCA(430,",J(0)=430
 W ?0 N %I,%H,% D NOW^%DTC S X=% S Y=X K DIP K:DN Y S Y=X D DT
 W ?20 W " MEANS TEST ACCOUNTS RECEIVABLE PROFILE"
 D N:$X>0 Q:'DN  W ?0 S X="=",DIP(1)=$G(X) S X=75,X1=DIP(1) S %=X,X="" S:X1]"" $P(X,X1,%\$L(X1)+1)=X1,X=$E(X,1,%) K DIP K:DN Y W X
 D N:$X>0 Q:'DN  W ?0 W "NAME: "
 S X=$G(^PRCA(430,D0,0)) S Y=$P(X,U,9) S C=$P(^DD(430,9,0),U,2) D Y^DIQ:Y S C="," W $E(Y,1,30)
 D N:$X>39 Q:'DN  W ?39 W "BILL #: "
 W ?0,$E($P(X,U,1),1,14)
 W ?49 D EN1^PRCADR K DIP K:DN Y
 D N:$X>0 Q:'DN  W ?0 W " "
 W ?3 D PROFRJ^RCTCSJS1(D0) K DIP K:DN Y
 D T Q:'DN  D N W ?0 W "CURRENT STATUS: "
 S X=$G(^PRCA(430,D0,0)) S Y=$P(X,U,8) S Y=$S(Y="":Y,$D(^PRCA(430.3,Y,0))#2:$P(^(0),U),1:Y) W $E(Y,1,30)
 D N:$X>39 Q:'DN  W ?39 W "CATEGORY: "
 S Y=$P(X,U,2) S Y=$S(Y="":Y,$D(^PRCA(430.2,Y,0))#2:$P(^(0),U),1:Y) W $E(Y,1,30)
 D N:$X>43 Q:'DN  W ?43 W "CARE: "
 D N:$X>49 Q:'DN  W ?49 S DIP(1)=$S($D(^PRCA(430,D0,0)):^(0),1:"") S X=$P($G(^PRCA(430.2,+$P(DIP(1),U,16),0)),U),DIP(2)=$G(X) S X=1,DIP(3)=$G(X) S X=26,X=$E(DIP(2),DIP(3),X) K DIP K:DN Y W X
 D N:$X>0 Q:'DN  W ?0 W "CP: "
 S X=$G(^PRCA(430,D0,11)) W ?0,$E($P(X,U,1),1,15)
 D N:$X>39 Q:'DN  W ?39 W "FUND (APPROPRIATION): "
 W ?0,$E($P(X,U,17),1,6)
 D N:$X>39 Q:'DN  W ?39 W "DATE BILL PREPARED: "
 S X=$G(^PRCA(430,D0,0)) S Y=$P(X,U,10) D DT
 W ?61 D EN5^PRCADR1 K DIP K:DN Y
 D T Q:'DN  W ?2 D EN1^PRCADR1 K DIP K:DN Y
 W ?13 D EN5^PRCADR K DIP K:DN Y
 W ?24 Q:$D(PRCA("HALT"))  W "" K DIP K:DN Y
 W ?35 D EN3^PRCADR K DIP K:DN Y
 D T Q:'DN  D N D N:$X>0 Q:'DN  W ?0 W "TRANSACTIONS: "
 W ?16 D EN2^PRCADR K DIP K:DN Y
 W ?27 Q:$D(PRCA("HALT"))  W "" K DIP K:DN Y
 D T Q:'DN  D N D N:$X>0 Q:'DN  W ?0 W "BILL RESULTING FROM: "
 W ?23 X DXS(1,9) K DIP K:DN Y
 W ?34 D EN4^PRCADR1 K DIP K:DN Y
 W ?45 Q:'$D(PRCA("WROFF"))  W "" K DIP K:DN Y
 W ?56 K DXS S D0=PRCA("WROFF") D ^PRCATW1 K DXS K DIP K:DN Y
 K Y
 Q
HEAD ;
 W !,"--------------------------------------------------------------------------------",!!
