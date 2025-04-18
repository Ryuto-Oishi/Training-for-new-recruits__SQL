練習問題
9-1
A. トランザクション
B. コミット
C. 原子性
D. 分離性
E. トランザクション分離レベル

9-2
1. INSERT文の直後に処理が中断したら在庫が減らないままになる
   UPDATE文で処理が中断しても、受注されたことになる
2. BEGIN;
   SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;
   ~~~
   COMMIT;

9-3
ア. ◯
イ. ✖︎
ウ. ✖︎
エ. ◯
オ. ✖︎
カ. ◯
キ. ✖︎
ク. ◯
ケ. ✖︎