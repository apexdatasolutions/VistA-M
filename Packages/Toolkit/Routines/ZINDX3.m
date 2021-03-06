%INDX3 ;ISC/REL,GRK,RWF - PROCESS SET/READ/KILL/NEW/OPEN COMMANDS ;8/5/93  12:38 ;
 ;;7.3;TOOLKIT;;Apr 25, 1995
PEEK S Y=$G(LV(LV,LI+1)) Q
PEEK2 S Y=$G(LV(LV,LI+2)) Q
INC2 S LI=LI+1 ;Drop into INC
INC S LI=LI+1,S=$G(LV(LV,LI)),S1=$G(LV(LV,LI+1)),CH=$E(S) G ERR:$A(S)=10 Q
DN S LI(LV)=LI,LI(LV,1)=AC,LV=LV+1,LI=LI(LV),AC=NOA
 Q
UP ;Inc LI as we save to skip the $C(10).
 D PEEK S:$A(Y)=10 LI=LI+1 S LI(LV)=LI,LV=LV-1,LI=LI(LV),AC=LI(LV,1) Q
PEEKDN S Y=$G(LV(LV+1,LI(LV+1)+1)) Q
FIND F Y=LI:1:AC Q:L[$G(LV(LV,Y))
ERR S ERR=43 D ^%INDX1 S (S,S1,CH)="" Q
 Q
 Q
S S ERR=10 G:ARG="" ^%INDX1 S STR=ARG,ARG="",RHS=0 D ^%INDX9
S2 S GK="" D INC I S="" S ERR=10 D:'RHS ^%INDX1 Q
 I CH="," S RHS=0 G S2
 I CH="=" S RHS=1 S ERR=10 D:","[S1 ^%INDX1 G S2
 I CH="$",'RHS,S'["$P" S ERR=10 D ^%INDX1
 I CH="^" D FL G S2
 I CH="@" S Y=$$ASM(LV,LI,",") S:Y'["=" RHS=1 D INC,ARG^%INDX2 G S2
 I CH="(" D MULT G S2
 D FL G S2
MULT D INC S NOA=S I S'>0 S ERR=5 G ^%INDX1
 D DN S AC=AC+LI F  Q:AC'>LI  S GK="*" D INC,ARG^%INDX2
 D UP Q
FL ;
 S:'RHS GK="*" D ARG^%INDX2 Q
VLN S ERR=0 I X'?1.8UN,X'?1.8LN,X'?1"%".7UN,X'?1"%".7LN S ERR=11 D ^%INDX1
 Q
VGN S ERR=0 I X'?1.8UN,X'?1"%".7UN S ERR=12 D ^%INDX1
 Q
KL ;Process KILL
 S STR=ARG,ARG(1)=ARG,ARG="" D ^%INDX9
A D INC Q:S=""  G A:CH="," S LOC="L" D @$S(CH="@":"KL1",CH="^":"KL2",CH="(":"KL4",1:"KL3") G A
KL1 D INC,ARG^%INDX2 Q
KL2 S GK="!"
 I S1'="(" S ERR=24 D ^%INDX1
 G ARG^%INDX2
KL3 I "^DT^DTIME^DUZ^IOST^IOM^IOS^"[("^"_S_"^") S ERR=39,ERR(1)=S D ^%INDX1
 I "IO"=S D:S1="(" PEEKDN S ERR=39,ERR(1)=S_$S(S1["(":S1_Y_")",1:"") D:S1'="(" ^%INDX1 I S1="(",("QC"'[$E(Y,2)) D ^%INDX1
KL5 S GK="!" D ARG^%INDX2 Q  ;KILL SUBS
 Q
KL4 S NOA=S1 D DN,ARGS^%INDX2,UP,INC2 Q
NE ;NEW
 S ERR=$S("("[$E(ARG):26,1:0) I ERR G ^%INDX1 ;look for null or (
 S STR=ARG D ^%INDX9
N2 D INC Q:S=""  G N2:CH="," S GK="~" D ARG^%INDX2 G N2
 ;
RD S STR=ARG D ^%INDX9 S ARG=""
RD1 D INC Q:S=""
 ;I (CH="!")!(CH=",")!(CH=Q)!(CH="#") G RD1
 I CH="^" S ERR=11 D ^%INDX1
 I '((CH="%")!(CH?1A)!(CH="*")) D RD3 G RD1
 S Y=$$ASM(LV,LI,",") I Y'[":" S ERR=33,RDTIME=1 D ^%INDX1
 D RD2 G RD1
RD2 Q:","[CH
 I "*#"[CH S ERR=41 D ^%INDX1
 I "#:"[CH D INC,ARG^%INDX2,INC G RD2
 I (CH="%")!(CH?1A) S LOC="L",GK="*" D ARG^%INDX2,INC G RD2
 D INC G RD2
RD3 Q:","[CH  I "!#?"[CH D INC G RD3
 I (CH="%")!(CH?1A)!(CH="@") D ARG^%INDX2,INC G RD3
 Q
O S STR=ARG,AC=99 D ^%INDX9,INC S ARG="" I S["@" D ARGS^%INDX2 Q
 D ARG^%INDX2,INC D  D INC,ARGS^%INDX2 Q
 . F  D INC Q:":"[S
 . Q
 Q
ERRCP S ERR=5 D ^%INDX1 Q
ST ;
 S:'$D(V(LOC,S)) V(LOC,S)="" S:V(LOC,S)'[GK V(LOC,S)=V(LOC,S)_GK,GK="" Q
 Q
ASM(WL,SI,L,SEP) ;
 N %,CH,Y S SEP=$G(SEP),Y="" F %=SI:1 S CH=$G(LV(WL,%)) Q:L[CH  S Y=Y_SEP_CH
 Q Y
