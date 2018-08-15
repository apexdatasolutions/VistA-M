DDBRAHTR ;SFISC/DCL-BROWSER ANCHOR & HYPERTEXT PROCESSOR REVERSE TAB ;NOV 04, 1996@13:52
 ;;22.2;VA FileMan;;Jan 05, 2016;Build 42
 ;;Per VA Directive 6402, this routine should not be modified.
 ;;Submitted to OSEHRA 5 January 2015 by the VISTA Expertise Network.
 ;;Based on Medsphere Systems Corporation's MSC FileMan 1051.
 ;;Licensed under the terms of the Apache License, Version 2.0.
 ;
 Q
REVTAB ; Reverse Tab
 S DDBRHT=$G(DDBRHT)
 I $P(DDBRHT,DDGLDEL,4)'=DDBSA S DDBRHT=""
 N LIM,ULCLR,ULNEW
 S LIM=DDBL,ULCLR=DDBRHT'>0,ULNEW=0
PSR ;S DDBL=$S(DDBL'>DDBSRL:0,1:DDBL-DDBSRL)
 D SDLR($S(DDBL'>DDBSRL:0,1:DDBL-DDBSRL)+1)
 Q
SDLR(L) N I,J,SFR,STO
 I +DDBRHT<L!(+DDBRHT>LIM) S DDBRHT="",ULCLR=1
 S DX=0,SFR=$P(DDBSY,";",3),STO=$P(DDBSY,";",2),L=L+DDBSRL
 F I=SFR:-1:STO S L=L-1 Q:$S(DDBZN:$D(@DDBSA@(L,0)),1:$D(@DDBSA@(L)))
 S (SFR,DY)=I X IOXY
 F I=SFR:-1:STO D
 .I $D(@DDBSA@(L)) S X=$S(DDBZN:@DDBSA@(L,0),1:@DDBSA@(L)),L=L-1
 .E  Q
 .I ULCLR,ULNEW Q
 .Q:$L(X,"$.%")'>2
 .S WRF=0,J=$P(X,"$.%",$P(DDBRHT,DDGLDEL,3)),X=$$HTD(X,L+1)
 .I +DDBRHT,J=$P(DDBRHT,DDGLDEL,2) S ULCLR=1,WRF=1
 .Q:'WRF
 .S DY=I
 .X IOXY
 .W $P(DDGLCLR,DDGLDEL),X
 .Q
 ;
 I 'ULNEW S DDBRHT=""
 Q
 ;
HTD(X,WPIEN) ;text
 Q:'DDBRHTF $E(X,DDBSF,DDBST)
 Q:$L(X,"$.")'>2 X
 S:$L(X,"$.$")>2 X=$$HT(X,"$.$","","","","","","")
 S:$L(X,"$.%")>2 X=$$HT(X,"$.%",$P(DDGLVID,DDGLDEL),$P(DDGLVID,DDGLDEL,3),(WPIEN'>+DDBRHT!(DDBRHT="")),$S(WPIEN=+DDBRHT:$P(DDBRHT,DDGLDEL,3)-2,1:$L(X,"$.%")-1),$P(DDGLVID,DDGLDEL,4),$P(DDGLVID,DDGLDEL,5))
 Q X
 ;
HT(Y,D,C1,C2,UF,UP,U1,U2) ;
 Q:$L(Y,D)'>2 Y
 N YL,I,Y1
 S YL=$L(Y,D),Y1=""
 F I=1:1:YL D
 .S:I#2 Y1=Y1_$P(Y,D,I)
 .I UF,I=UP,'ULNEW D  Q
 ..S Y1=Y1_C1_U1_$P($P(Y,D,I),"^",$S($P(Y,D,I)["$CREF$":$L($P(Y,D,I),"^"),1:2),255)_U2_C2,ULNEW=1,WRF=1
 ..S DDBRHT=WPIEN_DDGLDEL_$P(Y,D,I)_DDGLDEL_I_DDGLDEL_DDBSA
 .S:'(I#2) Y1=Y1_C1_$P($P(Y,D,I),"^",$S($P(Y,D,I)["$CREF$":$L($P(Y,D,I),"^"),1:2),255)_C2
 .Q
 Q Y1
