IBRFIHLI ;TDM/DAL - Incoming HL7 messages ; 12/30/15 11:45am
 ;;2.0;INTEGRATED BILLING;**547**;21-MAR-94;Build 119
 ;;Per VA Directive 6402, this routine should not be modified.
 ;
 ;**Program Description**
 ;  This program parses each incoming HL7 message.
 ;
EN ;  Starting point - put message into a TMP global
 ;
 N ACK,BUFF,DFN,ERACT,ERCON,ERFLG,ERTXT,EVENT,HCT,HLECH,HLEID
 N HLEIDS,HLFS,HLQ,IBPRTCL,IDUZ,MGRP,MSGID,RDAT0,RIEN,SBDEP,SEG
 N SEGMT,SEGMT2,TAG,TQN,TRACE,VRFDT,DISYS,IPCT,PAYRID,PIEN,CNT
 N ERROR,IRIEN,RSTYPE,SUBID,TQIEN
 N DA,EBDA,IBFDA,II,MSGP,SYMBOL,IBSEG,PP,PRIEN,QFL,IBIEN,TQDATA,IBQFL
 N DATA,OBXDATA,PSLDATA,HLQUIT,HLNODE,HLNEXT
 ;
 S HLQUIT=0,HLNODE="",HLNEXT="D HLNEXT^HLCSUTL"
 K ^TMP($J,"IBRFIHLI")
 F SEGCNT=1:1 X HLNEXT Q:HLQUIT'>0  D
 .S CNT=0
 .S ^TMP($J,"IBRFIHLI",SEGCNT,CNT)=HLNODE
 .F  S CNT=$O(HLNODE(CNT)) Q:'CNT  D
 ..S ^TMP($J,"IBRFIHLI",SEGCNT,CNT)=HLNODE(CNT)
 ;
 ;  Get the interface user
 S IDUZ=$$FIND1^DIC(200,"","X","INTERFACE,IB RFI")
 ;   Determine which protocol to use
 S SEGMT=$G(^TMP($J,"IBRFIHLI",1,0))
 Q:$E(SEGMT,1,3)'="MSH"
 S HLFS=$E(SEGMT,4)
 S EVENT=$P(SEGMT,HLFS,9),IBPRTCL=""
 ;
 ;  The event type determines protocol
 I EVENT="EHC^E12" S IBPRTCL="IBRFI 277 IN"
 ;
 ;  Initialize the HL7 variables
 D INIT^HLFNC2(IBPRTCL,.HL)
 ;
 ;  Call the event tag
 D PROC
 ;
XIT K ^TMP($J,"IBRFIHLI"),HL,HLNEXT,HLNODE,HLQUIT,SEGCNT
 Q
 ;
PROC ; Process message
 D ^IBRFIHL1
 ;
 K ACK,BUFF,DFN,ERACT,ERCON,ERFLG,ERTXT,EVENT,HCT,HL,HLECH,HLEID
 K HLEIDS,HLFS,HLQ,IBPRTCL,IDUZ,MGRP,MSGID,RDAT0,RIEN,SBDEP,SEG
 K SEGMT,SEGMT2,TAG,TQN,TRACE,VRFDT,DISYS,IPCT,PAYRID,PIEN
 K ERROR,IRIEN,RSTYPE,SUBID,TQIEN
 K DA,EBDA,IBFDA,II,MSGP,SYMBOL,IBSEG,PP,PRIEN,QFL
 Q
