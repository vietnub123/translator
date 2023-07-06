;夢精

*start

[cm]
[clearfix]
[menuwindows]

@bg storage ="white.png" time="1000"
;-ランダム判定
;ランダム数値の取り出し
*random
[iscript]
tf.rand = Math.floor( Math.random() * 3)
[endscript]

;ランダム数字が前回と同じか調べる
[if exp="tf.rand == f.d_before"]
;同じ数字ならやり直し
[jump target="*random"]
[endif]

;-夢判別
;--莉子
[if exp="tf.rand == 0"]
;---莉子夢①
 [if exp="f.dream_riko == undefined || f.dream_riko == 1"]
  [bgmovie storage="mov_11_1_1.webm" time="2000"]
#莉子
[playse storage="riko/rk11_001.ogg" buf="0"]
Uncle, see Riko's boobs!I want my uncle to see a lot[p]
#
　[stop_bgmovie time="2000"]
  [eval exp="f.dream_riko = 2"]
  [eval exp="f.d_before = tf.rand"]
  [return]
 [endif]
 ;---莉子夢②
 [if exp="f.dream_riko == 2"]
  [bgmovie storage="mov_11_4_1.webm" time="2000"]
#莉子
[playse storage="riko/rk11_002.ogg" buf="0"]
Uncle, Riko's pussy is already like this[p]
#
  [stop_bgmovie time="2000"]
  [eval exp="f.dream_riko = 3"]
  [eval exp="f.d_before = tf.rand"]
  [return]
 [endif]
;---莉子夢③
 [if exp="f.dream_riko == 3"]
  [bgmovie storage="mov_11_1_2.webm" time="2000"]
#莉子
[playse storage="riko/rk11_003.ogg" buf="0"]
Uncle, inserted ... Inserted in Riko's pussy ...[p]
#
  [stop_bgmovie time="2000"]
  [eval exp="f.dream_riko = 1"]
  [eval exp="f.d_before = tf.rand"]
  [return]
 [endif]
[endif]

;--莉菜
[if exp="tf.rand == 1"]
;---莉菜夢①
 [if exp="f.dream_rina == undefined || f.dream_rina == 1"]
  [bgmovie storage="mov_12_1_1.webm" time="2000"]
#莉菜
[playse storage="rina/rn12_001.ogg" buf="0"]
Your brother, Rina's chest ... Please see ...[p]
#
  [stop_bgmovie time="2000"]
  [eval exp="f.dream_rina = 2"]
  [eval exp="f.d_before = tf.rand"]
  [return]
 [endif]
;---莉菜夢②
 [if exp="f.dream_rina == 2"]
  [bgmovie storage="mov_12_1_3.webm" time="2000"]
#莉菜
[playse storage="rina/rn12_002.ogg" buf="0"]
Your brother, Rina ... already ... I want your brother[r]
So ... Gucho Gucho[p]
#
  [stop_bgmovie time="2000"]
  [eval exp="f.dream_rina = 3"]
  [eval exp="f.d_before = tf.rand"]
  [return]
 [endif]
;---莉菜夢③
 [if exp="f.dream_rina == 3"]
  [bgmovie storage="mov_12_1_2.webm" time="2000"]
#莉菜
[playse storage="rina/rn12_003.ogg" buf="0"]
Please insert it ... your brother's ... in Rina ...[r]
I want your brother ... Rina ...[p]
#
  [stop_bgmovie time="2000"]
  [eval exp="f.dream_rina = 1"]
  [eval exp="f.d_before = tf.rand"]
  [return]
 [endif]
[endif] 

;--静江
[if exp="tf.rand == 2"]
;---静江夢①
 [if exp="f.dream_sizue == undefined || f.dream_sizue == 1"]
  [bgmovie storage="mov_13_1_1.webm" time="2000"]
#静江
[playse storage="sizue/sz13_001.ogg" buf="0"]
Already, your brother ... do you like boobs?[r]
Good, my aunt's boobs, I like a lot ...[p]
#
  [stop_bgmovie time="2000"]
  [eval exp="f.dream_sizue = 2"]
  [eval exp="f.d_before = tf.rand"]
  [return]
 [endif]
;---静江②
 [if exp="f.dream_sizue == 2"]
  [bgmovie storage="mov_13_1_3.webm" time="2000"]
#静江
[playse storage="sizue/sz13_002.ogg" buf="0"]
Look at your brother, look[r]
Aunt's pussy ... it's like this ...[p]
#
  [stop_bgmovie time="2000"]
  [eval exp="f.dream_sizue = 3"]
  [eval exp="f.d_before = tf.rand"]
  [return]
 [endif]
;---静江③
 [if exp="f.dream_sizue == 3"]
  [bgmovie storage="mov_13_1_2.webm" time="2000"]
#静江
[playse storage="sizue/sz13_003.ogg" buf="0"]
My brother, insert it ... your brother's dick ... Insert it into your aunt's pussy[r]
And ... Pour plenty of my brother's semen into the aunt's vagina[p]
#
  [stop_bgmovie time="2000"]
  [eval exp="f.dream_sizue = 1"]
  [eval exp="f.d_before = tf.rand"]
  [return]
 [endif]
[endif]
