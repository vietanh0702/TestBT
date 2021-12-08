SELECT AVG(price)
FROM items_ordered
WHERE order_date LIKE '%Dec%'
;
--Chọn giá trung bình của tất cả các mặt hàng đã đặt mua trong tháng 12.