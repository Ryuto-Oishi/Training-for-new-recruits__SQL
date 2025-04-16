練習問題
8-1
1
A1, A2, B1, B2
 1,  3,  1,  2

2
A1, A2, B1, B2
 2,  4,  1,  2

3
A1, A2, B1, B2
 2,  4,  1,  2
NULL, NULL, 3, NULL

4
A.A1, C.A2, B1, B2
 1,  3,  1,  2

8-2
1
SELECT 社員番号, 社員.名前, 部署.名前 AS 部署名
FROM 社員
JOIN 部署
ON 社員.部署ID = 部署.部署ID;

2
SELECT A.社員番号, A.名前, B.名前 AS 上司名
FROM 社員 AS A
JOIN 社員 AS B
ON A.上司ID = B.社員番号;

3
SELECT 社員番号, 社員.名前, 部署.名前 AS 部署名, 支店.名前 AS 勤務地
FROM 社員
JOIN 部署
ON 社員.部署ID = 部署.部署ID
JOIN 支店
ON 社員.勤務地ID = 支店.支店ID;

4
SELECT 支店.支店ID AS 支店コード,
支店.名前 AS 支店名,
社員.名前 AS 支店長名,
社員数.社員数
FROM 支店
JOIN 社員
ON 支店.支店長ID = 社員.社員番号
JOIN (SELECT 勤務地ID, COUNT(*) AS 社員数 FROM 社員 GROUP BY 勤務地ID) AS 社員数
ON 支店.支店ID = 社員数.勤務地ID;

5
SELECT 社員.社員番号, 社員.名前, 支店.名前 AS 本人勤務地, 上司支店.名前 AS 上司勤務地
FROM 社員
JOIN 社員 AS 上司
ON 社員.上司ID = 上司.社員番号
JOIN 支店
ON 社員.勤務地ID = 支店.支店ID
JOIN 支店 AS 上司支店
ON 上司.勤務地ID = 上司支店.支店ID
WHERE NOT 支店.名前 = 上司支店.名前;