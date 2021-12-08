
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

-- Toàn.NVP--
-- câu 1 : Select vào bảng customerid từ bảng item_odered và lấy giá trị của id 10449 rồi trả hết các kết quả từ id 10449
SELECT customerid, item, price FROM items_ordered
WHERE customerid = 10449;
-- câu 2 : 	Từ bảng intems_ordered trả kết quả với điều kiện là ‘tent’
SELECT * FROM items_ordered WHERE item = 'tent';
-- câu 3 : Từ bảng customerid, order_date và item từ bảng items_ordered trả về  các gía trị có tên  bắt  đầu bằng “S”.
SELECT customerid, order_date, item FROM items_ordered WHERE item LIKE 'S%' ;
-- câu 4 : trả tất cả kết quả khác nhau  từ bảng items_ordered;
SELECT distinct item FROM items_ordered;
-- Phan Văn Lộc Loc.PV--
-- câu 5 :Chọn giá tối đa của bất kỳ mặt hàng nào được đặt hàng trong bảng items_ordered.
SELECT MAX(price)
FROM items_ordered;
-- câu 6:Chọn giá trung bình của tất cả các mặt hàng đã đặt mua trong tháng 12.
SELECT AVG(price)
FROM items_ordered
WHERE order_date LIKE '%Dec%';
-- câu 7 : Tổng số hàng trong bảng items_ordered là bao nhiêu?
SELECT COUNT(*)
FROM items_ordered;
-- câu 8: --chọn giá trị thấp nhất từ item  có tên là 'tent' trong bảng items_ordered
SELECT MIN(price) AS GIA_THAP_NHAT
FROM items_ordered
WHERE item = 'tent';
--Câu 8: --chọn giá trị thấp nhất từ item  có tên là 'tent' trong bảng items_ordered
SELECT MIN(price) AS GIA_THAP_NHAT
FROM items_ordered
WHERE item = 'tent';
--Câu 9
SELECT state, count(state) AS SO_LUONG
FROM cusomters
GROUP BY state;
--Hiển thị số lượng mỗi state trong bảng cusomters và mỗi state chỉ hiển thị duy nhất 1 lần bằng câu lệnh GROUP BY
--Câu 10
SELECT item, max(price) AS GIA_CAO_NHAT, min(price) AS GIA_THAP_NHAT
FROM items_ordered
GROUP BY item;
--Hiển thị price cao nhất và thấp nhất của mỗi item và sử dụng GROUP BY để không bị trùng hoặc lặp lại item.

--Lê Quang Sang ex 11-14 week2--

-- Câu 11:Lấy giá trị từ bảng customerid sử dụng hàm đếm(COUNT) item sau đó tính tổng giá bằng hàm (SUM) với điều kiện thuộc bảng customerid

SELECT customerid, COUNT(item) AS SO_LUONG, SUM(price) AS TONG_GIA 
FROM items_ordered 
GROUP BY customerid;

-- Câu 12:lấy giá trị từ bảng state, đếm(COUNT) số lượng giá trị trong bảng customeid rồi trả ra số lượng sau đó đếm customerid rồi trả ra kết quả với điều kiện customerid >1

SELECT state, COUNT(customerid) AS SO_LUONG
FROM cusomters
GROUP BY state
HAVING COUNT(customerid) > 1;

-- Câu 13:lấy giá trị từ bảng item trả về các giá trị cao nhất và thấp nhất từ bảng item_order và trả lại giá trị tối đa lớn hơn 190.00

SELECT item, MAX(price) AS GIA_CAO_NHAT, MIN(price) AS GIA_THAP_NHAT
FROM items_ordered
GROUP BY item
HAVING MAX(price) > 190.00;

-- Câu 14: lấy giá trị từ bảng customerid đếm(COUNT) số giá trị quantily sau đó tính tổng giá từ bảng price được lấy kết quả từ bảng item_order rồi trả ra giá trị trong quantity lớn hơn 1

SELECT customerid, COUNT(quantity) AS SO_DON_HANG, SUM(price) AS 
TONG_GIA
FROM items_ordered
GROUP BY customerid
HAVING COUNT(quantity) > 1;

--Trung.TQ start--

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

-- Việt Ánh
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

