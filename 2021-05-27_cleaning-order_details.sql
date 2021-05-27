SELECT
	*
FROM
	orderdetails;
    
-- renaming columns on orderdetails
ALTER TABLE 
	orderdetails
RENAME COLUMN 
	`Order ID` to OrderID,
RENAME COLUMN
	Amount to Price,
RENAME COLUMN 
	`Sub-Category` to Subcategory;