練習問題
問題2-1
A：SELECT
B：UPDATE
C：DELETE
D：INSERT
E：FROM
F：FROM
G：INTO
H：WHERE

問題2-2
(1)INTEGER型
(2)VARCHAR型
(3)DATE型
(4)DECIMAL型
(5)TIME型
(6)INTEGER型
(7)CHAR型

問題2-3
1
SELECT コード, 地域, 都道府県名, 県庁所在地, 面積 FROM 都道府県

2
SELECT * FROM 都道府県

3
SELECT 地域 AS area, 都道府県名 AS pref

問題2-4
1
INSERT INTO 都道府県 (コード, 地域, 都道府県名, 面積) VALUES (26, '近畿', '京都', 4613)

2
INSERT INTO 都道府県 VALUES (37, '四国', '香川', '高松', 4613)

3
INSERT INTO 都道府県 (コード, 都道府県名, 県庁所在地) VALUES (40, '福岡', '福岡')

問題2-5
1
UPDATE 都道府県 SET 県庁所在地 = '京都' WHERE コード = 26

2
UPDATE 都道府県 SET 地域 = '九州', 面積 = 4976 WHERE コード = 40

問題2-6
DELETE FROM 都道府県 WHERE コード = 26


