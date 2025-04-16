練習問題
11-1
A. ACID特性
B. 制約
C. 永続性
D. ログファイル
E. ロールフォワード

11-2
1. 名前, 学部ID
2. 
CREATE VIEW 学生管理 AS
SELECT 学生.学籍番号, 学生.名前, 学生.生年月日, 学部.学部名, 学生.血液型
FROM 学生
JOIN 学部
ON 学生.学部ID = 学部.ID

3.
INSERT INTO 学生 (学籍番号, 名前, 生年月日, 血液型, 学部ID, 登録順)
VALUES ('B1101022', '古島 進', '2004-02-12', 'A', 'K', (SELECT NEXTVAL('ISTD')));