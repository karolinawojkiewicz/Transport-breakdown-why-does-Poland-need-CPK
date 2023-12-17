CREATE DATABASE Transport_breakdown;

USE Transport_breakdown;
-- units: Thausand tonne, except air transport, where the unit is tonne.
DROP TABLE air_transport;
SELECT * FROM air_transport;
SELECT * FROM inland_waterways;
SELECT * FROM rail;
SELECT * FROM road;
SELECT * FROM sea_transport;

-- DATA CLEANING

   -- Air Transport Table 
   
-- REMOVING UNNECESSARY ROWS
SELECT * FROM air_transport;

DELETE FROM air_transport
WHERE `Time` = 'GEO (Labels)' OR `Time` = 'GEO (Labels)' OR `Time` = 'European Union - 27 countries (from 2020)'
	OR `Time` = 'Euro area – 20 countries (from 2023)' OR `Time` = 'Euro area - 19 countries  (2015-2022)' ;
    
SELECT * FROM air_transport;
 
 
 
-- CHANGING COLUMNS' NAME
SELECT * FROM air_transport;

ALTER TABLE air_transport RENAME COLUMN `TIME` TO Country;

SELECT * FROM air_transport;

-- REPLACEMENT OF : VALUE WITH VALUE NULL
SELECT * FROM air_transport;

UPDATE air_transport
SET `2011` = NULL
WHERE `2011` = ":";

UPDATE air_transport
SET `2012` = NULL
WHERE `2012` = ":";

UPDATE air_transport
SET `2013` = NULL
WHERE `2013` = ":";

UPDATE air_transport
SET `2014` = NULL
WHERE `2014` = ":";

UPDATE air_transport
SET `2015` = NULL
WHERE `2015` = ":";

UPDATE air_transport
SET `2016` = NULL
WHERE `2016` = ":";

UPDATE air_transport
SET `2017` = NULL
WHERE `2017` = ":";

UPDATE air_transport
SET `2018` = NULL
WHERE `2018` = ":";

UPDATE air_transport
SET `2019` = NULL
WHERE `2019` = ":";

UPDATE air_transport
SET `2020` = NULL
WHERE `2020` = ":";

UPDATE air_transport
SET `2021` = NULL
WHERE `2021` = ":";

UPDATE air_transport
SET `2022` = NULL
WHERE `2022` = ":";

SELECT * FROM air_transport;

-- REMOVING SPACE BETWEEN NUMBERS
SELECT * FROM air_transport;

UPDATE air_transport
SET `2011` = REPLACE(`2011`,' ',''); 

UPDATE air_transport
SET `2012` = REPLACE(`2012`,' ',''); 

UPDATE air_transport
SET `2013` = REPLACE(`2013`,' ',''); 

UPDATE air_transport
SET `2014` = REPLACE(`2014`,' ',''); 

UPDATE air_transport
SET `2015` = REPLACE(`2015`,' ',''); 

UPDATE air_transport
SET `2016` = REPLACE(`2016`,' ',''); 

UPDATE air_transport
SET `2017` = REPLACE(`2017`,' ',''); 

UPDATE air_transport
SET `2018` = REPLACE(`2018`,' ',''); 

UPDATE air_transport
SET `2019` = REPLACE(`2019`,' ',''); 

UPDATE air_transport
SET `2020` = REPLACE(`2020`,' ',''); 

UPDATE air_transport
SET `2021` = REPLACE(`2021`,' ',''); 

UPDATE air_transport
SET `2022` = REPLACE(`2022`,' ',''); 

SELECT * FROM air_transport;

-- SETTING THE CORRECT DATA TYPES
SELECT * FROM air_transport;

ALTER TABLE air_transport MODIFY Country VARCHAR(50);
ALTER TABLE air_transport MODIFY `2011` DECIMAL (10,2);
ALTER TABLE air_transport MODIFY `2012` DECIMAL (10,2);
ALTER TABLE air_transport MODIFY `2013` DECIMAL (10,2);
ALTER TABLE air_transport MODIFY `2014` DECIMAL (10,2);
ALTER TABLE air_transport MODIFY `2015` DECIMAL (10,2);
ALTER TABLE air_transport MODIFY `2016` DECIMAL (10,2);
ALTER TABLE air_transport MODIFY `2017` DECIMAL (10,2);
ALTER TABLE air_transport MODIFY `2018` DECIMAL (10,2);
ALTER TABLE air_transport MODIFY `2019` DECIMAL (10,2);
ALTER TABLE air_transport MODIFY `2020` DECIMAL (10,2);
ALTER TABLE air_transport MODIFY `2021` DECIMAL (10,2);
ALTER TABLE air_transport MODIFY `2022` DECIMAL (10,2);

SELECT * FROM air_transport;

-- ADDING ID COLUMN 
SELECT * FROM air_transport;

CREATE TABLE air_transport2 LIKE air_transport;

SELECT * FROM air_transport2;

ALTER TABLE air_transport2 ADD id INT AUTO_INCREMENT PRIMARY KEY FIRST;

ALTER TABLE air_transport ADD ID INT FIRST;

INSERT INTO air_transport2 SELECT * FROM air_transport ORDER BY Country;

SELECT * FROM air_transport2;

DROP TABLE air_transport;

ALTER TABLE air_transport2 RENAME air_transport;

ALTER TABLE air_transport RENAME COLUMN id TO ID;

SELECT * FROM air_transport;


	-- Inland Waterways 
   
-- REMOVING UNNECESSARY ROWS
DROP TABLE inland_waterways
SELECT * FROM inland_waterways;

DELETE FROM inland_waterways
WHERE `Time` = 'GEO (Labels)' OR `Time` = 'GEO (Labels)' OR `Time` = 'European Union - 27 countries (from 2020)'
	OR `Time` = 'Euro area – 20 countries (from 2023)' OR `Time` = 'Euro area - 19 countries  (2015-2022)' ;
    
SELECT * FROM inland_waterways;

 -- adding Bosnia and Herzegovina
 INSERT INTO inland_waterways 
 (`Time`, `2011`,`2012`,`2013`,`2014`,`2015`,`2016`,`2017`, `2018`,`2019`,`2020`,`2021`,`2022`)
 VALUES
 ('Bosnia and Herzegovina', 
NULL, 
NULL, 
NULL, 
NULL, 
NULL, 
NULL, 
NULL, 
NULL,  
NULL, 
NULL, 
NULL, 
NULL);
 
-- CHANGING COLUMNS' NAME
SELECT * FROM inland_waterways;

ALTER TABLE inland_waterways RENAME COLUMN `TIME` TO Country;

SELECT * FROM inland_waterways;

-- REPLACEMENT OF : VALUE WITH VALUE NULL
SELECT * FROM inland_waterways;

UPDATE inland_waterways
SET `2011` = NULL
WHERE `2011` = ":";

UPDATE inland_waterways
SET `2012` = NULL
WHERE `2012` = ":";

UPDATE inland_waterways
SET `2013` = NULL
WHERE `2013` = ":";

UPDATE inland_waterways
SET `2014` = NULL
WHERE `2014` = ":";

UPDATE inland_waterways
SET `2015` = NULL
WHERE `2015` = ":";

UPDATE inland_waterways
SET `2016` = NULL
WHERE `2016` = ":";

UPDATE inland_waterways
SET `2017` = NULL
WHERE `2017` = ":";

UPDATE inland_waterways
SET `2018` = NULL
WHERE `2018` = ":";

UPDATE inland_waterways
SET `2019` = NULL
WHERE `2019` = ":";

UPDATE inland_waterways
SET `2020` = NULL
WHERE `2020` = ":";

UPDATE inland_waterways
SET `2021` = NULL
WHERE `2021` = ":";

UPDATE inland_waterways
SET `2022` = NULL
WHERE `2022` = ":";

SELECT * FROM inland_waterways;

-- REMOVING SPACE BETWEEN NUMBERS
SELECT * FROM inland_waterways;

UPDATE inland_waterways
SET `2011` = REPLACE(`2011`,' ',''); 

UPDATE inland_waterways
SET `2012` = REPLACE(`2012`,' ',''); 

UPDATE inland_waterways
SET `2013` = REPLACE(`2013`,' ',''); 

UPDATE inland_waterways
SET `2014` = REPLACE(`2014`,' ',''); 

UPDATE inland_waterways
SET `2015` = REPLACE(`2015`,' ',''); 

UPDATE inland_waterways
SET `2016` = REPLACE(`2016`,' ',''); 

UPDATE inland_waterways
SET `2017` = REPLACE(`2017`,' ',''); 

UPDATE inland_waterways
SET `2018` = REPLACE(`2018`,' ',''); 

UPDATE inland_waterways
SET `2019` = REPLACE(`2019`,' ',''); 

UPDATE inland_waterways
SET `2020` = REPLACE(`2020`,' ',''); 

UPDATE inland_waterways
SET `2021` = REPLACE(`2021`,' ',''); 

UPDATE inland_waterways
SET `2022` = REPLACE(`2022`,' ',''); 

SELECT * FROM inland_waterways;

-- SETTING THE CORRECT DATA TYPES
SELECT * FROM inland_waterways;

ALTER TABLE inland_waterways MODIFY Country VARCHAR(50);
ALTER TABLE inland_waterways MODIFY `2011` DECIMAL (20,2);
ALTER TABLE inland_waterways MODIFY `2012` DECIMAL (20,2);
ALTER TABLE inland_waterways MODIFY `2013` DECIMAL (20,2);
ALTER TABLE inland_waterways MODIFY `2014` DECIMAL (20,2);
ALTER TABLE inland_waterways MODIFY `2015` DECIMAL (20,2);
ALTER TABLE inland_waterways MODIFY `2016` DECIMAL (20,2);
ALTER TABLE inland_waterways MODIFY `2017` DECIMAL (20,2);
ALTER TABLE inland_waterways MODIFY `2018` DECIMAL (20,2);
ALTER TABLE inland_waterways MODIFY `2019` DECIMAL (20,2);
ALTER TABLE inland_waterways MODIFY `2020` DECIMAL (20,2);
ALTER TABLE inland_waterways MODIFY `2021` DECIMAL (20,2);
ALTER TABLE inland_waterways MODIFY `2022` DECIMAL (20,2);

SELECT * FROM inland_waterways;

-- REMOVING UNNECESSARY COLUMNS
SELECT * FROM inland_waterways;

ALTER TABLE inland_waterways DROP `MyUnknownColumn`;
ALTER TABLE inland_waterways DROP `MyUnknownColumn_[0]`;
ALTER TABLE inland_waterways DROP `MyUnknownColumn_[1]`;
ALTER TABLE inland_waterways DROP `MyUnknownColumn_[2]`;
ALTER TABLE inland_waterways DROP `MyUnknownColumn_[3]`;
ALTER TABLE inland_waterways DROP `MyUnknownColumn_[4]`;
ALTER TABLE inland_waterways DROP `MyUnknownColumn_[5]`;
ALTER TABLE inland_waterways DROP `MyUnknownColumn_[6]`;
ALTER TABLE inland_waterways DROP `MyUnknownColumn_[7]`;
ALTER TABLE inland_waterways DROP `MyUnknownColumn_[8]`;
ALTER TABLE inland_waterways DROP `MyUnknownColumn_[9]`;
ALTER TABLE inland_waterways DROP `MyUnknownColumn_[10]`;

SELECT * FROM inland_waterways;

-- ADDING ID COLUMN 
SELECT * FROM inland_waterways;

CREATE TABLE inland_waterways2 LIKE inland_waterways;

ALTER TABLE inland_waterways2 ADD ID INT AUTO_INCREMENT PRIMARY KEY FIRST;

ALTER TABLE inland_waterways ADD id INT FIRST;

INSERT INTO inland_waterways2 SELECT * FROM inland_waterways ORDER BY Country;

SELECT * FROM inland_waterways2;

DROP TABLE inland_waterways;

ALTER TABLE inland_waterways2 RENAME inland_waterways;

SELECT * FROM inland_waterways;

-- CHANGING UNITS FROM THAUSAND TONNE TO TONNE 

SELECT * FROM inland_waterways;

UPDATE inland_waterways
SET `2011` = `2011`*1000;

UPDATE inland_waterways
SET `2012` = `2012`*1000;

UPDATE inland_waterways
SET `2013` = `2013`*1000;

UPDATE inland_waterways
SET `2014` = `2014`*1000;

UPDATE inland_waterways
SET `2015` = `2015`*1000;

UPDATE inland_waterways
SET `2016` = `2016`*1000;

UPDATE inland_waterways
SET `2017` = `2017`*1000;

UPDATE inland_waterways
SET `2018` = `2018`*1000;

UPDATE inland_waterways
SET `2019` = `2019`*1000;

UPDATE inland_waterways
SET `2020` = `2020`*1000;

UPDATE inland_waterways
SET `2021` = `2021`*1000;

UPDATE inland_waterways
SET `2022` = `2022`*1000;

SELECT * FROM inland_waterways;


	-- RAIL TRANSPORT TABLE 

    -- REMOVING UNNECESSARY ROWS
SELECT * FROM rail;

DELETE FROM rail
WHERE `Time` = 'GEO (Labels)' OR `Time` = 'GEO (Labels)' OR `Time` = 'European Union - 27 countries (from 2020)'
	OR `Time` = 'Euro area – 20 countries (from 2023)' OR `Time` = 'Euro area - 19 countries  (2015-2022)' ;
    
SELECT * FROM rail;

-- CHANGING COLUMNS' NAME
SELECT * FROM rail;

ALTER TABLE rail RENAME COLUMN `TIME` TO Country;

SELECT * FROM rail;

-- REPLACEMENT OF : VALUE WITH VALUE NULL
SELECT * FROM rail;

UPDATE rail
SET `2011` = NULL
WHERE `2011` = ":";

UPDATE rail
SET `2012` = NULL
WHERE `2012` = ":";

UPDATE rail
SET `2013` = NULL
WHERE `2013` = ":";

UPDATE rail
SET `2014` = NULL
WHERE `2014` = ":";

UPDATE rail
SET `2015` = NULL
WHERE `2015` = ":";

UPDATE rail
SET `2016` = NULL
WHERE `2016` = ":";

UPDATE rail
SET `2017` = NULL
WHERE `2017` = ":";

UPDATE rail
SET `2018` = NULL
WHERE `2018` = ":";

UPDATE rail
SET `2019` = NULL
WHERE `2019` = ":";

UPDATE rail
SET `2020` = NULL
WHERE `2020` = ":";

UPDATE rail
SET `2021` = NULL
WHERE `2021` = ":";

UPDATE rail
SET `2022` = NULL
WHERE `2022` = ":";

SELECT * FROM rail;

-- REMOVING SPACE BETWEEN NUMBERS
SELECT * FROM rail;

UPDATE rail
SET `2011` = REPLACE(`2011`,' ',''); 

UPDATE rail
SET `2012` = REPLACE(`2012`,' ',''); 

UPDATE rail
SET `2013` = REPLACE(`2013`,' ',''); 

UPDATE rail
SET `2014` = REPLACE(`2014`,' ',''); 

UPDATE rail
SET `2015` = REPLACE(`2015`,' ',''); 

UPDATE rail
SET `2016` = REPLACE(`2016`,' ',''); 

UPDATE rail
SET `2017` = REPLACE(`2017`,' ',''); 

UPDATE rail
SET `2018` = REPLACE(`2018`,' ',''); 

UPDATE rail
SET `2019` = REPLACE(`2019`,' ',''); 

UPDATE rail
SET `2020` = REPLACE(`2020`,' ',''); 

UPDATE rail
SET `2021` = REPLACE(`2021`,' ',''); 

UPDATE rail
SET `2022` = REPLACE(`2022`,' ',''); 

SELECT * FROM rail;

-- SETTING THE CORRECT DATA TYPES
SELECT * FROM rail;

ALTER TABLE rail MODIFY Country VARCHAR(50);
ALTER TABLE rail MODIFY `2011` DECIMAL (20,2);
ALTER TABLE rail MODIFY `2012` DECIMAL (20,2);
ALTER TABLE rail MODIFY `2013` DECIMAL (20,2);
ALTER TABLE rail MODIFY `2014` DECIMAL (20,2);
ALTER TABLE rail MODIFY `2015` DECIMAL (20,2);
ALTER TABLE rail MODIFY `2016` DECIMAL (20,2);
ALTER TABLE rail MODIFY `2017` DECIMAL (20,2);
ALTER TABLE rail MODIFY `2018` DECIMAL (20,2);
ALTER TABLE rail MODIFY `2019` DECIMAL (20,2);
ALTER TABLE rail MODIFY `2020` DECIMAL (20,2);
ALTER TABLE rail MODIFY `2021` DECIMAL (20,2);
ALTER TABLE rail MODIFY `2022` DECIMAL (20,2);

SELECT * FROM rail;

-- REMOVING UNNECESSARY COLUMNS
SELECT * FROM rail;

ALTER TABLE rail DROP `MyUnknownColumn`;
ALTER TABLE rail DROP `MyUnknownColumn_[0]`;
ALTER TABLE rail DROP `MyUnknownColumn_[1]`;
ALTER TABLE rail DROP `MyUnknownColumn_[2]`;
ALTER TABLE rail DROP `MyUnknownColumn_[3]`;
ALTER TABLE rail DROP `MyUnknownColumn_[4]`;
ALTER TABLE rail DROP `MyUnknownColumn_[5]`;
ALTER TABLE rail DROP `MyUnknownColumn_[6]`;
ALTER TABLE rail DROP `MyUnknownColumn_[7]`;
ALTER TABLE rail DROP `MyUnknownColumn_[8]`;
ALTER TABLE rail DROP `MyUnknownColumn_[9]`;
ALTER TABLE rail DROP `MyUnknownColumn_[10]`;

SELECT * FROM rail;

-- ADDING ID COLUMN 
SELECT * FROM rail;

CREATE TABLE rail2 LIKE rail;

ALTER TABLE rail2 ADD ID INT AUTO_INCREMENT PRIMARY KEY FIRST;

ALTER TABLE rail ADD id INT FIRST;

INSERT INTO rail2 SELECT * FROM rail ORDER BY Country;

SELECT * FROM rail2;

DROP TABLE rail;

ALTER TABLE rail2 RENAME rail;

SELECT * FROM rail;

-- CHANGING UNITS FROM THAUSAND TONNE TO TONNE 

SELECT * FROM rail;

UPDATE rail
SET `2011` = `2011`*1000;

UPDATE rail
SET `2012` = `2012`*1000;

UPDATE rail
SET `2013` = `2013`*1000;

UPDATE rail
SET `2014` = `2014`*1000;

UPDATE rail
SET `2015` = `2015`*1000;

UPDATE rail
SET `2016` = `2016`*1000;

UPDATE rail
SET `2017` = `2017`*1000;

UPDATE rail
SET `2018` = `2018`*1000;

UPDATE rail
SET `2019` = `2019`*1000;

UPDATE rail
SET `2020` = `2020`*1000;

UPDATE rail
SET `2021` = `2021`*1000;

UPDATE rail
SET `2022` = `2022`*1000;

SELECT * FROM rail;

-- ROAD TRANSPORT TABLE 
    DROP TABLE road;
    -- REMOVING UNNECESSARY ROWS
SELECT * FROM road;

DELETE FROM road
WHERE `Time` = 'GEO (Labels)' OR `Time` = 'GEO (Labels)' OR `Time` = 'European Union - 27 countries (from 2020)'
	OR `Time` = 'Euro area – 20 countries (from 2023)' OR `Time` = 'Euro area - 19 countries  (2015-2022)' ;
    
SELECT * FROM road;

-- adding row

INSERT INTO road 
 (`Time`, `2011`,`2012`,`2013`,`2014`,`2015`,`2016`,`2017`, `2018`,`2019`,`2020`,`2021`,`2022`)
 VALUES
 ('Bosnia and Herzegovina', 
NULL, 
NULL, 
NULL, 
NULL, 
NULL, 
NULL, 
NULL, 
NULL,  
NULL, 
NULL, 
NULL, 
NULL);

-- CHANGING COLUMNS' NAME
SELECT * FROM road;

ALTER TABLE road RENAME COLUMN `TIME` TO Country;

SELECT * FROM road;

-- REPLACEMENT OF : VALUE WITH VALUE NULL
SELECT * FROM road;

UPDATE road
SET `2011` = NULL
WHERE `2011` = ":";

UPDATE road
SET `2012` = NULL
WHERE `2012` = ":";

UPDATE road
SET `2013` = NULL
WHERE `2013` = ":";

UPDATE road
SET `2014` = NULL
WHERE `2014` = ":";

UPDATE road
SET `2015` = NULL
WHERE `2015` = ":";

UPDATE road
SET `2016` = NULL
WHERE `2016` = ":";

UPDATE road
SET `2017` = NULL
WHERE `2017` = ":";

UPDATE road
SET `2018` = NULL
WHERE `2018` = ":";

UPDATE road
SET `2019` = NULL
WHERE `2019` = ":";

UPDATE road
SET `2020` = NULL
WHERE `2020` = ":";

UPDATE road
SET `2021` = NULL
WHERE `2021` = ":";

UPDATE road
SET `2022` = NULL
WHERE `2022` = ":";

SELECT * FROM road;

-- REMOVING SPACE BETWEEN NUMBERS
SELECT * FROM road;

UPDATE road
SET `2011` = REPLACE(`2011`,' ',''); 

UPDATE road
SET `2012` = REPLACE(`2012`,' ',''); 

UPDATE road
SET `2013` = REPLACE(`2013`,' ',''); 

UPDATE road
SET `2014` = REPLACE(`2014`,' ',''); 

UPDATE road
SET `2015` = REPLACE(`2015`,' ',''); 

UPDATE road
SET `2016` = REPLACE(`2016`,' ',''); 

UPDATE road
SET `2017` = REPLACE(`2017`,' ',''); 

UPDATE road
SET `2018` = REPLACE(`2018`,' ',''); 

UPDATE road
SET `2019` = REPLACE(`2019`,' ',''); 

UPDATE road
SET `2020` = REPLACE(`2020`,' ',''); 

UPDATE road
SET `2021` = REPLACE(`2021`,' ',''); 

UPDATE road
SET `2022` = REPLACE(`2022`,' ',''); 

SELECT * FROM road;

-- SETTING THE CORRECT DATA TYPES
SELECT * FROM road;

ALTER TABLE road MODIFY Country VARCHAR(50);
ALTER TABLE road MODIFY `2011` DECIMAL (20,2);
ALTER TABLE road MODIFY `2012` DECIMAL (20,2);
ALTER TABLE road MODIFY `2013` DECIMAL (20,2);
ALTER TABLE road MODIFY `2014` DECIMAL (20,2);
ALTER TABLE road MODIFY `2015` DECIMAL (20,2);
ALTER TABLE road MODIFY `2016` DECIMAL (20,2);
ALTER TABLE road MODIFY `2017` DECIMAL (20,2);
ALTER TABLE road MODIFY `2018` DECIMAL (20,2);
ALTER TABLE road MODIFY `2019` DECIMAL (20,2);
ALTER TABLE road MODIFY `2020` DECIMAL (20,2);
ALTER TABLE road MODIFY `2021` DECIMAL (20,2);
ALTER TABLE road MODIFY `2022` DECIMAL (20,2);

SELECT * FROM road;

-- ADDING ID COLUMN 
SELECT * FROM road;

CREATE TABLE road2 LIKE road;

ALTER TABLE road2 ADD ID INT AUTO_INCREMENT PRIMARY KEY FIRST;

ALTER TABLE road ADD id INT FIRST;

INSERT INTO road2 SELECT * FROM road ORDER BY Country;

SELECT * FROM road2;

DROP TABLE road;

ALTER TABLE road2 RENAME road;

SELECT * FROM road;

-- CHANGING UNITS FROM THAUSAND TONNE TO TONNE 

SELECT * FROM road;

UPDATE road
SET `2011` = `2011`*1000;

UPDATE road
SET `2012` = `2012`*1000;

UPDATE road
SET `2013` = `2013`*1000;

UPDATE road
SET `2014` = `2014`*1000;

UPDATE road
SET `2015` = `2015`*1000;

UPDATE road
SET `2016` = `2016`*1000;

UPDATE road
SET `2017` = `2017`*1000;

UPDATE road
SET `2018` = `2018`*1000;

UPDATE road
SET `2019` = `2019`*1000;

UPDATE road
SET `2020` = `2020`*1000;

UPDATE road
SET `2021` = `2021`*1000;

UPDATE road
SET `2022` = `2022`*1000;

SELECT * FROM road;

	-- SEA TRANSPORT TABLE 
    DROP TABLE sea_transport
    -- REMOVING UNNECESSARY ROWS
SELECT * FROM sea_transport;

DELETE FROM sea_transport
WHERE `Time` = 'GEO (Labels)' OR `Time` = 'GEO (Labels)' OR `Time` = 'European Union - 27 countries (from 2020)'
	OR `Time` = 'Euro area – 20 countries (from 2023)' OR `Time` = 'Euro area - 19 countries  (2015-2022)' ;
    
SELECT * FROM sea_transport;

-- adding row 
INSERT INTO sea_transport
 (`Time`, `2011`,`2012`,`2013`,`2014`,`2015`,`2016`,`2017`, `2018`,`2019`,`2020`,`2021`,`2022`)
 VALUES
 ('Bosnia and Herzegovina', 
NULL, 
NULL, 
NULL, 
NULL, 
NULL, 
NULL, 
NULL, 
NULL,  
NULL, 
NULL, 
NULL, 
NULL);
-- CHANGING COLUMNS' NAME
SELECT * FROM sea_transport;

ALTER TABLE sea_transport RENAME COLUMN `TIME` TO Country;

SELECT * FROM sea_transport;

-- REPLACEMENT OF : VALUE WITH VALUE NULL
SELECT * FROM sea_transport;

UPDATE sea_transport
SET `2011` = NULL
WHERE `2011` = ":";

UPDATE sea_transport
SET `2012` = NULL
WHERE `2012` = ":";

UPDATE sea_transport
SET `2013` = NULL
WHERE `2013` = ":";

UPDATE sea_transport
SET `2014` = NULL
WHERE `2014` = ":";

UPDATE sea_transport
SET `2015` = NULL
WHERE `2015` = ":";

UPDATE sea_transport
SET `2016` = NULL
WHERE `2016` = ":";

UPDATE sea_transport
SET `2017` = NULL
WHERE `2017` = ":";

UPDATE sea_transport
SET `2018` = NULL
WHERE `2018` = ":";

UPDATE sea_transport
SET `2019` = NULL
WHERE `2019` = ":";

UPDATE sea_transport
SET `2020` = NULL
WHERE `2020` = ":";

UPDATE sea_transport
SET `2021` = NULL
WHERE `2021` = ":";

UPDATE sea_transport
SET `2022` = NULL
WHERE `2022` = ":";

SELECT * FROM sea_transport;

-- REMOVING SPACE BETWEEN NUMBERS
SELECT * FROM sea_transport;

UPDATE sea_transport
SET `2011` = REPLACE(`2011`,' ',''); 

UPDATE sea_transport
SET `2012` = REPLACE(`2012`,' ',''); 

UPDATE sea_transport
SET `2013` = REPLACE(`2013`,' ',''); 

UPDATE sea_transport
SET `2014` = REPLACE(`2014`,' ',''); 

UPDATE sea_transport
SET `2015` = REPLACE(`2015`,' ',''); 

UPDATE sea_transport
SET `2016` = REPLACE(`2016`,' ',''); 

UPDATE sea_transport
SET `2017` = REPLACE(`2017`,' ',''); 

UPDATE sea_transport
SET `2018` = REPLACE(`2018`,' ',''); 

UPDATE sea_transport
SET `2019` = REPLACE(`2019`,' ',''); 

UPDATE sea_transport
SET `2020` = REPLACE(`2020`,' ',''); 

UPDATE sea_transport
SET `2021` = REPLACE(`2021`,' ',''); 

UPDATE sea_transport
SET `2022` = REPLACE(`2022`,' ',''); 

SELECT * FROM sea_transport;

-- SETTING THE CORRECT DATA TYPES
SELECT * FROM sea_transport;

ALTER TABLE sea_transport MODIFY Country VARCHAR(50);
ALTER TABLE sea_transport MODIFY `2011` DECIMAL (30,2);
ALTER TABLE sea_transport MODIFY `2012` DECIMAL (30,2);
ALTER TABLE sea_transport MODIFY `2013` DECIMAL (30,2);
ALTER TABLE sea_transport MODIFY `2014` DECIMAL (30,2);
ALTER TABLE sea_transport MODIFY `2015` DECIMAL (30,2);
ALTER TABLE sea_transport MODIFY `2016` DECIMAL (30,2);
ALTER TABLE sea_transport MODIFY `2017` DECIMAL (30,2);
ALTER TABLE sea_transport MODIFY `2018` DECIMAL (30,2);
ALTER TABLE sea_transport MODIFY `2019` DECIMAL (30,2);
ALTER TABLE sea_transport MODIFY `2020` DECIMAL (30,2);
ALTER TABLE sea_transport MODIFY `2021` DECIMAL (30,2);
ALTER TABLE sea_transport MODIFY `2022` DECIMAL (30,2);

SELECT * FROM sea_transport;

-- ADDING ID COLUMN 
SELECT * FROM sea_transport;

CREATE TABLE sea_transport2 LIKE sea_transport;

ALTER TABLE sea_transport2 ADD ID INT AUTO_INCREMENT PRIMARY KEY FIRST;

ALTER TABLE sea_transport ADD id INT FIRST;

INSERT INTO sea_transport2 SELECT * FROM sea_transport ORDER BY Country;

SELECT * FROM sea_transport2;

DROP TABLE sea_transport;

ALTER TABLE sea_transport2 RENAME sea_transport;

SELECT * FROM sea_transport;

-- CHANGING UNITS FROM THAUSAND TONNE TO TONNE 

SELECT * FROM sea_transport;

UPDATE sea_transport
SET `2011` = `2011`*1000;

UPDATE sea_transport
SET `2012` = `2012`*1000;

UPDATE sea_transport
SET `2013` = `2013`*1000;

UPDATE sea_transport
SET `2014` = `2014`*1000;

UPDATE sea_transport
SET `2015` = `2015`*1000;

UPDATE sea_transport
SET `2016` = `2016`*1000;

UPDATE sea_transport
SET `2017` = `2017`*1000;

UPDATE sea_transport
SET `2018` = `2018`*1000;

UPDATE sea_transport
SET `2019` = `2019`*1000;

UPDATE sea_transport
SET `2020` = `2020`*1000;

UPDATE sea_transport
SET `2021` = `2021`*1000;

UPDATE sea_transport
SET `2022` = `2022`*1000;

SELECT * FROM sea_transport;


-- Exploring 
-- 1) AVG for each kind of transport (if null I don't count that) in total
WITH CTE AS (SELECT Transport_type, AVG(Total_avg1) AS Total_avg 
FROM (SELECT CASE WHEN 1=1 THEN 'Air' END AS 'Transport_type',
CASE WHEN 
(IFNULL(`2011`,0) + IFNULL(`2012`,0) + IFNULL(`2013`,0)+ IFNULL(`2014`,0)+ IFNULL(`2015`,0)+
IFNULL(`2016`,0) + IFNULL(`2017`,0) + IFNULL(`2018`,0) + IFNULL(`2019`,0) + IFNULL(`2020`,0) + 
IFNULL(`2021`,0) + IFNULL(`2022`,0)) = 0 THEN NULL
ELSE (IFNULL(`2011`,0) + IFNULL(`2012`,0) + IFNULL(`2013`,0)+ IFNULL(`2014`,0)+ IFNULL(`2015`,0)+
IFNULL(`2016`,0) + IFNULL(`2017`,0) + IFNULL(`2018`,0) + IFNULL(`2019`,0) + IFNULL(`2020`,0) + 
IFNULL(`2021`,0) + IFNULL(`2022`,0))
END AS Total_avg1
FROM air_transport) a

UNION

SELECT Transport_type, AVG(Total_avg1) AS Total_avg 
FROM (SELECT CASE WHEN 1=1 THEN 'Inland waterways' END AS 'Transport_type',
CASE WHEN 
(IFNULL(`2011`,0) + IFNULL(`2012`,0) + IFNULL(`2013`,0)+ IFNULL(`2014`,0)+ IFNULL(`2015`,0)+
IFNULL(`2016`,0) + IFNULL(`2017`,0) + IFNULL(`2018`,0) + IFNULL(`2019`,0) + IFNULL(`2020`,0) + 
IFNULL(`2021`,0) + IFNULL(`2022`,0)) = 0 THEN NULL
ELSE (IFNULL(`2011`,0) + IFNULL(`2012`,0) + IFNULL(`2013`,0)+ IFNULL(`2014`,0)+ IFNULL(`2015`,0)+
IFNULL(`2016`,0) + IFNULL(`2017`,0) + IFNULL(`2018`,0) + IFNULL(`2019`,0) + IFNULL(`2020`,0) + 
IFNULL(`2021`,0) + IFNULL(`2022`,0))
END AS Total_avg1
FROM inland_waterways) b

UNION

SELECT Transport_type, AVG(Total_avg1) AS Total_avg 
FROM (SELECT CASE WHEN 1=1 THEN 'Rail' END AS 'Transport_type',
CASE WHEN 
(IFNULL(`2011`,0) + IFNULL(`2012`,0) + IFNULL(`2013`,0)+ IFNULL(`2014`,0)+ IFNULL(`2015`,0)+
IFNULL(`2016`,0) + IFNULL(`2017`,0) + IFNULL(`2018`,0) + IFNULL(`2019`,0) + IFNULL(`2020`,0) + 
IFNULL(`2021`,0) + IFNULL(`2022`,0)) = 0 THEN NULL
ELSE (IFNULL(`2011`,0) + IFNULL(`2012`,0) + IFNULL(`2013`,0)+ IFNULL(`2014`,0)+ IFNULL(`2015`,0)+
IFNULL(`2016`,0) + IFNULL(`2017`,0) + IFNULL(`2018`,0) + IFNULL(`2019`,0) + IFNULL(`2020`,0) + 
IFNULL(`2021`,0) + IFNULL(`2022`,0))
END AS Total_avg1
FROM rail) c

UNION

SELECT Transport_type, AVG(Total_avg1) AS Total_avg 
FROM (SELECT CASE WHEN 1=1 THEN 'Road' END AS 'Transport_type',
CASE WHEN 
(IFNULL(`2011`,0) + IFNULL(`2012`,0) + IFNULL(`2013`,0)+ IFNULL(`2014`,0)+ IFNULL(`2015`,0)+
IFNULL(`2016`,0) + IFNULL(`2017`,0) + IFNULL(`2018`,0) + IFNULL(`2019`,0) + IFNULL(`2020`,0) + 
IFNULL(`2021`,0) + IFNULL(`2022`,0)) = 0 THEN NULL
ELSE (IFNULL(`2011`,0) + IFNULL(`2012`,0) + IFNULL(`2013`,0)+ IFNULL(`2014`,0)+ IFNULL(`2015`,0)+
IFNULL(`2016`,0) + IFNULL(`2017`,0) + IFNULL(`2018`,0) + IFNULL(`2019`,0) + IFNULL(`2020`,0) + 
IFNULL(`2021`,0) + IFNULL(`2022`,0))
END AS Total_avg1
FROM road) d

UNION

SELECT Transport_type, AVG(Total_avg1) AS Total_avg 
FROM (SELECT CASE WHEN 1=1 THEN 'Sea' END AS 'Transport_type',
CASE WHEN 
(IFNULL(`2011`,0) + IFNULL(`2012`,0) + IFNULL(`2013`,0)+ IFNULL(`2014`,0)+ IFNULL(`2015`,0)+
IFNULL(`2016`,0) + IFNULL(`2017`,0) + IFNULL(`2018`,0) + IFNULL(`2019`,0) + IFNULL(`2020`,0) + 
IFNULL(`2021`,0) + IFNULL(`2022`,0)) = 0 THEN NULL
ELSE (IFNULL(`2011`,0) + IFNULL(`2012`,0) + IFNULL(`2013`,0)+ IFNULL(`2014`,0)+ IFNULL(`2015`,0)+
IFNULL(`2016`,0) + IFNULL(`2017`,0) + IFNULL(`2018`,0) + IFNULL(`2019`,0) + IFNULL(`2020`,0) + 
IFNULL(`2021`,0) + IFNULL(`2022`,0))
END AS Total_avg1
FROM sea_transport) e
)
SELECT Transport_type, Total_avg, CONCAT(ROUND(Total_avg/SUM(Total_avg) OVER () * 100,2), '%') AS percentage FROM cte
ORDER BY Total_avg DESC;

-- 2) AVG for each kind of transport (if null I don't count that) year by year
SELECT CASE WHEN 1=1 THEN 'Air' END AS 'Transport_type',
AVG(`2011`) AS AVG_2011, AVG(`2012`) AS AVG_2012, AVG(`2013`) AS AVG_2013, 
AVG(`2014`) AS AVG_2014, AVG(`2015`) AS AVG_2015, AVG(`2016`) AS AVG_2016, 
AVG(`2017`) AS AVG_2017, AVG(`2018`) AS AVG_2018, AVG(`2019`) AS AVG_2019,
AVG(`2020`) AS AVG_2020, AVG(`2021`) AS AVG_2021, AVG(`2022`) AS AVG_2022 
FROM air_transport
UNION
SELECT 'Inland waterways',
AVG(`2011`) AS AVG_2011, AVG(`2012`) AS AVG_2012, AVG(`2013`) AS AVG_2013, 
AVG(`2014`) AS AVG_2014, AVG(`2015`) AS AVG_2015, AVG(`2016`) AS AVG_2016, 
AVG(`2017`) AS AVG_2017, AVG(`2018`) AS AVG_2018, AVG(`2019`) AS AVG_2019,
AVG(`2020`) AS AVG_2020, AVG(`2021`) AS AVG_2021, AVG(`2022`) AS AVG_2022 
FROM inland_waterways
UNION
SELECT 'Rail',
AVG(`2011`) AS AVG_2011, AVG(`2012`) AS AVG_2012, AVG(`2013`) AS AVG_2013, 
AVG(`2014`) AS AVG_2014, AVG(`2015`) AS AVG_2015, AVG(`2016`) AS AVG_2016, 
AVG(`2017`) AS AVG_2017, AVG(`2018`) AS AVG_2018, AVG(`2019`) AS AVG_2019,
AVG(`2020`) AS AVG_2020, AVG(`2021`) AS AVG_2021, AVG(`2022`) AS AVG_2022 
FROM rail
UNION
SELECT 'Road',
AVG(`2011`) AS AVG_2011, AVG(`2012`) AS AVG_2012, AVG(`2013`) AS AVG_2013, 
AVG(`2014`) AS AVG_2014, AVG(`2015`) AS AVG_2015, AVG(`2016`) AS AVG_2016, 
AVG(`2017`) AS AVG_2017, AVG(`2018`) AS AVG_2018, AVG(`2019`) AS AVG_2019,
AVG(`2020`) AS AVG_2020, AVG(`2021`) AS AVG_2021, AVG(`2022`) AS AVG_2022 
FROM road
UNION
SELECT 'Sea',
AVG(`2011`) AS AVG_2011, AVG(`2012`) AS AVG_2012, AVG(`2013`) AS AVG_2013, 
AVG(`2014`) AS AVG_2014, AVG(`2015`) AS AVG_2015, AVG(`2016`) AS AVG_2016, 
AVG(`2017`) AS AVG_2017, AVG(`2018`) AS AVG_2018, AVG(`2019`) AS AVG_2019,
AVG(`2020`) AS AVG_2020, AVG(`2021`) AS AVG_2021, AVG(`2022`) AS AVG_2022 
FROM sea_transport;

-- 3) Which country has transported the most goods by transport field (TOP 3)
SELECT * FROM (SELECT CASE WHEN 1=1 THEN 'Air' END AS 'Transport_type', Country, SUM(IFNULL(`2011`,0) + IFNULL(`2012`,0) + IFNULL(`2013`,0) +
IFNULL(`2014`,0) + IFNULL(`2015`,0) + IFNULL(`2016`,0) + IFNULL(`2017`,0) + IFNULL(`2018`,0) + 
IFNULL(`2019`,0) + IFNULL(`2020`,0) + IFNULL(`2021`,0) + IFNULL(`2022`,0))
AS Total_transported_tonne
FROM air_transport
GROUP BY 2,1
ORDER BY 3 DESC
LIMIT 3
) x
UNION
SELECT * FROM(
SELECT 'Inland waterways', Country, SUM(IFNULL(`2011`,0) + IFNULL(`2012`,0) + IFNULL(`2013`,0) +
IFNULL(`2014`,0) + IFNULL(`2015`,0) + IFNULL(`2016`,0) + IFNULL(`2017`,0) + IFNULL(`2018`,0) + 
IFNULL(`2019`,0) + IFNULL(`2020`,0) + IFNULL(`2021`,0) + IFNULL(`2022`,0))
AS Total_transported_tonne
FROM inland_waterways
GROUP BY 2,1
ORDER BY 3 DESC
LIMIT 3) A
UNION
SELECT * FROM (SELECT 'Rail', Country, SUM(IFNULL(`2011`,0) + IFNULL(`2012`,0) + IFNULL(`2013`,0) +
IFNULL(`2014`,0) + IFNULL(`2015`,0) + IFNULL(`2016`,0) + IFNULL(`2017`,0) + IFNULL(`2018`,0) + 
IFNULL(`2019`,0) + IFNULL(`2020`,0) + IFNULL(`2021`,0) + IFNULL(`2022`,0))
AS Total_transported_tonne
FROM rail
GROUP BY 2,1
ORDER BY 3 DESC
LIMIT 3) B
UNION
SELECT * FROM (
SELECT 'Road', Country, SUM(IFNULL(`2011`,0) + IFNULL(`2012`,0) + IFNULL(`2013`,0) +
IFNULL(`2014`,0) + IFNULL(`2015`,0) + IFNULL(`2016`,0) + IFNULL(`2017`,0) + IFNULL(`2018`,0) + 
IFNULL(`2019`,0) + IFNULL(`2020`,0) + IFNULL(`2021`,0) + IFNULL(`2022`,0))
AS Total_transported_tonne
FROM road
GROUP BY 2,1
ORDER BY 3 DESC
LIMIT 3) B
UNION
SELECT * FROM (SELECT 'Sea', Country, SUM(IFNULL(`2011`,0) + IFNULL(`2012`,0) + IFNULL(`2013`,0) +
IFNULL(`2014`,0) + IFNULL(`2015`,0) + IFNULL(`2016`,0) + IFNULL(`2017`,0) + IFNULL(`2018`,0) + 
IFNULL(`2019`,0) + IFNULL(`2020`,0) + IFNULL(`2021`,0) + IFNULL(`2022`,0))
AS Total_transported_tonne
FROM sea_transport
GROUP BY 2,1
ORDER BY 3 DESC
LIMIT 3
) G ;

-- 4) Which country has transported the most goods in each year by transport field
SELECT CASE WHEN 1=1 THEN 'Air' END AS 'Transport_type',
CASE WHEN rank2011 = 1 THEN Country
END AS "The best in 2011",
CASE WHEN rank2012 = 1 THEN Country
END AS "The best in 2012",
CASE WHEN rank2013 = 1 THEN Country
END AS "The best in 2013",
CASE WHEN rank2014 = 1 THEN Country
END AS "The best in 2014",
CASE WHEN rank2015 = 1 THEN Country
END AS "The best in 2015",
CASE WHEN rank2016 = 1 THEN Country
END AS "The best in 2016",
CASE WHEN rank2017 = 1 THEN Country
END AS "The best in 2017",
CASE WHEN rank2018 = 1 THEN Country
END AS "The best in 2018",
CASE WHEN rank2019 = 1 THEN Country
END AS "The best in 2019",
CASE WHEN rank2020 = 1 THEN Country
END AS "The best in 2020",
CASE WHEN rank2021 = 1 THEN Country
END AS "The best in 2021",
CASE WHEN rank2022 = 1 THEN Country
END AS "The best in 2022"
FROM (SELECT Country, ROW_NUMBER () OVER (ORDER BY `2011` DESC) AS rank2011,
ROW_NUMBER () OVER (ORDER BY `2012` DESC) AS rank2012,
ROW_NUMBER () OVER (ORDER BY `2013` DESC) AS rank2013,
ROW_NUMBER () OVER (ORDER BY `2014` DESC) AS rank2014,
ROW_NUMBER () OVER (ORDER BY `2015` DESC) AS rank2015,
ROW_NUMBER () OVER (ORDER BY `2016` DESC) AS rank2016,
ROW_NUMBER () OVER (ORDER BY `2017` DESC) AS rank2017,
ROW_NUMBER () OVER (ORDER BY `2018` DESC) AS rank2018,
ROW_NUMBER () OVER (ORDER BY `2019` DESC) AS rank2019,
ROW_NUMBER () OVER (ORDER BY `2020` DESC) AS rank2020,
ROW_NUMBER () OVER (ORDER BY `2021` DESC) AS rank2021,
ROW_NUMBER () OVER (ORDER BY `2022` DESC) AS rank2022
FROM air_transport
LIMIT 1
) a
UNION 
SELECT CASE WHEN 1=1 THEN 'Inland waterways' END AS 'Transport_type',
CASE WHEN rank2011 = 1 THEN Country
END AS "The best in 2011",
CASE WHEN rank2012 = 1 THEN Country
END AS "The best in 2012",
CASE WHEN rank2013 = 1 THEN Country
END AS "The best in 2013",
CASE WHEN rank2014 = 1 THEN Country
END AS "The best in 2014",
CASE WHEN rank2015 = 1 THEN Country
END AS "The best in 2015",
CASE WHEN rank2016 = 1 THEN Country
END AS "The best in 2016",
CASE WHEN rank2017 = 1 THEN Country
END AS "The best in 2017",
CASE WHEN rank2018 = 1 THEN Country
END AS "The best in 2018",
CASE WHEN rank2019 = 1 THEN Country
END AS "The best in 2019",
CASE WHEN rank2020 = 1 THEN Country
END AS "The best in 2020",
CASE WHEN rank2021 = 1 THEN Country
END AS "The best in 2021",
CASE WHEN rank2022 = 1 THEN Country
END AS "The best in 2022"
FROM (SELECT Country, ROW_NUMBER () OVER (ORDER BY `2011` DESC) AS rank2011,
ROW_NUMBER () OVER (ORDER BY `2012` DESC) AS rank2012,
ROW_NUMBER () OVER (ORDER BY `2013` DESC) AS rank2013,
ROW_NUMBER () OVER (ORDER BY `2014` DESC) AS rank2014,
ROW_NUMBER () OVER (ORDER BY `2015` DESC) AS rank2015,
ROW_NUMBER () OVER (ORDER BY `2016` DESC) AS rank2016,
ROW_NUMBER () OVER (ORDER BY `2017` DESC) AS rank2017,
ROW_NUMBER () OVER (ORDER BY `2018` DESC) AS rank2018,
ROW_NUMBER () OVER (ORDER BY `2019` DESC) AS rank2019,
ROW_NUMBER () OVER (ORDER BY `2020` DESC) AS rank2020,
ROW_NUMBER () OVER (ORDER BY `2021` DESC) AS rank2021,
ROW_NUMBER () OVER (ORDER BY `2022` DESC) AS rank2022
FROM inland_waterways
LIMIT 1
) b
UNION 
SELECT CASE WHEN 1=1 THEN 'Rail' END AS 'Transport_type',
CASE WHEN rank2011 = 1 THEN Country
END AS "The best in 2011",
CASE WHEN rank2012 = 1 THEN Country
END AS "The best in 2012",
CASE WHEN rank2013 = 1 THEN Country
END AS "The best in 2013",
CASE WHEN rank2014 = 1 THEN Country
END AS "The best in 2014",
CASE WHEN rank2015 = 1 THEN Country
END AS "The best in 2015",
CASE WHEN rank2016 = 1 THEN Country
END AS "The best in 2016",
CASE WHEN rank2017 = 1 THEN Country
END AS "The best in 2017",
CASE WHEN rank2018 = 1 THEN Country
END AS "The best in 2018",
CASE WHEN rank2019 = 1 THEN Country
END AS "The best in 2019",
CASE WHEN rank2020 = 1 THEN Country
END AS "The best in 2020",
CASE WHEN rank2021 = 1 THEN Country
END AS "The best in 2021",
CASE WHEN rank2022 = 1 THEN Country
END AS "The best in 2022"
FROM (SELECT Country, ROW_NUMBER () OVER (ORDER BY `2011` DESC) AS rank2011,
ROW_NUMBER () OVER (ORDER BY `2012` DESC) AS rank2012,
ROW_NUMBER () OVER (ORDER BY `2013` DESC) AS rank2013,
ROW_NUMBER () OVER (ORDER BY `2014` DESC) AS rank2014,
ROW_NUMBER () OVER (ORDER BY `2015` DESC) AS rank2015,
ROW_NUMBER () OVER (ORDER BY `2016` DESC) AS rank2016,
ROW_NUMBER () OVER (ORDER BY `2017` DESC) AS rank2017,
ROW_NUMBER () OVER (ORDER BY `2018` DESC) AS rank2018,
ROW_NUMBER () OVER (ORDER BY `2019` DESC) AS rank2019,
ROW_NUMBER () OVER (ORDER BY `2020` DESC) AS rank2020,
ROW_NUMBER () OVER (ORDER BY `2021` DESC) AS rank2021,
ROW_NUMBER () OVER (ORDER BY `2022` DESC) AS rank2022
FROM rail
LIMIT 1
) c
UNION 
SELECT CASE WHEN 1=1 THEN 'Road' END AS 'Transport_type',
CASE WHEN rank2011 = 1 THEN Country
END AS "The best in 2011",
CASE WHEN rank2012 = 1 THEN Country
END AS "The best in 2012",
CASE WHEN rank2013 = 1 THEN Country
END AS "The best in 2013",
CASE WHEN rank2014 = 1 THEN Country
END AS "The best in 2014",
CASE WHEN rank2015 = 1 THEN Country
END AS "The best in 2015",
CASE WHEN rank2016 = 1 THEN Country
END AS "The best in 2016",
CASE WHEN rank2017 = 1 THEN Country
END AS "The best in 2017",
CASE WHEN rank2018 = 1 THEN Country
END AS "The best in 2018",
CASE WHEN rank2019 = 1 THEN Country
END AS "The best in 2019",
CASE WHEN rank2020 = 1 THEN Country
END AS "The best in 2020",
CASE WHEN rank2021 = 1 THEN Country
END AS "The best in 2021",
CASE WHEN rank2022 = 1 THEN Country
END AS "The best in 2022"
FROM (SELECT Country, ROW_NUMBER () OVER (ORDER BY `2011` DESC) AS rank2011,
ROW_NUMBER () OVER (ORDER BY `2012` DESC) AS rank2012,
ROW_NUMBER () OVER (ORDER BY `2013` DESC) AS rank2013,
ROW_NUMBER () OVER (ORDER BY `2014` DESC) AS rank2014,
ROW_NUMBER () OVER (ORDER BY `2015` DESC) AS rank2015,
ROW_NUMBER () OVER (ORDER BY `2016` DESC) AS rank2016,
ROW_NUMBER () OVER (ORDER BY `2017` DESC) AS rank2017,
ROW_NUMBER () OVER (ORDER BY `2018` DESC) AS rank2018,
ROW_NUMBER () OVER (ORDER BY `2019` DESC) AS rank2019,
ROW_NUMBER () OVER (ORDER BY `2020` DESC) AS rank2020,
ROW_NUMBER () OVER (ORDER BY `2021` DESC) AS rank2021,
ROW_NUMBER () OVER (ORDER BY `2022` DESC) AS rank2022
FROM road
LIMIT 1
) d
UNION 
SELECT CASE WHEN 1=1 THEN 'Sea' END AS 'Transport_type',
CASE WHEN rank2011 = 1 THEN Country
END AS "The best in 2011",
CASE WHEN rank2012 = 1 THEN Country
END AS "The best in 2012",
CASE WHEN rank2013 = 1 THEN Country
END AS "The best in 2013",
CASE WHEN rank2014 = 1 THEN Country
END AS "The best in 2014",
CASE WHEN rank2015 = 1 THEN Country
END AS "The best in 2015",
CASE WHEN rank2016 = 1 THEN Country
END AS "The best in 2016",
CASE WHEN rank2017 = 1 THEN Country
END AS "The best in 2017",
CASE WHEN rank2018 = 1 THEN Country
END AS "The best in 2018",
CASE WHEN rank2019 = 1 THEN Country
END AS "The best in 2019",
CASE WHEN rank2020 = 1 THEN Country
END AS "The best in 2020",
CASE WHEN rank2021 = 1 THEN Country
END AS "The best in 2021",
CASE WHEN rank2022 = 1 THEN Country
END AS "The best in 2022"
FROM (SELECT Country, ROW_NUMBER () OVER (ORDER BY `2011` DESC) AS rank2011,
ROW_NUMBER () OVER (ORDER BY `2012` DESC) AS rank2012,
ROW_NUMBER () OVER (ORDER BY `2013` DESC) AS rank2013,
ROW_NUMBER () OVER (ORDER BY `2014` DESC) AS rank2014,
ROW_NUMBER () OVER (ORDER BY `2015` DESC) AS rank2015,
ROW_NUMBER () OVER (ORDER BY `2016` DESC) AS rank2016,
ROW_NUMBER () OVER (ORDER BY `2017` DESC) AS rank2017,
ROW_NUMBER () OVER (ORDER BY `2018` DESC) AS rank2018,
ROW_NUMBER () OVER (ORDER BY `2019` DESC) AS rank2019,
ROW_NUMBER () OVER (ORDER BY `2020` DESC) AS rank2020,
ROW_NUMBER () OVER (ORDER BY `2021` DESC) AS rank2021,
ROW_NUMBER () OVER (ORDER BY `2022` DESC) AS rank2022
FROM sea_transport
LIMIT 1
) e;


-- 5) Percentage of each country in total avg by transport field
CREATE VIEW air1 AS(SELECT Transport_type, AVG(Total_avg1) AS Total_avg 
FROM (SELECT CASE WHEN 1=1 THEN 'Air' END AS 'Transport_type',
CASE WHEN 
(IFNULL(`2011`,0) + IFNULL(`2012`,0) + IFNULL(`2013`,0)+ IFNULL(`2014`,0)+ IFNULL(`2015`,0)+
IFNULL(`2016`,0) + IFNULL(`2017`,0) + IFNULL(`2018`,0) + IFNULL(`2019`,0) + IFNULL(`2020`,0) + 
IFNULL(`2021`,0) + IFNULL(`2022`,0)) = 0 THEN NULL
ELSE (IFNULL(`2011`,0) + IFNULL(`2012`,0) + IFNULL(`2013`,0)+ IFNULL(`2014`,0)+ IFNULL(`2015`,0)+
IFNULL(`2016`,0) + IFNULL(`2017`,0) + IFNULL(`2018`,0) + IFNULL(`2019`,0) + IFNULL(`2020`,0) + 
IFNULL(`2021`,0) + IFNULL(`2022`,0))
END AS Total_avg1
FROM air_transport) a);



CREATE VIEW inland1 AS(SELECT Transport_type, AVG(Total_avg1) AS Total_avg 
FROM (SELECT CASE WHEN 1=1 THEN 'Inland Waterways' END AS 'Transport_type',
CASE WHEN 
(IFNULL(`2011`,0) + IFNULL(`2012`,0) + IFNULL(`2013`,0)+ IFNULL(`2014`,0)+ IFNULL(`2015`,0)+
IFNULL(`2016`,0) + IFNULL(`2017`,0) + IFNULL(`2018`,0) + IFNULL(`2019`,0) + IFNULL(`2020`,0) + 
IFNULL(`2021`,0) + IFNULL(`2022`,0)) = 0 THEN NULL
ELSE (IFNULL(`2011`,0) + IFNULL(`2012`,0) + IFNULL(`2013`,0)+ IFNULL(`2014`,0)+ IFNULL(`2015`,0)+
IFNULL(`2016`,0) + IFNULL(`2017`,0) + IFNULL(`2018`,0) + IFNULL(`2019`,0) + IFNULL(`2020`,0) + 
IFNULL(`2021`,0) + IFNULL(`2022`,0))
END AS Total_avg1
FROM inland_waterways) a);


CREATE VIEW rail1 AS(SELECT Transport_type, AVG(Total_avg1) AS Total_avg 
FROM (SELECT CASE WHEN 1=1 THEN 'Rail' END AS 'Transport_type',
CASE WHEN 
(IFNULL(`2011`,0) + IFNULL(`2012`,0) + IFNULL(`2013`,0)+ IFNULL(`2014`,0)+ IFNULL(`2015`,0)+
IFNULL(`2016`,0) + IFNULL(`2017`,0) + IFNULL(`2018`,0) + IFNULL(`2019`,0) + IFNULL(`2020`,0) + 
IFNULL(`2021`,0) + IFNULL(`2022`,0)) = 0 THEN NULL
ELSE (IFNULL(`2011`,0) + IFNULL(`2012`,0) + IFNULL(`2013`,0)+ IFNULL(`2014`,0)+ IFNULL(`2015`,0)+
IFNULL(`2016`,0) + IFNULL(`2017`,0) + IFNULL(`2018`,0) + IFNULL(`2019`,0) + IFNULL(`2020`,0) + 
IFNULL(`2021`,0) + IFNULL(`2022`,0))
END AS Total_avg1
FROM rail) a);


CREATE VIEW road1 AS(SELECT Transport_type, AVG(Total_avg1) AS Total_avg 
FROM (SELECT CASE WHEN 1=1 THEN 'Road' END AS 'Transport_type',
CASE WHEN 
(IFNULL(`2011`,0) + IFNULL(`2012`,0) + IFNULL(`2013`,0)+ IFNULL(`2014`,0)+ IFNULL(`2015`,0)+
IFNULL(`2016`,0) + IFNULL(`2017`,0) + IFNULL(`2018`,0) + IFNULL(`2019`,0) + IFNULL(`2020`,0) + 
IFNULL(`2021`,0) + IFNULL(`2022`,0)) = 0 THEN NULL
ELSE (IFNULL(`2011`,0) + IFNULL(`2012`,0) + IFNULL(`2013`,0)+ IFNULL(`2014`,0)+ IFNULL(`2015`,0)+
IFNULL(`2016`,0) + IFNULL(`2017`,0) + IFNULL(`2018`,0) + IFNULL(`2019`,0) + IFNULL(`2020`,0) + 
IFNULL(`2021`,0) + IFNULL(`2022`,0))
END AS Total_avg1
FROM road) a);



CREATE VIEW sea AS(SELECT Transport_type, AVG(Total_avg1) AS Total_avg 
FROM (SELECT CASE WHEN 1=1 THEN 'Sea' END AS 'Transport_type',
CASE WHEN 
(IFNULL(`2011`,0) + IFNULL(`2012`,0) + IFNULL(`2013`,0)+ IFNULL(`2014`,0)+ IFNULL(`2015`,0)+
IFNULL(`2016`,0) + IFNULL(`2017`,0) + IFNULL(`2018`,0) + IFNULL(`2019`,0) + IFNULL(`2020`,0) + 
IFNULL(`2021`,0) + IFNULL(`2022`,0)) = 0 THEN NULL
ELSE (IFNULL(`2011`,0) + IFNULL(`2012`,0) + IFNULL(`2013`,0)+ IFNULL(`2014`,0)+ IFNULL(`2015`,0)+
IFNULL(`2016`,0) + IFNULL(`2017`,0) + IFNULL(`2018`,0) + IFNULL(`2019`,0) + IFNULL(`2020`,0) + 
IFNULL(`2021`,0) + IFNULL(`2022`,0))
END AS Total_avg1
FROM sea_transport) a);


WITH CTE AS (SELECT a.Transport_type, Country, AVG(Total_avg1) AS Total_avg_by_country, Total_avg AS total_by_type
FROM (SELECT CASE WHEN 1=1 THEN 'Air' END AS 'Transport_type', Country,
CASE WHEN 
(IFNULL(`2011`,0) + IFNULL(`2012`,0) + IFNULL(`2013`,0)+ IFNULL(`2014`,0)+ IFNULL(`2015`,0)+
IFNULL(`2016`,0) + IFNULL(`2017`,0) + IFNULL(`2018`,0) + IFNULL(`2019`,0) + IFNULL(`2020`,0) + 
IFNULL(`2021`,0) + IFNULL(`2022`,0)) = 0 THEN NULL
ELSE (IFNULL(`2011`,0) + IFNULL(`2012`,0) + IFNULL(`2013`,0)+ IFNULL(`2014`,0)+ IFNULL(`2015`,0)+
IFNULL(`2016`,0) + IFNULL(`2017`,0) + IFNULL(`2018`,0) + IFNULL(`2019`,0) + IFNULL(`2020`,0) + 
IFNULL(`2021`,0) + IFNULL(`2022`,0))
END AS Total_avg1
FROM air_transport
Group by 2,3) a
JOIN air1 b ON a.Transport_type = b.Transport_type
Group by 2

UNION

SELECT a.Transport_type, Country, AVG(Total_avg1) AS Total_avg_by_country, Total_avg AS total_by_type
FROM (SELECT CASE WHEN 1=1 THEN 'Inland Waterways' END AS 'Transport_type', Country,
CASE WHEN 
(IFNULL(`2011`,0) + IFNULL(`2012`,0) + IFNULL(`2013`,0)+ IFNULL(`2014`,0)+ IFNULL(`2015`,0)+
IFNULL(`2016`,0) + IFNULL(`2017`,0) + IFNULL(`2018`,0) + IFNULL(`2019`,0) + IFNULL(`2020`,0) + 
IFNULL(`2021`,0) + IFNULL(`2022`,0)) = 0 THEN NULL
ELSE (IFNULL(`2011`,0) + IFNULL(`2012`,0) + IFNULL(`2013`,0)+ IFNULL(`2014`,0)+ IFNULL(`2015`,0)+
IFNULL(`2016`,0) + IFNULL(`2017`,0) + IFNULL(`2018`,0) + IFNULL(`2019`,0) + IFNULL(`2020`,0) + 
IFNULL(`2021`,0) + IFNULL(`2022`,0))
END AS Total_avg1
FROM inland_waterways
Group by 2,3) a
JOIN inland1 b ON a.Transport_type = b.Transport_type
Group by 2

UNION

SELECT a.Transport_type, Country, AVG(Total_avg1) AS Total_avg_by_country, Total_avg AS total_by_type
FROM (SELECT CASE WHEN 1=1 THEN 'Rail' END AS 'Transport_type', Country,
CASE WHEN 
(IFNULL(`2011`,0) + IFNULL(`2012`,0) + IFNULL(`2013`,0)+ IFNULL(`2014`,0)+ IFNULL(`2015`,0)+
IFNULL(`2016`,0) + IFNULL(`2017`,0) + IFNULL(`2018`,0) + IFNULL(`2019`,0) + IFNULL(`2020`,0) + 
IFNULL(`2021`,0) + IFNULL(`2022`,0)) = 0 THEN NULL
ELSE (IFNULL(`2011`,0) + IFNULL(`2012`,0) + IFNULL(`2013`,0)+ IFNULL(`2014`,0)+ IFNULL(`2015`,0)+
IFNULL(`2016`,0) + IFNULL(`2017`,0) + IFNULL(`2018`,0) + IFNULL(`2019`,0) + IFNULL(`2020`,0) + 
IFNULL(`2021`,0) + IFNULL(`2022`,0))
END AS Total_avg1
FROM rail
Group by 2,3) a
JOIN rail1 b ON a.Transport_type = b.Transport_type
Group by 2

UNION

SELECT a.Transport_type, Country, AVG(Total_avg1) AS Total_avg_by_country, Total_avg AS total_by_type
FROM (SELECT CASE WHEN 1=1 THEN 'Road' END AS 'Transport_type', Country,
CASE WHEN 
(IFNULL(`2011`,0) + IFNULL(`2012`,0) + IFNULL(`2013`,0)+ IFNULL(`2014`,0)+ IFNULL(`2015`,0)+
IFNULL(`2016`,0) + IFNULL(`2017`,0) + IFNULL(`2018`,0) + IFNULL(`2019`,0) + IFNULL(`2020`,0) + 
IFNULL(`2021`,0) + IFNULL(`2022`,0)) = 0 THEN NULL
ELSE (IFNULL(`2011`,0) + IFNULL(`2012`,0) + IFNULL(`2013`,0)+ IFNULL(`2014`,0)+ IFNULL(`2015`,0)+
IFNULL(`2016`,0) + IFNULL(`2017`,0) + IFNULL(`2018`,0) + IFNULL(`2019`,0) + IFNULL(`2020`,0) + 
IFNULL(`2021`,0) + IFNULL(`2022`,0))
END AS Total_avg1
FROM road
Group by 2,3) a
JOIN road1 b ON a.Transport_type = b.Transport_type
Group by 2

UNION

SELECT a.Transport_type, Country, AVG(Total_avg1) AS Total_avg_by_country, Total_avg AS total_by_type
FROM (SELECT CASE WHEN 1=1 THEN 'Sea' END AS 'Transport_type', Country,
CASE WHEN 
(IFNULL(`2011`,0) + IFNULL(`2012`,0) + IFNULL(`2013`,0)+ IFNULL(`2014`,0)+ IFNULL(`2015`,0)+
IFNULL(`2016`,0) + IFNULL(`2017`,0) + IFNULL(`2018`,0) + IFNULL(`2019`,0) + IFNULL(`2020`,0) + 
IFNULL(`2021`,0) + IFNULL(`2022`,0)) = 0 THEN NULL
ELSE (IFNULL(`2011`,0) + IFNULL(`2012`,0) + IFNULL(`2013`,0)+ IFNULL(`2014`,0)+ IFNULL(`2015`,0)+
IFNULL(`2016`,0) + IFNULL(`2017`,0) + IFNULL(`2018`,0) + IFNULL(`2019`,0) + IFNULL(`2020`,0) + 
IFNULL(`2021`,0) + IFNULL(`2022`,0))
END AS Total_avg1
FROM sea_transport
Group by 2,3) a
JOIN sea b ON a.Transport_type = b.Transport_type
Group by 2

)
SELECT Transport_type, Country, Total_avg_by_country, Total_by_type AS Total_avg_by_type, CASE WHEN
Total_avg_by_country IS NULL THEN NULL
ELSE
CONCAT(ROUND(Total_avg_by_country/Total_by_type *100,2), '%') END AS Percentage FROM cte
ORDER BY 3 DESC;



-- 6) Which country by transport field and percentage of total sum
WITH CTE AS (SELECT Transport_type, Country, Total_transported_tonne, SUM(Total_transported_tonne) OVER (PARTITION BY Transport_type) AS 'Total_by_type'
 FROM(

SELECT * FROM (SELECT CASE WHEN 1=1 THEN 'Air' END AS 'Transport_type', Country, SUM(IFNULL(`2011`,0) + IFNULL(`2012`,0) + IFNULL(`2013`,0) +
IFNULL(`2014`,0) + IFNULL(`2015`,0) + IFNULL(`2016`,0) + IFNULL(`2017`,0) + IFNULL(`2018`,0) + 
IFNULL(`2019`,0) + IFNULL(`2020`,0) + IFNULL(`2021`,0) + IFNULL(`2022`,0))
AS Total_transported_tonne
FROM air_transport
GROUP BY 2,1
ORDER BY 3 DESC
) x
UNION
SELECT * FROM(
SELECT 'Inland waterways', Country, SUM(IFNULL(`2011`,0) + IFNULL(`2012`,0) + IFNULL(`2013`,0) +
IFNULL(`2014`,0) + IFNULL(`2015`,0) + IFNULL(`2016`,0) + IFNULL(`2017`,0) + IFNULL(`2018`,0) + 
IFNULL(`2019`,0) + IFNULL(`2020`,0) + IFNULL(`2021`,0) + IFNULL(`2022`,0))
AS Total_transported_tonne
FROM inland_waterways
GROUP BY 2,1
ORDER BY 3 DESC
) A
UNION
SELECT * FROM (SELECT 'Rail', Country, SUM(IFNULL(`2011`,0) + IFNULL(`2012`,0) + IFNULL(`2013`,0) +
IFNULL(`2014`,0) + IFNULL(`2015`,0) + IFNULL(`2016`,0) + IFNULL(`2017`,0) + IFNULL(`2018`,0) + 
IFNULL(`2019`,0) + IFNULL(`2020`,0) + IFNULL(`2021`,0) + IFNULL(`2022`,0))
AS Total_transported_tonne
FROM rail
GROUP BY 2,1
ORDER BY 3 DESC
) B
UNION
SELECT * FROM (
SELECT 'Road', Country, SUM(IFNULL(`2011`,0) + IFNULL(`2012`,0) + IFNULL(`2013`,0) +
IFNULL(`2014`,0) + IFNULL(`2015`,0) + IFNULL(`2016`,0) + IFNULL(`2017`,0) + IFNULL(`2018`,0) + 
IFNULL(`2019`,0) + IFNULL(`2020`,0) + IFNULL(`2021`,0) + IFNULL(`2022`,0))
AS Total_transported_tonne
FROM road
GROUP BY 2,1
ORDER BY 3 DESC
) B
UNION
SELECT * FROM (SELECT 'Sea', Country, SUM(IFNULL(`2011`,0) + IFNULL(`2012`,0) + IFNULL(`2013`,0) +
IFNULL(`2014`,0) + IFNULL(`2015`,0) + IFNULL(`2016`,0) + IFNULL(`2017`,0) + IFNULL(`2018`,0) + 
IFNULL(`2019`,0) + IFNULL(`2020`,0) + IFNULL(`2021`,0) + IFNULL(`2022`,0))
AS Total_transported_tonne
FROM sea_transport
GROUP BY 2,1
ORDER BY 3 DESC
) G ) q)
SELECT transport_type, Country, Total_transported_tonne, Total_by_type,
CONCAT(ROUND(Total_transported_tonne/Total_by_type *100,2), '%') AS Percentage 
 FROM CTE
;



-- exporting data to excel sheet to use data in Power BI

SELECT * FROM air_transport;
SELECT * FROM inland_waterways;
SELECT * FROM rail;
SELECT * FROM road;
SELECT * FROM sea_transport;
SELECT * from Countries;


