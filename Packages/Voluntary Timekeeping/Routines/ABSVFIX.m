ABSVFIX ;VAMC ALTOONA/CTB - FIX COMBINATIONS WHEN NECESSARY ;3/9/00  9:22 AM
V ;;4.0;VOLUNTARY TIMEKEEPING;**10,20**;JULY 6, 1994
 ;FIX ALL COMBINATIONS FOR ALL VOLUNTEERS
 N VOLDA,VOLNAME,COMBDA,ORGDA,SERDA,SCHDA
 S VOLNAME="" F  S VOLNAME=$O(^ABS(503330,"B",VOLNAME)) Q:VOLNAME=""  S VOLDA=0 F  S VOLDA=$O(^ABS(503330,"B",VOLNAME,VOLDA)) Q:'VOLDA  W !,$P(^ABS(503330,VOLDA,0),"^") D COMB
 W !!,"FIX OF COMBINATIONS HAS BEEN COMPLETED",!! Q
COMB S COMBDA=0 F  S COMBDA=$O(^ABS(503330,VOLDA,1,COMBDA)) Q:'COMBDA  I $D(^(COMBDA,0)) D FIX
 Q
FIX S X=^ABS(503330,VOLDA,1,COMBDA,0)
 N COMB,ORG,ORGDA,SCH,SCHDA,SER,SERDA
 S COMB=$P(X,"^",5)
 S ORG=$E(COMB,1,3) I ORG]"" S ORGDA=$O(^ABS(503334,"B",ORG,0)) S:ORGDA $P(X,"^",2)=ORGDA
 S SCH=$E(COMB,4) I SCH]"" S SCHDA=$O(^ABS(503333,"B",SCH,0)) S:SCHDA $P(X,"^",3)=SCHDA
 S SER=$E(COMB,5,9) I SER]"" S SERDA=$O(^ABS(503332,"B",SER,0)) S:SERDA $P(X,"^",4)=SERDA
 S ^ABS(503330,VOLDA,1,COMBDA,0)=X
 W "." Q
XREF ;IDENTIFY DATA PROBLEM IN FILE 503330, FIELD #.1 SUBFIELD #.01
 S N=0 F  S N=$O(^ABS(503330,N)) Q:'N  D
 . S M=0 F  S M=$O(^ABS(503330,N,4,M)) Q:'M  D
 . . S X=$P($G(^ABS(503330,N,4,M,0)),"^",1) I X=M Q
 . . I X]"",$D(^ABS(503330,N,4,"B",X,X)) Q
 . . S ^ABS(503330,N,4,"B",M,M)="",$P(^ABS(503330,N,4,M,0),"^",1)=M
 . . QUIT
 . QUIT
 QUIT
UNTERM ;LOOP THROUGH MASTER FILE AND DELETE TERMINATIONS FOR TERMINATION DATES = 3000000
 N VOLDA,STANUM,X
 S VOLDA=0 F  S VOLDA=$O(^ABS(503330,VOLDA)) Q:'VOLDA  W "." S STANUM=0 F  S STANUM=$O(^ABS(503330,VOLDA,4,STANUM)) Q:'STANUM  D
 . S X=$G(^ABS(503330,VOLDA,4,STANUM,0)) I $P(X,"^",8)="3000000" S $P(^ABS(503330,VOLDA,4,STANUM,0),"^",8)=""
 . Q
