
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
    Quantity CHAR(11),
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


-- câu 1 : Select vào bảng customerid từ bảng item_odered và lấy giá trị của id 10449 rồi trả hết các kết quả từ id 10449
SELECT customerid, item, price FROM items_ordered
WHERE customerid = 10449;
-- câu 2 : 	Từ bảng intems_ordered trả kết quả với điều kiện là ‘tent’
SELECT * FROM items_ordered WHERE item = 'tent';
-- câu 3 : Từ bảng customerid, order_date và item từ bảng items_ordered trả về  các gía trị có tên  bắt  đầu bằng “S”.
SELECT customerid, order_date, item FROM items_ordered WHERE item LIKE 'S%' ;
-- câu 4 : trả tất cả kết quả khác nhau  từ bảng items_ordered;
SELECT distinct item FROM items_ordered;

--Trung.TQ start--
--c14--
SELECT customerid, 
--chọn customerid từ bảng items_ordered--
COUNT(quantity) AS SO_DON_HANG, 
--đếm số lượng đơn hàng--
SUM(price) AS TONG_GIA
--tổng giá--
FROM items_ordered
GROUP BY customerid
--nhóm customerid những customerid giống nhau sẽ hiển thị 1 lần--
HAVING COUNT(quantity) > 1;
--lọc số lượng quantity >1 theo customerid--

--c15--
SELECT city, firstname, lastname FROM cusomters
--chọn city, firstname, lastname từ bảng cusomters--
ORDER BY city, firstname ASC;
--nhóm city, firstname theo thứ tự tăng dần những city, firstname giống nhau sẽ hiển thị 1 lần--

--c16--
SELECT customerid, item, price FROM items_ordered
--chọn customerid, item, price từ bảng items_ordered--
WHERE customerid = 10449
--điều kiện customerid = 10449--
ORDER BY price DESC;
--nhóm price theo thứ tự giảm dần những price giống nhau sẽ hiển thị 1 lần--

--c17--
SELECT item, price FROM items_ordered
--chọn item, price từ bảng items_ordered--
WHERE price > 10.00
--điều kiện giá bán >10.00--
ORDER BY price ASC;
--nhóm price theo thứ tự tăng dần những price giống nhau sẽ hiển thị 1 lần--
--Trung.TQ end--

-- câu 17
-- hiển thị giá trị của item và price từ bảng items_ordered với điều kiện giá > 10.00 rồi nhóm chúng và trả ra kết quả theo thứ tự tăng dần 
SELECT item, price FROM items_ordered WHERE price > 10.00 ORDER BY price ASC

-- Câu 18 

-- lấy giá trị của bảng customerid,order_date, item từ bảng items_ordered với điều kiện item không là 'Snow shoes' và 'Ear muffs'
 SELECT customerid, order_date , item FROM items_ordered WHERE(item<>'Snow Shoes') AND ( item<>'Ear muffs')


-- Câu 19 

-- lấy giá trị của item và price từ bảng items_ordered với điều kiện là bắt đầu bằng các chử cái 'S,P,F'
 SELECT item, price FROM items_ordered WHERE(item LIKE 'S%') OR (item LIKE 'P%') OR (item LIKE 'F%')
 

-- Câu 20 

-- lấy giá trị của order_date, item, price từ bảng items_ordered với điều kiện giá bán lớn hơn 10.00 và nhỏ hơn 80.00 
SELECT order_date, item, price FROM items_ordered WHERE price BETWEEN 10.00 AND 80.00


-- Câu 21 

-- lấy giá trị của firstname, city, sate từ bảng customer và trả giá trị ra với điều kiện kết quả thuộc ('Arizona'. 'Washington', 'Oklahoma', 'Colorado', 'Hawaii');
 SELECT firstname, city, state FROM customer WHERE state IN ('Arizona', 'Washington', 'Oklahoma', 'Colorado', 'Hawaii')

-- test demo --

-- Câu 20 

-- lấy giá trị của order_date, item, price từ bảng items_ordered với điều kiện giá bán lớn hơn 10.00 và nhỏ hơn 80.00 
SELECT order_date, item, price FROM items_ordered WHERE price BETWEEN 10.00 AND 80.00


-- Câu 21 

-- lấy giá trị của firstname, city, sate từ bảng customer và trả giá trị ra với điều kiện kết quả thuộc ('Arizona'. 'Washington', 'Oklahoma', 'Colorado', 'Hawaii');
 SELECT firstname, city, state FROM customer WHERE state IN ('Arizona', 'Washington', 'Oklahoma', 'Colorado', 'Hawaii')