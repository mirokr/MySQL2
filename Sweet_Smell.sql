CREATE DATABASE Sweet_Smell;
USE Sweet_Smell;
/**/
create table Customer (
	customerID INT,
	customerCoName VARCHAR(50),
	customerAddress VARCHAR(50),
	PRIMARY KEY (customerID)
);
insert into Customer (customerID, customerCoName, customerAddress) values (1, 'Yodo', '29 Stone Corner Parkway');
insert into Customer (customerID, customerCoName, customerAddress) values (2, 'Livetube', '33 Anthes Terrace');
insert into Customer (customerID, customerCoName, customerAddress) values (3, 'Fivespan', '6 Annamark Road');
insert into Customer (customerID, customerCoName, customerAddress) values (4, 'Livetube', '0 Shelley Drive');
insert into Customer (customerID, customerCoName, customerAddress) values (5, 'Skidoo', '72 Marquette Trail');
insert into Customer (customerID, customerCoName, customerAddress) values (6, 'Quamba', '9334 Meadow Ridge Place');
insert into Customer (customerID, customerCoName, customerAddress) values (7, 'Voonix', '7150 Vahlen Way');
insert into Customer (customerID, customerCoName, customerAddress) values (8, 'Skivee', '3522 Blue Bill Park Crossing');
insert into Customer (customerID, customerCoName, customerAddress) values (9, 'Jayo', '0413 Golf View Lane');
insert into Customer (customerID, customerCoName, customerAddress) values (10, 'Topicware', '879 Bartelt Lane');

create table Staff (
	staffID INT,
	staffName VARCHAR(50),
	staffAddress VARCHAR(50),
	staffPhoneNo VARCHAR(50),
	staffWage INT,
	PRIMARY KEY (staffID)
);
insert into Staff (staffID, staffName, staffAddress, staffPhoneNo, staffWage) values (1, 'Trudi Merwood', '31580 Manley Point', '+370 (533) 187-7886', 93836);
insert into Staff (staffID, staffName, staffAddress, staffPhoneNo, staffWage) values (2, 'Alphard Thumnel', '83 Lillian Crossing', '+212 (464) 126-7770', 69797);
insert into Staff (staffID, staffName, staffAddress, staffPhoneNo, staffWage) values (3, 'Adolphus Slimings', '8 Moland Parkway', '+51 (361) 424-4169', 37548);
insert into Staff (staffID, staffName, staffAddress, staffPhoneNo, staffWage) values (4, 'Mendy Hamblen', '58 Oak Terrace', '+31 (231) 457-4816', 53151);
insert into Staff (staffID, staffName, staffAddress, staffPhoneNo, staffWage) values (5, 'Murvyn Blowers', '4021 Heath Alley', '+86 (632) 415-0698', 91469);
insert into Staff (staffID, staffName, staffAddress, staffPhoneNo, staffWage) values (6, 'Miles Crame', '37 Stone Corner Junction', '+30 (622) 891-8194', 16460);
insert into Staff (staffID, staffName, staffAddress, staffPhoneNo, staffWage) values (7, 'Liza Le Moucheux', '42067 Nobel Trail', '+7 (683) 849-0783', 57866);
insert into Staff (staffID, staffName, staffAddress, staffPhoneNo, staffWage) values (8, 'Stuart Kaubisch', '2508 Summit Junction', '+62 (157) 601-3218', 36020);
insert into Staff (staffID, staffName, staffAddress, staffPhoneNo, staffWage) values (9, 'Brig Vigars', '808 Susan Alley', '+55 (675) 803-1260', 32284);
insert into Staff (staffID, staffName, staffAddress, staffPhoneNo, staffWage) values (10, 'Dillon Harcourt', '538 Thierer Hill', '+261 (909) 552-7282', 94641);

create table Supplier (
	supplierID INT,
	supplierName VARCHAR(50),
	supplierAddress VARCHAR(50),
	supplierPhoneNo VARCHAR(50),
	supplierCountry VARCHAR(50),
	PRIMARY KEY (supplierID)
);
insert into Supplier (supplierID, supplierName, supplierAddress, supplierPhoneNo, supplierCountry) values (1, 'Amoxicillin', '411 Hayes Park', 'btettley0@blog.com', 'UK');
insert into Supplier (supplierID, supplierName, supplierAddress, supplierPhoneNo, supplierCountry) values (2, 'Solar Powder', '3201 Forest Place', 'bbygrove1@alibaba.com', 'Ireland');
insert into Supplier (supplierID, supplierName, supplierAddress, supplierPhoneNo, supplierCountry) values (3, 'Ranitidine', '5 Fuller Pass', 'gmolineaux2@vimeo.com', 'France');
insert into Supplier (supplierID, supplierName, supplierAddress, supplierPhoneNo, supplierCountry) values (4, 'Suave', '34 Pond Terrace', 'jmotherwell3@chronoengine.com', 'Ireland');
insert into Supplier (supplierID, supplierName, supplierAddress, supplierPhoneNo, supplierCountry) values (5, 'Citalopram Hydrobromide', '96 Moland Way', 'vkaman4@dmoz.org', 'France');

create table Item (
	itemID INT,
	itemTitle VARCHAR(50),
	itemPrice FLOAT,
	stockQuantity INT,
	supplierID INT,
	TotPurchasedQ INT,
	PRIMARY KEY (itemID),
	FOREIGN KEY (supplierID) REFERENCES Supplier(supplierID) 
	ON DELETE CASCADE
	ON UPDATE CASCADE
);
insert into Item (itemID, itemTitle, itemPrice, stockQuantity, supplierID, TotPurchasedQ) values (1, 'Stellar Hau Kuahiwi', 24.2, 83, 1, 87);
insert into Item (itemID, itemTitle, itemPrice, stockQuantity, supplierID, TotPurchasedQ) values (2, 'Georgia Indian Plantain', 17.2, 827, 3, 93);
insert into Item (itemID, itemTitle, itemPrice, stockQuantity, supplierID, TotPurchasedQ) values (3, 'Oklahoma Blackberry', 28.9, 1181, 5, 2);
insert into Item (itemID, itemTitle, itemPrice, stockQuantity, supplierID, TotPurchasedQ) values (4, 'Jamaican Maiden Fern', 11.4, 1441, 3, 90);
insert into Item (itemID, itemTitle, itemPrice, stockQuantity, supplierID, TotPurchasedQ) values (5, 'Poison Oak', 132, 121.6, 2, 83);

create table smellOrder (
	orderID INT,
	orderStatus VARCHAR(50),
	orderPaymentSt VARCHAR(50),
	totValue DOUBLE,
	orderDate DATE,
	customerID INT,
	PRIMARY KEY (orderID),
	FOREIGN KEY (customerID) REFERENCES Customer(customerID) 
	ON DELETE CASCADE
	ON UPDATE CASCADE	
);
insert into smellOrder (orderID, orderStatus, orderPaymentSt, totValue, orderDate, customerID) values (1, 'completed', 'paid', 460, '2021/05/05', 2);
insert into smellOrder (orderID, orderStatus, orderPaymentSt, totValue, orderDate, customerID) values (2, 'in progress', 'pending', 590, '2021/03/19', 5);
insert into smellOrder (orderID, orderStatus, orderPaymentSt, totValue, orderDate, customerID) values (3, 'completed', 'paid', 640, '2020/08/07', 7);
insert into smellOrder (orderID, orderStatus, orderPaymentSt, totValue, orderDate, customerID) values (4, 'in progress', 'pending', 300, '2020/09/12', 2);
insert into smellOrder (orderID, orderStatus, orderPaymentSt, totValue, orderDate, customerID) values (5, 'completed', 'paid', 630, '2020/07/10', 4);
insert into smellOrder (orderID, orderStatus, orderPaymentSt, totValue, orderDate, customerID) values (6, 'completed', 'paid', 300, '2020/07/20', 10);
insert into smellOrder (orderID, orderStatus, orderPaymentSt, totValue, orderDate, customerID) values (7, 'in progress', 'pending', 210, '2020/11/21', 6);
insert into smellOrder (orderID, orderStatus, orderPaymentSt, totValue, orderDate, customerID) values (8, 'in progress', 'pending', 800, '2020/08/23', 5);
insert into smellOrder (orderID, orderStatus, orderPaymentSt, totValue, orderDate, customerID) values (9, 'in progress', 'paid', 440, '2020/11/04', 9);
insert into smellOrder (orderID, orderStatus, orderPaymentSt, totValue, orderDate, customerID) values (10, 'completed', 'paid', 760, '2021/04/18', 1);

create table Sale (
	saleID INT,
	itemID INT,
	itemQuantity INT,
	orderID INT,
	staffID INT,
	PRIMARY KEY (saleID),
	FOREIGN KEY (orderID) REFERENCES smellorder(orderID) ON DELETE CASCADE
	ON UPDATE CASCADE,
	FOREIGN KEY (staffID) REFERENCES Staff(staffID)ON DELETE CASCADE
	ON UPDATE CASCADE,
    FOREIGN KEY (itemID) REFERENCES Item(itemID)
	ON DELETE CASCADE
	ON UPDATE CASCADE
);
insert into Sale (saleID, itemID, itemQuantity, orderID, staffID) values (1, 3, 5, 3, 5);
insert into Sale (saleID, itemID, itemQuantity, orderID, staffID) values (2, 2, 2, 10, 1);
insert into Sale (saleID, itemID, itemQuantity, orderID, staffID) values (3, 3, 4, 8, 6);
insert into Sale (saleID, itemID, itemQuantity, orderID, staffID) values (4, 2, 2, 1, 10);
insert into Sale (saleID, itemID, itemQuantity, orderID, staffID) values (5, 1, 4, 1, 9);
insert into Sale (saleID, itemID, itemQuantity, orderID, staffID) values (6, 1, 2, 8, 6);
insert into Sale (saleID, itemID, itemQuantity, orderID, staffID) values (7, 3, 3, 2, 5);
insert into Sale (saleID, itemID, itemQuantity, orderID, staffID) values (8, 5, 1, 8, 10);
insert into Sale (saleID, itemID, itemQuantity, orderID, staffID) values (9, 1, 3, 8, 3);
insert into Sale (saleID, itemID, itemQuantity, orderID, staffID) values (10, 4, 4, 1, 8);
insert into Sale (saleID, itemID, itemQuantity, orderID, staffID) values (11, 1, 2, 10, 7);
insert into Sale (saleID, itemID, itemQuantity, orderID, staffID) values (12, 4, 5, 10, 1);
insert into Sale (saleID, itemID, itemQuantity, orderID, staffID) values (13, 5, 5, 5, 7);
insert into Sale (saleID, itemID, itemQuantity, orderID, staffID) values (14, 3, 4, 1, 7);
insert into Sale (saleID, itemID, itemQuantity, orderID, staffID) values (15, 4, 1, 3, 4);
insert into Sale (saleID, itemID, itemQuantity, orderID, staffID) values (16, 3, 5, 3, 5);
insert into Sale (saleID, itemID, itemQuantity, orderID, staffID) values (17, 3, 1, 7, 4);
insert into Sale (saleID, itemID, itemQuantity, orderID, staffID) values (18, 2, 1, 7, 7);
insert into Sale (saleID, itemID, itemQuantity, orderID, staffID) values (19, 2, 2, 2, 6);
insert into Sale (saleID, itemID, itemQuantity, orderID, staffID) values (20, 2, 3, 3, 5);

create table Invoice (
	invoiceID INT,
	taxRate float,
	amountTaxed double,
	orderID INT,
	PRIMARY KEY (invoiceID),
	FOREIGN KEY (orderID) REFERENCES smellOrder(orderID)
	ON DELETE CASCADE
	ON UPDATE CASCADE	
);
insert into Invoice (invoiceID, taxRate, amountTaxed, orderID) values (1, 0.125, 480, 1);
insert into Invoice (invoiceID, taxRate, amountTaxed, orderID) values (2, 0.125, 620, 2);
insert into Invoice (invoiceID, taxRate, amountTaxed, orderID) values (3, 0.125, 670, 3);
insert into Invoice (invoiceID, taxRate, amountTaxed, orderID) values (4, 0.125, 330, 4);
insert into Invoice (invoiceID, taxRate, amountTaxed, orderID) values (5, 0.125, 650, 5);
insert into Invoice (invoiceID, taxRate, amountTaxed, orderID) values (6, 0.125, 330, 6);
insert into Invoice (invoiceID, taxRate, amountTaxed, orderID) values (7, 0.125, 230, 7);
insert into Invoice (invoiceID, taxRate, amountTaxed, orderID) values (8, 0.125, 850, 8);
insert into Invoice (invoiceID, taxRate, amountTaxed, orderID) values (9, 0.125, 460, 9);
insert into Invoice (invoiceID, taxRate, amountTaxed, orderID) values (10, 0.125, 790, 10);