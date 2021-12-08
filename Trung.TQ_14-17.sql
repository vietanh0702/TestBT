
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
