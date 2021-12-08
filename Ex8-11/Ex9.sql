--Câu 9
SELECT state, count(state) AS SO_LUONG
FROM cusomters
GROUP BY state;
--Hiển thị số lượng mỗi state trong bảng cusomters và mỗi state chỉ hiển thị duy nhất 1 lần bằng câu lệnh GROUP BY