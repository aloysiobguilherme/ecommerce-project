SELECT 
	*
FROM
	listoforders;
    
-- renaming columns on listoforders
ALTER TABLE 
	listoforders
RENAME COLUMN 
	`Order ID` to OrderID,
RENAME COLUMN 
	`Order Date` to OrderDate;

-- changing format to date
UPDATE 
	listoforders
SET	
	OrderDate = str_to_date(OrderDate, '%d-%m-%Y');

ALTER TABLE 
	listoforders
MODIFY COLUMN 
	OrderDate date;
    
-- searching for duplicates
SELECT OrderID, COUNT(*) AS count
FROM listoforders
GROUP BY orderid
HAVING count > 1;

-- deleting blank rows
DELETE FROM
	listoforders
WHERE
	OrderID ='';
