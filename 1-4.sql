-- câu 1 : Select vào bảng customerid từ bảng item_odered và lấy giá trị của id 10449 rồi trả hết các kết quả từ id 10449
SELECT customerid, item, price FROM items_ordered
WHERE customerid = 10449;
-- câu 2 : 	Từ bảng intems_ordered trả kết quả với điều kiện là ‘tent’
SELECT * FROM items_ordered WHERE item = 'tent';
-- câu 3 : Từ bảng customerid, order_date và item từ bảng items_ordered trả về  các gía trị có tên  bắt  đầu bằng “S”.
SELECT customerid, order_date, item FROM items_ordered WHERE item LIKE 'S%' ;
-- câu 4 : trả tất cả kết quả khác nhau  từ bảng items_ordered;
SELECT distinct item FROM items_ordered;

