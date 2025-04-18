練習問題
12-1
1
部署

部署番号 
-------              
部署名

1
対
多

部員

部署番号
社員番号
-------
社員名
役職コード
役職名
年齢

2
部署

部署番号 
-------              
部署名

1
対
多

部員

部署番号
社員番号
-------

多
対
1

社員

社員番号
-------
社員名
役職コード
役職名
年齢

3
部署

部署番号 
-------              
部署名

1
対
多

部員

部署番号
社員番号
-------

多
対
1

社員　　　                  役職

社員番号　                  役職コード
-------       多対1        -------
社員名　　
役職コード                  役職名
年齢　　　


12-2
部署テーブル
CREATE TABLE 部署 (
    部署番号 VARCHAR(2) PRIMARY KEY,
    部署名 VARCHAR(10) UNIQUE NOT NULL
)

部員テーブル
CREATE TABLE 部員 (
    部署番号 VARCHAR(2) NOT NULL REFERENCES 部署(部署番号),
    社員番号 VARCHAR(5) NOT NULL REFERENCES 社員(社員番号),
    PRIMARY KEY (部署番号, 社員番号)
)

社員テーブル
CREATE TABLE 部員 (
    社員番号 VARCHAR(5) PRIMARY KEY,
    社員名 VARCHAR(10) NOT NULL,
    役職コード VARCHAR(1) NOT NULL  REFERENCES 役職(役職コード),
    年齢 INTEGER NOT NULL
)

役職テーブル
CREATE TABLE 役職 (
    役職コード VARCHAR(1) PRIMARY KEY,
    役職名 VARCHAR(10) NOT NULL
)

12-3
1
名刺

メールアドレス
------------
名前（日本語）
名前（英語）
会社名
部署名
会社郵便番号
会社住所
会社電話番号
会社FAX番号

2
見積

見積ID
---------
見積日
顧客名
件名
納期
支払条件
有効期限
合計金額
税区分
自社名
自社郵便番号
自社住所
自社電話番号
備考


見積明細

見積ID
明細ID
------
概要
数量
単位
単価
合計

