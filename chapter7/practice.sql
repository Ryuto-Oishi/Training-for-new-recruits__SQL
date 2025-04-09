練習問題
7-1
A. 単一行副問い合わせ
B. SELECT
C. SELECT
D. n
E. 1
F. 複数行副問い合わせ
G. IN
H. ANY/ALL
I. FROM
J. 表
K. INSERT

7-2
1
副問い合わせのみ：3
全体：25200

2
副問い合わせのみ：'S01', 'E01', 'S02'
全体：車種コード, 車種名
     'E01', 'エコカー'
     'S01', '軽自動車'
     'S02', 'ハッチバック'

3
服問い合わせ：車種コード, 日数
            'E01', 3
            'S01', 3
            'S02', 6
全体：合計日数, 車種数
     12, 3

7-3
1
INSERT INTO 頭数集計
SELECT 飼育県, COUNT(*) FROM 個体識別
GROUP BY 飼育県;

2
SELECT 飼育県 AS 都道府県名, 個体識別番号,
CASE 雌雄コード
WHEN '1' THEN '雄'
WHEN '2' THEN '雌'
END AS 雄雌
FROM 個体識別
WHERE 飼育県 IN (SELECT 飼育県 FROM 頭数集計 ORDER BY 頭数集計 OFFSET 0 ROWS FETCH NEXT 3 ROWS ONLY);

3
SELECT 個体識別番号, 
CASE 品種コード
WHEN '01' THEN '乳用種'
WHEN '02' THEN '肉用種'
WHEN '03' THEN '交雑種'
END AS 品種, 出生日, 母牛番号 
FROM 個体識別
WHERE 母牛番号 IN (SELECT 個体識別番号 FROM 個体識別 WHERE 品種コード = '01');