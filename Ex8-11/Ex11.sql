--Câu 11
SELECT customerid, COUNT(item) AS SO_LUONG, SUM(price) AS TONG_GIA
FROM items_ordered
GROUP BY customerid;
--Hiển thị các customerid mua số lượng đơn hàng bằng lệnh COUNT và tổng price của các sản phẩm bằng hàm SUM và sử dụng GROUP BY để không bị trùng hoặc lặp lại customerid.