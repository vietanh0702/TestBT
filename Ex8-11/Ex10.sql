--Câu 10
SELECT item, max(price) AS GIA_CAO_NHAT, min(price) AS GIA_THAP_NHAT
FROM items_ordered
GROUP BY item;
--Hiển thị price cao nhất và thấp nhất của mỗi item và sử dụng GROUP BY để không bị trùng hoặc lặp lại item.