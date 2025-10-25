----------------------------------
-- CREATE VIEW CALENDAR
----------------------------------
CREATE VIEW gold.calendar
AS
SELECT 
*
FROM OPENROWSET(
    BULK 'https://projectstoragedatalake.dfs.core.windows.net/silver/AdventureWorks_Calendar/',
    FORMAT = 'parquet'
) as query1

----------------------------------
-- CREATE VIEW CUSTOMERS
----------------------------------
CREATE VIEW gold.customers
AS
SELECT 
*
FROM OPENROWSET(
    BULK 'https://projectstoragedatalake.dfs.core.windows.net/silver/AdventureWorks_Customers/',
    FORMAT = 'parquet'
) as query2

----------------------------------
-- CREATE VIEW PRODUCT SUBCAT
----------------------------------

CREATE VIEW gold.subcat
AS
SELECT 
*
FROM OPENROWSET(
    BULK 'https://projectstoragedatalake.dfs.core.windows.net/silver/AdventureWorks_Product_Subcategories/',
    FORMAT = 'parquet'
) as query3

----------------------------------
-- CREATE VIEW PRODUCT
----------------------------------

CREATE VIEW gold.product
AS
SELECT 
*
FROM OPENROWSET(
    BULK 'https://projectstoragedatalake.dfs.core.windows.net/silver/AdventureWorks_Products/',
    FORMAT = 'parquet'
) as query4




----------------------------------
-- CREATE VIEW RETURENS
----------------------------------

CREATE VIEW gold.returns
AS
SELECT 
*
FROM OPENROWSET(
    BULK 'https://projectstoragedatalake.dfs.core.windows.net/silver/AdventureWorks_Returns/',
    FORMAT = 'parquet'
) as query5

----------------------------------
-- CREATE VIEW SALES
----------------------------------
CREATE VIEW gold.sales 
AS
SELECT 
*
FROM OPENROWSET 
(
   BULK 'https://projectstoragedatalake.dfs.core.windows.net/silver/AdventureWorks_Sales',
   FORMAT = 'parquet'
)as query6

----------------------------------
-- CREATE VIEW TERRITORIES
----------------------------------
CREATE VIEW gold.territories 
AS
SELECT 
*
FROM OPENROWSET 
(
   BULK 'https://projectstoragedatalake.dfs.core.windows.net/silver/AdventureWorks_Territories',
   FORMAT = 'parquet'
)as query7



























