XUMFQR ;ISS/RAM - Master File Query Response ;02/10/2017
 ;;8.0;KERNEL;**407,502,676**;Jul 10, 1995;Build 8
 ;Per VHA Directive 10-92-142, this routine should not be modified
 ;
 Q
 ;
MAIN ; -- main
 ;
 N FIELD1,IDX,IDX1,NAME1,SUBFILE1,DATA1,IEN1,TYP1,MKEY,MKEY1,TYP,VUID,VUID1
 N MFI,SEQ,NAME,QRD,SEQ,SUBFILE,IEN,CNT,DATA,ERROR,SORTBY,FILTERBY,FILTER,ERRCNT
 ;
 D INIT,PROCESS,MFR,SEND,EXIT
 ;
 Q
 ;
INIT ; -- initialize
 ;
 K ^TMP("HLA",$J)
 ;
 S ERROR=0,CNT=1,ERRCNT=0
 ;
 S HLFS=HL("FS"),HLCS=$E(HL("ECH")),HLSCS=$E(HL("ECH"),4)
 ;
 Q
 ;
PROCESS ; -- pull message text
 ;
 F  X HLNEXT Q:HLQUIT'>0  D
 .Q:$P(HLNODE,HLFS)=""
 .Q:"^MSH^MSA^QRD^"'[(U_$P(HLNODE,HLFS)_U)
 .D @($P(HLNODE,HLFS))
 ;
 Q
 ;
MSH ; -- MSH segment
 ;
 Q
 ;
QRD ; -- QRD segment
 ;
 Q:ERROR
 ;
 S MFI=$P(HLNODE,HLFS,10),FILTER=$P(MFI,HLCS,2),MFI=$P(MFI,HLCS)
 I MFI="" S ERROR="1^MFI not resolved HLNODE: "_$TR(HLNODE,HLFS,"#") Q
 S IFN=$O(^DIC(4.001,"MFID",MFI,0))
 I 'IFN S ERROR="1^IFN not resolved HLNODE: "_$TR(HLNODE,HLFS,"#") Q
 I '$$VFILE^DILFD(IFN) S ERROR="1^invalid file number" Q
 S DATA=$G(^DIC(4.001,+IFN,0)),SORTBY=$P(DATA,U,8),FILTERBY=$P(DATA,U,9)
 ;
 ; -- get root of file
 S ROOT=$$ROOT^DILFD(IFN,,1)
 ;
 S QRD=HLNODE
 ;
 Q
 ;
MFR ; -- response
 ;
 D MSA,QRD1,MFI,MFE
 ;
 Q
 ;
MSA ; -- Acknowledgement
 ;
 N X
 S X="MSA"_HLFS_$S(ERROR:"AE",1:"AA")_HLFS_HL("MID")_HLFS_$P(ERROR,U,2)
 S ^TMP("HLA",$J,CNT)=X
 S CNT=CNT+1
 ;
 Q
 ;
QRD1 ; -- query definition segment
 ;
 Q:ERROR
 ;
 S ^TMP("HLA",$J,CNT)=$G(QRD)
 S CNT=CNT+1
 ;
 Q
 ;
MFI ; master file identifier segment
 ;
 Q:ERROR
 ;
 S ^TMP("HLA",$J,CNT)=$$MFI^XUMFMFI(MFI,"Standard Terminology","MUP",$$NOW^XLFDT,$$NOW^XLFDT,"NE")
 S CNT=CNT+1
 ;
 Q
 ;
MFE ; master file entry segment
 ;
 Q:ERROR
 ;
 S VUID=0 F  S VUID=$O(@ROOT@($S(SORTBY'="":SORTBY,1:"AMASTERVUID"),VUID)) Q:'VUID  D  Q:ERROR
 .I SORTBY="" S IEN=$O(@ROOT@("AMASTERVUID",VUID,1,0)) Q:'IEN
 .I SORTBY'="" S IEN=$O(@ROOT@(SORTBY,VUID,0)) Q:'IEN
 .;
 .I FILTER'="" D  Q:VALUE'=FILTER
 ..S DATA=$G(^DIC(4.001,+IFN,0)),FILTERBY=$P(DATA,U,9)
 ..I FILTERBY="" S VALUE="ERROR" Q  ;add error processing
 ..S IDX=$O(^DIC(4.001,+IFN,1,"B",FILTERBY,0))
 ..S DATA=$G(^DIC(4.001,+IFN,1,+IDX,0)),FIELD=$P(DATA,U,2)
 ..S TYP=$P(DATA,U,3),TYP=$$GET1^DIQ(771.4,(+TYP_","),.01)
 ..S VUID1=$P(DATA,U,13)
 ..S VALUE=$$VVAL(IFN,IEN_",",FIELD,$G(VUID1),TYP)
 .;
 .S ^TMP("HLA",$J,CNT)=$$MFE^XUMFMFE("MUP","",$$NOW^XLFDT,MFI_"@"_VUID)
 .S CNT=CNT+1
 .D ZRT
 ;
 Q
 ;
ZRT ; data segments
 ;
 Q:ERROR
 ;
 S SEQ=0
 F  S SEQ=$O(^DIC(4.001,IFN,1,"ASEQ",SEQ)) Q:'SEQ  D
 .S IDX=$O(^DIC(4.001,IFN,1,"ASEQ",SEQ,0)) Q:'IDX
 .S DATA=$G(^DIC(4.001,+IFN,1,+IDX,0)),NAME=$P(DATA,U)
 .S TYP=$P(DATA,U,3),TYP=$$GET1^DIQ(771.4,(+TYP_","),.01)
 .S FIELD=$P(DATA,U,2),SUBFILE=$P(DATA,U,4),MKEY=$P(DATA,U,6)
 .S VUID1=$P(DATA,U,13),WP=$P(DATA,U,16)
 .;
 .I NAME="Status" D  Q
 ..S:IFN'=757.33 ^TMP("HLA",$J,CNT)="ZRT"_HLFS_NAME_HLFS_(+$P($$GETSTAT^XTID(IFN,,IEN_","),U))
 ..S:IFN=757.33 ^TMP("HLA",$J,CNT)="ZRT"_HLFS_NAME_HLFS_$$STAT^XUMF502
 ..S CNT=CNT+1
 .;
 .I WP D WP Q
 .;
 .I SUBFILE D SUBFILE Q
 .;
 .S VALUE=$$VALUE(IFN,IEN_",",FIELD,VUID1,TYP) ;Q:VALUE=""
 .;
 .S ^TMP("HLA",$J,CNT)="ZRT"_HLFS_NAME_HLFS_VALUE
 .S CNT=CNT+1
 ;
 Q
 ;
SUBFILE ;
 ;
 Q:ERROR
 ;
 I NAME="Status" D  Q
 .S:IFN'=757.33 ^TMP("HLA",$J,CNT)="ZRT"_HLFS_NAME_HLFS_+$$GETSTAT^XTID(IFN,,IEN_",")
 .S:IFN=757.33 ^TMP("HLA",$J,CNT)="ZRT"_HLFS_NAME_HLFS_$$STAT^XUMF502
 .S CNT=CNT+1
 ;
 N ROOT
 ;
 S ROOT=$$ROOT^DILFD(SUBFILE,(","_IEN_","),1)
 ;
 I MKEY="" S ERROR="1^null lookup column parameter for subfile: "_SUBFILE Q
 ;
 S IEN1=0
 F  S IEN1=$O(@ROOT@(IEN1)) Q:'IEN1  D  Q:ERROR
 .;
 .I $D(^DIC(4.001,IFN,1,IDX,1,"ASEQ1")) D SUBREC Q
 .;
 .S VALUE=$$VALUE(SUBFILE,IEN1_","_IEN_",",FIELD,VUID1,TYP) ;Q:VALUE=""
 .;
 .S ^TMP("HLA",$J,CNT)="ZRT"_HLFS_NAME_HLFS_VALUE
 .S CNT=CNT+1
 ;
 Q
 ;
SUBREC ; -- sub-records
 ;
 Q:ERROR
 ;
 N SEQ1,FIELD1,NAME1,VUID2,TYP2
 ;
 S SEQ1=0
 F  S SEQ1=$O(^DIC(4.001,IFN,1,IDX,1,"ASEQ1",SEQ1)) Q:'SEQ1  D  Q:ERROR
 .S IDX1=$O(^DIC(4.001,IFN,1,IDX,1,"ASEQ1",SEQ1,0))
 .;
 .S NAME1=$P(^DIC(4.001,IFN,1,IDX,1,IDX1,0),U,2)
 .I NAME1="" S ERROR="1^subrecord sequence name missing SUBFILE : "_SUBFILE Q
 .S FIELD1=$P(^DIC(4.001,IFN,1,IDX,1,IDX1,0),U,3)
 .I FIELD1="" S ERROR="1^subrecord sequence number missing SUBFILE : "_SUBFILE Q
 .S VUID2=$P(^DIC(4.001,IFN,1,IDX,1,IDX1,0),U,4)
 .S TYP2=$P(^DIC(4.001,IFN,1,IDX,1,IDX1,0),U,5)
 .;
 .S VALUE=$$VALUE(SUBFILE,IEN1_","_IEN_",",FIELD1,VUID2,TYP2) ;Q:VALUE=""
 .;
 .S ^TMP("HLA",$J,CNT)="ZRT"_HLFS_NAME1_HLFS_VALUE
 .S CNT=CNT+1
 ;
 Q
 ;
SEND ; -- send HL7 message
 ;
 X:$D(^DIC(4.001,IFN,6))#2 ^DIC(4.001,IFN,6) ;p676 requested from the STS team - Randall Stewart and Jeff Udell
 S HLP("PRIORITY")="I"
 D GENACK^HLMA1(HL("EID"),HLMTIENS,HL("EIDS"),"GM",1,.HLRESLT)
 ;
 ; check for error
 I ($P($G(HLRESLT),U,3)'="") D  Q
 .S ERROR=1_U_$P(HLRESLT,HLFS,3)_U_$P(HLRESLT,HLFS,2)_U_$P(HLRESLT,U)
 ;
 ; successful call, message ID returned
 S ERROR="0^"_$P($G(HLRESLT),U,1)
 ;
 Q
 ;
EXIT ; -- exit
 ;
 D CLEAN^DILF
 ;
 K ^TMP("HLA",$J)
 ;
 Q
 ;
WP ;
 ;
 N WP,I,J
 ;
 S I=$$GET1^DIQ(IFN,IEN_",",FIELD,,"WP")
 ;
 Q:'$D(WP)
 ;
 S ^TMP("HLA",$J,CNT)="ZRT"_HLFS_NAME_HLFS_$G(WP(1))
 ;
 S I=1,J=1
 F  S I=$O(WP(I)) Q:'I  D
 .S ^TMP("HLA",$J,CNT,J)=WP(I)
 .S J=J+1
 ;
 S CNT=CNT+1
 ;
 Q
 ;
ESC(VALUE) ;
 ;
 I VALUE["^" F  Q:VALUE'["^"  D
 .S VALUE=$P(VALUE,"^")_"\F\"_$P(VALUE,"^",2,9999)
 I VALUE["&" F  Q:VALUE'["&"  D
 .S VALUE=$P(VALUE,"&")_"\T\"_$P(VALUE,"&",2,9999)
 ;
 Q VALUE
 ;
VVAL(IFN,IENS,FIELD,VUID,TYP) ;
 ;
 Q:IFN="" "" Q:FIELD="" "" Q:IENS="" ""
 ;
 S:$G(TYP)="" TYP="ST"
 S VUID=$S($G(VUID)'="":":99.99",1:"")
 I IFN=757.33,$G(VUID)'="" S VUID=":5"
 ;
 S VALUE=$$GET1^DIQ(IFN,IENS,FIELD_VUID) Q:VALUE="" ""
 ;S VALUE=$$GET1^DIQ(IFN,IENS,FIELD) Q:VALUE="" ""
 S VALUE=$$DTYP^XUMFP(VALUE,TYP,HLCS,1)
 S VALUE=$$ESC(VALUE)
 ;
 ;I IFN=757.32,FIELD=.02 Q $$MAPDEF
 ;
 ;Q $$VAL^XUMF0(IFN,FIELD,VUID,VALUE,IENS)
 ;
 Q VALUE
 ;
VALUE(IFN,IENS,FIELD,VUID,TYP) ;
 ;
 Q:IFN="" "" Q:FIELD="" "" Q:IENS="" ""
 ;
 S:$G(TYP)="" TYP="ST"
 ;
 S VALUE=$$GET1^DIQ(IFN,IENS,FIELD) Q:VALUE="" ""
 S VALUE=$$DTYP^XUMFP(VALUE,TYP,HLCS,1)
 S VALUE=$$ESC(VALUE)
 ;
 I IFN=757.33,FIELD=.02 Q $$MAPDEF
 ;
 Q VALUE
 ;
MAPDEF() ;
 ;
 N X,Y
 S X=$O(^LEX(757.32,"B",VALUE,0)) Q:'X 0
 S Y=$G(^LEX(757.32,X,2))
 Q $P(Y,U,3)
 ;
