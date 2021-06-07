SET SQL_SAFE_UPDATES=0;
/*A query which returns a view containing  the total value of all sales within the last 30 days.*/
CREATE VIEW total_view
AS SELECT SUM(totValue)
FROM smellOrder
WHERE orderDate BETWEEN CURDATE() - INTERVAL 30 DAY AND CURDATE()
;

/*A view that shows all items which have a current stock quantity of 200 or less.*/
CREATE VIEW lowStock_view
AS SELECT stockQuantity
FROM item
WHERE stockQuantity<=200;

/*A query that returns a view for suppliers based outside Ireland.*/
CREATE VIEW outsideIreland_view
AS SELECT
supplierName, supplierCountry
FROM supplier
WHERE supplierCountry!="Ireland";

/*A query that comprises of a two table join. */
SELECT saleID,staffName
FROM sale
INNER JOIN staff ON (sale.staffID=staff.staffID)
WHERE saleID='3';

/*A query that will return a view showing item purchase quantity sorting by lowest to highest.  */
CREATE VIEW popularItem_view
AS SELECT itemTitle,TotPurchasedQ FROM item
ORDER BY TotPurchasedQ;

/*A  query that returns all stock items which have a quantity of 600 and above sorting by item title in alphabetical order.*/
SELECT itemTitle,stockQuantity FROM item
WHERE stockQuantity>='600'
ORDER BY itemTitle;

/*A view which will display all orders which are not paid */
CREATE VIEW unpaidOrders_view
AS SELECT orderID,orderPaymentSt FROM smellorder
WHERE orderPaymentSt='pending';

/*A query that shows all items ordered by any one customer for one order. So show for example what customer no 1 ordered in order no 1.*/
SELECT itemID, smellorder.customerID
FROM sale
INNER JOIN smellorder ON (smellorder.orderID=sale.orderID)
WHERE customerID='1';

/*•	A query which will: 
•	Update the price of one product throughout the whole products table*/
UPDATE item
SET itemPrice = '1000'
WHERE itemID='2';
SELECT * FROM item; 
/*•	Increase all staff wages by 5% */
UPDATE staff
SET staffWage= staffwage+staffWage*'0.05'
;
SELECT * FROM staff; 
/*•	Set all orders that are paid to have a status of dispatched.*/
UPDATE smellorder
SET orderStatus = 'dispached'
WHERE orderPaymentSt='paid';
SELECT * FROM smellorder;
/*•	Delete all orders which have not been paid and that are older than 60 days.
*/
DELETE smellorder FROM smellorder
WHERE orderPaymentSt='pending'
AND orderDate < CURDATE() - INTERVAL 60 DAY AND CURDATE();
SELECT * FROM smellorder;