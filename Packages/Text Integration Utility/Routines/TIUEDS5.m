TIUEDS5 ; ;05/26/16
 D DE G BEGIN
DE S DIE="^TIU(8925,",DIC=DIE,DP=8925,DL=1,DIEL=0,DU="" K DG,DE,DB Q:$O(^TIU(8925,DA,""))=""
 I $D(^(12)) S %Z=^(12) S %=$P(%Z,U,1) S:%]"" DE(7)=% S %=$P(%Z,U,4) S:%]"" DE(15)=% S %=$P(%Z,U,5) S:%]"" DE(21)=% S %=$P(%Z,U,8) S:%]"" DE(16)=% S %=$P(%Z,U,9) S:%]"" DE(10)=%,DE(13)=% S %=$P(%Z,U,12) S:%]"" DE(22)=%
 I $D(^(13)) S %Z=^(13) S %=$P(%Z,U,2) S:%]"" DE(1)=% S %=$P(%Z,U,3) S:%]"" DE(4)=%
 I $D(^(14)) S %Z=^(14) S %=$P(%Z,U,1) S:%]"" DE(18)=% S %=$P(%Z,U,2) S:%]"" DE(19)=% S %=$P(%Z,U,4) S:%]"" DE(20)=%
 I $D(^(15)) S %Z=^(15) S %=$P(%Z,U,6) S:%]"" DE(17)=%
 K %Z Q
 ;
W W !?DL+DL-2,DLB_": "
 Q
O D W W Y W:$X>45 !?9
 I $L(Y)>19,'DV,DV'["I",(DV["F"!(DV["K")) G RW^DIR2
 W:Y]"" "// " I 'DV,DV["I",$D(DE(DQ))#2 K X S X("FIELD")=DIFLD,X("FILE")=DP W "  ("_$$EZBLD^DIALOG(710,.X)_")" K X S X="" Q  ;**
TR Q:DV["K"&(DUZ(0)'="@")  R X:DTIME E  S (DTOUT,X)=U W $C(7)
 Q
A K DQ(DQ) S DQ=DQ+1
B G @DQ
RE G A:DV["K"&(DUZ(0)'["@"),PR:$D(DE(DQ)) D W,TR
N I X="" G NKEY:$D(^DD("KEY","F",DP,DIFLD)),A:DV'["R",X:'DV,X:D'>0,A
RD G QS:X?."?" I X["^" D D G ^DIE17
 I X="@" D D G Z^DIE2
 I X=" ",DV["d",DV'["P",$D(^DISV(DUZ,"DIE",DLB)) S X=^(DLB) I DV'["D",DV'["S" W "  "_X
T G M^DIE17:DV,^DIE3:DV["V",P:DV'["S" I X?.ANP D SET^DIED I 'DDER G V
 K DDER G X
P I DV["P" S DIC=U_DU,DIC(0)=$E("EN",$D(DB(DQ))+1)_"M"_$E("L",DV'["'") S:DIC(0)["L" DLAYGO=+$P(DV,"P",2) G:DV["*" AST^DIED D NOSCR^DIED S X=+Y,DIC=DIE G X:X<0
 G V:DV'["N" D D I $L($P(X,"."))>24 K X G Z
 I $P(DQ(DQ),U,5)'["$",X?.1"-".N.1".".N,$P(DQ(DQ),U,5,99)["+X'=X" S X=+X
V D @("X"_DQ) K YS
UNIQ I DV["U",$D(X),DIFLD=.01 K % M %=@(DIE_"""B"",X)") K %(DA) K:$O(%(0)) X
Z K DIC("S"),DLAYGO I $D(X),X'=U D:$G(DE(DW,"INDEX")) SAVEVALS G:'$$KEYCHK UNIQFERR^DIE17 S DG(DW)=X S:DV["d" ^DISV(DUZ,"DIE",DLB)=X G A
X W:'$D(ZTQUEUED) $C(7),"??" I $D(DB(DQ)) G Z^DIE17
 S X="?BAD"
QS S DZ=X D D,QQ^DIEQ G B
D S D=DIFLD,DQ(DQ)=DLB_U_DV_U_DU_U_DW_U_$P($T(@("X"_DQ))," ",2,99) Q
Y I '$D(DE(DQ)) D O G RD:"@"'[X,A:DV'["R"&(X="@"),X:X="@" S X=Y G N
PR S DG=DV,Y=DE(DQ),X=DU I $D(DQ(DQ,2)) X DQ(DQ,2) G RP
R I DG["P",@("$D(^"_X_"0))") S X=+$P(^(0),U,2) G RP:'$D(^(Y,0)) S Y=$P(^(0),U),X=$P(^DD(X,.01,0),U,3),DG=$P(^(0),U,2) G R
 I DG["V",+Y,$P(Y,";",2)["(",$D(@(U_$P(Y,";",2)_"0)")) S X=+$P(^(0),U,2) G RP:'$D(^(+Y,0)) S Y=$P(^(0),U) I $D(^DD(+X,.01,0)) S DG=$P(^(0),U,2),X=$P(^(0),U,3) G R
 X:DG["D" ^DD("DD") I DG["S" S %=$P($P(";"_X,";"_Y_":",2),";") I %]"" S Y=$S($G(DUZ("LANG"))'>1:%,'DIFLD:%,1:$$SET^DIQ(DP,DIFLD,Y))
RP D O I X="" S X=DE(DQ) G A:'DV,A:DC<2,N^DIE17
I I DV'["I",DV'["#" G RD
 D E^DIE0 G RD:$D(X),PR
 Q
SAVEVALS S @DIEZTMP@("V",DP,DIIENS,DIFLD,"O")=$G(DE(DQ)) S:$D(^("F"))[0 ^("F")=$G(DE(DQ))
 I $D(DE(DW,"4/")) S @DIEZTMP@("V",DP,DIIENS,DIFLD,"4/")=""
 E  K @DIEZTMP@("V",DP,DIIENS,DIFLD,"4/")
 Q
NKEY W:'$D(ZTQUEUED) "??  Required key field" S X="?BAD" G QS
KEYCHK() Q:$G(DE(DW,"KEY"))="" 1 Q @DE(DW,"KEY")
BEGIN S DNM="TIUEDS5",DQ=1
1 D:$D(DG)>9 F^DIE17,DE S DQ=1,DW="13;2",DV="P200'O",DU="",DIFLD=1302,DLB=$$LABEL^DIALOGZ(DP,DIFLD)
 S DQ(1,2)="S Y(0)=Y S Y=$S(+$G(TIUINI):$$LOWER^TIULS($P($G(^VA(200,+Y(0),0)),U,2)),1:$P($G(^VA(200,+Y(0),0)),U,2))"
 S DE(DW)="C1^TIUEDS5"
 S DU="VA(200,"
 S X=DUZ
 S Y=X
 S X=Y,DB(DQ)=1,DE(DW,"4/")="" G:X="" N^DIE17:DV,A I $D(DE(DQ)),DV["I"!(DV["#") D E^DIE0 G A:'$D(X)
 G RD:X="@",Z
C1 G C1S:$D(DE(1))[0 K DB
 S X=DE(1),DIC=DIE
 K ^TIU(8925,"TC",$E(X,1,30),DA)
 S X=DE(1),DIC=DIE
 I +$P($G(^TIU(8925,+DA,0)),U),+$P($G(^TIU(8925,+DA,13)),U),+$P($G(^TIU(8925,+DA,0)),U,5) K ^TIU(8925,"ATC",+X,+$P($G(^TIU(8925,+DA,0)),U),+$P(^TIU(8925,+DA,0),U,5),(9999999-$P($G(^TIU(8925,+DA,13)),U)),DA)
 S X=DE(1),DIC=DIE
 D KACLAU1^TIUDD01(1302,X)
C1S S X="" G:DG(DQ)=X C1F1 K DB
 S X=DG(DQ),DIC=DIE
 S ^TIU(8925,"TC",$E(X,1,30),DA)=""
 S X=DG(DQ),DIC=DIE
 I +$P($G(^TIU(8925,+DA,0)),U),+$P($G(^TIU(8925,+DA,13)),U),+$P($G(^TIU(8925,+DA,0)),U,5) S ^TIU(8925,"ATC",+X,+$P($G(^TIU(8925,+DA,0)),U),+$P(^TIU(8925,+DA,0),U,5),(9999999-$P($G(^TIU(8925,+DA,13)),U)),DA)=""
 S X=DG(DQ),DIC=DIE
 D SACLAU1^TIUDD0(1302,X)
C1F1 Q
X1 Q
2 S DQ=3 ;@5
3 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=3 D X3 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X3 I $P($G(^TIU(8925,+DA,13)),U,3)]"" S Y="@6"
 Q
4 D:$D(DG)>9 F^DIE17,DE S DQ=4,DW="13;3",DV="S",DU="",DIFLD=1303,DLB=$$LABEL^DIALOGZ(DP,DIFLD)
 S DU="D:direct;U:upload;C:converted;R:remote procedure;O:copy;"
 S X="D"
 S Y=X
 S X=Y,DB(DQ)=1,DE(DW,"4/")="" G:X="" N^DIE17:DV,A I $D(DE(DQ)),DV["I"!(DV["#") D E^DIE0 G A:'$D(X)
 G RD:X="@",Z
X4 Q
5 S DQ=6 ;@6
6 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=6 D X6 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X6 I +$P($G(^TIU(8925,+DA,12)),U) S Y="@7"
 Q
7 S DW="12;1",DV="D",DU="",DIFLD=1201,DLB=$$LABEL^DIALOGZ(DP,DIFLD)
 S DE(DW)="C7^TIUEDS5",DE(DW,"INDEX")=1
 S X=$$NOW^TIULC
 S Y=X
 S X=Y,DB(DQ)=1,DE(DW,"4/")="" G:X="" N^DIE17:DV,A I $D(DE(DQ)),DV["I"!(DV["#") D E^DIE0 G A:'$D(X)
 G RD:X="@",Z
C7 G C7S:$D(DE(7))[0 K DB
 S X=DE(7),DIC=DIE
 K ^TIU(8925,"F",$E(X,1,30),DA)
C7S S X="" G:DG(DQ)=X C7F1 K DB
 S X=DG(DQ),DIC=DIE
 S ^TIU(8925,"F",$E(X,1,30),DA)=""
C7F1 S DIEZRXR(8925,DIIENS)=$$OREF^DILF($NA(@$$CREF^DILF(DIE)))
 F DIXR=557 S DIEZRXR(8925,DIXR)=""
 Q
X7 Q
8 S DQ=9 ;@7
9 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=9 D X9 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X9 I +$$PROVIDER^TIUPXAP1(DUZ,DT)'>0 S Y="@9"
 Q
10 D:$D(DG)>9 F^DIE17,DE S DQ=10,DW="12;9",DV="*P200'XR",DU="",DIFLD=1209,DLB=$$LABEL^DIALOGZ(DP,DIFLD)
 S DU="VA(200,"
 G RE
X10 S DIC("S")="I +$G(DA),+$$SCRATT^TIULA3(+DA,+Y)" D ^DIC K DIC S DIC=DIE,X=+Y K:Y<0 X
 Q
 ;
11 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=11 D X11 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X11 S Y="@10"
 Q
12 S DQ=13 ;@9
13 S DW="12;9",DV="*P200'X",DU="",DIFLD=1209,DLB=$$LABEL^DIALOGZ(DP,DIFLD)
 S DU="VA(200,"
 G RE
X13 S DIC("S")="I +$G(DA),+$$SCRATT^TIULA3(+DA,+Y)" D ^DIC K DIC S DIC=DIE,X=+Y K:Y<0 X
 Q
 ;
14 S DQ=15 ;@10
15 S DW="12;4",DV="P200'O",DU="",DIFLD=1204,DLB=$$LABEL^DIALOGZ(DP,DIFLD)
 S DQ(15,2)="S Y(0)=Y S:+Y>0&$D(TIUSIG) Y=$S($L($P(^VA(200,+Y,20),U,2)):$P(^(20),U,2),1:$P(^VA(200,+Y,0),U)) S:+Y>0&'$D(TIUSIG) Y=$P(^VA(200,+Y,0),U)"
 S DU="VA(200,"
 S X=$$WHOSIGNS^TIULC1(DA)
 S Y=X
 S X=Y,DB(DQ)=1,DE(DW,"4/")="" G:X="" N^DIE17:DV,A I $D(DE(DQ)),DV["I"!(DV["#") D E^DIE0 G A:'$D(X)
 G RD:X="@",Z
X15 Q
16 S DW="12;8",DV="*P200'",DU="",DIFLD=1208,DLB=$$LABEL^DIALOGZ(DP,DIFLD)
 S DE(DW)="C16^TIUEDS5"
 S DU="VA(200,"
 S X=$$WHOCOSIG^TIULC1(DA)
 S Y=X
 S X=Y,DB(DQ)=1,DE(DW,"4/")="" G:X="" N^DIE17:DV,A I $D(DE(DQ)),DV["I"!(DV["#") D E^DIE0 G A:'$D(X)
 G RD:X="@",Z
C16 G C16S:$D(DE(16))[0 K DB
 S X=DE(16),DIC=DIE
 K ^TIU(8925,"CS",$E(X,1,30),DA)
 S X=DE(16),DIC=DIE
 I +$P($G(^TIU(8925,+DA,0)),U),+$P($G(^TIU(8925,+DA,13)),U),+$P($G(^TIU(8925,+DA,0)),U,5) K ^TIU(8925,"ASUP",+X,+$P(^TIU(8925,+DA,0),U),+$P(^TIU(8925,+DA,0),U,5),(9999999-$P($G(^TIU(8925,+DA,13)),U)),DA)
 S X=DE(16),DIC=DIE
 D KACLEC^TIUDD01(1208,X)
C16S S X="" G:DG(DQ)=X C16F1 K DB
 S X=DG(DQ),DIC=DIE
 S ^TIU(8925,"CS",$E(X,1,30),DA)=""
 S X=DG(DQ),DIC=DIE
 I +$P($G(^TIU(8925,+DA,0)),U),+$P($G(^TIU(8925,+DA,13)),U),+$P($G(^TIU(8925,+DA,0)),U,5) S ^TIU(8925,"ASUP",+X,+$P(^TIU(8925,+DA,0),U),+$P(^TIU(8925,+DA,0),U,5),(9999999-$P($G(^TIU(8925,+DA,13)),U)),DA)=""
 S X=DG(DQ),DIC=DIE
 D SACLEC^TIUDD0(1208,X)
C16F1 Q
X16 Q
17 D:$D(DG)>9 F^DIE17,DE S DQ=17,DW="15;6",DV="S",DU="",DIFLD=1506,DLB=$$LABEL^DIALOGZ(DP,DIFLD)
 S DU="1:YES;0:NO;"
 S X=$S(+$P($G(^TIU(8925,+DA,12)),U,4)=+$P($G(^TIU(8925,+DA,12)),U,9):0,1:1)
 S Y=X
 S X=Y,DB(DQ)=1,DE(DW,"4/")="" G:X="" N^DIE17:DV,A I $D(DE(DQ)),DV["I"!(DV["#") D E^DIE0 G A:'$D(X)
 G RD:X="@",Z
X17 Q
18 S DW="14;1",DV="P405'",DU="",DIFLD=1401,DLB=$$LABEL^DIALOGZ(DP,DIFLD)
 S DU="DGPM("
 S X=$G(TIU("AD#"))
 S Y=X
 S X=Y,DB(DQ)=1,DE(DW,"4/")="" G:X="" N^DIE17:DV,A I $D(DE(DQ)),DV["I"!(DV["#") D E^DIE0 G A:'$D(X)
 G RD:X="@",Z
X18 Q
19 S DW="14;2",DV="P45.7'",DU="",DIFLD=1402,DLB=$$LABEL^DIALOGZ(DP,DIFLD)
 S DE(DW)="C19^TIUEDS5"
 S DU="DIC(45.7,"
 S X=$P($G(TIU("TS")),U)
 S Y=X
 S X=Y,DB(DQ)=1,DE(DW,"4/")="" G:X="" N^DIE17:DV,A I $D(DE(DQ)),DV["I"!(DV["#") D E^DIE0 G A:'$D(X)
 G RD:X="@",Z
C19 G C19S:$D(DE(19))[0 K DB
 S X=DE(19),DIC=DIE
 K ^TIU(8925,"TS",$E(X,1,30),DA)
 S X=DE(19),DIC=DIE
 I +$P($G(^TIU(8925,+DA,0)),U),+$P($G(^TIU(8925,+DA,13)),U),+$P($G(^TIU(8925,+DA,0)),U,5) K ^TIU(8925,"ATS",+X,+$P($G(^TIU(8925,+DA,0)),U),+$P($G(^TIU(8925,+DA,0)),U,5),(9999999-$P($G(^TIU(8925,+DA,13)),U)),DA)
C19S S X="" G:DG(DQ)=X C19F1 K DB
 S X=DG(DQ),DIC=DIE
 S ^TIU(8925,"TS",$E(X,1,30),DA)=""
 S X=DG(DQ),DIC=DIE
 I +$P($G(^TIU(8925,+DA,0)),U),+$P($G(^TIU(8925,+DA,13)),U),+$P($G(^TIU(8925,+DA,0)),U,5) S ^TIU(8925,"ATS",+X,+$P($G(^TIU(8925,+DA,0)),U),+$P($G(^TIU(8925,+DA,0)),U,5),(9999999-$P($G(^TIU(8925,+DA,13)),U)),DA)=""
C19F1 Q
X19 Q
20 D:$D(DG)>9 F^DIE17,DE S DQ=20,DW="14;4",DV="P49'",DU="",DIFLD=1404,DLB=$$LABEL^DIALOGZ(DP,DIFLD)
 S DE(DW)="C20^TIUEDS5"
 S DU="DIC(49,"
 S X=$P($G(TIU("SVC")),U)
 S Y=X
 S X=Y,DB(DQ)=1,DE(DW,"4/")="" G:X="" N^DIE17:DV,A I $D(DE(DQ)),DV["I"!(DV["#") D E^DIE0 G A:'$D(X)
 G RD:X="@",Z
C20 G C20S:$D(DE(20))[0 K DB
 S X=DE(20),DIC=DIE
 I +$P($G(^TIU(8925,+DA,0)),U),+$P($G(^TIU(8925,+DA,13)),U),+$P($G(^TIU(8925,+DA,0)),U,5) K ^TIU(8925,"ASVC",+X,+$P($G(^TIU(8925,+DA,0)),U),+$P($G(^TIU(8925,+DA,0)),U,5),(9999999-$P($G(^TIU(8925,+DA,13)),U)),DA)
 S X=DE(20),DIC=DIE
 K ^TIU(8925,"SVC",$E(X,1,30),DA)
C20S S X="" G:DG(DQ)=X C20F1 K DB
 S X=DG(DQ),DIC=DIE
 I +$P($G(^TIU(8925,+DA,0)),U),+$P($G(^TIU(8925,+DA,13)),U),+$P($G(^TIU(8925,+DA,0)),U,5) S ^TIU(8925,"ASVC",+X,+$P($G(^TIU(8925,+DA,0)),U),+$P($G(^TIU(8925,+DA,0)),U,5),(9999999-$P($G(^TIU(8925,+DA,13)),U)),DA)=""
 S X=DG(DQ),DIC=DIE
 S ^TIU(8925,"SVC",$E(X,1,30),DA)=""
C20F1 Q
X20 Q
21 D:$D(DG)>9 F^DIE17,DE S DQ=21,DW="12;5",DV="P44'",DU="",DIFLD=1205,DLB=$$LABEL^DIALOGZ(DP,DIFLD)
 S DE(DW)="C21^TIUEDS5",DE(DW,"INDEX")=1
 S DU="SC("
 S X=$P($G(TIU("LOC")),U)
 S Y=X
 S X=Y,DB(DQ)=1,DE(DW,"4/")="" G:X="" N^DIE17:DV,A I $D(DE(DQ)),DV["I"!(DV["#") D E^DIE0 G A:'$D(X)
 G RD:X="@",Z
C21 G C21S:$D(DE(21))[0 K DB
 S X=DE(21),DIC=DIE
 I +$P($G(^TIU(8925,+DA,0)),U),+$P($G(^TIU(8925,+DA,13)),U),+$P($G(^TIU(8925,+DA,0)),U,5) K ^TIU(8925,"ALOC",+X,+$P($G(^TIU(8925,+DA,0)),U),+$P($G(^TIU(8925,+DA,0)),U,5),(9999999-$P($G(^TIU(8925,+DA,13)),U)),DA)
 S X=DE(21),DIC=DIE
 I +$P($G(^TIU(8925,+DA,15)),U) K ^TIU(8925,"ALOCP",+X,+$P($G(^TIU(8925,+DA,15)),U),+DA)
C21S S X="" G:DG(DQ)=X C21F1 K DB
 S X=DG(DQ),DIC=DIE
 I +$P($G(^TIU(8925,+DA,0)),U),+$P($G(^TIU(8925,+DA,13)),U),+$P($G(^TIU(8925,+DA,0)),U,5) S ^TIU(8925,"ALOC",+X,+$P($G(^TIU(8925,+DA,0)),U),+$P($G(^TIU(8925,+DA,0)),U,5),(9999999-$P($G(^TIU(8925,+DA,13)),U)),DA)=""
 S X=DG(DQ),DIC=DIE
 I +$$ALOCP^TIULX(+DA),+$P($G(^TIU(8925,+DA,15)),U) S ^TIU(8925,"ALOCP",+X,+$P($G(^TIU(8925,+DA,15)),U),+DA)=""
C21F1 S DIEZRXR(8925,DIIENS)=$$OREF^DILF($NA(@$$CREF^DILF(DIE)))
 F DIXR=323 S DIEZRXR(8925,DIXR)=""
 Q
X21 Q
22 D:$D(DG)>9 F^DIE17,DE S DQ=22,DW="12;12",DV="P4'",DU="",DIFLD=1212,DLB=$$LABEL^DIALOGZ(DP,DIFLD)
 S DE(DW)="C22^TIUEDS5",DE(DW,"INDEX")=1
 S DU="DIC(4,"
 S X=$P($G(TIU("INST")),U)
 S Y=X
 S X=Y,DB(DQ)=1,DE(DW,"4/")="" G:X="" N^DIE17:DV,A I $D(DE(DQ)),DV["I"!(DV["#") D E^DIE0 G A:'$D(X)
 G RD:X="@",Z
C22 G C22S:$D(DE(22))[0 K DB
C22S S X="" G:DG(DQ)=X C22F1 K DB
C22F1 S DIEZRXR(8925,DIIENS)=$$OREF^DILF($NA(@$$CREF^DILF(DIE)))
 F DIXR=247 S DIEZRXR(8925,DIXR)=""
 Q
X22 Q
23 G 0^DIE17
