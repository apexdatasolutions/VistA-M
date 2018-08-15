PXCEDATE ;ISL/dee - Used for things related to Date and Time ;6/20/96
 ;;1.0;PCE PATIENT CARE ENCOUNTER;**47,161,219**;Aug 12, 1996;Build 5
 ;;Per VA Directive 6402, this routine should not be modified.
 Q
 ;
NEWDATE ;
 D ASKDATE(.PXCEDBEG,.PXCEDEND)
 D DATE9S
 D MAKELIST^PXCENEW
 Q
 ;
ASKDATE(DBEG,DEND) ;
 N NEWDBEG,NEWDEND,PXCEOBEG,PXCEOEND
 S PXCEOBEG=DBEG
 S NEWDBEG=$P($$EDATE("",DBEG),".")
 Q:NEWDBEG<0
 S PXCEOEND=DEND
 S NEWDEND=$P($$LDATE("",DEND),".")
 Q:NEWDEND<0
 S DBEG=$S(NEWDBEG>0:NEWDBEG,1:DBEG)
 S DEND=$S(NEWDEND>0:NEWDEND,1:DEND)
 I DEND<DBEG S DEND=PXCEOEND,DBEG=PXCEOBEG W !,"The Ending Date: "_$$FMTE^XLFDT(NEWDEND)_" cannot be prior to the Start Date: "_$$FMTE^XLFDT(NEWDBEG)_"" D PAUSE^VALM1
 ;I DEND<DBEG S NEWDBEG=DEND,DEND=DBEG,DBEG=NEWDBEG --- removed in 219
 ;D DATE9S  This must be called by the caller if it is wanted.
 Q
 ;
EDATE(PRMPT,DFLT) ; Get early date
 N %DT,X,Y
 S %DT="AEX"
 S %DT("A")=" Start "_$S($L($G(PRMPT)):PRMPT_" ",1:"")_"Date: "
 S %DT("B")=$S($L($G(DFLT)):$$FMTE^XLFDT(DFLT,5),1:"T-30")
 D ^%DT
 Q Y
 ;
LDATE(PRMPT,DFLT) ; Get late date
 N %DT,X,Y
 S %DT="AEX"
 S %DT("A")="Ending "_$S($L($G(PRMPT)):PRMPT_" ",1:"")_"Date: "
 S %DT("B")=$S($L($G(DFLT)):$$FMTE^XLFDT(DFLT,5),1:"TODAY")
 D ^%DT
 Q Y
 ;
DATE9S ;
 S PXCE9END=9999999-PXCEDEND
 S PXCE9BEG=9999999-PXCEDBEG+.999999
 S SDBEG=PXCEDBEG
 S SDEND=PXCEDEND
 Q
 ;
DATE(INDATE) ;Change internal date to an external date.
 N OUTDATE,AT
 Q:INDATE'>0 ""
 S OUTDATE=$$FMTE^XLFDT(INDATE,5)
 S AT=$F(OUTDATE,"@")
 Q $E(OUTDATE,1,(AT-2))_"  "_$P($E(OUTDATE,AT,99),":",1,2)
 ;
