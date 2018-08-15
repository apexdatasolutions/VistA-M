DIFROMSU ;SCISC/DCL-DIFROM SERVER BUILD "FIA" SUBSCRIPTS IN TRANSPORT ARRAY ;6/2/96  18:48
 ;;22.2;VA FileMan;;Jan 05, 2016;Build 42
 ;;Per VA Directive 6402, this routine should not be modified.
 ;;Submitted to OSEHRA 5 January 2015 by the VISTA Expertise Network.
 ;;Based on Medsphere Systems Corporation's MSC FileMan 1051.
 ;;Licensed under the terms of the Apache License, Version 2.0.
 ;
FIA(DIFRFILE,DIFRFLG,DIFRPFL,DIFRTAR,DIFR222,DIFR223,DIFRDSCR,DIFRVER,DIFRMSGR) ;
 ;FILE,FLAGS,PARTIAL_FILE_LIST,TARGET_ARRAY_ROOT,ANSWERS,DD_SCREEN,DATA_SCREEN,VERSION,MSG_ARRAY
 I '$D(DIQUIET) N DIQUIET S DIQUIET=1
 I '$D(DIFM) N DIFM S DIFM=1
 I $G(U)'="^"!($G(DT)'>0)!($G(DTIME)'>0)!('$D(DUZ)) D DT^DICRW
 N DIFRFD,DIFRFE,DIFRX,FIELD,FIELDNR,DIFRTA,DIFRP,DIFR00
 S DIFRTA=$NA(@DIFRTAR@("FIA"))
 I $G(DIFRFILE)'>0 D BLD^DIALOG(9542) Q
 I '$D(^DIC(DIFRFILE)) D BLD^DIALOG(9539,DIFRFILE) Q
 I $P($G(DIFR222),"^",3)'="p" G F
 I $G(DIFRPFL)']"" G F
 I $D(@DIFRPFL)'>9 G F
 G F:$O(@DIFRPFL@(0))'>0
 N DIFRDDC,DIFRFLDC,DIFRTMP
 K ^TMP("FIA",$J)
 S DIFRDDC=0,DIFRTMP=$NA(^TMP("FIA",$J))
 M @DIFRTMP=@DIFRPFL
 F  S DIFRDDC=$O(@DIFRTMP@(DIFRFILE,DIFRDDC)) Q:DIFRDDC'>0  D
 .I '$D(^DD(DIFRDDC)) K @DIFRTMP@(DIFRFILE,DIFRDDC) D BLD^DIALOG(9540,DIFRDDC) Q
 .I '$O(@DIFRTMP@(DIFRFILE,DIFRDDC,0)) D  Q
 ..Q:@DIFRTMP@(DIFRFILE,DIFRDDC)="SUB"
 ..D SB^DIFROMSS(DIFRDDC,"W",$NA(@DIFRTMP@(DIFRFILE)),"SUB")
 ..Q
 .S DIFRFLDC=0
 .F  S DIFRFLDC=$O(@DIFRTMP@(DIFRFILE,DIFRDDC,DIFRFLDC)) Q:DIFRFLDC'>0  D
 ..I '$D(^DD(DIFRDDC,DIFRFLDC,0)) K @DIFRTMP@(DIFRFILE,DIFRDDC,DIFRFLDC) D  Q
 ...N DIFRX S DIFRX(1)=DIFRFLDC,DIFRX(2)=DIFRDDC
 ...D BLD^DIALOG(9541,.DIFRX)
 ...Q
 ..I $P(^DD(DIFRDDC,DIFRFLDC,0),"^",2) S DIFRX=$P(^DD(+$P(^(0),"^",2),.01,0),"^",2) D
 ...I DIFRX["W" S @DIFRTMP@(DIFRFILE,+$P(^DD(DIFRDDC,DIFRFLDC,0),"^",2))=0 Q
 ...K @DIFRTMP@(DIFRFILE,DIFRDDC,DIFRFLDC)
 ...Q
 ..Q
 .Q
 ;
 M @DIFRTA@(DIFRFILE)=@DIFRTMP@(DIFRFILE)
 K @DIFRTMP
 ;
 I $D(@DIFRTA@(DIFRFILE,DIFRFILE))=1 G F
 S @DIFRTA@(DIFRFILE,DIFRFILE)=1,DIFRFE=DIFRFILE
 ;F  S DIFRFE=$O(@DIFRTA@(DIFRFILE,DIFRFE)) Q:DIFRFE'>0  S:$P(^DD(DIFRFE,.01,0),"^",2)'["W" @DIFRTA@(DIFRFILE,DIFRFE,.01)=0
 F  S DIFRFE=$O(@DIFRTA@(DIFRFILE,DIFRFE)) Q:DIFRFE'>0  D
 .S @DIFRTA@(DIFRFILE,DIFRFE)=$D(@DIFRTA@(DIFRFILE,DIFRFE))>9
 .N DIFRX,DIFRY
 .S DIFRY=$$UP^DIQGU(DIFRFE,.DIFRX)
 .Q:'$D(DIFRX)
 .;K DIFRX($O(DIFRX(""))) <<REMOVED IN PATCH 10>>
 .M @DIFRTAR@("UP",DIFRFILE,DIFRFE)=DIFRX
 .Q
 S DIFRFE=DIFRFILE
 F  S DIFRFE=$O(@DIFRTA@(DIFRFILE,DIFRFE)) Q:DIFRFE'>0  D:'^(DIFRFE)!($D(@DIFRTA@(DIFRFILE,DIFRFE,.01)))
 .Q:'$D(^DD(DIFRFE,0,"UP"))
 .N DIFRUP,DIFRFLD
 .S DIFRUP=^DD(DIFRFE,0,"UP"),DIFRFLD=$O(^DD(DIFRUP,"SB",DIFRFE,0))
 .Q:$G(@DIFRTA@(DIFRFILE,DIFRUP))=0!($D(@DIFRTA@(DIFRFILE,DIFRUP,DIFRFLD)))
 .S @DIFRTA@(DIFRFILE,DIFRUP,DIFRFLD)=""
 .Q:$D(@DIFRTA@(DIFRFILE,DIFRUP))#2
 .S @DIFRTA@(DIFRFILE,DIFRUP)=1
 .Q
 ;
 G G
F S @DIFRTA@(DIFRFILE,DIFRFILE)=0,DIFRFE=0
 S:$P(DIFR222,"^",3)'="f" $P(DIFR222,"^",3)="f"
E F  S DIFRFE=$O(@DIFRTA@(DIFRFILE,DIFRFE)) Q:DIFRFE'>0  D
 .S DIFRFD=0
 .F  S DIFRFD=$O(^DD(DIFRFE,"SB",DIFRFD)) Q:DIFRFD'>0  S @DIFRTA@(DIFRFILE,DIFRFD)=0
 .Q
G S @DIFRTA@(DIFRFILE)=$P(^DIC(DIFRFILE,0),"^")
 S (DIFR00,@DIFRTA@(DIFRFILE,0))=^DIC(DIFRFILE,0,"GL")
 S @DIFRTA@(DIFRFILE,0,0)=$P(@(DIFR00_"0)"),"^",2)
 S @DIFRTA@(DIFRFILE,0,1)=$G(DIFR222)
 S @DIFRTA@(DIFRFILE,0,10)=$G(DIFR223)
 S @DIFRTA@(DIFRFILE,0,11)=$G(DIFRDSCR)
 S @DIFRTA@(DIFRFILE,0,"RLRO")=$$ROOT($P(DIFR222,"^",6))
 I $G(DIFRVER)]"" S @DIFRTA@(DIFRFILE,0,"VR")=DIFRVER
FE I $G(DIFRMSGR)]"" D CALLOUT^DIEFU(DIFRMSGR)
 Q
 ;
ERR501(DIFRFILE,DIFRFLD) ;  501 Errors
 N DIFRERRX
 S DIFRERRX("FILE")=DIFRFILE,DIFRERRX(1)=DIFRFLD
 D BLD^DIALOG(501,.DIFRERRX)
 Q
ROOT(IEN) ;Create root from DIBT(ien
 ;
 I $G(IEN)>0,$D(^DIBT(IEN,1))>9 Q "^DIBT("_IEN_",1)"
 I $G(IEN)]"" S IEN=$O(^DIBT("F"_DIFRFILE,IEN,"")) Q:IEN>0 $$ROOT(IEN)
 Q ""
