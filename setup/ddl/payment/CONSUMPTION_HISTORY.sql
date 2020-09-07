
CREATE TABLE "CENTRAL_ALL"."CONSUMPTION_HISTORY"  (
		  "ID" VARCHAR(20 OCTETS) , 
		  "CONS_NUM" VARCHAR(20 OCTETS) , 
		  "BAL_DATE" TIMESTAMP(0) , 
		  "CURR_READING" DECIMAL(15,3) , 
		  "BILL_UNITS" DECIMAL(15,3) , 
		  "CREDIT" DECIMAL(15,3) , 
		  "DEBIT" DECIMAL(15,3) , 
		  "BALANCE" DECIMAL(15,3) , 
		  "REMARKS" VARCHAR(50 OCTETS) , 
		  "CATEGORY" VARCHAR(20 OCTETS) , 
		  "TRANSACTION_CODE" VARCHAR(15 OCTETS) , 
		  "ENERGY_CHG" DECIMAL(15,3) , 
		  "FIXED_CHG" DECIMAL(15,3) , 
		  "METER_RENT" DECIMAL(15,3) , 
		  "STATIONARY_AMT" DECIMAL(15,3) , 
		  "BILLNUMBER" VARCHAR(30 OCTETS) , 
		  "CREATE_DATE" TIMESTAMP(0) , 
		  "CREATED_BY" VARCHAR(20 OCTETS) , 
		  "UPDATE_DATE" TIMESTAMP(0) , 
		  "UPDATED_BY" VARCHAR(20 OCTETS) , 
		  "DB_IP_ADDRESS" VARCHAR(20 OCTETS) , 
		  "FLAG1" VARCHAR(1 OCTETS) , 
		  "FLAG2" VARCHAR(10 OCTETS) , 
		  "FLAG3" VARCHAR(15 OCTETS) , 
		  "FLAG4" VARCHAR(1 OCTETS) , 
		  "FLAG5" VARCHAR(1 OCTETS) , 
		  "SOURCE_OFFICE_ID" VARCHAR(20 OCTETS) , 
		  "TARGET_OFFICE_ID" VARCHAR(20 OCTETS) , 
		  "SCREEN_ID" VARCHAR(30 OCTETS) , 
		  "MODULE_ID" VARCHAR(20 OCTETS) , 
		  "SUBMODULE_ID" VARCHAR(20 OCTETS) , 
		  "RECORD_STATUS" VARCHAR(20 OCTETS) , 
		  "CYCLE" VARCHAR(4 OCTETS) , 
		  "CYCLE_YEAR" VARCHAR(4 OCTETS) , 
		  "CYCLE_YEAR_DARI" VARCHAR(5 OCTETS) , 
		  "MAC_ADDRESS" VARCHAR(50 OCTETS) , 
		  "OFFICE_ID" VARCHAR(20 OCTETS) )   
		 INDEX IN "TBS_IX" PARTITION BY RANGE("CYCLE_YEAR", "CYCLE") 
		 (PART "PMIN" STARTING(MINVALUE,MINVALUE) IN "TBS_CONS_H", 
		 PART "P0801" STARTING('2008','01') IN "TBS_CONS_H", 
		 PART "P0802" STARTING('2008','02') IN "TBS_CONS_H", 
		 PART "P0803" STARTING('2008','03') IN "TBS_CONS_H", 
		 PART "P0804" STARTING('2008','04') IN "TBS_CONS_H", 
		 PART "P0805" STARTING('2008','05') IN "TBS_CONS_H", 
		 PART "P0806" STARTING('2008','06') IN "TBS_CONS_H", 
		 PART "P0807" STARTING('2008','07') IN "TBS_CONS_H", 
		 PART "P0808" STARTING('2008','08') IN "TBS_CONS_H", 
		 PART "P0809" STARTING('2008','09') IN "TBS_CONS_H", 
		 PART "P0810" STARTING('2008','10') IN "TBS_CONS_H", 
		 PART "P0811" STARTING('2008','11') IN "TBS_CONS_H", 
		 PART "P0812" STARTING('2008','12') IN "TBS_CONS_H", 
		 PART "P0901" STARTING('2009','01') IN "TBS_CONS_H", 
		 PART "P0902" STARTING('2009','02') IN "TBS_CONS_H", 
		 PART "P0903" STARTING('2009','03') IN "TBS_CONS_H", 
		 PART "P0904" STARTING('2009','04') IN "TBS_CONS_H", 
		 PART "P0905" STARTING('2009','05') IN "TBS_CONS_H", 
		 PART "P0906" STARTING('2009','06') IN "TBS_CONS_H", 
		 PART "P0907" STARTING('2009','07') IN "TBS_CONS_H", 
		 PART "P0908" STARTING('2009','08') IN "TBS_CONS_H", 
		 PART "P0909" STARTING('2009','09') IN "TBS_CONS_H", 
		 PART "P0910" STARTING('2009','10') IN "TBS_CONS_H", 
		 PART "P0911" STARTING('2009','11') IN "TBS_CONS_H", 
		 PART "P0912" STARTING('2009','12') IN "TBS_CONS_H", 
		 PART "P1001" STARTING('2010','01') IN "TBS_CONS_H", 
		 PART "P1002" STARTING('2010','02') IN "TBS_CONS_H", 
		 PART "P1003" STARTING('2010','03') IN "TBS_CONS_H", 
		 PART "P1004" STARTING('2010','04') IN "TBS_CONS_H", 
		 PART "P1005" STARTING('2010','05') IN "TBS_CONS_H", 
		 PART "P1006" STARTING('2010','06') IN "TBS_CONS_H", 
		 PART "P1007" STARTING('2010','07') IN "TBS_CONS_H", 
		 PART "P1008" STARTING('2010','08') IN "TBS_CONS_H", 
		 PART "P1009" STARTING('2010','09') IN "TBS_CONS_H", 
		 PART "P1010" STARTING('2010','10') IN "TBS_CONS_H", 
		 PART "P1011" STARTING('2010','11') IN "TBS_CONS_H", 
		 PART "P1012" STARTING('2010','12') IN "TBS_CONS_H", 
		 PART "P1101" STARTING('2011','01') IN "TBS_CONS_H", 
		 PART "P1102" STARTING('2011','02') IN "TBS_CONS_H", 
		 PART "P1103" STARTING('2011','03') IN "TBS_CONS_H", 
		 PART "P1104" STARTING('2011','04') IN "TBS_CONS_H", 
		 PART "P1105" STARTING('2011','05') IN "TBS_CONS_H", 
		 PART "P1106" STARTING('2011','06') IN "TBS_CONS_H", 
		 PART "P1107" STARTING('2011','07') IN "TBS_CONS_H", 
		 PART "P1108" STARTING('2011','08') IN "TBS_CONS_H", 
		 PART "P1109" STARTING('2011','09') IN "TBS_CONS_H", 
		 PART "P1110" STARTING('2011','10') IN "TBS_CONS_H", 
		 PART "P1111" STARTING('2011','11') IN "TBS_CONS_H", 
		 PART "P1112" STARTING('2011','12') IN "TBS_CONS_H", 
		 PART "P1201" STARTING('2012','01') IN "TBS_CONS_H", 
		 PART "P1202" STARTING('2012','02') IN "TBS_CONS_H", 
		 PART "P1203" STARTING('2012','03') IN "TBS_CONS_H", 
		 PART "P1204" STARTING('2012','04') IN "TBS_CONS_H", 
		 PART "P1205" STARTING('2012','05') IN "TBS_CONS_H", 
		 PART "P1206" STARTING('2012','06') IN "TBS_CONS_H", 
		 PART "P1207" STARTING('2012','07') IN "TBS_CONS_H", 
		 PART "P1208" STARTING('2012','08') IN "TBS_CONS_H", 
		 PART "P1209" STARTING('2012','09') IN "TBS_CONS_H", 
		 PART "P1210" STARTING('2012','10') IN "TBS_CONS_H", 
		 PART "P1211" STARTING('2012','11') IN "TBS_CONS_H", 
		 PART "P1212" STARTING('2012','12') IN "TBS_CONS_H", 
		 PART "P1301" STARTING('2013','01') IN "TBS_CONS_H", 
		 PART "P1302" STARTING('2013','02') IN "TBS_CONS_H", 
		 PART "P1303" STARTING('2013','03') IN "TBS_CONS_H", 
		 PART "P1304" STARTING('2013','04') IN "TBS_CONS_H", 
		 PART "P1305" STARTING('2013','05') IN "TBS_CONS_H", 
		 PART "P1306" STARTING('2013','06') IN "TBS_CONS_H", 
		 PART "P1307" STARTING('2013','07') IN "TBS_CONS_H", 
		 PART "P1308" STARTING('2013','08') IN "TBS_CONS_H", 
		 PART "P1309" STARTING('2013','09') IN "TBS_CONS_H", 
		 PART "P1310" STARTING('2013','10') IN "TBS_CONS_H", 
		 PART "P1311" STARTING('2013','11') IN "TBS_CONS_H", 
		 PART "P1312" STARTING('2013','12') IN "TBS_CONS_H", 
		 PART "P1401" STARTING('2014','01') IN "TBS_CONS_H", 
		 PART "P1402" STARTING('2014','02') IN "TBS_CONS_H", 
		 PART "P1403" STARTING('2014','03') IN "TBS_CONS_H", 
		 PART "P1404" STARTING('2014','04') IN "TBS_CONS_H", 
		 PART "P1405" STARTING('2014','05') IN "TBS_CONS_H", 
		 PART "P1406" STARTING('2014','06') IN "TBS_CONS_H", 
		 PART "P1407" STARTING('2014','07') IN "TBS_CONS_H", 
		 PART "P1408" STARTING('2014','08') IN "TBS_CONS_H", 
		 PART "P1409" STARTING('2014','09') IN "TBS_CONS_H", 
		 PART "P1410" STARTING('2014','10') IN "TBS_CONS_H", 
		 PART "P1411" STARTING('2014','11') IN "TBS_CONS_H", 
		 PART "P1412" STARTING('2014','12') IN "TBS_CONS_H", 
		 PART "P1501" STARTING('2015','01') IN "TBS_CONS_H", 
		 PART "P1502" STARTING('2015','02') IN "TBS_CONS_H", 
		 PART "P1503" STARTING('2015','03') IN "TBS_CONS_H", 
		 PART "P1504" STARTING('2015','04') IN "TBS_CONS_H", 
		 PART "P1505" STARTING('2015','05') IN "TBS_CONS_H", 
		 PART "P1506" STARTING('2015','06') IN "TBS_CONS_H", 
		 PART "P1507" STARTING('2015','07') IN "TBS_CONS_H", 
		 PART "P1508" STARTING('2015','08') IN "TBS_CONS_H", 
		 PART "P1509" STARTING('2015','09') IN "TBS_CONS_H", 
		 PART "P1510" STARTING('2015','10') IN "TBS_CONS_H", 
		 PART "P1511" STARTING('2015','11') IN "TBS_CONS_H", 
		 PART "P1512" STARTING('2015','12') IN "TBS_CONS_H", 
		 PART "P1601" STARTING('2016','01') IN "TBS_CONS_H", 
		 PART "P1602" STARTING('2016','02') IN "TBS_CONS_H", 
		 PART "P1603" STARTING('2016','03') IN "TBS_CONS_H", 
		 PART "P1604" STARTING('2016','04') IN "TBS_CONS_H", 
		 PART "P1605" STARTING('2016','05') IN "TBS_CONS_H", 
		 PART "P1606" STARTING('2016','06') IN "TBS_CONS_H", 
		 PART "P1607" STARTING('2016','07') IN "TBS_CONS_H", 
		 PART "P1608" STARTING('2016','08') IN "TBS_CONS_H", 
		 PART "P1609" STARTING('2016','09') IN "TBS_CONS_H", 
		 PART "P1610" STARTING('2016','10') IN "TBS_CONS_H", 
		 PART "P1611" STARTING('2016','11') IN "TBS_CONS_H", 
		 PART "P1612" STARTING('2016','12') IN "TBS_CONS_H", 
		 PART "P1701" STARTING('2017','01') IN "TBS_CONS_H", 
		 PART "P1702" STARTING('2017','02') IN "TBS_CONS_H", 
		 PART "P1703" STARTING('2017','03') IN "TBS_CONS_H", 
		 PART "P1704" STARTING('2017','04') IN "TBS_CONS_H", 
		 PART "P1705" STARTING('2017','05') IN "TBS_CONS_H", 
		 PART "P1706" STARTING('2017','06') IN "TBS_CONS_H", 
		 PART "P1707" STARTING('2017','07') IN "TBS_CONS_H", 
		 PART "P1708" STARTING('2017','08') IN "TBS_CONS_H", 
		 PART "P1709" STARTING('2017','09') IN "TBS_CONS_H", 
		 PART "P1710" STARTING('2017','10') IN "TBS_CONS_H", 
		 PART "P1711" STARTING('2017','11') IN "TBS_CONS_H", 
		 PART "P1712" STARTING('2017','12') IN "TBS_CONS_H", 
		 PART "P1801" STARTING('2018','01') IN "TBS_CONS_H", 
		 PART "P1802" STARTING('2018','02') IN "TBS_CONS_H", 
		 PART "P1803" STARTING('2018','03') IN "TBS_CONS_H", 
		 PART "P1804" STARTING('2018','04') IN "TBS_CONS_H", 
		 PART "P1805" STARTING('2018','05') IN "TBS_CONS_H", 
		 PART "P1806" STARTING('2018','06') IN "TBS_CONS_H", 
		 PART "P1807" STARTING('2018','07') IN "TBS_CONS_H", 
		 PART "P1808" STARTING('2018','08') IN "TBS_CONS_H", 
		 PART "P1809" STARTING('2018','09') IN "TBS_CONS_H", 
		 PART "P1810" STARTING('2018','10') IN "TBS_CONS_H", 
		 PART "P1811" STARTING('2018','11') IN "TBS_CONS_H", 
		 PART "P1812" STARTING('2018','12') IN "TBS_CONS_H", 
		 PART "P1901" STARTING('2019','01') IN "TBS_CONS_H", 
		 PART "P1902" STARTING('2019','02') IN "TBS_CONS_H", 
		 PART "P1903" STARTING('2019','03') IN "TBS_CONS_H", 
		 PART "P1904" STARTING('2019','04') IN "TBS_CONS_H", 
		 PART "P1905" STARTING('2019','05') IN "TBS_CONS_H", 
		 PART "P1906" STARTING('2019','06') IN "TBS_CONS_H", 
		 PART "P1907" STARTING('2019','07') IN "TBS_CONS_H", 
		 PART "P1908" STARTING('2019','08') IN "TBS_CONS_H", 
		 PART "P1909" STARTING('2019','09') IN "TBS_CONS_H", 
		 PART "P1910" STARTING('2019','10') IN "TBS_CONS_H", 
		 PART "P1911" STARTING('2019','11') IN "TBS_CONS_H", 
		 PART "P1912" STARTING('2019','12') IN "TBS_CONS_H", 
		 PART "P2001" STARTING('2020','01') IN "TBS_CONS_H", 
		 PART "P2002" STARTING('2020','02') IN "TBS_CONS_H", 
		 PART "P2003" STARTING('2020','03') IN "TBS_CONS_H", 
		 PART "P2004" STARTING('2020','04') IN "TBS_CONS_H", 
		 PART "P2005" STARTING('2020','05') IN "TBS_CONS_H", 
		 PART "P2006" STARTING('2020','06') IN "TBS_CONS_H", 
		 PART "P2007" STARTING('2020','07') IN "TBS_CONS_H", 
		 PART "P2008" STARTING('2020','08') IN "TBS_CONS_H", 
		 PART "P2009" STARTING('2020','09') IN "TBS_CONS_H", 
		 PART "P2010" STARTING('2020','10') IN "TBS_CONS_H", 
		 PART "P2011" STARTING('2020','11') IN "TBS_CONS_H", 
		 PART "P2012" STARTING('2020','12') ENDING(MAXVALUE,MAXVALUE) IN "TBS_CONS_H") 
		 ORGANIZE BY ROW  ;

ALTER TABLE "CENTRAL_ALL"."CONSUMPTION_HISTORY" APPEND ON ;

CREATE INDEX "CENTRAL_ALL"."CONSHISCONS_IDX" ON "CENTRAL_ALL"."CONSUMPTION_HISTORY" 
		("CONS_NUM" ASC)
		PARTITIONED
		
		COMPRESS NO 
		INCLUDE NULL KEYS DISALLOW REVERSE SCANS ;

CREATE INDEX "CENTRAL_ALL"."HISTBILLNO_IDX" ON "CENTRAL_ALL"."CONSUMPTION_HISTORY" 
		("BILLNUMBER" ASC)
		PARTITIONED
		
		COMPRESS NO 
		INCLUDE NULL KEYS DISALLOW REVERSE SCANS ;

CREATE INDEX "CENTRAL_ALL"."IDX_CONSHIS_BALDATE" ON "CENTRAL_ALL"."CONSUMPTION_HISTORY" 
		("BAL_DATE" ASC)
		PARTITIONED
		
		COMPRESS NO 
		INCLUDE NULL KEYS DISALLOW REVERSE SCANS ;

CREATE INDEX "CENTRAL_ALL"."IDX_CONSHIS_CATOFFICE" ON "CENTRAL_ALL"."CONSUMPTION_HISTORY" 
		("CATEGORY" ASC,
		 "OFFICE_ID" ASC)
		PARTITIONED
		
		COMPRESS NO 
		INCLUDE NULL KEYS DISALLOW REVERSE SCANS ;

CREATE INDEX "CENTRAL_ALL"."IDX_CONS_HIS_CONSRECBALBLNOCYCYDTRANS" ON "CENTRAL_ALL"."CONSUMPTION_HISTORY" 
		("CONS_NUM" ASC,
		 "RECORD_STATUS" ASC,
		 "BAL_DATE" ASC,
		 "BILLNUMBER" ASC,
		 "CYCLE" ASC,
		 "CYCLE_YEAR_DARI" ASC,
		 "TRANSACTION_CODE" ASC)
		NOT PARTITIONED IN "TBS_IX"
		
		COLLECT SAMPLED DETAILED STATISTICS 
		COMPRESS NO 
		INCLUDE NULL KEYS ALLOW REVERSE SCANS ;

CREATE INDEX "CENTRAL_ALL"."IDX_CONS_HIS_CONSRECBALCYCYDTRANS" ON "CENTRAL_ALL"."CONSUMPTION_HISTORY" 
		("CONS_NUM" ASC,
		 "RECORD_STATUS" ASC,
		 "BAL_DATE" ASC,
		 "CYCLE" ASC,
		 "CYCLE_YEAR_DARI" ASC,
		 "TRANSACTION_CODE" ASC)
		NOT PARTITIONED IN "TBS_IX"
		
		COLLECT SAMPLED DETAILED STATISTICS 
		COMPRESS NO 
		INCLUDE NULL KEYS ALLOW REVERSE SCANS ;

CREATE INDEX "CENTRAL_ALL"."IDX_CONS_HIS_DYRCY" ON "CENTRAL_ALL"."CONSUMPTION_HISTORY" 
		("CONS_NUM" ASC,
		 "TRANSACTION_CODE" ASC,
		 TO_NUMBER(CYCLE_YEAR_DARI||CYCLE) ASC,
		 "RECORD_STATUS" ASC)
		PARTITIONED
		
		COLLECT SAMPLED DETAILED STATISTICS 
		COMPRESS NO 
		INCLUDE NULL KEYS ALLOW REVERSE SCANS ;
CREATE ALIAS "DABS    "."CONSUMPTION_HISTORY" FOR TABLE "CENTRAL_ALL"."CONSUMPTION_HISTORY" ;
CREATE VIEW CENTRAL_ALL.CONSHISTORY  AS  SELECT BILLNUMBER,RECORD_STATUS,TRANSACTION_CODE,DEBIT,CREDIT,CYCLE_YEAR_DARI||LPAD(CYCLE,2,'0')
AS DYEAR,CYCLE,CONS_NUM        FROM CONSUMPTION_HISTORY ;

GRANT SELECT ON TABLE "CENTRAL_ALL"."CONSUMPTION_HISTORY" TO ROLE "ROLE_READ_ONLY"  ;

GRANT SELECT ON TABLE "CENTRAL_ALL"."CONSUMPTION_HISTORY" TO USER "ETLUSER "  ;

GRANT SELECT ON TABLE "CENTRAL_ALL"."CONSUMPTION_HISTORY" TO USER "ZAFAR   "  ;

GRANT CONTROL ON TABLE "CENTRAL_ALL"."CONSUMPTION_HISTORY" TO USER "DB2INST1"  ;