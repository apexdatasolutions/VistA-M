MPIFA31B ;BP/CMC-BUILD A31 MSGS ; 7/12/16 11:03am
 ;;1.0;MASTER PATIENT INDEX VISTA;**22,24,27,28,31,25,44,46,54,59,60,64**;30 Apr 99;Build 2
 ;
 ; Integration Agreements Utilized:
 ;  START, EXC, STOP^RGHLLOG - #2796
 ;  BLDEVN, BLDPD1, BLDPID^VAFCQRY - #3630
 ;  $$PV1^VAFCSB, $$RADE^VAFCSB, $$LABE^VAFCSB, $$PHARA^VAFCSB, $$PV2^VAFCSB - #4921
TA31 ; Tasked entry point
 N TMP
 S TMP=$$A31(DFN)
 Q
 ;
A31(DFN) ;BUILD AND SEND A31
 I $P($$SITE^VASITE,"^",3)=200 Q 1
 ; ^ PATCH 25 IF this is the FHIE Host system, don't build A31 messages
 N RESLT,CNT,MPI,EVN,TCNT,ERR,PD1,PID,EN,LAB,PV1,PV2,RAD,PRE,OLD,ZPD
 N ZEL,ZSP,SIDG,NAMECOMP,DODF,DODD,DODNP,DODOPT,DODDISDT
 K HLA("HLA"),HLA("HLS")
 Q:$E($$GETICN^MPIF001(DFN),1,3)=$P($$SITE^VASITE(),"^",3) 0
 ; ^ LOCAL ICN DON'T SEND
 Q:+$$GETICN^MPIF001(DFN)=-1 0
 ; ^ NO ICN DON'T SEND
 S CNT=1
 D INIT^HLFNC2("MPIF ADT-A31 SERVER",.HL)
 I $O(HL(""))="" Q "-1^"_$P(HL,"^",2)
 S HLECH=HL("ECH"),HLFS=HL("FS"),COMP=$E(HL("ECH"),1),REP=$E(HL("ECH"),2),SUBCOMP=$E(HL("ECH"),4)
 S ERR="",TCNT=0
 D BLDEVN^VAFCQRY(DFN,"1,2",.EVN,.HL,"A31",.ERR)
 Q:ERR'="" ERR
 D BLDPID^VAFCQRY(DFN,1,"ALL",.PID,.HL,.ERR) ;**25
 Q:ERR'="" ERR
 D BLDPD1^VAFCQRY(DFN,"3",.PD1,.HL,.ERR) ;**44 NEW PD1 SEGMENT VALUES -- SENDING CMOR AGAIN AS WITHOUT 40 ON THE MPI SIDE THIS IS A PROBLEM.
 ;S PD1=$$PD1^VAFCSB ;**44 NEW PD1 SEGMENT VALUES -- IMDQ DECIDED NOT TO SEND PREFERRED FACILITY 9/7/06
 N X S X="VAFCSB" X ^%ZOSF("TEST") I $T D
 .;**44 VAFCSB coming in with DG*5.3*707
 .S PV1=$$PV1^VAFCSB ;**44 PV1 segment
 .S RAD=$$RADE^VAFCSB ;**44 OBX FOR LAST RADIOLOGY EXAM
 .S LAB=$$LABE^VAFCSB ;**44 OBX FOR LAST LAB EXAM
 .S PRE=$$PHARA^VAFCSB ;**44 OBX FOR ACTIVE PRESCRIPTIONS
 .S SIDG=$$SIG^VAFCSB(DFN)  ;**59 OBX FOR SELF ID GENDER
 .S NAMECOMP=$$NAMEOBX^VAFCSB(DFN) ;**59,MVI_3975 (mko): OBX for Patient .01 and Name Components
 .S PV2=$$PV2^VAFCSB ;**44 PV2 segment
 S DODF=$$DODF^VAFCSB(DFN)  ;**60 OBX for DOD fields
 ;**64 Story 323009 (ckn) : OBX for Additional DOD fields
 S DODD=$$DODD^VAFCSB(DFN)  ;Date Of Death Documents
 S DODOPT=$$DODOPT^VAFCSB(DFN)  ; Date Of Death Option used
 S DODNP=$$DODNTPRV^VAFCSB(DFN)  ; Date Of Death Notification provider
 S OLD=$$OLD ;**54,MVI_913: OBX to mark an older record
 S ZPD=$$EN1^VAFHLZPD(DFN,"1,17,21,34") ;25 ;**44 ADDED PSEUDO SSN REASON (34), 1 and 21 TO ZPD SEGMENT
 S ZSP=$$EN^VAFHLZSP(DFN)  ;**59
 S ZEL=$$EN^VAFHLZEL(DFN,"1,8,9",1)  ;**59
 S EN=1
 S HLA("HLS",EN)=EVN(1),EN=EN+1
 S CNT=0 F  S CNT=$O(PID(CNT)) Q:CNT=""  D
 .I CNT=1 S HLA("HLS",EN)=PID(CNT)
 .I CNT>1 S HLA("HLS",EN,CNT-1)=PID(CNT)
 S EN=EN+1
 I $G(PD1(1))'="" S HLA("HLS",EN)=PD1(1),EN=EN+1 ;**44 only pass PD1 segment if has values -- SENDING CMOR AGAIN AS WITHOUT 40 ON MPI SIDE THIS IS A PROBLEM.
 I $G(PV1)'="" S HLA("HLS",EN)=PV1,EN=EN+1 ;**44 only pass PV1 segment if has values
 I $G(PV2)'="" S HLA("HLS",EN)=PV2,EN=EN+1 ;**44 only pass PV2 segment if has values
 I $G(RAD)'="" S HLA("HLS",EN)=RAD,EN=EN+1 ;**44 only pass RADIOLOGY IN OBX segment if has values
 I $G(LAB)'="" S HLA("HLS",EN)=LAB,EN=EN+1 ;**44 only pass LAB IN OBX segment if has values
 I $G(PRE)'="" S HLA("HLS",EN)=PRE,EN=EN+1 ;**44 only pass PRESCRIPTION IN OBX segment if has values
 I $G(OLD)'="" S HLA("HLS",EN)=OLD,EN=EN+1 ;**54,MVI_913: pass OLDER RECORD in OBX if flagged as such
 I $G(SIDG)'="" S HLA("HLS",EN)=SIDG,EN=EN+1  ;**59
 I $G(DODF)'="" S HLA("HLS",EN)=DODF,EN=EN+1  ;**60 MVI_4733 (ckn) Pass DOD fields in OBX
 ;**64 Story 323009 (ckn) : Pass additional DOD fields in OBX
 I $G(DODD)'="" S HLA("HLS",EN)=DODD,EN=EN+1
 I $G(DODOPT)'="" S HLA("HLS",EN)=DODOPT,EN=EN+1
 I $G(DODNP)'="" S HLA("HLS",EN)=DODNP,EN=EN+1
 I $G(NAMECOMP)'="" S HLA("HLS",EN)=NAMECOMP,EN=EN+1 ;**59,MVI_3975 (mko): pass NAME COMPONENTS in OBX
 S HLA("HLS",EN)=ZPD,EN=EN+1 ;**44 ZPD SEGMENT
 I $G(ZSP)'="" S HLA("HLS",EN)=ZSP,EN=EN+1 ;**59 ZSP segment
 I $G(ZEL)'="" S HLA("HLS",EN)=ZEL,EN=EN+1 ;**59 ZEL segment
 S MPI=$$MPILINK^MPIFAPI()
 Q:$P($G(MPI),"^")=-1 "-1^No logical link defined for the MPI"
 S HLL("LINKS",1)="MPIF ADT-A31 CLIENT^"_MPI
 D GENERATE^HLMA("MPIF ADT-A31 SERVER","LM",1,.MPIFRSLT,"","")
 S RESLT=$S(+MPIFRSLT:MPIFRSLT,1:$P(MPIFRSLT,"^",3))
 S ^XTMP("MPIFA31%"_DFN,0)=$$FMADD^XLFDT(DT,5)_"^"_DT_"^"_"MPIA31 msg to MPI for DFN "_DFN
 I '+RESLT S ^XTMP("MPIFA31%"_DFN,"MPI",0)="A"
 K HLA,HLL("LINKS"),COMP,REP,SUBCOMP,HLA("HLA"),HLA("HLS"),MPIFRSLT
 ;**44 REMOVED HLEID, HLECH AND HLFS from Kill line above
 Q RESLT
 ;
RES ;
 N NXT,DFN,ERROR,CODE S CODE=""
 F NXT=1:1 X HLNEXT Q:HLQUIT'>0  D
 .I $E(HLNODE,1,3)="MSA" S DFN=$P($P(HLNODE,HL("FS"),7),"=",2),ERROR=$P(HLNODE,HL("FS"),4),CODE=$P(HLNODE,HL("FS"),2)
 .I $E(HLNODE,1,3)="MSA"&(CODE="AR") D
 ..; ERROR RETURNED IN MSA - LOG EXCEPTION
 ..D START^RGHLLOG(HLMTIEN,"","")
 ..;**44 check which type of exception to be logged
 ..D EXC^RGHLLOG(234,ERROR,DFN) ;**46
 ..D STOP^RGHLLOG(0)
 K:$G(DFN)>0 ^XTMP("MPIF OLD RECORDS",DFN) ;**54,MVI_913: Delete the old record designation
 K ^XTMP("MPIFA31%"_DFN)
 Q
OLD() ; Return OBX segment to flag a record as "old"
 ;**54,MVI_913: New subroutine
 Q $S($D(^XTMP("MPIF OLD RECORDS",DFN))#2:"OBX"_HL("FS")_HL("FS")_"CE"_HL("FS")_"OLDER RECORD"_HL("FS")_HL("FS")_"Y",1:"")
