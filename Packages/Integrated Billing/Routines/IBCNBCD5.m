IBCNBCD5 ;ALB/AWC - MCCF FY14 Subscriber Display Screens ;25 Feb 2015
 ;;2.0;INTEGRATED BILLING;**528**;21-MAR-94;Build 163
 ;;Per VA Directive 6402, this routine should not be modified.
 ;
 ;Input Parameters:
 ;  See routine SBDISP^IBCNBCD4
 ;
 ; -- called from routine SBDISP^IBCNBCD4
PDIS(IBBUFDA,IBIEN,IBSIEN,IBSEL,IBV,IB1,IB2,IB3,IB4,IB5,IB6,IB7,IB8,IB9,IB10,IB11,IB12,IB13,IB14,IB15,IB16,IB17,IB18,IB19,IB20,IBHOLD,IBXHOLD) ;
 N IBFLD,IBFLDS,IBXFLD,IBTXT,IBDAT,IBBDAT,IBPDAT,IBIDAT,IBCNT,IBPRDA,IBXDAT,DIERR
 S IBCNT=0
 ;
 ; -- get buffer record data (#355.33)
 S IBFLDS="90.03;60.05;60.14;60.15;60.16;91.01;60.1;60.11;60.12;62.01",IBBUFDA=IBBUFDA_","
 D GETS^DIQ(355.33,IBBUFDA,IBFLDS,,"IBBDAT","DIERR") Q:$D(DIERR)
 ;
 ; -- get patient record data (#2)
 S IBFLDS=".01;.03;.09;.02;.111;.112;.114;.115;.116;.1173;.131",IBPRDA=IBIEN_","
 D GETS^DIQ(2,IBPRDA,IBFLDS,,"IBPDAT","DIERR") Q:$D(DIERR)
 ;
 ; -- get patient insurance data (#2.312)
 S IBFLDS="7.02;6;4.03;4.05;4.06;7.01;3.01;3.05;3.12;4.01;4.02;.2;5.01;3.06;3.07;3.08;3.09;3.1;3.13;3.11"
 D GETS^DIQ(2.312,IBSIEN,IBFLDS,,"IBIDAT","DIERR") Q:$D(DIERR)
 ;
 S IBTXT=IB1,IBFLD=90.03,IBXFLD=7.02,IBDAT=$G(IBBDAT(355.33,IBBUFDA,IBFLD)),IBXDAT=$G(IBIDAT(2.312,IBSIEN,IBXFLD)) D BD^IBCNBCD4(IBBUFDA,IBTXT,IBFLD,.IBDAT,IBSEL,IBSIEN,.IBXFLD,.IBXDAT,.IBCNT,.IBHOLD,.IBXHOLD)
 S IBTXT=IB2,IBFLD=60.05,IBXFLD=6,IBDAT=$G(IBBDAT(355.33,IBBUFDA,IBFLD)),IBXDAT=$G(IBIDAT(2.312,IBSIEN,IBXFLD)) D BD^IBCNBCD4(IBBUFDA,IBTXT,IBFLD,.IBDAT,IBSEL,IBSIEN,.IBXFLD,.IBXDAT,.IBCNT,.IBHOLD,.IBXHOLD)
 S IBTXT=IB3,IBFLD=60.14,IBXFLD=4.03,IBDAT=IBV,IBXDAT=$G(IBIDAT(2.312,IBSIEN,IBXFLD)) D BD^IBCNBCD4(IBBUFDA,IBTXT,IBFLD,.IBDAT,IBSEL,IBSIEN,.IBXFLD,.IBXDAT,.IBCNT,.IBHOLD,.IBXHOLD)
 S IBTXT=IB4,IBFLD=60.15,IBXFLD=4.05,IBDAT=$G(IBBDAT(355.33,IBBUFDA,IBFLD)),IBXDAT=$G(IBIDAT(2.312,IBSIEN,IBXFLD)) D BD^IBCNBCD4(IBBUFDA,IBTXT,IBFLD,.IBDAT,IBSEL,IBSIEN,.IBXFLD,.IBXDAT,.IBCNT,.IBHOLD,.IBXHOLD)
 S IBTXT=IB5,IBFLD=60.16,IBXFLD=4.06,IBDAT=$G(IBBDAT(355.33,IBBUFDA,IBFLD)),IBXDAT=$G(IBIDAT(2.312,IBSIEN,IBXFLD)) D BD^IBCNBCD4(IBBUFDA,IBTXT,IBFLD,.IBDAT,IBSEL,IBSIEN,.IBXFLD,.IBXDAT,.IBCNT,.IBHOLD,.IBXHOLD)
 S IBTXT=IB6,IBFLD=91.01,IBXFLD=7.01,IBDAT=$G(IBBDAT(355.33,IBBUFDA,IBFLD)),IBXDAT=$G(IBIDAT(2.312,IBSIEN,IBXFLD)) D BD^IBCNBCD4(IBBUFDA,IBTXT,IBFLD,.IBDAT,IBSEL,IBSIEN,.IBXFLD,.IBXDAT,.IBCNT,.IBHOLD,.IBXHOLD)
 S IBTXT=IB7,IBFLD=.03,IBXFLD=3.01,IBDAT=$G(IBPDAT(2,IBPRDA,IBFLD)),IBXDAT=$G(IBIDAT(2.312,IBSIEN,IBXFLD)) D BD^IBCNBCD4(IBBUFDA,IBTXT,IBFLD,.IBDAT,IBSEL,IBSIEN,.IBXFLD,.IBXDAT,.IBCNT,.IBHOLD,.IBXHOLD)
 S IBTXT=IB8,IBFLD=.09,IBXFLD=3.05,IBDAT=$G(IBPDAT(2,IBPRDA,IBFLD)),IBXDAT=$G(IBIDAT(2.312,IBSIEN,IBXFLD)) D BD^IBCNBCD4(IBBUFDA,IBTXT,IBFLD,.IBDAT,IBSEL,IBSIEN,.IBXFLD,.IBXDAT,.IBCNT,.IBHOLD,.IBXHOLD)
 S IBTXT=IB9,IBFLD=.02,IBXFLD=3.12,IBDAT=$G(IBPDAT(2,IBPRDA,IBFLD)),IBXDAT=$G(IBIDAT(2.312,IBSIEN,IBXFLD)) D BD^IBCNBCD4(IBBUFDA,IBTXT,IBFLD,.IBDAT,IBSEL,IBSIEN,.IBXFLD,.IBXDAT,.IBCNT,.IBHOLD,.IBXHOLD)
 S IBTXT=IB10,IBFLD=60.1,IBXFLD=4.01,IBDAT=$G(IBBDAT(355.33,IBBUFDA,IBFLD)),IBXDAT=$G(IBIDAT(2.312,IBSIEN,IBXFLD)) D BD^IBCNBCD4(IBBUFDA,IBTXT,IBFLD,.IBDAT,IBSEL,IBSIEN,.IBXFLD,.IBXDAT,.IBCNT,.IBHOLD,.IBXHOLD)
 S IBTXT=IB11,IBFLD=60.11,IBXFLD=4.02,IBDAT=$G(IBBDAT(355.33,IBBUFDA,IBFLD)),IBXDAT=$G(IBIDAT(2.312,IBSIEN,IBXFLD)) D BD^IBCNBCD4(IBBUFDA,IBTXT,IBFLD,.IBDAT,IBSEL,IBSIEN,.IBXFLD,.IBXDAT,.IBCNT,.IBHOLD,.IBXHOLD)
 S IBTXT=IB12,IBFLD=60.12,IBXFLD=.2,IBDAT=$G(IBBDAT(355.33,IBBUFDA,IBFLD)),IBXDAT=$G(IBIDAT(2.312,IBSIEN,IBXFLD)) D BD^IBCNBCD4(IBBUFDA,IBTXT,IBFLD,.IBDAT,IBSEL,IBSIEN,.IBXFLD,.IBXDAT,.IBCNT,.IBHOLD,.IBXHOLD)
 S IBTXT=IB13,IBFLD=62.01,IBXFLD=5.01,IBDAT=$G(IBBDAT(355.33,IBBUFDA,IBFLD)),IBXDAT=$G(IBIDAT(2.312,IBSIEN,IBXFLD)) D BD^IBCNBCD4(IBBUFDA,IBTXT,IBFLD,.IBDAT,IBSEL,IBSIEN,.IBXFLD,.IBXDAT,.IBCNT,.IBHOLD,.IBXHOLD)
 S IBTXT=IB14,IBFLD=.111,IBXFLD=3.06,IBDAT=$G(IBPDAT(2,IBPRDA,IBFLD)),IBXDAT=$G(IBIDAT(2.312,IBSIEN,IBXFLD)) D BD^IBCNBCD4(IBBUFDA,IBTXT,IBFLD,.IBDAT,IBSEL,IBSIEN,.IBXFLD,.IBXDAT,.IBCNT,.IBHOLD,.IBXHOLD)
 S IBTXT=IB15,IBFLD=.112,IBXFLD=3.07,IBDAT=$G(IBPDAT(2,IBPRDA,IBFLD)),IBXDAT=$G(IBIDAT(2.312,IBSIEN,IBXFLD)) D BD^IBCNBCD4(IBBUFDA,IBTXT,IBFLD,.IBDAT,IBSEL,IBSIEN,.IBXFLD,.IBXDAT,.IBCNT,.IBHOLD,.IBXHOLD)
 S IBTXT=IB16,IBFLD=.114,IBXFLD=3.08,IBDAT=$G(IBPDAT(2,IBPRDA,IBFLD)),IBXDAT=$G(IBIDAT(2.312,IBSIEN,IBXFLD)) D BD^IBCNBCD4(IBBUFDA,IBTXT,IBFLD,.IBDAT,IBSEL,IBSIEN,.IBXFLD,.IBXDAT,.IBCNT,.IBHOLD,.IBXHOLD)
 S IBTXT=IB17,IBFLD=.115,IBXFLD=3.09,IBDAT=$G(IBPDAT(2,IBPRDA,IBFLD)),IBXDAT=$G(IBIDAT(2.312,IBSIEN,IBXFLD)) D BD^IBCNBCD4(IBBUFDA,IBTXT,IBFLD,.IBDAT,IBSEL,IBSIEN,.IBXFLD,.IBXDAT,.IBCNT,.IBHOLD,.IBXHOLD)
 S IBTXT=IB18,IBFLD=.116,IBXFLD=3.1,IBDAT=$G(IBPDAT(2,IBPRDA,IBFLD)),IBXDAT=$G(IBIDAT(2.312,IBSIEN,IBXFLD)) D BD^IBCNBCD4(IBBUFDA,IBTXT,IBFLD,.IBDAT,IBSEL,IBSIEN,.IBXFLD,.IBXDAT,.IBCNT,.IBHOLD,.IBXHOLD)
 S IBTXT=IB19,IBFLD=.1173,IBXFLD=3.13,IBDAT=$G(IBPDAT(2,IBPRDA,IBFLD)),IBXDAT=$G(IBIDAT(2.312,IBSIEN,IBXFLD)) D BD^IBCNBCD4(IBBUFDA,IBTXT,IBFLD,.IBDAT,IBSEL,IBSIEN,.IBXFLD,.IBXDAT,.IBCNT,.IBHOLD,.IBXHOLD)
 S IBTXT=IB20,IBFLD=.131,IBXFLD=3.11,IBDAT=$G(IBPDAT(2,IBPRDA,IBFLD)),IBXDAT=$G(IBIDAT(2.312,IBSIEN,IBXFLD)) D BD^IBCNBCD4(IBBUFDA,IBTXT,IBFLD,.IBDAT,IBSEL,IBSIEN,.IBXFLD,.IBXDAT,.IBCNT,.IBHOLD,.IBXHOLD)
 Q
 ;
IDIS(IBBUFDA,IBIEN,IBSIEN,IBSEL,IBV,IB1,IB2,IB3,IB4,IB5,IB6,IB7,IB8,IB9,IB10,IB11,IB12,IB13,IB14,IB15,IB16,IB17,IB18,IB19,IB20,IBHOLD,IBXHOLD) ;
 N IBFLD,IBFLDS,IBXFLD,IBTXT,IBDAT,IBBDAT,IBPDAT,IBIDAT,IBCNT,IBXDAT
 S IBCNT=0
 ;
 ; -- get buffer record data (#355.33)
 S IBFLDS="90.03;60.05;60.14;60.15;60.16;60.1;60.11;60.12;62.01",IBBUFDA=IBBUFDA_","
 D GETS^DIQ(355.33,IBBUFDA,IBFLDS,,"IBBDAT","DIERR") Q:$D(DIERR)
 ;
 ; -- get income person record data (#408.13
 S IBFLDS=".01;.02;.03;.09;1.2;1.3;1.5;1.6;1.7;1.8",IBPRDA=IBIEN_","
 D GETS^DIQ(408.13,IBPRDA,IBFLDS,,"IBPDAT","DIERR") Q:$D(DIERR)
 ;
 ; -- get patient insurance data (#2.312)
 S IBFLDS="7.02;6;4.03;4.05;4.06;7.01;3.01;3.05;3.12;4.01;4.02;.2;5.01;3.06;3.07;3.08;3.09;3.1;3.13;3.11"
 D GETS^DIQ(2.312,IBSIEN,IBFLDS,,"IBIDAT","DIERR") Q:$D(DIERR)
 ;
 S IBTXT=IB1,IBFLD=90.03,IBXFLD=7.02,IBDAT=$G(IBBDAT(355.33,IBBUFDA,IBFLD)),IBXDAT=$G(IBIDAT(2.312,IBSIEN,IBXFLD)) D BD^IBCNBCD4(IBBUFDA,IBTXT,IBFLD,.IBDAT,IBSEL,IBSIEN,.IBXFLD,.IBXDAT,.IBCNT,.IBHOLD,.IBXHOLD)
 S IBTXT=IB2,IBFLD=60.05,IBXFLD=6,IBDAT=$G(IBBDAT(355.33,IBBUFDA,IBFLD)),IBXDAT=$G(IBIDAT(2.312,IBSIEN,IBXFLD)) D BD^IBCNBCD4(IBBUFDA,IBTXT,IBFLD,.IBDAT,IBSEL,IBSIEN,.IBXFLD,.IBXDAT,.IBCNT,.IBHOLD,.IBXHOLD)
 S IBTXT=IB3,IBFLD=60.14,IBXFLD=4.03,IBDAT=IBV,IBXDAT=$G(IBIDAT(2.312,IBSIEN,IBXFLD)) D BD^IBCNBCD4(IBBUFDA,IBTXT,IBFLD,.IBDAT,IBSEL,IBSIEN,.IBXFLD,.IBXDAT,.IBCNT,.IBHOLD,.IBXHOLD)
 S IBTXT=IB4,IBFLD=60.15,IBXFLD=4.05,IBDAT=$G(IBBDAT(355.33,IBBUFDA,IBFLD)),IBXDAT=$G(IBIDAT(2.312,IBSIEN,IBXFLD)) D BD^IBCNBCD4(IBBUFDA,IBTXT,IBFLD,.IBDAT,IBSEL,IBSIEN,.IBXFLD,.IBXDAT,.IBCNT,.IBHOLD,.IBXHOLD)
 S IBTXT=IB5,IBFLD=60.16,IBXFLD=4.06,IBDAT=$G(IBBDAT(355.33,IBBUFDA,IBFLD)),IBXDAT=$G(IBIDAT(2.312,IBSIEN,IBXFLD)) D BD^IBCNBCD4(IBBUFDA,IBTXT,IBFLD,.IBDAT,IBSEL,IBSIEN,.IBXFLD,.IBXDAT,.IBCNT,.IBHOLD,.IBXHOLD)
 S IBTXT=IB6,IBFLD=.01,IBXFLD=7.01,IBDAT=$G(IBPDAT(408.13,IBPRDA,IBFLD)),IBXDAT=$G(IBIDAT(2.312,IBSIEN,IBXFLD)) D BD^IBCNBCD4(IBBUFDA,IBTXT,IBFLD,.IBDAT,IBSEL,IBSIEN,.IBXFLD,.IBXDAT,.IBCNT,.IBHOLD,.IBXHOLD)
 S IBTXT=IB7,IBFLD=.03,IBXFLD=3.01,IBDAT=$G(IBPDAT(408.13,IBPRDA,IBFLD)),IBXDAT=$G(IBIDAT(2.312,IBSIEN,IBXFLD)) D BD^IBCNBCD4(IBBUFDA,IBTXT,IBFLD,.IBDAT,IBSEL,IBSIEN,.IBXFLD,.IBXDAT,.IBCNT,.IBHOLD,.IBXHOLD)
 S IBTXT=IB8,IBFLD=.09,IBXFLD=3.05,IBDAT=$G(IBPDAT(408.13,IBPRDA,IBFLD)),IBXDAT=$G(IBIDAT(2.312,IBSIEN,IBXFLD)) D BD^IBCNBCD4(IBBUFDA,IBTXT,IBFLD,.IBDAT,IBSEL,IBSIEN,.IBXFLD,.IBXDAT,.IBCNT,.IBHOLD,.IBXHOLD)
 S IBTXT=IB9,IBFLD=.02,IBXFLD=3.12,IBDAT=$G(IBPDAT(408.13,IBPRDA,IBFLD)),IBXDAT=$G(IBIDAT(2.312,IBSIEN,IBXFLD)) D BD^IBCNBCD4(IBBUFDA,IBTXT,IBFLD,.IBDAT,IBSEL,IBSIEN,.IBXFLD,.IBXDAT,.IBCNT,.IBHOLD,.IBXHOLD)
 S IBTXT=IB10,IBFLD=60.1,IBXFLD=4.01,IBDAT=$G(IBBDAT(355.33,IBBUFDA,IBFLD)),IBXDAT=$G(IBIDAT(2.312,IBSIEN,IBXFLD)) D BD^IBCNBCD4(IBBUFDA,IBTXT,IBFLD,.IBDAT,IBSEL,IBSIEN,.IBXFLD,.IBXDAT,.IBCNT,.IBHOLD,.IBXHOLD)
 S IBTXT=IB11,IBFLD=60.11,IBXFLD=4.02,IBDAT=$G(IBBDAT(355.33,IBBUFDA,IBFLD)),IBXDAT=$G(IBIDAT(2.312,IBSIEN,IBXFLD)) D BD^IBCNBCD4(IBBUFDA,IBTXT,IBFLD,.IBDAT,IBSEL,IBSIEN,.IBXFLD,.IBXDAT,.IBCNT,.IBHOLD,.IBXHOLD)
 S IBTXT=IB12,IBFLD=60.12,IBXFLD=.2,IBDAT=$G(IBBDAT(355.33,IBBUFDA,IBFLD)),IBXDAT=$G(IBIDAT(2.312,IBSIEN,IBXFLD)) D BD^IBCNBCD4(IBBUFDA,IBTXT,IBFLD,.IBDAT,IBSEL,IBSIEN,.IBXFLD,.IBXDAT,.IBCNT,.IBHOLD,.IBXHOLD)
 S IBTXT=IB13,IBFLD=62.01,IBXFLD=5.01,IBDAT=$G(IBBDAT(355.33,IBBUFDA,IBFLD)),IBXDAT=$G(IBIDAT(2.312,IBSIEN,IBXFLD)) D BD^IBCNBCD4(IBBUFDA,IBTXT,IBFLD,.IBDAT,IBSEL,IBSIEN,.IBXFLD,.IBXDAT,.IBCNT,.IBHOLD,.IBXHOLD)
 S IBTXT=IB14,IBFLD=1.2,IBXFLD=3.06,IBDAT=$G(IBPDAT(408.13,IBPRDA,IBFLD)),IBXDAT=$G(IBIDAT(2.312,IBSIEN,IBXFLD)) D BD^IBCNBCD4(IBBUFDA,IBTXT,IBFLD,.IBDAT,IBSEL,IBSIEN,.IBXFLD,.IBXDAT,.IBCNT,.IBHOLD,.IBXHOLD)
 S IBTXT=IB15,IBFLD=1.3,IBXFLD=3.07,IBDAT=$G(IBPDAT(408.13,IBPRDA,IBFLD)),IBXDAT=$G(IBIDAT(2.312,IBSIEN,IBXFLD)) D BD^IBCNBCD4(IBBUFDA,IBTXT,IBFLD,.IBDAT,IBSEL,IBSIEN,.IBXFLD,.IBXDAT,.IBCNT,.IBHOLD,.IBXHOLD)
 S IBTXT=IB16,IBFLD=1.5,IBXFLD=3.08,IBDAT=$G(IBPDAT(408.13,IBPRDA,IBFLD)),IBXDAT=$G(IBIDAT(2.312,IBSIEN,IBXFLD)) D BD^IBCNBCD4(IBBUFDA,IBTXT,IBFLD,.IBDAT,IBSEL,IBSIEN,.IBXFLD,.IBXDAT,.IBCNT,.IBHOLD,.IBXHOLD)
 S IBTXT=IB17,IBFLD=1.6,IBXFLD=3.09,IBDAT=$G(IBPDAT(408.13,IBPRDA,IBFLD)),IBXDAT=$G(IBIDAT(2.312,IBSIEN,IBXFLD)) D BD^IBCNBCD4(IBBUFDA,IBTXT,IBFLD,.IBDAT,IBSEL,IBSIEN,.IBXFLD,.IBXDAT,.IBCNT,.IBHOLD,.IBXHOLD)
 S IBTXT=IB18,IBFLD=1.7,IBXFLD=3.1,IBDAT=$G(IBPDAT(408.13,IBPRDA,IBFLD)),IBXDAT=$G(IBIDAT(2.312,IBSIEN,IBXFLD)) D BD^IBCNBCD4(IBBUFDA,IBTXT,IBFLD,.IBDAT,IBSEL,IBSIEN,.IBXFLD,.IBXDAT,.IBCNT,.IBHOLD,.IBXHOLD)
 S IBTXT=IB19,IBFLD=1.99,IBXFLD=3.13,IBDAT="",IBXDAT=$G(IBIDAT(2.312,IBSIEN,IBXFLD)) D BD^IBCNBCD4(IBBUFDA,IBTXT,IBFLD,.IBDAT,IBSEL,IBSIEN,.IBXFLD,.IBXDAT,.IBCNT,.IBHOLD,.IBXHOLD)
 S IBTXT=IB20,IBFLD=1.8,IBXFLD=3.11,IBDAT=$G(IBPDAT(408.13,IBPRDA,IBFLD)),IBXDAT=$G(IBIDAT(2.312,IBSIEN,IBXFLD)) D BD^IBCNBCD4(IBBUFDA,IBTXT,IBFLD,.IBDAT,IBSEL,IBSIEN,.IBXFLD,.IBXDAT,.IBCNT,.IBHOLD,.IBXHOLD)
 Q
 ;
NDIS(IBBUFDA,IBIEN,IBSIEN,IBSEL,IBV,IB1,IB2,IB3,IB4,IB5,IB6,IB7,IB8,IB9,IB10,IB11,IB12,IB13,IB14,IB15,IB16,IB17,IB18,IB19,IB20,IBHOLD,IBXHOLD) ;
 N IBFLD,IBFLDS,IBXFLD,IBTXT,IBDAT,IBBDAT,IBPDAT,IBIDAT,IBCNT,IBXDAT
 S IBCNT=0
 ;
 ; -- get patient insurance data (#2.312)
 S IBFLDS="7.02;6;4.03;4.05;4.06;7.01;3.01;3.05;3.12;4.01;4.02;.2;5.01;3.06;3.07;3.08;3.09;3.1;3.13;3.11"
 D GETS^DIQ(2.312,IBSIEN,IBFLDS,,"IBIDAT","DIERR") Q:$D(DIERR)
 ;
 S IBTXT=IB1,IBFLD=90.03,IBXFLD=7.02,IBDAT="",IBXDAT=$G(IBIDAT(2.312,IBSIEN,IBXFLD)) D BD^IBCNBCD4(IBBUFDA,IBTXT,IBFLD,.IBDAT,IBSEL,IBSIEN,.IBXFLD,.IBXDAT,.IBCNT,.IBHOLD,.IBXHOLD)
 S IBTXT=IB2,IBFLD=60.05,IBXFLD=6,IBDAT=IBV,IBXDAT=$G(IBIDAT(2.312,IBSIEN,IBXFLD)) D BD^IBCNBCD4(IBBUFDA,IBTXT,IBFLD,.IBDAT,IBSEL,IBSIEN,.IBXFLD,.IBXDAT,.IBCNT,.IBHOLD,.IBXHOLD)
 S IBTXT=IB3,IBFLD=60.14,IBXFLD=4.03,IBDAT=IBV,IBXDAT=$G(IBIDAT(2.312,IBSIEN,IBXFLD)) D BD^IBCNBCD4(IBBUFDA,IBTXT,IBFLD,.IBDAT,IBSEL,IBSIEN,.IBXFLD,.IBXDAT,.IBCNT,.IBHOLD,.IBXHOLD)
 S IBTXT=IB4,IBFLD=60.15,IBXFLD=4.05,IBDAT="",IBXDAT=$G(IBIDAT(2.312,IBSIEN,IBXFLD)) D BD^IBCNBCD4(IBBUFDA,IBTXT,IBFLD,.IBDAT,IBSEL,IBSIEN,.IBXFLD,.IBXDAT,.IBCNT,.IBHOLD,.IBXHOLD)
 S IBTXT=IB5,IBFLD=60.16,IBXFLD=4.06,IBDAT="",IBXDAT=$G(IBIDAT(2.312,IBSIEN,IBXFLD)) D BD^IBCNBCD4(IBBUFDA,IBTXT,IBFLD,.IBDAT,IBSEL,IBSIEN,.IBXFLD,.IBXDAT,.IBCNT,.IBHOLD,.IBXHOLD)
 S IBTXT=IB6,IBFLD=.01,IBXFLD=7.01,IBDAT="",IBXDAT=$G(IBIDAT(2.312,IBSIEN,IBXFLD)) D BD^IBCNBCD4(IBBUFDA,IBTXT,IBFLD,.IBDAT,IBSEL,IBSIEN,.IBXFLD,.IBXDAT,.IBCNT,.IBHOLD,.IBXHOLD)
 S IBTXT=IB7,IBFLD=.03,IBXFLD=3.01,IBDAT="",IBXDAT=$G(IBIDAT(2.312,IBSIEN,IBXFLD)) D BD^IBCNBCD4(IBBUFDA,IBTXT,IBFLD,.IBDAT,IBSEL,IBSIEN,.IBXFLD,.IBXDAT,.IBCNT,.IBHOLD,.IBXHOLD)
 S IBTXT=IB8,IBFLD=.09,IBXFLD=3.05,IBDAT="",IBXDAT=$G(IBIDAT(2.312,IBSIEN,IBXFLD)) D BD^IBCNBCD4(IBBUFDA,IBTXT,IBFLD,.IBDAT,IBSEL,IBSIEN,.IBXFLD,.IBXDAT,.IBCNT,.IBHOLD,.IBXHOLD)
 S IBTXT=IB9,IBFLD=.02,IBXFLD=3.12,IBDAT="",IBXDAT=$G(IBIDAT(2.312,IBSIEN,IBXFLD)) D BD^IBCNBCD4(IBBUFDA,IBTXT,IBFLD,.IBDAT,IBSEL,IBSIEN,.IBXFLD,.IBXDAT,.IBCNT,.IBHOLD,.IBXHOLD)
 S IBTXT=IB10,IBFLD=60.1,IBXFLD=4.01,IBDAT="",IBXDAT=$G(IBIDAT(2.312,IBSIEN,IBXFLD)) D BD^IBCNBCD4(IBBUFDA,IBTXT,IBFLD,.IBDAT,IBSEL,IBSIEN,.IBXFLD,.IBXDAT,.IBCNT,.IBHOLD,.IBXHOLD)
 S IBTXT=IB11,IBFLD=60.11,IBXFLD=4.02,IBDAT="",IBXDAT=$G(IBIDAT(2.312,IBSIEN,IBXFLD)) D BD^IBCNBCD4(IBBUFDA,IBTXT,IBFLD,.IBDAT,IBSEL,IBSIEN,.IBXFLD,.IBXDAT,.IBCNT,.IBHOLD,.IBXHOLD)
 S IBTXT=IB12,IBFLD=60.12,IBXFLD=.2,IBDAT="",IBXDAT=$G(IBIDAT(2.312,IBSIEN,IBXFLD)) D BD^IBCNBCD4(IBBUFDA,IBTXT,IBFLD,.IBDAT,IBSEL,IBSIEN,.IBXFLD,.IBXDAT,.IBCNT,.IBHOLD,.IBXHOLD)
 S IBTXT=IB13,IBFLD=62.01,IBXFLD=5.01,IBDAT="",IBXDAT=$G(IBIDAT(2.312,IBSIEN,IBXFLD)) D BD^IBCNBCD4(IBBUFDA,IBTXT,IBFLD,.IBDAT,IBSEL,IBSIEN,.IBXFLD,.IBXDAT,.IBCNT,.IBHOLD,.IBXHOLD)
 S IBTXT=IB14,IBFLD=.111,IBXFLD=3.06,IBDAT="",IBXDAT=$G(IBIDAT(2.312,IBSIEN,IBXFLD)) D BD^IBCNBCD4(IBBUFDA,IBTXT,IBFLD,.IBDAT,IBSEL,IBSIEN,.IBXFLD,.IBXDAT,.IBCNT,.IBHOLD,.IBXHOLD)
 S IBTXT=IB15,IBFLD=.112,IBXFLD=3.07,IBDAT="",IBXDAT=$G(IBIDAT(2.312,IBSIEN,IBXFLD)) D BD^IBCNBCD4(IBBUFDA,IBTXT,IBFLD,.IBDAT,IBSEL,IBSIEN,.IBXFLD,.IBXDAT,.IBCNT,.IBHOLD,.IBXHOLD)
 S IBTXT=IB16,IBFLD=.114,IBXFLD=3.08,IBDAT="",IBXDAT=$G(IBIDAT(2.312,IBSIEN,IBXFLD)) D BD^IBCNBCD4(IBBUFDA,IBTXT,IBFLD,.IBDAT,IBSEL,IBSIEN,.IBXFLD,.IBXDAT,.IBCNT,.IBHOLD,.IBXHOLD)
 S IBTXT=IB17,IBFLD=.115,IBXFLD=3.09,IBDAT="",IBXDAT=$G(IBIDAT(2.312,IBSIEN,IBXFLD)) D BD^IBCNBCD4(IBBUFDA,IBTXT,IBFLD,.IBDAT,IBSEL,IBSIEN,.IBXFLD,.IBXDAT,.IBCNT,.IBHOLD,.IBXHOLD)
 S IBTXT=IB18,IBFLD=.116,IBXFLD=3.1,IBDAT="",IBXDAT=$G(IBIDAT(2.312,IBSIEN,IBXFLD)) D BD^IBCNBCD4(IBBUFDA,IBTXT,IBFLD,.IBDAT,IBSEL,IBSIEN,.IBXFLD,.IBXDAT,.IBCNT,.IBHOLD,.IBXHOLD)
 S IBTXT=IB19,IBFLD=.1173,IBXFLD=3.13,IBDAT="",IBXDAT=$G(IBIDAT(2.312,IBSIEN,IBXFLD)) D BD^IBCNBCD4(IBBUFDA,IBTXT,IBFLD,.IBDAT,IBSEL,IBSIEN,.IBXFLD,.IBXDAT,.IBCNT,.IBHOLD,.IBXHOLD)
 S IBTXT=IB20,IBFLD=.131,IBXFLD=3.11,IBDAT="",IBXDAT=$G(IBIDAT(2.312,IBSIEN,IBXFLD)) D BD^IBCNBCD4(IBBUFDA,IBTXT,IBFLD,.IBDAT,IBSEL,IBSIEN,.IBXFLD,.IBXDAT,.IBCNT,.IBHOLD,.IBXHOLD)
 Q