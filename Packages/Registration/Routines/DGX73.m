DGX73 ; ;09/16/15
 D DE G BEGIN
DE S DIE="^DGPT(",DIC=DIE,DP=45,DL=1,DIEL=0,DU="" K DG,DE,DB Q:$O(^DGPT(DA,""))=""
 I $D(^(71)) S %Z=^(71) S %=$P(%Z,U,1) S:%]"" DE(1)=% S %=$P(%Z,U,2) S:%]"" DE(11)=% S %=$P(%Z,U,3) S:%]"" DE(21)=% S %=$P(%Z,U,4) S:%]"" DE(31)=% S %=$P(%Z,U,5) S:%]"" DE(41)=%
 I $D(^(82)) S %Z=^(82) S %=$P(%Z,U,11) S:%]"" DE(4)=% S %=$P(%Z,U,12) S:%]"" DE(14)=% S %=$P(%Z,U,13) S:%]"" DE(24)=% S %=$P(%Z,U,14) S:%]"" DE(34)=% S %=$P(%Z,U,15) S:%]"" DE(44)=%
 K %Z Q
 ;
W W !?DL+DL-2,DLB_": "
 Q
O D W W Y W:$X>45 !?9
 I $L(Y)>19,'DV,DV'["I",(DV["F"!(DV["K")) G RW^DIR2
 W:Y]"" "// " I 'DV,DV["I",$D(DE(DQ))#2 S X="" W "  (No Editing)" Q
TR R X:DTIME E  S (DTOUT,X)=U W $C(7)
 Q
A K DQ(DQ) S DQ=DQ+1
B G @DQ
RE G PR:$D(DE(DQ)) D W,TR
N I X="" G NKEY:$D(^DD("KEY","F",DP,DIFLD)),A:DV'["R",X:'DV,X:D'>0,A
RD G QS:X?."?" I X["^" D D G ^DIE17
 I X="@" D D G Z^DIE2
 I X=" ",DV["d",DV'["P",$D(^DISV(DUZ,"DIE",DLB)) S X=^(DLB) I DV'["D",DV'["S" W "  "_X
T G M^DIE17:DV,^DIE3:DV["V",P:DV'["S" X:$D(^DD(DP,DIFLD,12.1)) ^(12.1) I X?.ANP D SET I 'DDER X:$D(DIC("S")) DIC("S") I  W:'$D(DB(DQ)) "  "_% G V
 K DDER G X
P I DV["P" S DIC=U_DU,DIC(0)=$E("EN",$D(DB(DQ))+1)_"M"_$E("L",DV'["'") S:DIC(0)["L" DLAYGO=+$P(DV,"P",2) G:DV["*" AST^DIED D NOSCR^DIED S X=+Y,DIC=DIE G X:X<0
 G V:DV'["N" D D I $L($P(X,"."))>24 K X G Z
 I $P(DQ(DQ),U,5)'["$",X?.1"-".N.1".".N,$P(DQ(DQ),U,5,99)["+X'=X" S X=+X
V D @("X"_DQ) K YS
Z K DIC("S"),DLAYGO I $D(X),X'=U D:$G(DE(DW,"INDEX")) SAVEVALS G:'$$KEYCHK UNIQFERR^DIE17 S DG(DW)=X S:DV["d" ^DISV(DUZ,"DIE",DLB)=X G A
X W:'$D(ZTQUEUED) $C(7),"??" I $D(DB(DQ)) G Z^DIE17
 S X="?BAD"
QS S DZ=X D D,QQ^DIEQ G B
D S D=DIFLD,DQ(DQ)=DLB_U_DV_U_DU_U_DW_U_$P($T(@("X"_DQ))," ",2,99) Q
Y I '$D(DE(DQ)) D O G RD:"@"'[X,A:DV'["R"&(X="@"),X:X="@" S X=Y G N
PR S DG=DV,Y=DE(DQ),X=DU I $D(DQ(DQ,2)) X DQ(DQ,2) G RP
R I DG["P",@("$D(^"_X_"0))") S X=+$P(^(0),U,2) G RP:'$D(^(Y,0)) S Y=$P(^(0),U),X=$P(^DD(X,.01,0),U,3),DG=$P(^(0),U,2) G R
 I DG["V",+Y,$P(Y,";",2)["(",$D(@(U_$P(Y,";",2)_"0)")) S X=+$P(^(0),U,2) G RP:'$D(^(+Y,0)) S Y=$P(^(0),U) I $D(^DD(+X,.01,0)) S DG=$P(^(0),U,2),X=$P(^(0),U,3) G R
 X:DG["D" ^DD("DD") I DG["S" S %=$P($P(";"_X,";"_Y_":",2),";") S:%]"" Y=%
RP D O I X="" S X=DE(DQ) G A:'DV,A:DC<2,N^DIE17
I I DV'["I",DV'["#" G RD
 D E^DIE0 G RD:$D(X),PR
 Q
SET N DIR S DIR(0)="SV"_$E("o",$D(DB(DQ)))_U_DU,DIR("V")=1
 I $D(DB(DQ)),'$D(DIQUIET) N DIQUIET S DIQUIET=1
 D ^DIR I 'DDER S %=Y(0),X=Y
 Q
SAVEVALS S @DIEZTMP@("V",DP,DIIENS,DIFLD,"O")=$G(DE(DQ)) S:$D(^("F"))[0 ^("F")=$G(DE(DQ))
 I $D(DE(DW,"4/")) S @DIEZTMP@("V",DP,DIIENS,DIFLD,"4/")=""
 E  K @DIEZTMP@("V",DP,DIIENS,DIFLD,"4/")
 Q
NKEY W:'$D(ZTQUEUED) "??  Required key field" S X="?BAD" G QS
KEYCHK() Q:$G(DE(DW,"KEY"))="" 1 Q @DE(DW,"KEY")
BEGIN S DNM="DGX73",DQ=1
1 S DW="71;1",DV="*P80'X",DU="",DLB="SECONDARY DIAGNOSIS 10",DIFLD=79.241
 S DE(DW)="C1^DGX73",DE(DW,"INDEX")=1
 S DU="ICD9("
 G RE
C1 G C1S:$D(DE(1))[0 K DB
 S X=DE(1),DIC=DIE
 X "N DG1 S DG1=$P(^DGPT(DA,0),""^"",1) N X S X=""DGRUDD01"" X ^%ZOSF(""TEST"") Q:'$T  D:(+DG1>0) ADGRU^DGRUDD01(DG1)"
 S X=DE(1),DIC=DIE
 K DIV S DIV=X,D0=DA,DIV(0)=D0 S Y(1)=$S($D(^DGPT(D0,82)):^(82),1:"") S X=$P(Y(1),U,11),X=X S DIU=X K Y S X="" S DIH=$G(^DGPT(DIV(0),82)),DIV=X S $P(^(82),U,11)=DIV,DIH=45,DIG=82.11 D ^DICR
C1S S X="" G:DG(DQ)=X C1F1 K DB
 S X=DG(DQ),DIC=DIE
 X "N DG1 S DG1=$P(^DGPT(DA,0),""^"",1) N X S X=""DGRUDD01"" X ^%ZOSF(""TEST"") Q:'$T  D:(+DG1>0) ADGRU^DGRUDD01(DG1)"
 S X=DG(DQ),DIC=DIE
 K DIV S DIV=X,D0=DA,DIV(0)=D0 S Y(1)=$S($D(^DGPT(D0,82)):^(82),1:"") S X=$P(Y(1),U,11),X=X S DIU=X K Y S X="" S DIH=$G(^DGPT(DIV(0),82)),DIV=X S $P(^(82),U,11)=DIV,DIH=45,DIG=82.11 D ^DICR
C1F1 S DIEZRXR(45,DIIENS)=$$OREF^DILF($NA(@$$CREF^DILF(DIE)))
 F DIXR=1188 S DIEZRXR(45,DIXR)=""
 Q
X1 N DGI S DGI=11 D GETAPI^DGICDGT("DG PTF","DIAG",$G(DA),"EN3")
 Q
 ;
2 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=2 D X2 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X2 S DGXX=X
 Q
3 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=3 D X3 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X3 I DGXX="" S Y="@91"
 Q
4 D:$D(DG)>9 F^DIE17,DE S DQ=4,DW="82;11",DV="SX",DU="",DLB="POA SECONDARY DIAGNOSIS 10",DIFLD=82.11
 S DU="Y:Present on  Admission;N:Not Present on Admission;U:Insufficient Docum to Present on Admission;W:Can't Determine if Present on Admission;"
 G RE
X4 I X]"",$G(DA) K:'$$POA701^DGPTFUT1(X,DA,71,1) X
 Q
 ;
5 S DQ=6 ;@91
6 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=6 D X6 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X6 S X=DGXX
 Q
7 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=7 D X7 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X7 I X K DGPTIT S DGNFLD="@100",Y="@800",DGPTIT(X_$C(59)_"ICD9(")=""
 Q
8 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=8 D X8 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X8 S:$P($G(^DGPT(D0,71)),U,1,15)?."^" Y="@240"
 Q
9 S DQ=10 ;@100
10 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=10 D X10 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X10 S DGNFLD="@110"
 Q
11 S DW="71;2",DV="*P80'X",DU="",DLB="SECONDARY DIAGNOSIS 11",DIFLD=79.242
 S DE(DW)="C11^DGX73",DE(DW,"INDEX")=1
 S DU="ICD9("
 G RE
C11 G C11S:$D(DE(11))[0 K DB
 S X=DE(11),DIC=DIE
 X "N DG1 S DG1=$P(^DGPT(DA,0),""^"",1) N X S X=""DGRUDD01"" X ^%ZOSF(""TEST"") Q:'$T  D:(+DG1>0) ADGRU^DGRUDD01(DG1)"
 S X=DE(11),DIC=DIE
 K DIV S DIV=X,D0=DA,DIV(0)=D0 S Y(1)=$S($D(^DGPT(D0,82)):^(82),1:"") S X=$P(Y(1),U,12),X=X S DIU=X K Y S X="" S DIH=$G(^DGPT(DIV(0),82)),DIV=X S $P(^(82),U,12)=DIV,DIH=45,DIG=82.12 D ^DICR
C11S S X="" G:DG(DQ)=X C11F1 K DB
 S X=DG(DQ),DIC=DIE
 X "N DG1 S DG1=$P(^DGPT(DA,0),""^"",1) N X S X=""DGRUDD01"" X ^%ZOSF(""TEST"") Q:'$T  D:(+DG1>0) ADGRU^DGRUDD01(DG1)"
 S X=DG(DQ),DIC=DIE
 K DIV S DIV=X,D0=DA,DIV(0)=D0 S Y(1)=$S($D(^DGPT(D0,82)):^(82),1:"") S X=$P(Y(1),U,12),X=X S DIU=X K Y S X="" S DIH=$G(^DGPT(DIV(0),82)),DIV=X S $P(^(82),U,12)=DIV,DIH=45,DIG=82.12 D ^DICR
C11F1 S DIEZRXR(45,DIIENS)=$$OREF^DILF($NA(@$$CREF^DILF(DIE)))
 F DIXR=1189 S DIEZRXR(45,DIXR)=""
 Q
X11 N DGI S DGI=12 D GETAPI^DGICDGT("DG PTF","DIAG",$G(DA),"EN3")
 Q
 ;
12 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=12 D X12 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X12 S DGXX=X
 Q
13 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=13 D X13 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X13 I DGXX="" S Y="@101"
 Q
14 D:$D(DG)>9 F^DIE17,DE S DQ=14,DW="82;12",DV="SX",DU="",DLB="POA SECONDARY DIAGNOSIS 11",DIFLD=82.12
 S DU="Y:Present on Admission;N:Not Present on Admission;U:Insufficient Docum to Present on Admission;W:Can't Determine if Present on Admission;"
 G RE
X14 I X]"",$G(DA) K:'$$POA701^DGPTFUT1(X,DA,71,2) X
 Q
 ;
15 S DQ=16 ;@101
16 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=16 D X16 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X16 S X=DGXX
 Q
17 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=17 D X17 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X17 I X K DGPTIT S DGNFLD="@110",Y="@800",DGPTIT(X_$C(59)_"ICD9(")=""
 Q
18 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=18 D X18 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X18 S:$P($G(^DGPT(D0,71)),U,2,15)?."^" Y="@240"
 Q
19 S DQ=20 ;@110
20 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=20 D X20 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X20 S DGNFLD="@120"
 Q
21 S DW="71;3",DV="*P80'X",DU="",DLB="SECONDARY DIAGNOSIS 12",DIFLD=79.243
 S DE(DW)="C21^DGX73",DE(DW,"INDEX")=1
 S DU="ICD9("
 G RE
C21 G C21S:$D(DE(21))[0 K DB
 S X=DE(21),DIC=DIE
 X "N DG1 S DG1=$P(^DGPT(DA,0),""^"",1) N X S X=""DGRUDD01"" X ^%ZOSF(""TEST"") Q:'$T  D:(+DG1>0) ADGRU^DGRUDD01(DG1)"
 S X=DE(21),DIC=DIE
 K DIV S DIV=X,D0=DA,DIV(0)=D0 S Y(1)=$S($D(^DGPT(D0,82)):^(82),1:"") S X=$P(Y(1),U,13),X=X S DIU=X K Y S X="" S DIH=$G(^DGPT(DIV(0),82)),DIV=X S $P(^(82),U,13)=DIV,DIH=45,DIG=82.13 D ^DICR
C21S S X="" G:DG(DQ)=X C21F1 K DB
 S X=DG(DQ),DIC=DIE
 X "N DG1 S DG1=$P(^DGPT(DA,0),""^"",1) N X S X=""DGRUDD01"" X ^%ZOSF(""TEST"") Q:'$T  D:(+DG1>0) ADGRU^DGRUDD01(DG1)"
 S X=DG(DQ),DIC=DIE
 K DIV S DIV=X,D0=DA,DIV(0)=D0 S Y(1)=$S($D(^DGPT(D0,82)):^(82),1:"") S X=$P(Y(1),U,13),X=X S DIU=X K Y S X="" S DIH=$G(^DGPT(DIV(0),82)),DIV=X S $P(^(82),U,13)=DIV,DIH=45,DIG=82.13 D ^DICR
C21F1 S DIEZRXR(45,DIIENS)=$$OREF^DILF($NA(@$$CREF^DILF(DIE)))
 F DIXR=1190 S DIEZRXR(45,DIXR)=""
 Q
X21 N DGI S DGI=13 D GETAPI^DGICDGT("DG PTF","DIAG",$G(DA),"EN3")
 Q
 ;
22 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=22 D X22 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X22 S DGXX=X
 Q
23 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=23 D X23 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X23 I DGXX="" S Y="@111"
 Q
24 D:$D(DG)>9 F^DIE17,DE S DQ=24,DW="82;13",DV="SX",DU="",DLB="POA SECONDARY DIAGNOSIS 12",DIFLD=82.13
 S DU="Y:Present on Admission;N:Not Present on Admission;U:Insufficient Docum to Present on Admission;W:Can't Determine if Present on Admission;"
 G RE
X24 I X]"",$G(DA) K:'$$POA701^DGPTFUT1(X,DA,71,3) X
 Q
 ;
25 S DQ=26 ;@111
26 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=26 D X26 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X26 S X=DGXX
 Q
27 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=27 D X27 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X27 I X K DGPTIT S DGNFLD="@120",Y="@800",DGPTIT(X_$C(59)_"ICD9(")=""
 Q
28 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=28 D X28 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X28 S:$P($G(^DGPT(D0,71)),U,3,15)?."^" Y="@240"
 Q
29 S DQ=30 ;@120
30 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=30 D X30 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X30 S DGNFLD="@130"
 Q
31 S DW="71;4",DV="*P80'X",DU="",DLB="SECONDARY DIAGNOSIS 13",DIFLD=79.244
 S DE(DW)="C31^DGX73",DE(DW,"INDEX")=1
 S DU="ICD9("
 G RE
C31 G C31S:$D(DE(31))[0 K DB
 S X=DE(31),DIC=DIE
 X "N DG1 S DG1=$P(^DGPT(DA,0),""^"",1) N X S X=""DGRUDD01"" X ^%ZOSF(""TEST"") Q:'$T  D:(+DG1>0) ADGRU^DGRUDD01(DG1)"
 S X=DE(31),DIC=DIE
 K DIV S DIV=X,D0=DA,DIV(0)=D0 S Y(1)=$S($D(^DGPT(D0,82)):^(82),1:"") S X=$P(Y(1),U,14),X=X S DIU=X K Y S X="" S DIH=$G(^DGPT(DIV(0),82)),DIV=X S $P(^(82),U,14)=DIV,DIH=45,DIG=82.14 D ^DICR
C31S S X="" G:DG(DQ)=X C31F1 K DB
 S X=DG(DQ),DIC=DIE
 X "N DG1 S DG1=$P(^DGPT(DA,0),""^"",1) N X S X=""DGRUDD01"" X ^%ZOSF(""TEST"") Q:'$T  D:(+DG1>0) ADGRU^DGRUDD01(DG1)"
 S X=DG(DQ),DIC=DIE
 K DIV S DIV=X,D0=DA,DIV(0)=D0 S Y(1)=$S($D(^DGPT(D0,82)):^(82),1:"") S X=$P(Y(1),U,14),X=X S DIU=X K Y S X="" S DIH=$G(^DGPT(DIV(0),82)),DIV=X S $P(^(82),U,14)=DIV,DIH=45,DIG=82.14 D ^DICR
C31F1 S DIEZRXR(45,DIIENS)=$$OREF^DILF($NA(@$$CREF^DILF(DIE)))
 F DIXR=1191 S DIEZRXR(45,DIXR)=""
 Q
X31 N DGI S DGI=14 D GETAPI^DGICDGT("DG PTF","DIAG",$G(DA),"EN3")
 Q
 ;
32 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=32 D X32 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X32 S DGXX=X
 Q
33 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=33 D X33 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X33 I DGXX="" S Y="@121"
 Q
34 D:$D(DG)>9 F^DIE17,DE S DQ=34,DW="82;14",DV="SX",DU="",DLB="POA SECONDARY DIAGNOSIS 13",DIFLD=82.14
 S DU="Y:Present on Admission;N:Not Present on Admission;U:Insufficient Docum to Present on Admission;W:Can't Determine if Present on Admission;"
 G RE
X34 I X]"",$G(DA) K:'$$POA701^DGPTFUT1(X,DA,71,4) X
 Q
 ;
35 S DQ=36 ;@121
36 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=36 D X36 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X36 S X=DGXX
 Q
37 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=37 D X37 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X37 I X K DGPTIT S DGNFLD="@130",Y="@800",DGPTIT(X_$C(59)_"ICD9(")=""
 Q
38 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=38 D X38 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X38 S:$P($G(^DGPT(D0,71)),U,4,15)?."^" Y="@240"
 Q
39 S DQ=40 ;@130
40 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=40 D X40 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X40 S DGNFLD="@140"
 Q
41 S DW="71;5",DV="*P80'X",DU="",DLB="SECONDARY DIAGNOSIS 14",DIFLD=79.245
 S DE(DW)="C41^DGX73",DE(DW,"INDEX")=1
 S DU="ICD9("
 G RE
C41 G C41S:$D(DE(41))[0 K DB
 S X=DE(41),DIC=DIE
 X "N DG1 S DG1=$P(^DGPT(DA,0),""^"",1) N X S X=""DGRUDD01"" X ^%ZOSF(""TEST"") Q:'$T  D:(+DG1>0) ADGRU^DGRUDD01(DG1)"
 S X=DE(41),DIC=DIE
 K DIV S DIV=X,D0=DA,DIV(0)=D0 S Y(1)=$S($D(^DGPT(D0,82)):^(82),1:"") S X=$P(Y(1),U,15),X=X S DIU=X K Y S X="" S DIH=$G(^DGPT(DIV(0),82)),DIV=X S $P(^(82),U,15)=DIV,DIH=45,DIG=82.15 D ^DICR
C41S S X="" G:DG(DQ)=X C41F1 K DB
 S X=DG(DQ),DIC=DIE
 X "N DG1 S DG1=$P(^DGPT(DA,0),""^"",1) N X S X=""DGRUDD01"" X ^%ZOSF(""TEST"") Q:'$T  D:(+DG1>0) ADGRU^DGRUDD01(DG1)"
 S X=DG(DQ),DIC=DIE
 K DIV S DIV=X,D0=DA,DIV(0)=D0 S Y(1)=$S($D(^DGPT(D0,82)):^(82),1:"") S X=$P(Y(1),U,15),X=X S DIU=X K Y S X="" S DIH=$G(^DGPT(DIV(0),82)),DIV=X S $P(^(82),U,15)=DIV,DIH=45,DIG=82.15 D ^DICR
C41F1 S DIEZRXR(45,DIIENS)=$$OREF^DILF($NA(@$$CREF^DILF(DIE)))
 F DIXR=1239 S DIEZRXR(45,DIXR)=""
 Q
X41 N DGI S DGI=15 D GETAPI^DGICDGT("DG PTF","DIAG",$G(DA),"EN3")
 Q
 ;
42 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=42 D X42 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X42 S DGXX=X
 Q
43 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=43 D X43 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X43 I DGXX="" S Y="@131"
 Q
44 D:$D(DG)>9 F^DIE17,DE S DQ=44,DW="82;15",DV="SX",DU="",DLB="POA SECONDARY DIAGNOSIS 14",DIFLD=82.15
 S DU="Y:Present on Admission;N:Not Present on Admission;U:Insufficient Docum to Present on Admission;W:Can't Determine if Present on Admission;"
 G RE
X44 I X]"",$G(DA) K:'$$POA701^DGPTFUT1(X,DA,71,5) X
 Q
 ;
45 S DQ=46 ;@131
46 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=46 D X46 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X46 S X=DGXX
 Q
47 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=47 D X47 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X47 I X K DGPTIT S DGNFLD="@140",Y="@800",DGPTIT(X_$C(59)_"ICD9(")=""
 Q
48 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=48 D X48 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X48 S:$P($G(^DGPT(D0,71)),U,5,15)?."^" Y="@240"
 Q
49 S DQ=50 ;@140
50 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=50 D X50 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X50 S DGNFLD="@150"
 Q
51 D:$D(DG)>9 F^DIE17 G ^DGX74
