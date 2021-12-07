--C1--
SELECT customerid, item, price FROM items_ordered
--chọn customerid, item, price từ bảng items_ordered--
WHERE customerid = 10449;
--điều kiện customerid = 10449--

--C2--
SELECT * FROM items_ordered WHERE item = 'tent';
--chọn bảng items_ordered điều kiện item = 'tent'--

--C3--
SELECT customerid, order_date, item FROM items_ordered 
--chọn customerid, order_date, item từ bảng items_ordered --
WHERE item LIKE 'S%' ;
--điều kiện trả về  các item bắt đầu bằng "S"--

--C4--
SELECT DISTINCT item FROM items_ordered;
--trả về tất cả các giá trị riêng biệt khác nhau từ bảng items_ordered--

--C5--
SELECT MAX(price) AS GIA_CAO_NHAT FROM items_ordered;
--lấy giá cao nhất từ bảng items_ordered rồi trả kết quả--

--C6--
SELECT AVG(price) As GIA_TRUNG_BINH_THANG_12 FROM items_ordered 
--chọn giá bán tính tổng trung bình từ bảng items_ordered --
WHERE order_date LIKE '%Dec%';
--điều kiện order_date trong tháng 12--

--C7--
SELECT COUNT(*)AS 'TOTAL' FROM items_ordered
--đếm số 'TOTAL' từ bảng items_ordered --

--C8--
SELECT MIN(Price) AS PRICE FROM items_ordered 
--chọn lấy giá trị Price nhỏ nhất từ bảng items_ordered --
WHERE Item = 'Tent'
--điều kiện Item = 'Tent'--

--C9--
SELECT state, count(state) AS SO_NGUOI FROM customers
--Hiển thị state và đếm số người trong state từ bảng customers--                   
GROUP BY state;  
--nhóm state những state giống nhau sẽ hiển thị 1 lần --

--C10--
SELECT item,
--chọn item từ bảng items_ordered--
MAX(price) AS 'maximum price',
--lấy giá trị lớn nhất từ giá bán trong item từ bảng items_ordered--
MIN(price) AS 'minimum price' 
--lấy giá trị nhỏ nhất từ giá bán trong item từ bảng items_ordered--
FROM items_ordered
GROUP BY item;
--nhóm item những item giống nhau sẽ hiển thị 1 lần--

--c11--
SELECT customerid, 
--chọn customerid từ bảng items_ordered--
COUNT(item) AS SO_LUONG, 
--đếm số lượng item từ bảng items_ordered theo customerid
SUM(price) AS TONG_GIA
--tổng giá số lượng item từ bảng items_ordered theo customerid
FROM items_ordered
GROUP BY customerid;
--nhóm customerid những customerid giống nhau sẽ hiển thị 1 lần--

--c12--
SELECT state, 
--chọn state từ bảng cusomters--
COUNT(customerid) AS SO_LUONG
--đếm số lượng state theo customerid--
FROM cusomters
GROUP BY state
--nhóm state những state giống nhau sẽ hiển thị 1 lần--
HAVING COUNT(customerid) > 1;
--lọc số lượng state >1 đếm theo customerid--

--c13--
SELECT item,
--chọn item từ bảng items_ordered--
MAX(price) AS GIA_CAO_NHAT,
--lấy giá trị lớn nhất trong price từ bảng items_ordered--
MIN(price) AS GIA_THAP_NHAT
--lấy giá trị nhỏ nhất trong price từ bảng items_ordered--
FROM items_ordered
GROUP BY item
--nhóm item những item giống nhau sẽ hiển thị 1 lần--
HAVING MAX(price) > 190.00;
--lọc giá > 190.00--

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

--c18--
SELECT customerid, order_date, item FROM items_ordered
--chọn customerid, order_date, item từ bảng items_ordered--
WHERE (item <> 'Snow shoes') AND (item <> 'Ear muffs');
--điều kiện item không phải là 'Snow shoes' và  'Ear muffs'--

--c19--
SELECT item, price FROM items_ordered
--chọn item, price từ bảng items_ordered--
WHERE (item LIKE 'S%') OR (item LIKE 'P%') OR (item LIKE 'F%');
--điều kiện item bắt đầu bằng chữ S,P,F--

--c20--
SELECT order_date, item, price FROM items_ordered
--chọn order_date, item, price từ bảng items_ordered--
WHERE price BETWEEN 10.00 AND 80.00;
--điều kiện giá bán >=10.00 và <= 80.00--

--c21--
SELECT firstname, city, state FROM cusomters
--chọn firstname, city, state từ bảng cusomters--
WHERE state IN ('Arizona', 'Washington', 'Oklahoma', 'Colorado', 'Hawaii');
-- state phải trong 'Arizona', 'Washington', 'Oklahoma', 'Colorado', 'Hawaii'--