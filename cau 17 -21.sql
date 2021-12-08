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



