練習問題
6-1
1
SELECT SUM(降水量) AS 年間降水量の合計, AVG(最高気温) AS 年間の最高気温の平均, AVG(最低気温) AS 年間の最低気温の平均 FROM 都市別気象観測;

2
SELECT 月, SUM(降水量) AS 年間降水量, MAX(最高気温) AS 各月の最高気温, MIN(最低気温) AS 各月の最低気温
FROM 都市別気象観測
GROUP BY 月
ORDER BY 月;

3