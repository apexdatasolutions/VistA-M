DGPTX7 ; GENERATED FROM 'DG701' INPUT TEMPLATE(#432), FILE 45;09/16/15
 D DE G BEGIN
DE S DIE="^DGPT(",DIC=DIE,DP=45,DL=1,DIEL=0,DU="" K DG,DE,DB Q:$O(^DGPT(DA,""))=""
 I $D(^(70)) S %Z=^(70) S %=$P(%Z,U,10) S:%]"" DE(6)=% S %=$P(%Z,U,16) S:%]"" DE(16)=% S %=$P(%Z,U,17) S:%]"" DE(26)=% S %=$P(%Z,U,18) S:%]"" DE(36)=% S %=$P(%Z,U,19) S:%]"" DE(46)=%
 I $D(^(82)) S %Z=^(82) S %=$P(%Z,U,1) S:%]"" DE(9)=% S %=$P(%Z,U,2) S:%]"" DE(19)=% S %=$P(%Z,U,3) S:%]"" DE(29)=% S %=$P(%Z,U,4) S:%]"" DE(39)=% S %=$P(%Z,U,5) S:%]"" DE(49)=%
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
BEGIN S DNM="DGPTX7",DQ=1
 N DIEZTMP,DIEZAR,DIEZRXR,DIIENS,DIXR K DIEFIRE,DIEBADK S DIEZTMP=$$GETTMP^DIKC1("DIEZ")
 M DIEZAR=^DIE(432,"AR") S DICRREC="TRIG^DIE17"
 S:$D(DTIME)[0 DTIME=300 S D0=DA,DIIENS=DA_",",DIEZ=432,U="^"
1 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=1 D X1 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X1 F X=2:1:7 S DGDUP(X)=0
 Q
2 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=2 D X2 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X2 K DGPTIT D FLAGCHK^DGPTSCAN
 Q
3 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=3 D X3 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X3 S DGNFLD="@10"
 Q
4 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=4 D X4 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X4 S DGXX="",DGTYPE=$P(^DGPT(D0,0),U,11),DGCODSYS=$$CODESYS^DGPTIC10(D0)
 Q
5 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=5 D X5 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X5 D CENSUS^DGPTIC10(DA)
 Q
6 S DW="70;10",DV="*P80'X",DU="",DLB="PRINCIPAL DIAGNOSIS",DIFLD=79
 S DE(DW)="C6^DGPTX7",DE(DW,"INDEX")=1
 S DU="ICD9("
 G RE
C6 G C6S:$D(DE(6))[0 K DB
 S X=DE(6),DIC=DIE
 K DIV S DIV=X,D0=DA,DIV(0)=D0 S Y(1)=$S($D(^DGPT(D0,82)):^(82),1:"") S X=$P(Y(1),U,1),X=X S DIU=X K Y S X="" S DIH=$G(^DGPT(DIV(0),82)),DIV=X S $P(^(82),U,1)=DIV,DIH=45,DIG=82.01 D ^DICR
 S X=DE(6),DIC=DIE
 X "N DG1 S DG1=$P(^DGPT(DA,0),""^"",1) N X S X=""DGRUDD01"" X ^%ZOSF(""TEST"") Q:'$T  D:(+DG1>0) ADGRU^DGRUDD01(DG1)"
C6S S X="" G:DG(DQ)=X C6F1 K DB
 S X=DG(DQ),DIC=DIE
 K DIV S DIV=X,D0=DA,DIV(0)=D0 S Y(1)=$S($D(^DGPT(D0,82)):^(82),1:"") S X=$P(Y(1),U,1),X=X S DIU=X K Y S X="" S DIH=$G(^DGPT(DIV(0),82)),DIV=X S $P(^(82),U,1)=DIV,DIH=45,DIG=82.01 D ^DICR
 S X=DG(DQ),DIC=DIE
 X "N DG1 S DG1=$P(^DGPT(DA,0),""^"",1) N X S X=""DGRUDD01"" X ^%ZOSF(""TEST"") Q:'$T  D:(+DG1>0) ADGRU^DGRUDD01(DG1)"
C6F1 S DIEZRXR(45,DIIENS)=$$OREF^DILF($NA(@$$CREF^DILF(DIE)))
 F DIXR=1176 S DIEZRXR(45,DIXR)=""
 Q
X6 N DGI S DGI=1 D GETAPI^DGICDGT("DG PTF","DIAG",$G(DA),"EN3")
 Q
 ;
7 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=7 D X7 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X7 S DGXX=X
 Q
8 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=8 D X8 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X8 I DGCODSYS="ICD9"!(DGXX="")!(DGTYPE=2) S Y="@1"
 Q
9 D:$D(DG)>9 F^DIE17,DE S DQ=9,DW="82;1",DV="SX",DU="",DLB="POA PRINCIPAL DIAGNOSIS",DIFLD=82.01
 S DU="Y:Present on Admission;N:Not Present on Admission;U:Insufficient Docum to Present on Admission;W:Can't Determine if Present on Admission;"
 G RE
X9 I X]"",$G(DA) K:'$$POA701^DGPTFUT1(X,DA,70,10) X
 Q
 ;
10 S DQ=11 ;@1
11 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=11 D X11 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X11 S X=DGXX
 Q
12 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=12 D X12 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X12 I X K DGPTIT S DGNFLD="@10",Y="@800",DGPTIT(X_$C(59)_"ICD9(")=""
 Q
13 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=13 D X13 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X13 S:$P($G(^DGPT(D0,70)),U,10)_$P($G(^DGPT(D0,70)),U,16,24)_$P($G(^DGPT(D0,71)),U,1,3)?."^" Y="@120"
 Q
14 S DQ=15 ;@10
15 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=15 D X15 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X15 S DGNFLD="@20"
 Q
16 S DW="70;16",DV="*P80`X",DU="",DLB="SECONDARY DIAGNOSIS 1",DIFLD=79.16
 S DE(DW)="C16^DGPTX7",DE(DW,"INDEX")=1
 S DU="ICD9("
 G RE
C16 G C16S:$D(DE(16))[0 K DB
 S X=DE(16),DIC=DIE
 K DIV S DIV=X,D0=DA,DIV(0)=D0 S Y(1)=$S($D(^DGPT(D0,82)):^(82),1:"") S X=$P(Y(1),U,2),X=X S DIU=X K Y S X="" S DIH=$G(^DGPT(DIV(0),82)),DIV=X S $P(^(82),U,2)=DIV,DIH=45,DIG=82.02 D ^DICR
 S X=DE(16),DIC=DIE
 X "N DG1 S DG1=$P(^DGPT(DA,0),""^"",1) N X S X=""DGRUDD01"" X ^%ZOSF(""TEST"") Q:'$T  D:(+DG1>0) ADGRU^DGRUDD01(DG1)"
C16S S X="" G:DG(DQ)=X C16F1 K DB
 S X=DG(DQ),DIC=DIE
 K DIV S DIV=X,D0=DA,DIV(0)=D0 S Y(1)=$S($D(^DGPT(D0,82)):^(82),1:"") S X=$P(Y(1),U,2),X=X S DIU=X K Y S X="" S DIH=$G(^DGPT(DIV(0),82)),DIV=X S $P(^(82),U,2)=DIV,DIH=45,DIG=82.02 D ^DICR
 S X=DG(DQ),DIC=DIE
 X "N DG1 S DG1=$P(^DGPT(DA,0),""^"",1) N X S X=""DGRUDD01"" X ^%ZOSF(""TEST"") Q:'$T  D:(+DG1>0) ADGRU^DGRUDD01(DG1)"
C16F1 S DIEZRXR(45,DIIENS)=$$OREF^DILF($NA(@$$CREF^DILF(DIE)))
 F DIXR=1187 S DIEZRXR(45,DIXR)=""
 Q
X16 N DGI S DGI=2 D GETAPI^DGICDGT("DG PTF","DIAG",$G(DA),"EN3")
 Q
 ;
17 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=17 D X17 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X17 S DGXX=X
 Q
18 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=18 D X18 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X18 I DGCODSYS="ICD9"!(DGXX="")!(DGTYPE=2) S Y="@11"
 Q
19 D:$D(DG)>9 F^DIE17,DE S DQ=19,DW="82;2",DV="SX",DU="",DLB="POA SECONDARY DIAGNOSIS 1",DIFLD=82.02
 S DU="Y:Present on Admission;N:Not Present on Admission;U:Insufficient Docum to Present on Admission;W:Can't Determine if Present on Admission;"
 G RE
X19 I X]"",$G(DA) K:'$$POA701^DGPTFUT1(X,DA,70,16) X
 Q
 ;
20 S DQ=21 ;@11
21 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=21 D X21 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X21 S X=DGXX
 Q
22 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=22 D X22 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X22 I X K DGPTIT S DGNFLD="@20",Y="@800",DGPTIT(X_$C(59)_"ICD9(")=""
 Q
23 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=23 D X23 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X23 S:$P($G(^DGPT(D0,70)),U,16,24)_$P($G(^DGPT(D0,71)),U,1,3)?."^" Y="@120"
 Q
24 S DQ=25 ;@20
25 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=25 D X25 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X25 S DGNFLD="@30"
 Q
26 S DW="70;17",DV="*P80'X",DU="",DLB="SECONDARY DIAGNOSIS 2",DIFLD=79.17
 S DE(DW)="C26^DGPTX7",DE(DW,"INDEX")=1
 S DU="ICD9("
 G RE
C26 G C26S:$D(DE(26))[0 K DB
 S X=DE(26),DIC=DIE
 K DIV S DIV=X,D0=DA,DIV(0)=D0 S Y(1)=$S($D(^DGPT(D0,82)):^(82),1:"") S X=$P(Y(1),U,3),X=X S DIU=X K Y S X="" S DIH=$G(^DGPT(DIV(0),82)),DIV=X S $P(^(82),U,3)=DIV,DIH=45,DIG=82.03 D ^DICR
 S X=DE(26),DIC=DIE
 X "N DG1 S DG1=$P(^DGPT(DA,0),""^"",1) N X S X=""DGRUDD01"" X ^%ZOSF(""TEST"") Q:'$T  D:(+DG1>0) ADGRU^DGRUDD01(DG1)"
C26S S X="" G:DG(DQ)=X C26F1 K DB
 S X=DG(DQ),DIC=DIE
 K DIV S DIV=X,D0=DA,DIV(0)=D0 S Y(1)=$S($D(^DGPT(D0,82)):^(82),1:"") S X=$P(Y(1),U,3),X=X S DIU=X K Y S X="" S DIH=$G(^DGPT(DIV(0),82)),DIV=X S $P(^(82),U,3)=DIV,DIH=45,DIG=82.03 D ^DICR
 S X=DG(DQ),DIC=DIE
 X "N DG1 S DG1=$P(^DGPT(DA,0),""^"",1) N X S X=""DGRUDD01"" X ^%ZOSF(""TEST"") Q:'$T  D:(+DG1>0) ADGRU^DGRUDD01(DG1)"
C26F1 S DIEZRXR(45,DIIENS)=$$OREF^DILF($NA(@$$CREF^DILF(DIE)))
 F DIXR=1192 S DIEZRXR(45,DIXR)=""
 Q
X26 N DGI S DGI=3 D GETAPI^DGICDGT("DG PTF","DIAG",$G(DA),"EN3")
 Q
 ;
27 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=27 D X27 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X27 S DGXX=X
 Q
28 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=28 D X28 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X28 I DGCODSYS="ICD9"!(DGXX="")!(DGTYPE=2) S Y="@21"
 Q
29 D:$D(DG)>9 F^DIE17,DE S DQ=29,DW="82;3",DV="SX",DU="",DLB="POA SECONDARY DIAGNOSIS 2",DIFLD=82.03
 S DU="Y:Present on Admission;N:Not Present on Admission;U:Insufficient Docum to Present on Admission;W:Can't Determine if Present on Admission;"
 G RE
X29 I X]"",$G(DA) K:'$$POA701^DGPTFUT1(X,DA,70,17) X
 Q
 ;
30 S DQ=31 ;@21
31 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=31 D X31 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X31 S X=DGXX
 Q
32 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=32 D X32 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X32 I X K DGPTIT S DGNFLD="@30",Y="@800",DGPTIT(X_$C(59)_"ICD9(")=""
 Q
33 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=33 D X33 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X33 S:$P($G(^DGPT(D0,70)),U,17,24)_$P($G(^DGPT(D0,71)),U,1,3)?."^" Y="@120"
 Q
34 S DQ=35 ;@30
35 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=35 D X35 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X35 S DGNFLD="@40"
 Q
36 S DW="70;18",DV="*P80'X",DU="",DLB="SECONDARY DIAGNOSIS 3",DIFLD=79.18
 S DE(DW)="C36^DGPTX7",DE(DW,"INDEX")=1
 S DU="ICD9("
 G RE
C36 G C36S:$D(DE(36))[0 K DB
 S X=DE(36),DIC=DIE
 K DIV S DIV=X,D0=DA,DIV(0)=D0 S Y(1)=$S($D(^DGPT(D0,82)):^(82),1:"") S X=$P(Y(1),U,4),X=X S DIU=X K Y S X="" S DIH=$G(^DGPT(DIV(0),82)),DIV=X S $P(^(82),U,4)=DIV,DIH=45,DIG=82.04 D ^DICR
 S X=DE(36),DIC=DIE
 X "N DG1 S DG1=$P(^DGPT(DA,0),""^"",1) N X S X=""DGRUDD01"" X ^%ZOSF(""TEST"") Q:'$T  D:(+DG1>0) ADGRU^DGRUDD01(DG1)"
C36S S X="" G:DG(DQ)=X C36F1 K DB
 S X=DG(DQ),DIC=DIE
 K DIV S DIV=X,D0=DA,DIV(0)=D0 S Y(1)=$S($D(^DGPT(D0,82)):^(82),1:"") S X=$P(Y(1),U,4),X=X S DIU=X K Y S X="" S DIH=$G(^DGPT(DIV(0),82)),DIV=X S $P(^(82),U,4)=DIV,DIH=45,DIG=82.04 D ^DICR
 S X=DG(DQ),DIC=DIE
 X "N DG1 S DG1=$P(^DGPT(DA,0),""^"",1) N X S X=""DGRUDD01"" X ^%ZOSF(""TEST"") Q:'$T  D:(+DG1>0) ADGRU^DGRUDD01(DG1)"
C36F1 S DIEZRXR(45,DIIENS)=$$OREF^DILF($NA(@$$CREF^DILF(DIE)))
 F DIXR=1193 S DIEZRXR(45,DIXR)=""
 Q
X36 N DGI S DGI=4 D GETAPI^DGICDGT("DG PTF","DIAG",$G(DA),"EN3")
 Q
 ;
37 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=37 D X37 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X37 S DGXX=X
 Q
38 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=38 D X38 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X38 I DGCODSYS="ICD9"!(DGXX="")!(DGTYPE=2) S Y="@31"
 Q
39 D:$D(DG)>9 F^DIE17,DE S DQ=39,DW="82;4",DV="SX",DU="",DLB="POA SECONDARY DIAGNOSIS 3",DIFLD=82.04
 S DU="Y:Present on Admission;N:Not Present on Admission;U:Insufficient Docum to Present on Admission;W:Can't Determine if Present on Admission;"
 G RE
X39 I X]"",$G(DA) K:'$$POA701^DGPTFUT1(X,DA,70,18) X
 Q
 ;
40 S DQ=41 ;@31
41 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=41 D X41 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X41 S X=DGXX
 Q
42 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=42 D X42 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X42 I X K DGPTIT S DGNFLD="@40",Y="@800",DGPTIT(X_$C(59)_"ICD9(")=""
 Q
43 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=43 D X43 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X43 S:$P($G(^DGPT(D0,70)),U,18,24)_$P($G(^DGPT(D0,71)),U,1,3)?."^" Y="@120"
 Q
44 S DQ=45 ;@40
45 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=45 D X45 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X45 S DGNFLD="@50"
 Q
46 S DW="70;19",DV="*P80'X",DU="",DLB="SECONDARY DIAGNOSIS 4",DIFLD=79.19
 S DE(DW)="C46^DGPTX7",DE(DW,"INDEX")=1
 S DU="ICD9("
 G RE
C46 G C46S:$D(DE(46))[0 K DB
 D ^DGPTX71
C46S S X="" G:DG(DQ)=X C46F1 K DB
 D ^DGPTX72
C46F1 S DIEZRXR(45,DIIENS)=$$OREF^DILF($NA(@$$CREF^DILF(DIE)))
 F DIXR=1194 S DIEZRXR(45,DIXR)=""
 Q
X46 N DGI S DGI=5 D GETAPI^DGICDGT("DG PTF","DIAG",$G(DA),"EN3")
 Q
 ;
47 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=47 D X47 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X47 S DGXX=X
 Q
48 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=48 D X48 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X48 I DGCODSYS="ICD9"!(DGXX="")!(DGTYPE=2) S Y="@41"
 Q
49 D:$D(DG)>9 F^DIE17,DE S DQ=49,DW="82;5",DV="SX",DU="",DLB="POA SECONDARY DIAGNOSIS 4",DIFLD=82.05
 S DU="Y:Present on Admission;N:Not Present on Admission;U:Insufficient Docum to Present on Admission;W:Can't Determine if Present on Admission;"
 G RE
X49 I X]"",$G(DA) K:'$$POA701^DGPTFUT1(X,DA,70,19) X
 Q
 ;
50 S DQ=51 ;@41
51 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=51 D X51 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X51 S X=DGXX
 Q
52 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=52 D X52 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X52 I X K DGPTIT S DGNFLD="@50",Y="@800",DGPTIT(X_$C(59)_"ICD9(")=""
 Q
53 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=53 D X53 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X53 S:$P($G(^DGPT(D0,70)),U,19,24)_$P($G(^DGPT(D0,71)),U,1,3)?."^" Y="@120"
 Q
54 S DQ=55 ;@50
55 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=55 D X55 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X55 S DGNFLD="@55"
 Q
56 D:$D(DG)>9 F^DIE17 G ^DGPTX73
