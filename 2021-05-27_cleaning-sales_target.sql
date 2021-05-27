SELECT
	*
FROM
	salestarget;
    
-- renaming columns on salestarget
ALTER TABLE 
	salestarget
RENAME COLUMN 
	`Month of Order Date` to MonthOrderDate;

-- changing format to date
UPDATE 
	salestarget
SET	
	MonthOrderDate = date_format(str_to_date(MonthOrderDate, '%b-%Y'), '%Y-%m');

-- forgot to add day as 01
UPDATE 
	salestarget
SET	
	MonthOrderDate = date_format(str_to_date(MonthOrderDate, '%Y-%m'), '%Y-%m-01');
    
ALTER TABLE 
	salestarget
MODIFY COLUMN 
	MonthOrderDate date;