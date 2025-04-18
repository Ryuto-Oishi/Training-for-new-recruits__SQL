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
SELECT 都市名, AVG(降水量) AS 各都市の降水量の平均, MIN(最高気温) AS 最も低かった最高気温, MAX(最低気温) AS 最も高かった最低気温
FROM 都市別気象観測
GROUP BY 都市名;

4
SELECT 月, AVG(降水量) AS 降水量の平均, AVG(最高気温) AS 最高気温の平均, AVG(最低気温) AS 最低気温の平均
FROM 都市別気象観測
GROUP BY 月
ORDER BY 月;

5
SELECT 都市名, MAX(最高気温) AS 最高気温
FROM 都市別気象観測
GROUP BY 都市名
HAVING MAX(最高気温) >= 38;

6
SELECT 都市名, MIN(最低気温) AS 最低気温
FROM 都市別気象観測
GROUP BY 都市名
HAVING MIN(最低気温) <= -10;

6-2
1
SELECT COUNT(*) FROM 入退室管理
WHERE 退室 IS NULL

2
SELECT 社員名, COUNT(*) AS 入室回数 FROM 入退室管理
GROUP BY 社員名
ORDER BY 入室回数 DESC;

3
SELECT 
CASE 事由区分
WHEN '1' THEN 'メンテナンス'
WHEN '2' THEN 'リリース事業'
WHEN '3' THEN '障害対応'
WHEN '9' THEN 'その他'
END AS 事由区分, COUNT(*) AS 入退室回数
FROM 入退室管理
GROUP BY 事由区分;

4
SELECT 社員名, COUNT(*) AS 入室回数 FROM 入退室管理
GROUP BY 社員名
HAVING COUNT(*) > 10;

5
SELECT 日付, COUNT(*) AS 社員数 FROM 入退室管理
WHERE 事由区分 = '3'
GROUP BY 日付;

6-3
2, 6