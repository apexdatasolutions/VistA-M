ORY312 ;;SLCOIFO - Pre and Post-init for patch OR*3*312 ;6/25/14  11:57
 ;;3.0;ORDER ENTRY/RESULTS REPORTING;**312**;;Build 31
 ;
PRE ;Pre-Init Entry Point
 D PEOMRPT
 Q
POST ;Post-Init Entry Point
 Q
PEOMRPT ;Remove new & changed reports from OE/RR REPORTS file (101.24)
 N ORI,DA,DIK
 I $P($G(^ORD(101.24,3,0)),"^",1)="ORRP AP ALL" D
 . S DA=3,DIK="^ORD(101.24," D ^DIK
 . S ^ORD(101.24,3,0)="ORRP AP ALL",^ORD(101.24,"B","ORRP AP ALL",3)=""
 I $P($G(^ORD(101.24,23,0)),"^",1)="ORL MICROBIOLOGY" D
 . S DA=23,DIK="^ORD(101.24," D ^DIK
 . S ^ORD(101.24,23,0)="ORL MICROBIOLOGY",^ORD(101.24,"B","ORL MICROBIOLOGY",23)=""
 I $P($G(^ORD(101.24,24,0)),"^",1)="ORL ANATOMIC PATHOLOGY" D
 . S DA=24,DIK="^ORD(101.24," D ^DIK
 . S ^ORD(101.24,24,0)="ORL ANATOMIC PATHOLOGY",^ORD(101.24,"B","ORL ANATOMIC PATHOLOGY",24)=""
 S ORI=999
 F  S ORI=$O(^ORD(101.24,ORI)) Q:'ORI  S DA=ORI,DIK="^ORD(101.24," D ^DIK
 Q
