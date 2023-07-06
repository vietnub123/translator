;駄菓子屋

*start

[cm]
[clearfix]
;体力減少
[eval exp="f.hp = f.hp - 10"]
[mask time="500"]
;桜子消去
#
[chara_hide name="sakurako"]
[playbgm storage="so_sweet.ogg" loop="true"]
@bg storage ="store_day.png" time=0"
[menuwindows]

[mask_off time="500"]

;--１回目の判別
[if exp="f.store_fast == undefined"]
#
I came to Kamijima Shoten[p]
We sell various things such as miscellaneous goods and candy[p]
Maybe Riko was coming well[p]

[eval exp="f.store_fast = true"]
[else]
#
I came to Kamijima Shoten[p]
[endif]


;-キャラクター判別
;配列変数 f.store_day を日付で判別
;0 桜子　１　莉子　２　莉菜　３　静江
[if exp="f.store_day[f.day] == 0"]
[call storage="sakurako.ks" target="*sakurako_store"]
[return]
[endif]

;莉子
[if exp="f.store_day[f.day] == 1"]
[jump target="*riko_store"]
[endif]

;莉菜
[if exp="f.store_day[f.day] == 2"]
[jump target="*rina_store"]
[endif]

;静江
[if exp="f.store_day[f.day] == 3"]
[jump target="*sizue_store"]
[endif]

;-駄菓子屋イベント　莉子-----------------------------------------------------------------------------------------
*riko_store

;桜子会話呼び出し
[call storage="sakurako.ks" target="*sakurako_riko_goout"]

;--①
[if exp="f.riko_store == undefined || f.riko_store == 1"]
#
[bg storage="store/img17_09.png" time="1000"]
Riko![p]
#莉子
[playse storage="riko/rk17_032.ogg" buf="0"]
Go, uncle ...[r]
It's a secret to your sister what Riko was buying and eating![p]
#
[bg storage ="store_evening.png" time="1000"]
I went home together while eating candy[p]

[eval exp="tf.place = 1"]
;莉子ちゃん好感度UP
[riko_f]

;パートナー莉子ちゃん変更
[eval exp="f.partner = 1"]

[eval exp="f.riko_store = 2"]
[return]
[endif]

;--②
[if exp="f.riko_store == 2"]
#
[bg storage="store/img17_09.png" time="1000"]
Riko -chan is a card gacha![p]
Fumfumu "Majo Calph Rens"[r]
Riko -chan, did you draw?[p]
#莉子
[playse storage="riko/rk17_033.ogg" buf="0"]
Uncle, I can't do it at all ... it's a little more comp[p]
#
Then, I wonder if I will pull it[p]
#莉子
[playse storage="riko/rk17_034_2.ogg" buf="0"]
いいの出た？
#
this is?[p]
#莉子
……[p]

[bg storage ="store_evening.png" time="1000"]
#
Riko has returned ...[p]


;莉子ちゃん好感度UP
[riko_f]
[eval exp="tf.place = 1"]
[eval exp="f.riko_store = 1"]


[return]
[endif]


