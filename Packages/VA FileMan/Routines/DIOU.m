DIOU ;SFISC/TKW - GENERIC FILEMAN CODE GENERATION UTILITIES ;18SEP2015
 ;;22.2;VA FileMan;**2**;Jan 05, 2016;Build 139
 ;;Per VA Directive 6402, this routine should not be modified.
 ;;Submitted to OSEHRA 5 January 2015 by the VISTA Expertise Network.
 ;;Based on Medsphere Systems Corporation's MSC FileMan 1051.
 ;;Licensed under the terms of the Apache License, Version 2.0.
 ;
BIJ(S,F,I,J) ;BUILD I & J ARRAY.  S=(SUB)FILE#, F=FIELD#
 N X,Y,% S X=0,(Y,J(0))=S F  Q:'$D(^DD(Y,0,"UP"))  S X=X+1,Y=^("UP")
 I X=0 G X
 F %=X:-1:1 S Y=$G(^DD(S,0,"UP")) Q:'Y  S I(S)=%,I(S,0)=Y,F=$O(^DD(Y,"SB",S,0)) Q:'F  S I(S,1)=$P($P($G(^DD(Y,F,0)),U,4),";"),S=Y
X S J=$G(^DIC(S,0,"GL")),I(S)=0
 I $G(DCC)?1"^"1.A1"(".E,((J="")!($P(DCC,J,2)]"")) S J=DCC
 Q
 ;
GREF(I,J,F) ;BUILD GLOBAL REFERENCE (I & J ARRAY FROM BIJ, CODE RETURNED IN F)
 N %,Y S F="",%=J(0) F Y=I(%):-1 S F="D"_Y_F Q:'Y  S F=","_$G(I(%,1))_","_F,%=$G(I(%,0)) Q:%=""!('$D(^DD(+%)))
 S F=$S($D(I(%,8)):I(%,8),1:J)_F Q
 ;
GLRF(S,F,X,%) ;BUILD GLOBAL REFERENCE (S=(SUB)FILE#,F=FIELD NO.,%=CLOSE PARENTHESIS, RETURN PIECE IN %, X=OUTPUT VARIABLE.)
 Q:'$D(^DD($G(S),$G(F),0))  N I,J,K,L,Y D BIJ(S,F,.I,.J)
 S X="",K=J(0) F Y=I(K):-1 S X="D"_Y_X Q:'Y  S L=$G(I(K,1)) S:L]""&(+$P(L,"E")'=L) L=$$QUOTE^DILIBF(L) S:L]"" X=","_L_","_X S K=+$G(I(K,0)) Q:'K
 S X=J_X_"," Q:$G(%)=""
 S %=$P($P(^DD(S,F,0),U,4),";") I %]"",+$P(%,"E")'=% S %=$$QUOTE^DILIBF(%)
 S X=X_%_")"
 S %=$P($P(^DD(S,F,0),U,4),";",2) S:$P(^(0),U,2)["W" %="W" S:F=.001 %(1)=I(J(0))
 Q
 ;
GET(S,F,X,Y,DIFLAG) ;
 ;Called by ^DIP12
 ;BUILD CODE TO EXTRACT FIELD.  S=FILE/SUBFILE#, F=FIELD#, X=LOCAL VARIABLE NAME WHERE FIELD WILL BE STORED.  CODE RETURNED IN Y
 ; DIFLAG["I" if internal value of field (no output transform)
 N % K Y Q:'$D(^DD(+$G(S),+$G(F),0))  S %=^(0),%(2)=$G(^(2))
 N P,DN,I,J,E
 S P=1 D GLRF(S,F,.Y,.P)
 I F=.001,P="" S Y="S "_X_"=D"_P(1) Q
 I P=" " G CAL
 S (DN,E)=""
 I P S DN="$P(",E="),U"_$S(P=1:")",1:","_P_")")
 I $E(P)="E" S DN="$E(",E="),"_$E(P,2,9)_")"
 I P="W" S E=")"
 I E="" K Y Q
 S Y="S "_X_"="_DN_"$G("_Y_E
 Q:$G(DIFLAG)["I"  Q:$P(%,U,2)["D"
 ;NOW IF IT HAS AN OUTPUT TRANSFORM, AND IS NOT A DATE, DO THE OUTPUT TRANSFORM.  Compare with DT+2^DIO0
 S E=",Y="_X_" "_$$OUTPUT^DIETLIBF(S,F)_" S "_X_"=Y"
 I $P(%,U,2)["t"&($P(%,U,2)'["S")!($P(%,U,2)["O") S Y=Y_E
 Q
 ;
CAL S Y=$P(%,U,5,99),E=$P($P(%,U,2),"p",2) ;IT'S A COMPUTED FIELD WE ARE AFTER
 I E,$D(^DIC(+E,0,"GL")) S E=" S "_X_"=$S(X="""":X,$D("_^("GL")_"X,0))#2:$P(^(0),U),1:X)" S:$L(Y)+$L(E)>225 Y="X $P(^DD("_S_","_F_",0),U,5,99)" S Y=Y_E Q  ;computed pointer
 S Y=Y_" S "_X_"=X" Q
 ;
DTYP(S,F,Y) ;RETURN DATA TYPES(S) INTO 'Y' FOR A FIELD S,F    CALLED FROM DIP,DIP1,DIEV, ETC
 K Y S Y=""
 I $G(F)=.001,$G(^DD(+$G(S),F,0))="" S Y=2 Q  ;AN IEN IS NUMERIC
D2 Q:$G(^DD(+$G(S),+$G(F),0))=""
 N %,%X,%Y,X,I,J,DITYP,DISETST,DIIT
 S %=$P(^(0),U,2),DISETST=$P(^(0),U,3),DIIT=$P(^(0),U,5,99),DITYP=""
TYPE I %["t" S DITYP=+$P(%,"t",2) I $D(^DI(.81,DITYP,0)) S Y=DITYP,%=$P(^(0),U,2),DISETST=$$GETPROP^DIETLIBF(S,F,"SET OF CODES") ;EXTENSIBLE DATA TYPE
 I '% S I="" F  S I=$O(^DI(.81,"C",I)) Q:I=""  I %[I S DITYP=$O(^(I,0)) Q  ;LOOK THRU THE ABBREVIATIONS ("N", "S", etc)
 I DITYP="",% D  Q
 . I $P($G(^DD(+%,.01,0)),U,2)["W" S Y=5 Q
 . S Y=10,Y(+%)="" Q  ;MULTIPLE
 S:DITYP="" DITYP=4 ;'FREE-TEXT' IS THE DEFAULT
 S:Y="" Y=DITYP
 I DITYP=1 S Y("D")="",DIIT=$P($P(DIIT,"%DT=",2),"""",2) S:DIIT["T"!(DIIT["R")!(DIIT="") Y("D")=Y("D")_"T" S:DIIT["S" Y("D")=Y("D")_"S" G QD
 I DITYP,"2,4,5,9"[DITYP G QD
 Q:Y=""
 I DITYP=6 S Y("T")=$S(%["D":1,%["B":2,%?.E1"J".N1","1N.E:2,%["p":7,1:4) Q
P I DITYP=7 S I=+$P(%,"P",2),%(2)="Y(" D Y S S=I,F=.01 K % G D2
V I DITYP=8 S X=0 D V2 Q
S I DITYP=3 F I=1:1 S X=$P(DISETST,";",I),X(1)=$P(X,":"),X=$P(X,":",2) Q:X=""!(X(1)="")  S Y("S","I",X(1))=X,Y("S","E",X)=X(1)
QD I $O(Y(-1)) S Y("T")=DITYP
 Q
 ;
 ;
Y S %(3)=$O(@(%(2)_"0)")) I %(3)]"",%(3)'="T" S %(2)=%(2)_%(3)_"," G Y
 S %(2)=%(2)_I,@(%(2)_")")="" Q
V2 S X=$O(^DD(S,F,"V",X)) Q:'X  S I=$P($G(^DD(S,F,"V",X,0)),U) G:'I V2
 S:'$D(Y("V"_X)) Y("V"_X)="" S %(2)="Y("_"""V"_X_"""," D Y
 D DTYP(.I,.01,.J)
 I J>0 S (Y("T"),Y("V"_X,"T"))=$S($G(J("T"))]"":J("T"),1:J) K J("T") S %X="J(",%Y=%(2)_"," D %XY^%RCR
 K %,J G V2
