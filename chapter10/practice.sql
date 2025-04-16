練習問題
10-1
イ, ウ, キ

10-2
CREATE TABLE 学部 (
    ID CHAR(1) PRIMARY KEY,
    名前 VARCHAR(20) UNIQUE NOT NULL,
    備考 VARCHAR(20) DEFAULT '特になし' NOT NULL, 
)

10-3
CREATE TABLE 学生 (
    学籍番号 CHAR(8) PRIMARY KEY,
    名前 VARCHAR(30) NOT NULL,
    生年月日 DATE NOT NULL,
    血液型 CHAR(2) DEFAULT NULL CHECK(血液型 = 'A' OR 血液型 = 'B' OR 血液型 = 'O' OR 血液型 = 'AB')
    学部ID CHAR(1) REFERENCES 学部(ID), 
)
血液型 CHAR(2) CHECK 血液型 IN('A', 'B', 'O', 'AB') OR 血液型 IS NULL

10-4
学生テーブルの学部IDが学部テーブルのIDに存在しない値を追加しようとした場合
学生テーブルで扱われている学部テーブルのIDを削除や更新しようとした場合

10-5
INSERT INTO 学部 (ID, 名前) VALUES('K', '工学部');
UPDATE 学生 SET 学部ID = 'K' WHERE 学部ID = 'R';
DELETE 学部 WHERE 学部ID = 'R';

解答例
BEGIN;
UPDATE 学生 SET 学部ID = 'K' WHERE 学部ID = 'R';
DELETE FROM 学部 WHERE ID ='R';
COMMIT;