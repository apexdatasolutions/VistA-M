IBXS72 ; ;02/23/18
 S X=DG(DQ),DIC=DIE
 K DIV S DIV=X,D0=DA,DIV(0)=D0 S Y(0)=X I $P(^DGCR(399,DA,0),U,5)<3 I X S X=DIV S Y(1)=$S($D(^DGCR(399,D0,"U")):^("U"),1:"") S X=$P(Y(1),U,15),X=X S DIU=X K Y S X=DIV S X=$$LOS1^IBCU64(DA) X ^DD(399,151,1,1,1.4)
 S X=DG(DQ),DIC=DIE
 S DGRVRCAL=1
 S X=DG(DQ),DIC=DIE
 K DIV S DIV=X,D0=DA,DIV(0)=D0 S Y(0)=X I +$G(^DGCR(399,DA,"U1"))=0 I X S X=DIV S Y(1)=$S($D(^DGCR(399,D0,"U1")):^("U1"),1:"") S X=$P(Y(1),U,1),X=X S DIU=X K Y S X=DIV S X=0 X ^DD(399,151,1,3,1.4)
 S X=DG(DQ),DIC=DIE
 S:$P(^DGCR(399,DA,0),"^",2) ^DGCR(399,"APDS",$P(^(0),U,2),-X,DA)=""
