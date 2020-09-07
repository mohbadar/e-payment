
CREATE TABLE "COMMON_USER"."CONSGROUP_M"  (
		  "ID" VARCHAR(40 OCTETS) NOT NULL ,
		  "GROUP_CODE" VARCHAR(20 OCTETS) NOT NULL ,
		  "GROUP_NAME" VARCHAR(50 OCTETS) NOT NULL ,
		  "GADDR_1" VARCHAR(200 OCTETS) ,
		  "GADDR_2" VARCHAR(350 OCTETS) ,
		  "GADDR_3" VARCHAR(50 OCTETS) ,
		  "GADDR_4" VARCHAR(30 OCTETS) ,
		  "CREATED_BY" VARCHAR(15 OCTETS) NOT NULL ,
		  "CREATE_DATE" TIMESTAMP(0) NOT NULL ,
		  "UPDATED_BY" VARCHAR(15 OCTETS) ,
		  "UPDATE_DATE" TIMESTAMP(0) ,
		  "DB_IP_ADDRESS" VARCHAR(25 OCTETS) NOT NULL ,
		  "SOURCE_OFFICE_ID" VARCHAR(15 OCTETS) ,
		  "TARGET_OFFICE_ID" VARCHAR(15 OCTETS) ,
		  "RECORD_STATUS" VARCHAR(10 OCTETS) ,
		  "SCREEN_ID" VARCHAR(30 OCTETS) NOT NULL ,
		  "MONTH" DECIMAL(2,0) NOT NULL ,
		  "YEAR" DECIMAL(4,0) NOT NULL ,
		  "FLAG1" VARCHAR(4 OCTETS) ,
		  "FLAG2" VARCHAR(1 OCTETS) ,
		  "FLAG3" VARCHAR(1 OCTETS) ,
		  "FLAG4" VARCHAR(1 OCTETS) ,
		  "FLAG5" VARCHAR(1 OCTETS) ,
		  "MODULE_ID" VARCHAR(15 OCTETS) ,
		  "SUBMODULE_ID" VARCHAR(15 OCTETS) ,
		  "PHONE" VARCHAR(30 OCTETS) ,
		  "CHECK_CONDITION" VARCHAR(50 OCTETS) NOT NULL )
		 IN "TS8"
		 ORGANIZE BY ROW  ;
ALTER TABLE "COMMON_USER"."CONSGROUP_M"
	ADD CONSTRAINT "CONSGROUP_M_PK" PRIMARY KEY
		("ID") ;

ALTER TABLE "COMMON_USER"."CONSGROUP_M"
	ADD CONSTRAINT "UK_CONSGROUP_M" UNIQUE
		("CHECK_CONDITION") ;
CREATE ALIAS "CENTRAL_ALL"."CONSGROUP_M" FOR TABLE "COMMON_USER"."CONSGROUP_M" ;
CREATE ALIAS "DABS    "."CONSGROUP_M" FOR TABLE "COMMON_USER"."CONSGROUP_M" ;
CREATE TRIGGER "COMMON_USER"."TRIG_BRIN_CONSGROUP_M"
  NO CASCADE BEFORE INSERT
  ON "COMMON_USER"."CONSGROUP_M"
  REFERENCING
              NEW AS "NEW"
  FOR EACH ROW
BEGIN ATOMIC

        IF (NEW.RECORD_STATUS='ACTIVE') THEN

                SET NEW.CHECK_CONDITION = NEW.GROUP_NAME;--

        ELSE

                SET NEW.CHECK_CONDITION = NEW.ID;--

        END IF;--

END ;

GRANT SELECT ON TABLE "COMMON_USER"."CONSGROUP_M" TO ROLE "ROLE_READ_ONLY"  ;

GRANT SELECT ON TABLE "COMMON_USER"."CONSGROUP_M" TO USER "ETLUSER "  ;

GRANT SELECT ON TABLE "COMMON_USER"."CONSGROUP_M" TO USER "ZAFAR   "  ;

GRANT CONTROL ON TABLE "COMMON_USER"."CONSGROUP_M" TO USER "DB2INST1"  ;