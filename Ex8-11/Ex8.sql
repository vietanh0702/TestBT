--Câu 8
SELECT MIN(price) AS GIA_THAP_NHAT
FROM items_ordered
WHERE item = 'tent';
--Hiển thị price trị thấp nhất của item 'tent' trong bảng items_ordered