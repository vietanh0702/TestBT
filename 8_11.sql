--Câu 8
SELECT MIN(price) AS GIA_THAP_NHAT
FROM items_ordered
WHERE item = 'tent';
--Hiển thị price trị thấp nhất của item 'tent' trong bảng items_ordered
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
--Câu 11
SELECT customerid, COUNT(item) AS SO_LUONG, SUM(price) AS TONG_GIA
FROM items_ordered
GROUP BY customerid;
--Hiển thị các customerid mua số lượng đơn hàng bằng lệnh COUNT và tổng price của các sản phẩm bằng hàm SUM và sử dụng GROUP BY để không bị trùng hoặc lặp lại customerid.