DGX5F4 ; ;09/16/15
 ;;
1 N X,X1,X2 S DIXR=1177 D X1(U) K X2 M X2=X D X1("F") K X1 M X1=X
 I $G(X(2))]"" D
 . D KPTFMD^DGPTDDCR(.X,.DA,"M ICD1")
 K X M X=X2 I $G(X(2))]"" D
 . D SPTFMD^DGPTDDCR(.X,.DA,"M ICD1")
 Q
X1(DION) K X
 S X(1)=$G(@DIEZTMP@("V",45.02,DIIENS,10,DION),$P($G(^DGPT(DA(1),"M",DA,0)),U,10))
 S X(2)=$G(@DIEZTMP@("V",45.02,DIIENS,5,DION),$P($G(^DGPT(DA(1),"M",DA,0)),U,5))
 S X=$G(X(1))
 Q
2 N X,X1,X2 S DIXR=1178 D X2(U) K X2 M X2=X D X2("F") K X1 M X1=X
 I $G(X(2))]"" D
 . D KPTFMD^DGPTDDCR(.X,.DA,"M ICD10")
 K X M X=X2 I $G(X(2))]"" D
 . D SPTFMD^DGPTDDCR(.X,.DA,"M ICD10")
 Q
X2(DION) K X
 S X(1)=$G(@DIEZTMP@("V",45.02,DIIENS,10,DION),$P($G(^DGPT(DA(1),"M",DA,0)),U,10))
 S X(2)=$G(@DIEZTMP@("V",45.02,DIIENS,15,DION),$P($G(^DGPT(DA(1),"M",DA,0)),U,15))
 S X=$G(X(1))
 Q
3 N X,X1,X2 S DIXR=1179 D X3(U) K X2 M X2=X D X3("F") K X1 M X1=X
 I $G(X(2))]"" D
 . D KPTFMD^DGPTDDCR(.X,.DA,"M ICD2")
 K X M X=X2 I $G(X(2))]"" D
 . D SPTFMD^DGPTDDCR(.X,.DA,"M ICD2")
 Q
X3(DION) K X
 S X(1)=$G(@DIEZTMP@("V",45.02,DIIENS,10,DION),$P($G(^DGPT(DA(1),"M",DA,0)),U,10))
 S X(2)=$G(@DIEZTMP@("V",45.02,DIIENS,6,DION),$P($G(^DGPT(DA(1),"M",DA,0)),U,6))
 S X=$G(X(1))
 Q
4 N X,X1,X2 S DIXR=1180 D X4(U) K X2 M X2=X D X4("F") K X1 M X1=X
 I $G(X(2))]"" D
 . D KPTFMD^DGPTDDCR(.X,.DA,"M ICD3")
 K X M X=X2 I $G(X(2))]"" D
 . D SPTFMD^DGPTDDCR(.X,.DA,"M ICD3")
 Q
X4(DION) K X
 S X(1)=$G(@DIEZTMP@("V",45.02,DIIENS,10,DION),$P($G(^DGPT(DA(1),"M",DA,0)),U,10))
 S X(2)=$G(@DIEZTMP@("V",45.02,DIIENS,7,DION),$P($G(^DGPT(DA(1),"M",DA,0)),U,7))
 S X=$G(X(1))
 Q
5 N X,X1,X2 S DIXR=1181 D X5(U) K X2 M X2=X D X5("F") K X1 M X1=X
 I $G(X(2))]"" D
 . D KPTFMD^DGPTDDCR(.X,.DA,"M ICD4")
 K X M X=X2 I $G(X(2))]"" D
 . D SPTFMD^DGPTDDCR(.X,.DA,"M ICD4")
 Q
X5(DION) K X
 S X(1)=$G(@DIEZTMP@("V",45.02,DIIENS,10,DION),$P($G(^DGPT(DA(1),"M",DA,0)),U,10))
 S X(2)=$G(@DIEZTMP@("V",45.02,DIIENS,8,DION),$P($G(^DGPT(DA(1),"M",DA,0)),U,8))
 S X=$G(X(1))
 Q
6 N X,X1,X2 S DIXR=1182 D X6(U) K X2 M X2=X D X6("F") K X1 M X1=X
 I $G(X(2))]"" D
 . D KPTFMD^DGPTDDCR(.X,.DA,"M ICD5")
 K X M X=X2 I $G(X(2))]"" D
 . D SPTFMD^DGPTDDCR(.X,.DA,"M ICD5")
 Q
X6(DION) K X
 S X(1)=$G(@DIEZTMP@("V",45.02,DIIENS,10,DION),$P($G(^DGPT(DA(1),"M",DA,0)),U,10))
 S X(2)=$G(@DIEZTMP@("V",45.02,DIIENS,9,DION),$P($G(^DGPT(DA(1),"M",DA,0)),U,9))
 S X=$G(X(1))
 Q
7 N X,X1,X2 S DIXR=1183 D X7(U) K X2 M X2=X D X7("F") K X1 M X1=X
 I $G(X(2))]"" D
 . D KPTFMD^DGPTDDCR(.X,.DA,"M ICD6")
 K X M X=X2 I $G(X(2))]"" D
 . D SPTFMD^DGPTDDCR(.X,.DA,"M ICD6")
 Q
X7(DION) K X
 S X(1)=$G(@DIEZTMP@("V",45.02,DIIENS,10,DION),$P($G(^DGPT(DA(1),"M",DA,0)),U,10))
 S X(2)=$G(@DIEZTMP@("V",45.02,DIIENS,11,DION),$P($G(^DGPT(DA(1),"M",DA,0)),U,11))
 S X=$G(X(1))
 Q
8 N X,X1,X2 S DIXR=1184 D X8(U) K X2 M X2=X D X8("F") K X1 M X1=X
 I $G(X(2))]"" D
 . D KPTFMD^DGPTDDCR(.X,.DA,"M ICD7")
 K X M X=X2 I $G(X(2))]"" D
 . D SPTFMD^DGPTDDCR(.X,.DA,"M ICD7")
 Q
X8(DION) K X
 S X(1)=$G(@DIEZTMP@("V",45.02,DIIENS,10,DION),$P($G(^DGPT(DA(1),"M",DA,0)),U,10))
 S X(2)=$G(@DIEZTMP@("V",45.02,DIIENS,12,DION),$P($G(^DGPT(DA(1),"M",DA,0)),U,12))
 S X=$G(X(1))
 Q
9 N X,X1,X2 S DIXR=1185 D X9(U) K X2 M X2=X D X9("F") K X1 M X1=X
 I $G(X(2))]"" D
 . D KPTFMD^DGPTDDCR(.X,.DA,"M ICD8")
 K X M X=X2 I $G(X(2))]"" D
 . D SPTFMD^DGPTDDCR(.X,.DA,"M ICD8")
 Q
X9(DION) K X
 S X(1)=$G(@DIEZTMP@("V",45.02,DIIENS,10,DION),$P($G(^DGPT(DA(1),"M",DA,0)),U,10))
 S X(2)=$G(@DIEZTMP@("V",45.02,DIIENS,13,DION),$P($G(^DGPT(DA(1),"M",DA,0)),U,13))
 S X=$G(X(1))
 Q
10 N X,X1,X2 S DIXR=1186 D X10(U) K X2 M X2=X D X10("F") K X1 M X1=X
 I $G(X(2))]"" D
 . D KPTFMD^DGPTDDCR(.X,.DA,"M ICD9")
 K X M X=X2 I $G(X(2))]"" D
 . D SPTFMD^DGPTDDCR(.X,.DA,"M ICD9")
 Q
X10(DION) K X
 S X(1)=$G(@DIEZTMP@("V",45.02,DIIENS,10,DION),$P($G(^DGPT(DA(1),"M",DA,0)),U,10))
 S X(2)=$G(@DIEZTMP@("V",45.02,DIIENS,14,DION),$P($G(^DGPT(DA(1),"M",DA,0)),U,14))
 S X=$G(X(1))
 Q
11 N X,X1,X2 S DIXR=1224 D X11(U) K X2 M X2=X D X11("F") K X1 M X1=X
 I $G(X(2))]"" D
 . D KPTFMD^DGPTDDCR(.X,.DA,"M ICD11")
 K X M X=X2 I $G(X(2))]"" D
 . D SPTFMD^DGPTDDCR(.X,.DA,"M ICD11")
 Q
X11(DION) K X
 S X(1)=$G(@DIEZTMP@("V",45.02,DIIENS,10,DION),$P($G(^DGPT(DA(1),"M",DA,0)),U,10))
 S X(2)=$G(@DIEZTMP@("V",45.02,DIIENS,81.01,DION),$P($G(^DGPT(DA(1),"M",DA,81)),U,1))
 S X=$G(X(1))
 Q
12 N X,X1,X2 S DIXR=1225 D X12(U) K X2 M X2=X D X12("F") K X1 M X1=X
 I $G(X(2))]"" D
 . D KPTFMD^DGPTDDCR(.X,.DA,"M ICD12")
 K X M X=X2 I $G(X(2))]"" D
 . D SPTFMD^DGPTDDCR(.X,.DA,"M ICD12")
 Q
X12(DION) K X
 S X(1)=$G(@DIEZTMP@("V",45.02,DIIENS,10,DION),$P($G(^DGPT(DA(1),"M",DA,0)),U,10))
 S X(2)=$G(@DIEZTMP@("V",45.02,DIIENS,81.02,DION),$P($G(^DGPT(DA(1),"M",DA,81)),U,2))
 S X=$G(X(1))
 Q
13 N X,X1,X2 S DIXR=1226 D X13(U) K X2 M X2=X D X13("F") K X1 M X1=X
 I $G(X(2))]"" D
 . D KPTFMD^DGPTDDCR(.X,.DA,"M ICD13")
 K X M X=X2 I $G(X(2))]"" D
 . D SPTFMD^DGPTDDCR(.X,.DA,"M ICD13")
 Q
X13(DION) K X
 S X(1)=$G(@DIEZTMP@("V",45.02,DIIENS,10,DION),$P($G(^DGPT(DA(1),"M",DA,0)),U,10))
 S X(2)=$G(@DIEZTMP@("V",45.02,DIIENS,81.03,DION),$P($G(^DGPT(DA(1),"M",DA,81)),U,3))
 S X=$G(X(1))
 Q
14 N X,X1,X2 S DIXR=1227 D X14(U) K X2 M X2=X D X14("F") K X1 M X1=X
 I $G(X(2))]"" D
 . D KPTFMD^DGPTDDCR(.X,.DA,"M ICD14")
 K X M X=X2 I $G(X(2))]"" D
 . D SPTFMD^DGPTDDCR(.X,.DA,"M ICD14")
 Q
X14(DION) K X
 S X(1)=$G(@DIEZTMP@("V",45.02,DIIENS,10,DION),$P($G(^DGPT(DA(1),"M",DA,0)),U,10))
 S X(2)=$G(@DIEZTMP@("V",45.02,DIIENS,81.04,DION),$P($G(^DGPT(DA(1),"M",DA,81)),U,4))
 S X=$G(X(1))
 Q
15 N X,X1,X2 S DIXR=1228 D X15(U) K X2 M X2=X D X15("F") K X1 M X1=X
 I $G(X(2))]"" D
 . D KPTFMD^DGPTDDCR(.X,.DA,"M ICD15")
 K X M X=X2 I $G(X(2))]"" D
 . D SPTFMD^DGPTDDCR(.X,.DA,"M ICD15")
 Q
X15(DION) K X
 S X(1)=$G(@DIEZTMP@("V",45.02,DIIENS,10,DION),$P($G(^DGPT(DA(1),"M",DA,0)),U,10))
 S X(2)=$G(@DIEZTMP@("V",45.02,DIIENS,81.05,DION),$P($G(^DGPT(DA(1),"M",DA,81)),U,5))
 S X=$G(X(1))
 Q
16 N X,X1,X2 S DIXR=1229 D X16(U) K X2 M X2=X D X16("F") K X1 M X1=X
 I $G(X(2))]"" D
 . D KPTFMD^DGPTDDCR(.X,.DA,"M ICD16")
 K X M X=X2 I $G(X(2))]"" D
 . D SPTFMD^DGPTDDCR(.X,.DA,"M ICD16")
 Q
X16(DION) K X
 S X(1)=$G(@DIEZTMP@("V",45.02,DIIENS,10,DION),$P($G(^DGPT(DA(1),"M",DA,0)),U,10))
 S X(2)=$G(@DIEZTMP@("V",45.02,DIIENS,81.06,DION),$P($G(^DGPT(DA(1),"M",DA,81)),U,6))
 S X=$G(X(1))
 Q
17 N X,X1,X2 S DIXR=1230 D X17(U) K X2 M X2=X D X17("F") K X1 M X1=X
 I $G(X(2))]"" D
 . D KPTFMD^DGPTDDCR(.X,.DA,"M ICD17")
 K X M X=X2 I $G(X(2))]"" D
 . D SPTFMD^DGPTDDCR(.X,.DA,"M ICD17")
 Q
X17(DION) K X
 S X(1)=$G(@DIEZTMP@("V",45.02,DIIENS,10,DION),$P($G(^DGPT(DA(1),"M",DA,0)),U,10))
 S X(2)=$G(@DIEZTMP@("V",45.02,DIIENS,81.07,DION),$P($G(^DGPT(DA(1),"M",DA,81)),U,7))
 S X=$G(X(1))
 Q
18 N X,X1,X2 S DIXR=1231 D X18(U) K X2 M X2=X D X18("F") K X1 M X1=X
 I $G(X(2))]"" D
 . D KPTFMD^DGPTDDCR(.X,.DA,"M ICD18")
 K X M X=X2 I $G(X(2))]"" D
 . D SPTFMD^DGPTDDCR(.X,.DA,"M ICD18")
 Q
X18(DION) K X
 S X(1)=$G(@DIEZTMP@("V",45.02,DIIENS,10,DION),$P($G(^DGPT(DA(1),"M",DA,0)),U,10))
 S X(2)=$G(@DIEZTMP@("V",45.02,DIIENS,81.08,DION),$P($G(^DGPT(DA(1),"M",DA,81)),U,8))
 S X=$G(X(1))
 Q
19 N X,X1,X2 S DIXR=1232 D X19(U) K X2 M X2=X D X19("F") K X1 M X1=X
 I $G(X(2))]"" D
 . D KPTFMD^DGPTDDCR(.X,.DA,"M ICD19")
 K X M X=X2 I $G(X(2))]"" D
 . D SPTFMD^DGPTDDCR(.X,.DA,"M ICD19")
 Q
X19(DION) K X
 S X(1)=$G(@DIEZTMP@("V",45.02,DIIENS,10,DION),$P($G(^DGPT(DA(1),"M",DA,0)),U,10))
 S X(2)=$G(@DIEZTMP@("V",45.02,DIIENS,81.09,DION),$P($G(^DGPT(DA(1),"M",DA,81)),U,9))
 S X=$G(X(1))
 Q
20 N X,X1,X2 S DIXR=1233 D X20(U) K X2 M X2=X D X20("F") K X1 M X1=X
 I $G(X(2))]"" D
 . D KPTFMD^DGPTDDCR(.X,.DA,"M ICD20")
 K X M X=X2 I $G(X(2))]"" D
 . D SPTFMD^DGPTDDCR(.X,.DA,"M ICD20")
 Q
X20(DION) K X
 S X(1)=$G(@DIEZTMP@("V",45.02,DIIENS,10,DION),$P($G(^DGPT(DA(1),"M",DA,0)),U,10))
 S X(2)=$G(@DIEZTMP@("V",45.02,DIIENS,81.1,DION),$P($G(^DGPT(DA(1),"M",DA,81)),U,10))
 S X=$G(X(1))
 Q
21 N X,X1,X2 S DIXR=1234 D X21(U) K X2 M X2=X D X21("F") K X1 M X1=X
 I $G(X(2))]"" D
 . D KPTFMD^DGPTDDCR(.X,.DA,"M ICD21")
 K X M X=X2 I $G(X(2))]"" D
 . D SPTFMD^DGPTDDCR(.X,.DA,"M ICD21")
 Q
X21(DION) K X
 S X(1)=$G(@DIEZTMP@("V",45.02,DIIENS,10,DION),$P($G(^DGPT(DA(1),"M",DA,0)),U,10))
 S X(2)=$G(@DIEZTMP@("V",45.02,DIIENS,81.11,DION),$P($G(^DGPT(DA(1),"M",DA,81)),U,11))
 S X=$G(X(1))
 Q
22 N X,X1,X2 S DIXR=1235 D X22(U) K X2 M X2=X D X22("F") K X1 M X1=X
 I $G(X(2))]"" D
 . D KPTFMD^DGPTDDCR(.X,.DA,"M ICD22")
 K X M X=X2 I $G(X(2))]"" D
 . D SPTFMD^DGPTDDCR(.X,.DA,"M ICD22")
 Q
X22(DION) K X
 S X(1)=$G(@DIEZTMP@("V",45.02,DIIENS,10,DION),$P($G(^DGPT(DA(1),"M",DA,0)),U,10))
 S X(2)=$G(@DIEZTMP@("V",45.02,DIIENS,81.12,DION),$P($G(^DGPT(DA(1),"M",DA,81)),U,12))
 S X=$G(X(1))
 Q
23 N X,X1,X2 S DIXR=1236 D X23(U) K X2 M X2=X D X23("F") K X1 M X1=X
 I $G(X(2))]"" D
 . D KPTFMD^DGPTDDCR(.X,.DA,"M ICD23")
 K X M X=X2 I $G(X(2))]"" D
 . D SPTFMD^DGPTDDCR(.X,.DA,"M ICD23")
 Q
X23(DION) K X
 S X(1)=$G(@DIEZTMP@("V",45.02,DIIENS,10,DION),$P($G(^DGPT(DA(1),"M",DA,0)),U,10))
 S X(2)=$G(@DIEZTMP@("V",45.02,DIIENS,81.13,DION),$P($G(^DGPT(DA(1),"M",DA,81)),U,13))
 S X=$G(X(1))
 Q
24 N X,X1,X2 S DIXR=1237 D X24(U) K X2 M X2=X D X24("F") K X1 M X1=X
 I $G(X(2))]"" D
 . D KPTFMD^DGPTDDCR(.X,.DA,"M ICD24")
 K X M X=X2 I $G(X(2))]"" D
 . D SPTFMD^DGPTDDCR(.X,.DA,"M ICD24")
 Q
X24(DION) K X
 S X(1)=$G(@DIEZTMP@("V",45.02,DIIENS,10,DION),$P($G(^DGPT(DA(1),"M",DA,0)),U,10))
 S X(2)=$G(@DIEZTMP@("V",45.02,DIIENS,81.14,DION),$P($G(^DGPT(DA(1),"M",DA,81)),U,14))
 S X=$G(X(1))
 Q
25 N X,X1,X2 S DIXR=1238 D X25(U) K X2 M X2=X D X25("F") K X1 M X1=X
 I $G(X(2))]"" D
 . D KPTFMD^DGPTDDCR(.X,.DA,"M ICD25")
 K X M X=X2 I $G(X(2))]"" D
 . D SPTFMD^DGPTDDCR(.X,.DA,"M ICD25")
 Q
X25(DION) K X
 S X(1)=$G(@DIEZTMP@("V",45.02,DIIENS,10,DION),$P($G(^DGPT(DA(1),"M",DA,0)),U,10))
 S X(2)=$G(@DIEZTMP@("V",45.02,DIIENS,81.15,DION),$P($G(^DGPT(DA(1),"M",DA,81)),U,15))
 S X=$G(X(1))
 Q
