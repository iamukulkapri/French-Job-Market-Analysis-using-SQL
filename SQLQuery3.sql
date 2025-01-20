-- To display the data type for each table and each column
SELECT 
    TABLE_NAME,
    COLUMN_NAME,
    DATA_TYPE,
    CHARACTER_MAXIMUM_LENGTH
FROM 
    INFORMATION_SCHEMA.COLUMNS
WHERE 
    TABLE_NAME IN ('base_etablissement_par_tranche_effectif', 'name_geographic_information', 'net_salary_per_town_categories', 'population');

-- Alter columns in base_etablissement_par_tranche_effectif table
ALTER TABLE base_etablissement_par_tranche_effectif
ALTER COLUMN E14TST FLOAT;

ALTER TABLE base_etablissement_par_tranche_effectif
ALTER COLUMN E14TS0ND FLOAT;

ALTER TABLE base_etablissement_par_tranche_effectif
ALTER COLUMN E14TS1 FLOAT;

ALTER TABLE base_etablissement_par_tranche_effectif
ALTER COLUMN E14TS6 FLOAT;

ALTER TABLE base_etablissement_par_tranche_effectif
ALTER COLUMN E14TS10 FLOAT;

ALTER TABLE base_etablissement_par_tranche_effectif
ALTER COLUMN E14TS20 FLOAT;

ALTER TABLE base_etablissement_par_tranche_effectif
ALTER COLUMN E14TS50 FLOAT;

ALTER TABLE base_etablissement_par_tranche_effectif
ALTER COLUMN E14TS100 FLOAT;

ALTER TABLE base_etablissement_par_tranche_effectif
ALTER COLUMN E14TS200 FLOAT;

ALTER TABLE base_etablissement_par_tranche_effectif
ALTER COLUMN E14TS500 FLOAT;

-- Alter columns in net_salary_per_town_per_category table
ALTER TABLE net_salary_per_town_categories
ALTER COLUMN SNHM14 DECIMAL(10, 2);

ALTER TABLE net_salary_per_town_categories
ALTER COLUMN SNHMC14 DECIMAL(10, 2);

ALTER TABLE net_salary_per_town_categories
ALTER COLUMN SNHMP14 DECIMAL(10, 2);

ALTER TABLE net_salary_per_town_categories
ALTER COLUMN SNHME14 DECIMAL(10, 2);

ALTER TABLE net_salary_per_town_categories
ALTER COLUMN SNHMO14 DECIMAL(10, 2);

ALTER TABLE net_salary_per_town_categories
ALTER COLUMN SNHMF14 DECIMAL(10, 2);

ALTER TABLE net_salary_per_town_categories
ALTER COLUMN SNHMFC14 DECIMAL(10, 2);

ALTER TABLE net_salary_per_town_categories
ALTER COLUMN SNHMFP14 DECIMAL(10, 2);

ALTER TABLE net_salary_per_town_categories
ALTER COLUMN SNHMFE14 DECIMAL(10, 2);

ALTER TABLE net_salary_per_town_categories
ALTER COLUMN SNHMFO14 DECIMAL(10, 2);

ALTER TABLE net_salary_per_town_categories
ALTER COLUMN SNHMH14 DECIMAL(10, 2);

ALTER TABLE net_salary_per_town_categories
ALTER COLUMN SNHMHC14 DECIMAL(10, 2);

ALTER TABLE net_salary_per_town_categories
ALTER COLUMN SNHMHP14 DECIMAL(10, 2);

ALTER TABLE net_salary_per_town_categories
ALTER COLUMN SNHMHE14 DECIMAL(10, 2);

ALTER TABLE net_salary_per_town_categories
ALTER COLUMN SNHMHO14 DECIMAL(10, 2);

ALTER TABLE net_salary_per_town_categories
ALTER COLUMN SNHM1814 DECIMAL(10, 2);

ALTER TABLE net_salary_per_town_categories
ALTER COLUMN SNHM2614 DECIMAL(10, 2);

ALTER TABLE net_salary_per_town_categories
ALTER COLUMN SNHM5014 DECIMAL(10, 2);

ALTER TABLE net_salary_per_town_categories
ALTER COLUMN SNHMF1814 DECIMAL(10, 2);

ALTER TABLE net_salary_per_town_categories
ALTER COLUMN SNHMF2614 DECIMAL(10, 2);

ALTER TABLE net_salary_per_town_categories
ALTER COLUMN SNHMF5014 DECIMAL(10, 2);

ALTER TABLE net_salary_per_town_categories
ALTER COLUMN SNHMH1814 DECIMAL(10, 2);

ALTER TABLE net_salary_per_town_categories
ALTER COLUMN SNHMH2614 DECIMAL(10, 2);

ALTER TABLE net_salary_per_town_categories
ALTER COLUMN SNHMH5014 DECIMAL(10, 2);

-- Alter columns in population table
ALTER TABLE population
ALTER COLUMN AGEQ80_17 FLOAT;

ALTER TABLE population
ALTER COLUMN SEXE FLOAT;

ALTER TABLE population
ALTER COLUMN NB FLOAT;

--1.6- -- Remove leading or trailing spaces from geographic codes in 'name_geographic_information' table.
UPDATE name_geographic_information
SET code_insee = TRIM(BOTH ' ' FROM code_insee);

--1.7 Ensure codes are uppercase.
UPDATE dbo.name_geographic_information
SET code_insee = UPPER(code_insee);

-- EXPLORATION
-- number of males
SELECT COUNT(*)
FROM population
WHERE SEXE = 1;

-- number of females
SELECT COUNT(*)
FROM population
WHERE SEXE = 2;

-- Total number of firms by town
SELECT LIBGEO, E14TST
FROM base_etablissement_par_tranche_effectif;

-- sum of firms as per category
SELECT 
    SUM(E14TS0ND) AS Total_Unknown_Size_Firms,
    SUM(E14TS1) AS Total_1_to_5_Employees,
    SUM(E14TS6) AS Total_6_to_9_Employees,
    SUM(E14TS10) AS Total_10_to_19_Employees,
    SUM(E14TS20) AS Total_20_to_49_Employees,
    SUM(E14TS50) AS Total_50_to_99_Employees,
    SUM(E14TS100) AS Total_100_to_199_Employees,
    SUM(E14TS200) AS Total_200_to_499_Employees,
    SUM(E14TS500) AS Total_More_Than_500_Employees
FROM base_etablissement_par_tranche_effectif;

-- average net salary from each town

 SELECT 
    AVG(SNHM14) AS Avg_Net_Salary,
    AVG(SNHMC14) AS Avg_Net_Salary_Executive,
    AVG(SNHMP14) AS Avg_Net_Salary_Middle_Manager,
    AVG(SNHME14) AS Avg_Net_Salary_Employee,
    AVG(SNHMO14) AS Avg_Net_Salary_Worker
FROM net_salary_per_town_categories;

--Mean Net Salary for Men and Women by Age Group from net_salary_per_town_per_category

SELECT 
    AVG(SNHMF1814) AS Avg_Salary_Women_18_25,
    AVG(SNHMF2614) AS Avg_Salary_Women_26_50,
    AVG(SNHMF5014) AS Avg_Salary_Women_50_Plus,
    AVG(SNHMH1814) AS Avg_Salary_Men_18_25,
    AVG(SNHMH2614) AS Avg_Salary_Men_26_50,
    AVG(SNHMH5014) AS Avg_Salary_Men_50_Plus
FROM net_salary_per_town_categories;

--Number of Towns in Each Region from name_geographic_information

SELECT 
    [nom_région] AS Region_Name,
    COUNT(DISTINCT nom_commune) AS Number_of_Towns
FROM name_geographic_information
GROUP BY [nom_région];

--. Total Population by Age Group from population

SELECT 
    AGEQ80_17,
    SUM(NB) AS Total_Population
FROM population
GROUP BY AGEQ80_17;

--Number of Firms in Each Size Category for 'Rouen' and 'Paris'
SELECT 
    LIBGEO,
    E14TST,
    E14TS0ND,
    E14TS1,
    E14TS6,
    E14TS10,
    E14TS20,
    E14TS50,
    E14TS100,
    E14TS200,
    E14TS500
FROM base_etablissement_par_tranche_effectif
WHERE LIBGEO IN ('Paris', 'Rouen');

-- Using SQL Joins
-- Inner Join: Employment, Salary, and Geographic Data


-- Drop the existing table if it exists
DROP TABLE IF EXISTS Inner_Join_FirmSize_Salary;

-- INNER JOIN: Firm Size and Net Salary
SELECT 
    f.CODGEO,
    f.LIBGEO AS Town_Name,
    f.E14TST AS Total_Firms,
    f.E14TS50 AS Firms_50_Employees,
    s.SNHM14 AS Avg_Net_Salary,
    s.SNHMP14 AS Median_Net_Salary
INTO Inner_Join_FirmSize_Salary
FROM base_etablissement_par_tranche_effectif f
INNER JOIN net_salary_per_town_categories s
    ON f.CODGEO = s.CODGEO;

-- Display the result
SELECT * FROM Inner_Join_FirmSize_Salary;

-- LEFT JOIN: Geographic Information with Population Demographics

-- Drop the existing table if it exists
DROP TABLE IF EXISTS Left_Join_Geography_Demographics;

SELECT 
    n.code_insee,
    n.[nom_région] Region_Name,
    n.[numéro_département] AS Department_Name,
    n.nom_commune AS Commune_Name,
    COALESCE(p.AGEQ80_17, 0) AS Age_Group,
    COALESCE(p.SEXE, 0) AS Sex,
    COALESCE(p.NB, 0) AS Population_Count
INTO Left_Join_Geography_Demographics
FROM name_geographic_information n
LEFT JOIN population p
    ON n.code_insee = p.CODGEO;

-- Display the result
SELECT * FROM Left_Join_Geography_Demographics;


-- RIGHT JOIN: Population Demographics and Firm Size Data


-- Drop the existing table if it exists
DROP TABLE IF EXISTS Right_Join_Demographics_FirmSize;

SELECT 
    p.CODGEO,
    p.AGEQ80_17 AS Age_Group,
    p.SEXE AS Sex,
    COALESCE(p.NB, 0) AS Population_Count,  -- Replace NULL values with 0
    f.E14TST AS Total_Firms,
    f.E14TS10 AS Firms_10_19_Employees
INTO Right_Join_Demographics_FirmSize
FROM population p
RIGHT JOIN base_etablissement_par_tranche_effectif f
    ON p.CODGEO = f.CODGEO;

-- Display the result
SELECT * FROM Right_Join_Demographics_FirmSize;


-- FULL OUTER JOIN: Employment and Demographic Data

-- Drop the existing table if it exists
DROP TABLE IF EXISTS Full_Join_Employment_Demographics;

SELECT 
    f.CODGEO,
    f.LIBGEO AS Town_Name,
    f.E14TST AS Total_Firms,
    f.E14TS10 AS Firms_10_19_Employees,  -- Firms with 10 to 19 employees
    f.E14TS50 AS Firms_50_99_Employees,  -- Firms with 50 to 99 employees
    COALESCE(p.AGEQ80_17, '0') AS Age_Group,  -- Replace NULL values with '0'
    COALESCE(p.SEXE, 0) AS Sex,  -- Replace NULL values with 0
    COALESCE(p.NB, 0) AS Population_Count  -- Replace NULL values with 0
INTO Full_Join_Employment_Demographics
FROM base_etablissement_par_tranche_effectif f
FULL OUTER JOIN population p
    ON f.CODGEO = p.CODGEO;

-- Display the result
SELECT * FROM Full_Join_Employment_Demographics;

