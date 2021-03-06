PXBDSTP ;ISL/JVS - DISPLAY STOP CODES FROM VISITS ;11/7/96  08:53
 ;;1.0;PCE PATIENT CARE ENCOUNTER;**11**;Aug 12, 1996
 ;
 ;
EN0 ;---Main entry point
 ;
 ;
 I $D(PXBNPOV) D DSTP4("SAME")
 I '$D(PXBNPOV) D DSTP4("BEGIN")
 Q
 ;
 ;
DSTP1 ;--Display the STOP CODE Data
 N ENTRY
 D UNDON^PXBCC
 W !,"No.",?4,"CODE",?13,"DESCRIPTION",?75,$C(32)
 W IOEDEOP
 D UNDOFF^PXBCC
 ;
 ;
 S J=0 F  S J=$O(PXBSAM(J)) Q:J=""  D
 .S ENTRY=$G(PXBSAM(J)) I $D(PXBNSTP($P(ENTRY,"^",1))) S $P(ENTRY,"^",1)=$P(ENTRY,"^",1)_"*"
 .S ENTRY=$G(PXBSAM(J)) I $D(PXBNSTP($P(ENTRY,"^",2))) S $P(ENTRY,"^",1)=$P(ENTRY,"^",1)_"*"
 .W !,J,?4,$P(ENTRY,"^",1),?13,$E($P(ENTRY,"^",2),1,30)
 ;---Write no entries if none exsist
 I '$D(PXBSAM) D NONE^PXBUTL(5)
 Q
 ;
 ;
 ;
DSTP4(SIGN) ;--Display the STOP CODE Data
 ;
 ;SIGN=
 ; '+' add 10 to the starting point in ^TMP("PXBDPOV",$J)
 ; '-' subtract 10 from the starting point but not less that 0
 ; 'BEGIN' start at the beginning
 ; 'SAME' start stays where it's at
 ; '3'--any number set start to that nuMBER
 ;
 N PXBSTART
 I SIGN="BEGIN" S ^TMP("PXBDSTP",$J,"START")=0,PXBSTART=0
 I SIGN="SAME" S PXBSTART=^TMP("PXBDSTP",$J,"START")
 I SIGN="+" S PXBSTART=($G(^TMP("PXBDSTP",$J,"START"))+(10)) S:PXBSTART'<PXBCNT PXBSTART=(PXBCNT-(10)) S ^TMP("PXBDSTP",$J,"START")=PXBSTART
 I SIGN="-" S PXBSTART=$G(^TMP("PXBDSTP",$J,"START"))-10,^TMP("PXBDSTP",$J,"START")=PXBSTART I PXBSTART<0 S PXBSTART=0 S ^TMP("PXBDSTP",$J,"START")=0
 I +SIGN>0&(SIGN#10) S PXBSTART=$P((SIGN/10),".")*10 S:PXBSTART<10 PXBSTART=0  Q:^TMP("PXBDSTP",$J,"START")=PXBSTART  S ^TMP("PXBDSTP",$J,"START")=PXBSTART
 I +SIGN>0&'(SIGN#10) S PXBSTART=(($P((SIGN/10),".")*10)-10) S:PXBSTART<10 PXBSTART=0 Q:^TMP("PXBDSTP",$J,"START")=PXBSTART  S ^TMP("PXBDSTP",$J,"START")=PXBSTART
 ;
 ;
 I SIGN'="BEGIN" D LOC^PXBCC(3,0) W IOEDEOP
 ;
 D HEAD
HEAD1 ;--HEADER ON LIST
 ;
 N ENTRY,J
 D UNDON^PXBCC
 W !,"No.",?4,"CODE",?13,"DESCRIPTION",?75,$C(32)
 W IOEDEOP
 D UNDOFF^PXBCC
 ;
 ;
 S J=PXBSTART F  S J=$O(PXBSAM(J)) Q:J=""  Q:J=(PXBSTART+(11))  D
 .S ENTRY=$G(PXBSAM(J)) I $D(PXBNSTP($P(ENTRY,"^",1))) S $P(ENTRY,"^",1)=$P(ENTRY,"^",1)_"*"
 .S ENTRY=$G(PXBSAM(J)) I $D(PXBNSTP($P(ENTRY,"^",2))) S $P(ENTRY,"^",1)=$P(ENTRY,"^",1)_"*"
 .W !,J,?4,$P(ENTRY,"^",1),?13,$E($P(ENTRY,"^",2),1,30)
 I SIGN'="BEGIN" W !!
 I '$D(PXBSAM) D NONE^PXBUTL(5)
 Q
HEAD ;--HEADER ON LIST
 S HEAD="- - E N C O U N T E R   S T O P   C O D E S - -"
 W IOINHI,!,IOCUU,?(IOM-$L(HEAD))\2,HEAD
 W IOINLOW,IOELEOL K HEAD
 Q
 ;
