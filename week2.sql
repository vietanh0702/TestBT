CREATE DATABASE week2
 go
 use week2;
go
CREATE TABLE cusomters(
    customerid			INT PRIMARY KEY, 
    firstname			VARCHAR(30),
    lastname			VARCHAR(50),
    city				VARCHAR(50),
	state				VARCHAR(50)
) 
--drop table cusomters;
CREATE TABLE items_ordered(
    customerid			INT foreign key references cusomters(customerid) ,
    order_date			DATETIME,
    item				VARCHAR(50),
    quantity			INT,
    price				FLOAT,
)
--drop table items_ordered;
INSERT INTO cusomters (customerid, firstname, lastname, city, state) VALUES
(10101,'John','Gray','Lynden','Washington'),
(10298, 'Leroy', 'Brown', 'Pinetop', 'Arizona'),
(10299, 'Elroy', 'Keller', 'Snoqualmie', 'Washington'),
(10315, 'Lisa', 'Jones', 'Oshkosh', 'Wisconsin'),
(10325, 'Ginger', 'Schultz', 'Pocatello', 'Idaho'),
(10329, 'Kelly', 'Mendoza', 'Kailua', 'Hawaii'),
(10330, 'Shawn', 'Dalton', 'Cannon Beach', 'Oregon'),
(10338, 'Michael', 'Howell', 'Tillamook', 'Oregon'),
(10339, 'Anthony', 'Sanchez', 'Winslow', 'Arizona'),
(10408, 'Elroy', 'Cleaver', 'Globe', 'Arizona'),
(10410, 'Mary Ann', 'Howell', 'Charleston', 'South Carolina'),
(10413, 'Donald', 'Davids', 'Gila Bend', 'Arizona'),
(10419, 'Linda', 'Sakahara', 'Nogales', 'Arizona'),
(10429, 'Sarah', 'Graham', 'Greensboro', 'North Carolina'),
(10438, 'Kevin', 'Smith', 'Durango', 'Colorado'),
(10439, 'Conrad', 'Giles', 'Telluride', 'Colorado'),
(10449, 'Isabela', 'Moore', 'Yuma', 'Arizona');
select * from cusomters;

INSERT INTO items_ordered (customerid, order_date, item, quantity, price) VALUES
(10330, '30-Jun-1999', 'Pogo stick', 1, 28.00),
(10101, '30-Jun-1999', 'Raft',1,58.00),
(10298, '01-Jul-1999', 'Skateboard', 1,33.00),
(10101, '01-Jul-1999', 'Life Vest', 4, 125.00),
(10299, '06-Jul-1999', 'Parachute', 1, 1250.00),
(10339, '27-Jul-1999', 'Umbrella', 1, 4.50),
(10449, '13-Aug-1999', 'Unicycle', 1, 180.79),
(10439, '14-Aug-1999', 'Ski Poles', 2, 25.50),
(10101, '18-Aug-1999', 'Rain Coat', 1, 18.30),
(10449, '01-Sep-1999', 'Snow Shoes', 1, 45.00),
(10439, '18-Sep-1999', 'Tent', 1, 88.00),
(10298, '19-Sep-1999', 'Lantern', 2, 29.00),
(10410, '28-Oct-1999', 'Sleeping Bag', 1, 89.22),
(10438, '01-Nov-1999', 'Umbrella', 1, 6.75),
(10438, '02-Nov-1999', 'Pillow', 1, 8.50),
(10298, '01-Dec-1999', 'Helmet', 1, 22.00),
(10449, '15-Dec-1999', 'Bicycle', 1, 380.50),
(10449, '22-Dec-1999', 'Canoe' , 1, 280.00),
(10101, '30-Dec-1999', 'Hoola Hoop' , 3, 14.75),
(10330, '01-Jan-2000', 'Flashlight' , 4, 28.00),
(10101, '02-Jan-2000', 'Lantern' , 1, 16.00),
(10299, '18-Jan-2000', 'Inflatable Mattress', 1, 38.00),
(10438, '18-Jan-2000', 'Tent' , 1, 79.99),
(10413, '19-Jan-2000', 'Lawnchair' , 4, 32.00),
(10410, '30-Jan-2000', 'Unicycle' , 1, 192.50),
(10315, '02-Feb-2000', 'Compass', 1, 8.00),
(10449, '29-Feb-2000', 'Flashlight' , 1, 4.50),
(10101, '08-Mar-2000', 'Sleeping Bag' , 2, 88.70),
(10298, '18-Mar-2000', 'Pocket Knife' , 1, 22.38),
(10449, '19-Mar-2000', 'Canoe paddle', 2, 40.00),
(10298, '01-Apr-2000', 'Ear Muffs', 1, 12.50),
(10330, '19-Apr-2000', 'Shovel', 1 , 16.75);

select * from items_ordered;


--C1
SELECT customerid, item, price FROM items_ordered
WHERE customerid = 10449;
--C2
SELECT * FROM items_ordered
WHERE item = 'tent';
--C3
SELECT customerid, order_date, item
FROM items_ordered
WHERE item LIKE 'S%'
;

--C4
SELECT distinct item
FROM items_ordered;
--C5
SELECT MAX(price) AS GIA_CAO_NHAT
FROM items_ordered;

--C6
SELECT AVG(price) As GIA_TRUNG_BINH_THANG_12
FROM items_ordered
WHERE order_date LIKE '%Dec%';


