練習問題
問題4-1
1
SELECT * FROM 注文履歴 ORDER BY 注文番号, 注文枝番

2
SELECT 商品名 FROM 注文履歴 WHERE 日付 BETWEEN '2024-01-01' AND '2024-01-31' ORDER BY 商品名

3
SELECT 注文番号, 注文枝番, 注文金額 FROM 注文履歴 WHERE 分類 = '1' 
ORDER BY 注文金額
OFFSET 1 ROWS
FETCH NEXT 3 ROW ONLY

4
SELECT 日付, 商品名, 単価, 数量, 注文金額 FROM 注文履歴 WHERE 分類 = '3' AND 数量 >= 2
ORDER BY 日付, 数量 DESC

5
SELECT DISTINCT 分類, 商品名, サイズ, 単価 FROM 注文履歴 WHERE 分類 = '1'
ORDER BY 分類, 商品名

SELECT DISTINCT 分類, 商品名, 単価 FROM 注文履歴 WHERE 分類 = '2'
ORDER BY 分類, 商品名

SELECT DISTINCT 分類, 商品名, 単価 FROM 注文履歴 WHERE 分類 = '3'
ORDER BY 分類, 商品名

問題4-2
1
SELECT * FROM 奇数
UNION
SELECT * FROM 偶数

2
SELECT * FROM 整数
EXCEPT
SELECT * FROM 偶数

3
SELECT * FROM 整数
INTERSECT
SELECT * FROM 偶数

4
SELECT * FROM 偶数
INTERSECT
SELECT * FROM 奇数