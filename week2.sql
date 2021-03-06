
CREATE TABLE  Customer(
    CustomerId	 INT PRIMARY KEY, 
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    City VARCHAR(50),
    State VARCHAR(50)
    );

CREATE TABLE Items_ordered(
	
    CustomerId	 INT not null, 
    Order_Date DATE,
    Item VARCHAR(50),
    Quantity INT(11),
    Price CHAR(50),
CONSTRAINT fk_item_id_customer
  FOREIGN KEY (CustomerId)
  REFERENCES Customer(CustomerId)
);

   -- INSERT DATA 
 


INSERT INTO Customer (Customerid, FirstName, LastName, City, State) VALUES
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




INSERT INTO Items_ordered (CustomerId, Order_Date, Item, Quantity, Price) VALUES
(10330, '1999/06/30', 'Pogo stick', 1, 28.00),
(10101, '1999/06/30', 'Raft',1,58.00),
(10298, '1999/07/01', 'Skateboard', 1,33.00),
(10101, '1999/07/01', 'Life Vest', 4, 125.00),
(10299, '1999/07/06', 'Parachute', 1, 1250.00),
(10339, '1999/07/27', 'Umbrella', 1, 4.50),
(10449, '1999/08/13', 'Unicycle', 1, 180.79),
(10439, '1999/08/14', 'Ski Poles', 2, 25.50),
(10101, '1999/08/18', 'Rain Coat', 1, 18.30),
(10449, '1999/09/01', 'Snow Shoes', 1, 45.00),
(10439, '1999/09/18', 'Tent', 1, 88.00),
(10298, '1999/09/08', 'Lantern', 2, 29.00),
(10410, '1999/10/28', 'Sleeping Bag', 1, 89.22),
(10438, '1999/11/01', 'Umbrella', 1, 6.75),
(10438, '1999/11/02', 'Pillow', 1, 8.50),
(10298, '1999/12/01', 'Helmet', 1, 22.00),
(10449, '1999/12/15', 'Bicycle', 1, 380.50),
(10449, '1999/12/22', 'Canoe' , 1, 280.00),
(10101, '1999/12/30', 'Hoola Hoop' , 3, 14.75),
(10330, '2000/01/01', 'Flashlight' , 4, 28.00),
(10101, '2000/01/02', 'Lantern' , 1, 16.00),
(10299, '2000/01/18', 'Inflatable Mattress', 1, 38.00),
(10438, '2000/01/18', 'Tent' , 1, 79.99),
(10413, '2000/01/19', 'Lawnchair' , 4, 32.00),
(10410, '2000/01/30', 'Unicycle' , 1, 192.50),
(10315, '2000/02/2', 'Compass', 1, 8.00),
(10449, '2000/02/29', 'Flashlight' , 1, 4.50),
(10101, '2000/03/08', 'Sleeping Bag' , 2, 88.70),
(10298, '2000/03/18', 'Pocket Knife' , 1, 22.38),
(10449, '2000/03/19', 'Canoe paddle', 2, 40.00),
(10298, '2000/04/01', 'Ear Muffs', 1, 12.50),
(10330, '2000/04/19', 'Shovel', 1 , 16.75);

-- To??n.NVP--
-- c??u 1 : Select v??o b???ng customerid t??? b???ng item_odered v?? l???y gi?? tr??? c???a id 10449 r???i tr??? h???t c??c k???t qu??? t??? id 10449
SELECT customerid, item, price FROM items_ordered
WHERE customerid = 10449;
-- c??u 2 : 	T??? b???ng intems_ordered tr??? k???t qu??? v???i ??i???u ki???n l?? ???tent???
SELECT * FROM items_ordered WHERE item = 'tent';
-- c??u 3 : T??? b???ng customerid, order_date v?? item t??? b???ng items_ordered tr??? v???  c??c g??a tr??? c?? t??n  b???t  ?????u b???ng ???S???.
SELECT customerid, order_date, item FROM items_ordered WHERE item LIKE 'S%' ;
-- c??u 4 : tr??? t???t c??? k???t qu??? kh??c nhau  t??? b???ng items_ordered;
SELECT distinct item FROM items_ordered;
-- Phan V??n L???c Loc.PV--
-- c??u 5 :Ch???n gi?? t???i ??a c???a b???t k??? m???t h??ng n??o ???????c ?????t h??ng trong b???ng items_ordered.
SELECT MAX(price)
FROM items_ordered;
-- c??u 6:Ch???n gi?? trung b??nh c???a t???t c??? c??c m???t h??ng ???? ?????t mua trong th??ng 12.
SELECT AVG(price)
FROM items_ordered
WHERE order_date LIKE '%Dec%';
-- c??u 7 : T???ng s??? h??ng trong b???ng items_ordered l?? bao nhi??u?
SELECT COUNT(*)
FROM items_ordered;
-- c??u 8: --ch???n gi?? tr??? th???p nh???t t??? item  c?? t??n l?? 'tent' trong b???ng items_ordered
SELECT MIN(price) AS GIA_THAP_NHAT
FROM items_ordered
WHERE item = 'tent';
--C??u 8: --ch???n gi?? tr??? th???p nh???t t??? item  c?? t??n l?? 'tent' trong b???ng items_ordered
SELECT MIN(price) AS GIA_THAP_NHAT
FROM items_ordered
WHERE item = 'tent';
--C??u 9
SELECT state, count(state) AS SO_LUONG
FROM cusomters
GROUP BY state;
--Hi???n th??? s??? l?????ng m???i state trong b???ng cusomters v?? m???i state ch??? hi???n th??? duy nh???t 1 l???n b???ng c??u l???nh GROUP BY
--C??u 10
SELECT item, max(price) AS GIA_CAO_NHAT, min(price) AS GIA_THAP_NHAT
FROM items_ordered
GROUP BY item;
--Hi???n th??? price cao nh???t v?? th???p nh???t c???a m???i item v?? s??? d???ng GROUP BY ????? kh??ng b??? tr??ng ho???c l???p l???i item.

--L?? Quang Sang ex 11-14 week2--

-- C??u 11:L???y gi?? tr??? t??? b???ng customerid s??? d???ng h??m ?????m(COUNT) item sau ???? t??nh t???ng gi?? b???ng h??m (SUM) v???i ??i???u ki???n thu???c b???ng customerid

SELECT customerid, COUNT(item) AS SO_LUONG, SUM(price) AS TONG_GIA 
FROM items_ordered 
GROUP BY customerid;

-- C??u 12:l???y gi?? tr??? t??? b???ng state, ?????m(COUNT) s??? l?????ng gi?? tr??? trong b???ng customeid r???i tr??? ra s??? l?????ng sau ???? ?????m customerid r???i tr??? ra k???t qu??? v???i ??i???u ki???n customerid >1

SELECT state, COUNT(customerid) AS SO_LUONG
FROM cusomters
GROUP BY state
HAVING COUNT(customerid) > 1;

-- C??u 13:l???y gi?? tr??? t??? b???ng item tr??? v??? c??c gi?? tr??? cao nh???t v?? th???p nh???t t??? b???ng item_order v?? tr??? l???i gi?? tr??? t???i ??a l???n h??n 190.00

SELECT item, MAX(price) AS GIA_CAO_NHAT, MIN(price) AS GIA_THAP_NHAT
FROM items_ordered
GROUP BY item
HAVING MAX(price) > 190.00;

-- C??u 14: l???y gi?? tr??? t??? b???ng customerid ?????m(COUNT) s??? gi?? tr??? quantily sau ???? t??nh t???ng gi?? t??? b???ng price ???????c l???y k???t qu??? t??? b???ng item_order r???i tr??? ra gi?? tr??? trong quantity l???n h??n 1

SELECT customerid, COUNT(quantity) AS SO_DON_HANG, SUM(price) AS 
TONG_GIA
FROM items_ordered
GROUP BY customerid
HAVING COUNT(quantity) > 1;

--Trung.TQ start--

--c15--
SELECT city, firstname, lastname FROM cusomters
--ch???n city, firstname, lastname t??? b???ng cusomters--
ORDER BY city, firstname ASC;
--nh??m city, firstname theo th??? t??? t??ng d???n nh???ng city, firstname gi???ng nhau s??? hi???n th??? 1 l???n--

--c16--
SELECT customerid, item, price FROM items_ordered
--ch???n customerid, item, price t??? b???ng items_ordered--
WHERE customerid = 10449
--??i???u ki???n customerid = 10449--
ORDER BY price DESC;
--nh??m price theo th??? t??? gi???m d???n nh???ng price gi???ng nhau s??? hi???n th??? 1 l???n--

--c17--
SELECT item, price FROM items_ordered
--ch???n item, price t??? b???ng items_ordered--
WHERE price > 10.00
--??i???u ki???n gi?? b??n >10.00--
ORDER BY price ASC;
--nh??m price theo th??? t??? t??ng d???n nh???ng price gi???ng nhau s??? hi???n th??? 1 l???n--
--Trung.TQ end--

-- Vi????t A??nh
-- c??u 17
-- hi????n thi?? gi?? tr??? c???a item v?? price t??? b???ng items_ordered v???i ??i???u ki???n gi?? > 10.00 r???i nh??m ch??ng v?? tr??? ra k???t qu??? theo th??? t??? t??ng d???n 
SELECT item, price FROM items_ordered WHERE price > 10.00 ORDER BY price ASC

-- C??u 18 

-- l???y gi?? tr??? c???a b???ng customerid,order_date, item t??? b???ng items_ordered v???i ??i???u ki???n item kh??ng l?? 'Snow shoes' v?? 'Ear muffs'
 SELECT customerid, order_date , item FROM items_ordered WHERE(item<>'Snow Shoes') AND ( item<>'Ear muffs')


-- C??u 19 

-- l???y gi?? tr??? c???a item v?? price t??? b???ng items_ordered v???i ??i???u ki???n l?? b???t ?????u b???ng c??c ch??? c??i 'S,P,F'
 SELECT item, price FROM items_ordered WHERE(item LIKE 'S%') OR (item LIKE 'P%') OR (item LIKE 'F%')
 

-- C??u 20 

-- l???y gi?? tr??? c???a order_date, item, price t??? b???ng items_ordered v???i ??i???u ki???n gi?? b??n l???n h??n 10.00 v?? nh??? h??n 80.00 
SELECT order_date, item, price FROM items_ordered WHERE price BETWEEN 10.00 AND 80.00


-- C??u 21 

-- l???y gi?? tr??? c???a firstname, city, sate t??? b???ng customer v?? tr??? gi?? tr??? ra v???i ??i???u ki???n k???t qu??? thu???c ('Arizona'. 'Washington', 'Oklahoma', 'Colorado', 'Hawaii');
 SELECT firstname, city, state FROM customer WHERE state IN ('Arizona', 'Washington', 'Oklahoma', 'Colorado', 'Hawaii')
-- testttttttt
