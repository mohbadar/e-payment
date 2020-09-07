
CREATE TABLE "DABS    "."CMTCONSUMER_M_UP"  (
		  "ID" VARCHAR(40 OCTETS) NOT NULL ,
		  "SCNO" VARCHAR(25 OCTETS) NOT NULL ,
		  "OLD_SCNO" VARCHAR(25 OCTETS) ,
		  "NAME" VARCHAR(300 OCTETS) NOT NULL ,
		  "FATHER_NAME" VARCHAR(100 OCTETS) ,
		  "GFATHER_NAME" VARCHAR(100 OCTETS) ,
		  "ADDRESS_1" VARCHAR(500 OCTETS) ,
		  "ADDRESS_2" VARCHAR(50 OCTETS) ,
		  "ADDRESS_3" VARCHAR(50 OCTETS) ,
		  "ADDRESS_4" VARCHAR(50 OCTETS) ,
		  "PHONE" VARCHAR(30 OCTETS) ,
		  "EMAIL" VARCHAR(30 OCTETS) ,
		  "HOUSE_OWNER_NAME" VARCHAR(100 OCTETS) ,
		  "HOUSE_OWNER_FNAME" VARCHAR(100 OCTETS) ,
		  "AREA_CODE" VARCHAR(30 OCTETS) ,
		  "ROUTE" VARCHAR(30 OCTETS) ,
		  "OFFICE_ID" VARCHAR(20 OCTETS) ,
		  "CATEGORY" VARCHAR(15 OCTETS) ,
		  "SUB_CATEGORY" VARCHAR(25 OCTETS) ,
		  "PHASE" VARCHAR(15 OCTETS) ,
		  "CONTRACTED_LOAD" DECIMAL(13,5) ,
		  "CONNECTED_LOAD" DECIMAL(13,5) ,
		  "LOAD_UNIT" VARCHAR(15 OCTETS) ,
		  "LOAD_TYPE" VARCHAR(5 OCTETS) ,
		  "NATURE_OF_PREMISES" VARCHAR(20 OCTETS) ,
		  "SUPP_RELEASE_DATE" TIMESTAMP NOT NULL ,
		  "SERVICE_STATUS" VARCHAR(5 OCTETS) ,
		  "CONSUMER_STATUS" VARCHAR(6 OCTETS) ,
		  "CONSUMER_TYPE" VARCHAR(10 OCTETS) ,
		  "POL_NUM" VARCHAR(200 OCTETS) ,
		  "TRANS_LOCATION" VARCHAR(30 OCTETS) ,
		  "FEEDER_NUM" VARCHAR(20 OCTETS) ,
		  "SUBSTATION_NUM" VARCHAR(15 OCTETS) ,
		  "ALTERNATE_ADDRESS_1" VARCHAR(50 OCTETS) ,
		  "ALTERNATE_ADDRESS_2" VARCHAR(50 OCTETS) ,
		  "ALTERNATE_ADDRESS_3" VARCHAR(50 OCTETS) ,
		  "ALTERNATE_ADDRESS_4" VARCHAR(30 OCTETS) ,
		  "BILLING_CYCLE" DECIMAL(2,0) ,
		  "SHORT_NAME" VARCHAR(50 OCTETS) ,
		  "AGREEMENT_DATE" TIMESTAMP ,
		  "LIGHTING_LOAD" DECIMAL(10,2) ,
		  "TOWNSHIP_LOAD" DECIMAL(15,2) ,
		  "TR_HIRE_CHARGES" DECIMAL(15,2) ,
		  "NO_OF_FEEDERS" DECIMAL(2,0) ,
		  "ADDL_TEMP_LOAD" VARCHAR(5 OCTETS) ,
		  "SUPPLY_VOLTAGE" VARCHAR(15 OCTETS) ,
		  "VOLTAGE_UNIT" VARCHAR(10 OCTETS) ,
		  "CONSTRUCTION_TYPE" VARCHAR(25 OCTETS) ,
		  "CREATED_BY" VARCHAR(20 OCTETS) NOT NULL ,
		  "CREATE_DATE" TIMESTAMP ,
		  "UPDATED_BY" VARCHAR(20 OCTETS) ,
		  "UPDATE_DATE" TIMESTAMP ,
		  "DB_IP_ADDRESS" VARCHAR(20 OCTETS) NOT NULL ,
		  "SOURCE_OFFICE_ID" VARCHAR(20 OCTETS) ,
		  "TARGET_OFFICE_ID" VARCHAR(20 OCTETS) ,
		  "RECORD_STATUS" VARCHAR(10 OCTETS) NOT NULL ,
		  "SCREEN_ID" VARCHAR(30 OCTETS) NOT NULL ,
		  "MONTH" DECIMAL(5,0) ,
		  "YEAR" DECIMAL(5,0) ,
		  "FLAG1" VARCHAR(20 OCTETS) ,
		  "FLAG2" VARCHAR(10 OCTETS) ,
		  "FLAG3" VARCHAR(1 OCTETS) ,
		  "FLAG4" VARCHAR(20 OCTETS) ,
		  "FLAG5" VARCHAR(15 OCTETS) ,
		  "MODULE_ID" VARCHAR(20 OCTETS) ,
		  "SUBMODULE_ID" VARCHAR(20 OCTETS) ,
		  "CHECK_CONDITION" VARCHAR(40 OCTETS) ,
		  "CAPACITOR_AVAIL" VARCHAR(1 OCTETS) ,
		  "METER_OWNERSHIP" VARCHAR(15 OCTETS) ,
		  "SBRNCH_CD" VARCHAR(15 OCTETS) ,
		  "CREDIT_HISTORY" CHAR(1 OCTETS) NOT NULL WITH DEFAULT 'N' ,
		  "CHEQUEBOUNCE_DATE" TIMESTAMP ,
		  "CHEQUEBOUNCE_REASON" VARCHAR(100 OCTETS) ,
		  "DEBT_FLAG" VARCHAR(1 OCTETS) ,
		  "DEBT_ACTION_FLAG" VARCHAR(1 OCTETS) ,
		  "ALLOWEDCHKCNT" DECIMAL(10,0) ,
		  "ACCOUNT_NO" VARCHAR(20 OCTETS) NOT NULL ,
		  "CONSUMER_ID" VARCHAR(25 OCTETS) ,
		  "COUNTRY_ID" VARCHAR(20 OCTETS) ,
		  "METERINGPOINT" VARCHAR(4 OCTETS) ,
		  "CONNECTIONEXPIREDATE" TIMESTAMP ,
		  "APPROVEDPOWERFACTOR" DECIMAL(6,3) ,
		  "SERVICEREGION" VARCHAR(7 OCTETS) WITH DEFAULT 'Inner' ,
		  "ISCONSUMEROPTEDTOD" VARCHAR(1 OCTETS) ,
		  "NEXTBILLINGDATE" TIMESTAMP ,
		  "BILLING_STATUS" VARCHAR(1 OCTETS) ,
		  "SCHEDULE_DAY" DECIMAL(2,0) ,
		  "GEN_SCNO" VARCHAR(25 OCTETS) NOT NULL ,
		  "ADDRESS_5" VARCHAR(30 OCTETS) ,
		  "ALTERNATE_ADDRESS_5" VARCHAR(30 OCTETS) ,
		  "EFFECT_DATE" TIMESTAMP ,
		  "ROUTE_ID" VARCHAR(30 OCTETS) ,
		  "MR_APPLICABLE_FLAG" VARCHAR(1 OCTETS) ,
		  "METER_RENT" DECIMAL(28,0) ,
		  "SUBMETER_COUNT" DECFLOAT(16) ,
		  "CONN_BY" VARCHAR(20 OCTETS) ,
		  "LEVEL_ID" VARCHAR(1 OCTETS) ,
		  "BILLFLG" DECIMAL(1,0) WITH DEFAULT 0 ,
		  "DEMAND_METER_FLAG" VARCHAR(2 OCTETS) WITH DEFAULT 3 ,
		  "DEMAND" DECIMAL(13,5) ,
		  "MTRNO" VARCHAR(20 OCTETS) WITH DEFAULT 0 ,
		  "MF_KWH" DECIMAL(10,2) WITH DEFAULT 0 ,
		  "GOVTCODE_ID" VARCHAR(20 OCTETS) ,
		  "NOOFMONTHS_METERRENT" DECFLOAT(16) WITH DEFAULT 0 ,
		  "BILLMONTH" DECFLOAT(16) ,
		  "BILLYEAR" DECFLOAT(16) ,
		  "ETISALAT_ID" VARCHAR(20 OCTETS) ,
		  "TESTCOL" VARCHAR(20 OCTETS) ,
		  "LANDMARKS" VARCHAR(300 OCTETS) ,
		  "IS_GOVT_SUBSIDY" CHAR(2 OCTETS) ,
		  "GOVT_SUBSIDY" DECIMAL(20,3) ,
		  "DC_APP_FLG" VARCHAR(1 OCTETS) ,
		  "GISUID" VARCHAR(25 OCTETS) ,
		  "DIESEL_CHG" DECIMAL(10,2) ,
		  "PIN_NO" DECIMAL(10,5) ,
		  "PRIORITY" VARCHAR(20 OCTETS) ,
		  "BOOKNO" VARCHAR(50 OCTETS) ,
		  "GIS_LAT" DECIMAL(25,10) ,
		  "GIS_LONG" DECIMAL(25,10) ,
		  "CHQ_REJ_MONTHS" VARCHAR(2 OCTETS) ,
		  "SET1" VARCHAR(3 OCTETS) ,
		  "MOHALLANO" VARCHAR(7 OCTETS) ,
		  "GEOCODE" VARCHAR(18 OCTETS) ,
		  "METERING_VOLT" DECIMAL(15,5) ,
		  "FLORICARE_FLAG" VARCHAR(1 OCTETS) ,
		  "POWER_LOOM_FLAG" VARCHAR(1 OCTETS) ,
		  "MET_DOM_LMV1_FLAG" VARCHAR(1 OCTETS) ,
		  "RURAL_FEEDER_FLAG" VARCHAR(1 OCTETS) ,
		  "GOVT_CODE_ID" VARCHAR(10 OCTETS) ,
		  "BILLBASIS" VARCHAR(10 OCTETS) ,
		  "PERMANENT_ADDRESS_1" VARCHAR(50 OCTETS) ,
		  "PERMANENT_ADDRESS_2" VARCHAR(50 OCTETS) ,
		  "PERMANENT_ADDRESS_3" VARCHAR(50 OCTETS) ,
		  "METRIC" VARCHAR(30 OCTETS) ,
		  "ABADI" VARCHAR(30 OCTETS) ,
		  "VOLT_ID" VARCHAR(20 OCTETS) ,
		  "COMPOUND_STATUS" VARCHAR(2 OCTETS) ,
		  "PERMANENT_ADDRESS_4" VARCHAR(50 OCTETS) ,
		  "PERMANENT_ADDRESS_5" VARCHAR(50 OCTETS) ,
		  "INITIAL_ARRAMT" DECIMAL(10,2) ,
		  "BINDER_NO" VARCHAR(20 OCTETS) ,
		  "BINDER_PAGE_NO" VARCHAR(20 OCTETS) ,
		  "LOCATION_TYPE" VARCHAR(1 OCTETS) ,
		  "TYPE_SWITCH" VARCHAR(1 OCTETS) ,
		  "IS_ROUNDCLOCK_SUP" VARCHAR(1 OCTETS) ,
		  "IS_SWH_EXISTS" VARCHAR(1 OCTETS) ,
		  "DISTRICT" VARCHAR(25 OCTETS) ,
		  "TOWN" VARCHAR(25 OCTETS) ,
		  "VILLAGE" VARCHAR(25 OCTETS) ,
		  "BA_DISTRICT" VARCHAR(50 OCTETS) ,
		  "BA_TOWN" VARCHAR(25 OCTETS) ,
		  "BA_VILLAGE" VARCHAR(25 OCTETS) ,
		  "PA_DISTRICT" VARCHAR(25 OCTETS) ,
		  "PA_TOWN" VARCHAR(25 OCTETS) ,
		  "PA_VILLAGE" VARCHAR(25 OCTETS) ,
		  "SUBGROUP" VARCHAR(10 OCTETS) ,
		  "GRP" VARCHAR(10 OCTETS) ,
		  "METER_REQUIRED" VARCHAR(10 OCTETS) ,
		  "RETURN_MONTH" VARCHAR(7 OCTETS) ,
		  "DLIST_STATUS" VARCHAR(8 OCTETS) ,
		  "MTR_RDG_CHNG" VARCHAR(15 OCTETS) ,
		  "NEXT_BILLINGDT" TIMESTAMP ,
		  "ISBILLED" VARCHAR(2 OCTETS) ,
		  "DEDICATED_FLAG" VARCHAR(1 OCTETS) ,
		  "TRANSFORMER_CAPACITY" VARCHAR(20 OCTETS) )
		 IN "TS8"
		 ORGANIZE BY ROW  ;

GRANT SELECT ON TABLE "DABS    "."CMTCONSUMER_M_UP" TO ROLE "ROLE_READ_ONLY"  ;

GRANT SELECT ON TABLE "DABS    "."CMTCONSUMER_M_UP" TO USER "ETLUSER "  ;

GRANT SELECT ON TABLE "DABS    "."CMTCONSUMER_M_UP" TO USER "ZAFAR   "  ;

GRANT CONTROL ON TABLE "DABS    "."CMTCONSUMER_M_UP" TO USER "DB2INST1"  ;