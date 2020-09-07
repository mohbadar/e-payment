
CREATE TABLE "CENTRAL_ALL"."PAYMENT_MASTER_T"  (
		  "ID" VARCHAR(20 OCTETS) NOT NULL , 
		  "PAYMENT_TYPE_ID" VARCHAR(20 OCTETS) , 
		  "PAYMENT_MODE_ID" VARCHAR(20 OCTETS) , 
		  "AMOUNT" DECIMAL(10,2) , 
		  "COLLECTION_DATE" TIMESTAMP , 
		  "CASHIER_ID" VARCHAR(20 OCTETS) , 
		  "CHEQUE_DD_NUMBER" VARCHAR(30 OCTETS) , 
		  "CHEQUE_DD_DATE" TIMESTAMP , 
		  "BANK_NAME_ID" VARCHAR(20 OCTETS) , 
		  "CREDIT_CARD_APPROVER_CODE" VARCHAR(30 OCTETS) , 
		  "CREDIT_CARD_BANK_NAME_ID" VARCHAR(20 OCTETS) , 
		  "CREDIT_CARD_HOLDER_NAME" VARCHAR(30 OCTETS) , 
		  "ORIGIN" VARCHAR(1 OCTETS) , 
		  "ON_LINE" VARCHAR(1 OCTETS) , 
		  "CREATED_BY" VARCHAR(10 OCTETS) NOT NULL , 
		  "CREATE_DATE" TIMESTAMP NOT NULL , 
		  "UPDATED_BY" VARCHAR(20 OCTETS) , 
		  "UPDATE_DATE" TIMESTAMP , 
		  "DB_IP_ADDRESS" VARCHAR(25 OCTETS) NOT NULL , 
		  "SOURCE_OFFICE_ID" VARCHAR(20 OCTETS) NOT NULL , 
		  "TARGET_OFFICE_ID" VARCHAR(20 OCTETS) , 
		  "RECORD_STATUS" VARCHAR(10 OCTETS) NOT NULL , 
		  "SCREEN_ID" VARCHAR(20 OCTETS) , 
		  "MONTH" DECFLOAT(16) NOT NULL , 
		  "YEAR" DECFLOAT(16) NOT NULL , 
		  "FLAG_MS" VARCHAR(1 OCTETS) , 
		  "FLAG1" VARCHAR(1 OCTETS) , 
		  "FLAG2" VARCHAR(1 OCTETS) , 
		  "FLAG3" VARCHAR(1 OCTETS) , 
		  "FLAG4" VARCHAR(1 OCTETS) , 
		  "FLAG5" VARCHAR(4 OCTETS) , 
		  "CHECK_CONDITION" VARCHAR(100 OCTETS) , 
		  "MODULE_ID" VARCHAR(20 OCTETS) , 
		  "SUBMODULE_ID" VARCHAR(20 OCTETS) , 
		  "COINAGE_AMT" DECIMAL(10,2) , 
		  "BANK_PEN" DECIMAL(10,2) , 
		  "NOT_CH" DECIMAL(10,2) , 
		  "DR_CH" DECIMAL(10,2) , 
		  "OFFLINE_MCHNO" VARCHAR(20 OCTETS) , 
		  "OFFLINE_GSHEETNO" VARCHAR(20 OCTETS) , 
		  "CHBOUNCE_SURCHG" DECIMAL(10,2) , 
		  "OFFLINE_COLLECTION_DATE" TIMESTAMP , 
		  "CURR_CAT" VARCHAR(20 OCTETS) , 
		  "CURR_PHASE" VARCHAR(20 OCTETS) , 
		  "CYCLE" VARCHAR(15 OCTETS) )   
		 INDEX IN "TBS_IX" PARTITION BY RANGE("COLLECTION_DATE") 
		 (PART "P0801" STARTING(MINVALUE) IN "TBS_PAY_M", 
		 PART "P0802" STARTING('2008-02-01-00.00.00.000000') IN "TBS_PAY_M", 
		 PART "P0803" STARTING('2008-03-01-00.00.00.000000') IN "TBS_PAY_M", 
		 PART "P0804" STARTING('2008-04-01-00.00.00.000000') IN "TBS_PAY_M", 
		 PART "P0805" STARTING('2008-05-01-00.00.00.000000') IN "TBS_PAY_M", 
		 PART "P0806" STARTING('2008-06-01-00.00.00.000000') IN "TBS_PAY_M", 
		 PART "P0807" STARTING('2008-07-01-00.00.00.000000') IN "TBS_PAY_M", 
		 PART "P0808" STARTING('2008-08-01-00.00.00.000000') IN "TBS_PAY_M", 
		 PART "P0809" STARTING('2008-09-01-00.00.00.000000') IN "TBS_PAY_M", 
		 PART "P0810" STARTING('2008-10-01-00.00.00.000000') IN "TBS_PAY_M", 
		 PART "P0811" STARTING('2008-11-01-00.00.00.000000') IN "TBS_PAY_M", 
		 PART "P0812" STARTING('2008-12-01-00.00.00.000000') IN "TBS_PAY_M", 
		 PART "P0901" STARTING('2009-01-01-00.00.00.000000') IN "TBS_PAY_M", 
		 PART "P0902" STARTING('2009-02-01-00.00.00.000000') IN "TBS_PAY_M", 
		 PART "P0903" STARTING('2009-03-01-00.00.00.000000') IN "TBS_PAY_M", 
		 PART "P0904" STARTING('2009-04-01-00.00.00.000000') IN "TBS_PAY_M", 
		 PART "P0905" STARTING('2009-05-01-00.00.00.000000') IN "TBS_PAY_M", 
		 PART "P0906" STARTING('2009-06-01-00.00.00.000000') IN "TBS_PAY_M", 
		 PART "P0907" STARTING('2009-07-01-00.00.00.000000') IN "TBS_PAY_M", 
		 PART "P0908" STARTING('2009-08-01-00.00.00.000000') IN "TBS_PAY_M", 
		 PART "P0909" STARTING('2009-09-01-00.00.00.000000') IN "TBS_PAY_M", 
		 PART "P0910" STARTING('2009-10-01-00.00.00.000000') IN "TBS_PAY_M", 
		 PART "P0911" STARTING('2009-11-01-00.00.00.000000') IN "TBS_PAY_M", 
		 PART "P0912" STARTING('2009-12-01-00.00.00.000000') IN "TBS_PAY_M", 
		 PART "P1001" STARTING('2010-01-01-00.00.00.000000') IN "TBS_PAY_M", 
		 PART "P1002" STARTING('2010-02-01-00.00.00.000000') IN "TBS_PAY_M", 
		 PART "P1003" STARTING('2010-03-01-00.00.00.000000') IN "TBS_PAY_M", 
		 PART "P1004" STARTING('2010-04-01-00.00.00.000000') IN "TBS_PAY_M", 
		 PART "P1005" STARTING('2010-05-01-00.00.00.000000') IN "TBS_PAY_M", 
		 PART "P1006" STARTING('2010-06-01-00.00.00.000000') IN "TBS_PAY_M", 
		 PART "P1007" STARTING('2010-07-01-00.00.00.000000') IN "TBS_PAY_M", 
		 PART "P1008" STARTING('2010-08-01-00.00.00.000000') IN "TBS_PAY_M", 
		 PART "P1009" STARTING('2010-09-01-00.00.00.000000') IN "TBS_PAY_M", 
		 PART "P1010" STARTING('2010-10-01-00.00.00.000000') IN "TBS_PAY_M", 
		 PART "P1011" STARTING('2010-11-01-00.00.00.000000') IN "TBS_PAY_M", 
		 PART "P1012" STARTING('2010-12-01-00.00.00.000000') IN "TBS_PAY_M", 
		 PART "P1101" STARTING('2011-01-01-00.00.00.000000') IN "TBS_PAY_M", 
		 PART "P1102" STARTING('2011-02-01-00.00.00.000000') IN "TBS_PAY_M", 
		 PART "P1103" STARTING('2011-03-01-00.00.00.000000') IN "TBS_PAY_M", 
		 PART "P1104" STARTING('2011-04-01-00.00.00.000000') IN "TBS_PAY_M", 
		 PART "P1105" STARTING('2011-05-01-00.00.00.000000') IN "TBS_PAY_M", 
		 PART "P1106" STARTING('2011-06-01-00.00.00.000000') IN "TBS_PAY_M", 
		 PART "P1107" STARTING('2011-07-01-00.00.00.000000') IN "TBS_PAY_M", 
		 PART "P1108" STARTING('2011-08-01-00.00.00.000000') IN "TBS_PAY_M", 
		 PART "P1109" STARTING('2011-09-01-00.00.00.000000') IN "TBS_PAY_M", 
		 PART "P1110" STARTING('2011-10-01-00.00.00.000000') IN "TBS_PAY_M", 
		 PART "P1111" STARTING('2011-11-01-00.00.00.000000') IN "TBS_PAY_M", 
		 PART "P1112" STARTING('2011-12-01-00.00.00.000000') IN "TBS_PAY_M", 
		 PART "P1201" STARTING('2012-01-01-00.00.00.000000') IN "TBS_PAY_M", 
		 PART "P1202" STARTING('2012-02-01-00.00.00.000000') IN "TBS_PAY_M", 
		 PART "P1203" STARTING('2012-03-01-00.00.00.000000') IN "TBS_PAY_M", 
		 PART "P1204" STARTING('2012-04-01-00.00.00.000000') IN "TBS_PAY_M", 
		 PART "P1205" STARTING('2012-05-01-00.00.00.000000') IN "TBS_PAY_M", 
		 PART "P1206" STARTING('2012-06-01-00.00.00.000000') IN "TBS_PAY_M", 
		 PART "P1207" STARTING('2012-07-01-00.00.00.000000') IN "TBS_PAY_M", 
		 PART "P1208" STARTING('2012-08-01-00.00.00.000000') IN "TBS_PAY_M", 
		 PART "P1209" STARTING('2012-09-01-00.00.00.000000') IN "TBS_PAY_M", 
		 PART "P1210" STARTING('2012-10-01-00.00.00.000000') IN "TBS_PAY_M", 
		 PART "P1211" STARTING('2012-11-01-00.00.00.000000') IN "TBS_PAY_M", 
		 PART "P1212" STARTING('2012-12-01-00.00.00.000000') IN "TBS_PAY_M", 
		 PART "P1301" STARTING('2013-01-01-00.00.00.000000') IN "TBS_PAY_M", 
		 PART "P1302" STARTING('2013-02-01-00.00.00.000000') IN "TBS_PAY_M", 
		 PART "P1303" STARTING('2013-03-01-00.00.00.000000') IN "TBS_PAY_M", 
		 PART "P1304" STARTING('2013-04-01-00.00.00.000000') IN "TBS_PAY_M", 
		 PART "P1305" STARTING('2013-05-01-00.00.00.000000') IN "TBS_PAY_M", 
		 PART "P1306" STARTING('2013-06-01-00.00.00.000000') IN "TBS_PAY_M", 
		 PART "P1307" STARTING('2013-07-01-00.00.00.000000') IN "TBS_PAY_M", 
		 PART "P1308" STARTING('2013-08-01-00.00.00.000000') IN "TBS_PAY_M", 
		 PART "P1309" STARTING('2013-09-01-00.00.00.000000') IN "TBS_PAY_M", 
		 PART "P1310" STARTING('2013-10-01-00.00.00.000000') IN "TBS_PAY_M", 
		 PART "P1311" STARTING('2013-11-01-00.00.00.000000') IN "TBS_PAY_M", 
		 PART "P1312" STARTING('2013-12-01-00.00.00.000000') IN "TBS_PAY_M", 
		 PART "P1401" STARTING('2014-01-01-00.00.00.000000') IN "TBS_PAY_M", 
		 PART "P1402" STARTING('2014-02-01-00.00.00.000000') IN "TBS_PAY_M", 
		 PART "P1403" STARTING('2014-03-01-00.00.00.000000') IN "TBS_PAY_M", 
		 PART "P1404" STARTING('2014-04-01-00.00.00.000000') IN "TBS_PAY_M", 
		 PART "P1405" STARTING('2014-05-01-00.00.00.000000') IN "TBS_PAY_M", 
		 PART "P1406" STARTING('2014-06-01-00.00.00.000000') IN "TBS_PAY_M", 
		 PART "P1407" STARTING('2014-07-01-00.00.00.000000') IN "TBS_PAY_M", 
		 PART "P1408" STARTING('2014-08-01-00.00.00.000000') IN "TBS_PAY_M", 
		 PART "P1409" STARTING('2014-09-01-00.00.00.000000') IN "TBS_PAY_M", 
		 PART "P1410" STARTING('2014-10-01-00.00.00.000000') IN "TBS_PAY_M", 
		 PART "P1411" STARTING('2014-11-01-00.00.00.000000') IN "TBS_PAY_M", 
		 PART "P1412" STARTING('2014-12-01-00.00.00.000000') IN "TBS_PAY_M", 
		 PART "P1501" STARTING('2015-01-01-00.00.00.000000') IN "TBS_PAY_M", 
		 PART "P1502" STARTING('2015-02-01-00.00.00.000000') IN "TBS_PAY_M", 
		 PART "P1503" STARTING('2015-03-01-00.00.00.000000') IN "TBS_PAY_M", 
		 PART "P1504" STARTING('2015-04-01-00.00.00.000000') IN "TBS_PAY_M", 
		 PART "P1505" STARTING('2015-05-01-00.00.00.000000') IN "TBS_PAY_M", 
		 PART "P1506" STARTING('2015-06-01-00.00.00.000000') IN "TBS_PAY_M", 
		 PART "P1507" STARTING('2015-07-01-00.00.00.000000') IN "TBS_PAY_M", 
		 PART "P1508" STARTING('2015-08-01-00.00.00.000000') IN "TBS_PAY_M", 
		 PART "P1509" STARTING('2015-09-01-00.00.00.000000') IN "TBS_PAY_M", 
		 PART "P1510" STARTING('2015-10-01-00.00.00.000000') IN "TBS_PAY_M", 
		 PART "P1511" STARTING('2015-11-01-00.00.00.000000') IN "TBS_PAY_M", 
		 PART "P1512" STARTING('2015-12-01-00.00.00.000000') IN "TBS_PAY_M", 
		 PART "P1601" STARTING('2016-01-01-00.00.00.000000') IN "TBS_PAY_M", 
		 PART "P1602" STARTING('2016-02-01-00.00.00.000000') IN "TBS_PAY_M", 
		 PART "P1603" STARTING('2016-03-01-00.00.00.000000') IN "TBS_PAY_M", 
		 PART "P1604" STARTING('2016-04-01-00.00.00.000000') IN "TBS_PAY_M", 
		 PART "P1605" STARTING('2016-05-01-00.00.00.000000') IN "TBS_PAY_M", 
		 PART "P1606" STARTING('2016-06-01-00.00.00.000000') IN "TBS_PAY_M", 
		 PART "P1607" STARTING('2016-07-01-00.00.00.000000') IN "TBS_PAY_M", 
		 PART "P1608" STARTING('2016-08-01-00.00.00.000000') IN "TBS_PAY_M", 
		 PART "P1609" STARTING('2016-09-01-00.00.00.000000') IN "TBS_PAY_M", 
		 PART "P1610" STARTING('2016-10-01-00.00.00.000000') IN "TBS_PAY_M", 
		 PART "P1611" STARTING('2016-11-01-00.00.00.000000') IN "TBS_PAY_M", 
		 PART "P1612" STARTING('2016-12-01-00.00.00.000000') IN "TBS_PAY_M", 
		 PART "P1701" STARTING('2017-01-01-00.00.00.000000') IN "TBS_PAY_M", 
		 PART "P1702" STARTING('2017-02-01-00.00.00.000000') IN "TBS_PAY_M", 
		 PART "P1703" STARTING('2017-03-01-00.00.00.000000') IN "TBS_PAY_M", 
		 PART "P1704" STARTING('2017-04-01-00.00.00.000000') IN "TBS_PAY_M", 
		 PART "P1705" STARTING('2017-05-01-00.00.00.000000') IN "TBS_PAY_M", 
		 PART "P1706" STARTING('2017-06-01-00.00.00.000000') IN "TBS_PAY_M", 
		 PART "P1707" STARTING('2017-07-01-00.00.00.000000') IN "TBS_PAY_M", 
		 PART "P1708" STARTING('2017-08-01-00.00.00.000000') IN "TBS_PAY_M", 
		 PART "P1709" STARTING('2017-09-01-00.00.00.000000') IN "TBS_PAY_M", 
		 PART "P1710" STARTING('2017-10-01-00.00.00.000000') IN "TBS_PAY_M", 
		 PART "P1711" STARTING('2017-11-01-00.00.00.000000') IN "TBS_PAY_M", 
		 PART "P1712" STARTING('2017-12-01-00.00.00.000000') IN "TBS_PAY_M", 
		 PART "P1801" STARTING('2018-01-01-00.00.00.000000') IN "TBS_PAY_M", 
		 PART "P1802" STARTING('2018-02-01-00.00.00.000000') IN "TBS_PAY_M", 
		 PART "P1803" STARTING('2018-03-01-00.00.00.000000') IN "TBS_PAY_M", 
		 PART "P1804" STARTING('2018-04-01-00.00.00.000000') IN "TBS_PAY_M", 
		 PART "P1805" STARTING('2018-05-01-00.00.00.000000') IN "TBS_PAY_M", 
		 PART "P1806" STARTING('2018-06-01-00.00.00.000000') IN "TBS_PAY_M", 
		 PART "P1807" STARTING('2018-07-01-00.00.00.000000') IN "TBS_PAY_M", 
		 PART "P1808" STARTING('2018-08-01-00.00.00.000000') IN "TBS_PAY_M", 
		 PART "P1809" STARTING('2018-09-01-00.00.00.000000') IN "TBS_PAY_M", 
		 PART "P1810" STARTING('2018-10-01-00.00.00.000000') IN "TBS_PAY_M", 
		 PART "P1811" STARTING('2018-11-01-00.00.00.000000') IN "TBS_PAY_M", 
		 PART "P1812" STARTING('2018-12-01-00.00.00.000000') IN "TBS_PAY_M", 
		 PART "P1901" STARTING('2019-01-01-00.00.00.000000') IN "TBS_PAY_M", 
		 PART "P1902" STARTING('2019-02-01-00.00.00.000000') IN "TBS_PAY_M", 
		 PART "P1903" STARTING('2019-03-01-00.00.00.000000') IN "TBS_PAY_M", 
		 PART "P1904" STARTING('2019-04-01-00.00.00.000000') IN "TBS_PAY_M", 
		 PART "P1905" STARTING('2019-05-01-00.00.00.000000') IN "TBS_PAY_M", 
		 PART "P1906" STARTING('2019-06-01-00.00.00.000000') IN "TBS_PAY_M", 
		 PART "P1907" STARTING('2019-07-01-00.00.00.000000') IN "TBS_PAY_M", 
		 PART "P1908" STARTING('2019-08-01-00.00.00.000000') IN "TBS_PAY_M", 
		 PART "P1909" STARTING('2019-09-01-00.00.00.000000') IN "TBS_PAY_M", 
		 PART "P1910" STARTING('2019-10-01-00.00.00.000000') IN "TBS_PAY_M", 
		 PART "P1911" STARTING('2019-11-01-00.00.00.000000') IN "TBS_PAY_M", 
		 PART "P1912" STARTING('2019-12-01-00.00.00.000000') IN "TBS_PAY_M", 
		 PART "P2001" STARTING('2020-01-01-00.00.00.000000') IN "TBS_PAY_M", 
		 PART "P2002" STARTING('2020-02-01-00.00.00.000000') IN "TBS_PAY_M", 
		 PART "P2003" STARTING('2020-03-01-00.00.00.000000') IN "TBS_PAY_M", 
		 PART "P2004" STARTING('2020-04-01-00.00.00.000000') IN "TBS_PAY_M", 
		 PART "P2005" STARTING('2020-05-01-00.00.00.000000') IN "TBS_PAY_M", 
		 PART "P2006" STARTING('2020-06-01-00.00.00.000000') IN "TBS_PAY_M", 
		 PART "P2007" STARTING('2020-07-01-00.00.00.000000') IN "TBS_PAY_M", 
		 PART "P2008" STARTING('2020-08-01-00.00.00.000000') IN "TBS_PAY_M", 
		 PART "P2009" STARTING('2020-09-01-00.00.00.000000') IN "TBS_PAY_M", 
		 PART "P2010" STARTING('2020-10-01-00.00.00.000000') IN "TBS_PAY_M", 
		 PART "P2011" STARTING('2020-11-01-00.00.00.000000') IN "TBS_PAY_M", 
		 PART "P2012" STARTING('2020-12-01-00.00.00.000000') ENDING(MAXVALUE) IN "TBS_PAY_M") 
		 ORGANIZE BY ROW  ;

ALTER TABLE "CENTRAL_ALL"."PAYMENT_MASTER_T" APPEND ON ;

CREATE INDEX "CENTRAL_ALL"."IDX_ON_LINE" ON "CENTRAL_ALL"."PAYMENT_MASTER_T" 
		("ON_LINE" ASC)
		PARTITIONED
		
		COMPRESS NO 
		INCLUDE NULL KEYS ALLOW REVERSE SCANS ;

CREATE INDEX "CENTRAL_ALL"."IX157_PAYMENT_MAST" ON "CENTRAL_ALL"."PAYMENT_MASTER_T" 
		("CHECK_CONDITION" ASC)
		PARTITIONED
		
		COMPRESS NO 
		INCLUDE NULL KEYS ALLOW REVERSE SCANS ;
ALTER TABLE "CENTRAL_ALL"."PAYMENT_MASTER_T" 
	ADD CONSTRAINT "PK_PAYMENT_MASTER_T" PRIMARY KEY
		("ID") ;
CREATE ALIAS "DABS    "."PAYMENT_MASTER_T" FOR TABLE "CENTRAL_ALL"."PAYMENT_MASTER_T" ;

ALTER TABLE "CENTRAL_ALL"."PAYMENT_MASTER_T" 
	ADD CONSTRAINT "FK318_PAYMENT_MAST" FOREIGN KEY
		("PAYMENT_TYPE_ID")
	REFERENCES "CENTRAL_ALL"."LTPAYMENT_TYPE_M"
		("ID")
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
	ENFORCED
	ENABLE QUERY OPTIMIZATION ;

GRANT SELECT ON TABLE "CENTRAL_ALL"."PAYMENT_MASTER_T" TO ROLE "ROLE_READ_ONLY"  ;

GRANT SELECT ON TABLE "CENTRAL_ALL"."PAYMENT_MASTER_T" TO USER "ETLUSER "  ;

GRANT SELECT ON TABLE "CENTRAL_ALL"."PAYMENT_MASTER_T" TO USER "ZAFAR   "  ;

GRANT CONTROL ON TABLE "CENTRAL_ALL"."PAYMENT_MASTER_T" TO USER "DB2INST1"  ;
