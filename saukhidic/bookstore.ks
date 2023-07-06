;本屋

*start

[cm]
[clearfix]
;体力減少
[eval exp="f.hp = f.hp - 10"]
[mask time="500"]
;桜子消去
#
[chara_hide name="sakurako"]
[playbgm storage="gakou.ogg" loop="true"]
@bg storage ="bookstore_day.png" time=0"
[menuwindows]

[mask_off time="500"]

;--１回目の判別
[if exp="f.bookstore_fast == undefined"]
#
I came to Oga Bookstore[p]
I often came to buy manga[r]
I wonder if it's a new book[p]
[eval exp="f.bookstore_fast = true"]
[else]
#
I came to the bookstore[p]
[endif]


;-キャラクター判別
;配列変数 f.book_day を日付で判別
;0 桜子　１　莉子　２　莉菜　３　静江
[if exp="f.book_day[f.day] == 0"]
[call storage="sakurako.ks" target="*sakurako_bookstore"]
[return]
[endif]

;莉子
[if exp="f.book_day[f.day] == 1"]
[jump target="*riko_book"]
[endif]

;莉菜
[if exp="f.book_day[f.day] == 2"]
[jump target="*rina_book"]
[endif]

;静江
[if exp="f.book_day[f.day] == 3"]
[jump target="*sizue_book"]
[endif]

;-本屋イベント　莉子-----------------------------------------------------------------------------------------
*riko_book

;桜子会話呼び出し
[call storage="sakurako.ks" target="*sakurako_riko_goout"]

;--①
[if exp="f.riko_book == undefined || f.riko_book == 1"]
#
Toshin -chan[p]
[bg storage="book/img17_10.png" time="1000"]
#莉子
[playse storage="riko/rk17_014.ogg" buf="0"]
uncle![r]
Oh, maybe you came to buy a naughty book?[p]
#
No![p]
#莉子
[playse storage="riko/rk17_015.ogg" buf="0"]
Hmm, how about ...[p]
#
[bg storage ="bookstore_evening.png" time=1000]
Riko -chan returned first[p]
What should I do after this?[p]
[eval exp="tf.place = 1"]
;莉子ちゃん好感度UP
[riko_f]

[eval exp="f.riko_book = 2"]
[return]
[endif]

;--②
[if exp="f.riko_book == 2"]
[if exp="f.money >=1000"]
#
Riko -chan, in a bookstore[r]
Toshin -chan[p]
[bg storage="book/img17_11.png" time="1000"]
#莉子
[playse storage="riko/rk17_016.ogg" buf="0"]
Oh, uncle![r]
……uncle!Do you use anything?[p]
#
Uo!What a bad feeling![p]
#莉子
[playse storage="riko/rk17_017.ogg" buf="0"]
Riko, I want this book, but what should I do?[r]
Flicker, flirty[p]
#
I'm looking super ... I understand, I understand, I'll buy it![p]
[bg storage="book/img17_12.png" time="1000"]
#莉子
[playse storage="riko/rk17_018.ogg" buf="0"]
Wow, uncle!I love it ~ ♡[p]
#
He's a good guy![p]

I bought a book for Riko[p]

;所持金上昇
[eval exp="f.money = f.money - 1000"]
[uiwindows]
[playse storage="se/money.ogg" buf="2"]
[kanim name="money" keyframe="money_a" time ="300"]
[stop_kanim]

I decided to return with Riko[p]

;莉子ちゃん好感度UP
[riko_f]
[eval exp="tf.place = 1"]
[eval exp="f.riko_book = 3"]

;パートナー莉子ちゃん変更
[eval exp="f.partner = 1"]

[return]
[endif]
[eval exp="f.riko_book = 3"]
[endif]

;--③
[if exp="f.riko_book == 3"]
[bg storage="book/img17_10.png" time="1000"]
#
Riko -chan, shopping?[p]
#莉子
[playse storage="riko/rk17_019.ogg" buf="0"]
Go!uncle……[r]
Oh, uncle, good morning[p]
#
Mmm ... will you buy something again?[p]
[bg storage="book/img17_13.png" time="1000"]
#マリちゃん
Riko -chan, I'm sorry[r]
Oh, Riko's older brother?[p]
#莉子
[playse storage="riko/rk17_020.ogg" buf="0"]
Hmmm, our servant[p]
#マリちゃん
Eh!Great![r]
Riko -chan's family, is there a servant?[p]
#
(I really feel the pressure of returning early ...)[p]
Then, Miss Riko ... again later[p]
[bg storage ="bookstore_evening.png" time=1000]


;莉子ちゃん好感度UP
[riko_f]
[eval exp="tf.place = 1"]
[eval exp="f.riko_book = 4"]
[return]
[endif]

;--④
[if exp="f.riko_book == 4"]
[bg storage="book/img17_14.png" time="1000"]
#
Sunday, Toshio -chan[p]
#莉子
[playse storage="riko/rk17_021.ogg" buf="0"]
Also, uncle ...[r]
You're behind Riko, right?[p]
#
No, no!It's a coincidence![p]

#莉子
If you leave it as it is, you will become a criminal[r]
I'll go home together[p]
#

;莉子ちゃん好感度UP
[riko_f]

;パートナー莉子ちゃん変更
[eval exp="f.partner = 1"]

[eval exp="tf.place = 1"]
[eval exp="f.riko_book = 1"]
[return]
[endif]


;-本屋イベント　莉菜-----------------------------------------------------------------------------------------
*rina_book

;桜子会話呼び出し
[call storage="sakurako.ks" target="*sakurako_rina_goout"]

;--①
[if exp="f.rina_book == undefined || f.rina_book == 1"]
#
[bg storage="book/img18_05.png" time="1000"]
Rina -chan!Something is book[p]
Is it an idol magazine?[p]
"Delicious cooking recipe[p]
As expected, it's Rina -chan[p]
[bg storage="book/img18_04.png" time="1000"]
#莉菜
[playse storage="rina/rn18_006.ogg" buf="0"]
Your brother, it was just right[r]
Let's go home together[p]
#
I returned with Rina -chan[p]
;莉子ちゃん好感度UP
[rina_f]

[eval exp="tf.place = 1"]
;パートナー莉菜ちゃん変更
[eval exp="f.partner = 2"]

[eval exp="f.rina_book = 2"]
[return]
[endif]

;--②
[if exp="f.rina_book == 2"]
#
[bg storage="book/img18_04.png" time="1000"]
Rina -chan, are you returning now?[p]
#莉菜
[playse storage="rina/rn18_007.ogg" buf="0"]
brother!It's time to return![r]
Let's go home together[p]
#
Yeah, that's right[p]

[eval exp="tf.place = 1"]
;莉子ちゃん好感度UP
[rina_f]
;パートナー莉菜ちゃん変更
[eval exp="f.partner = 2"]

[eval exp="f.rina_book = 1"]
[return]
[endif]

;-本屋イベント　静江-----------------------------------------------------------------------------------------
*sizue_book

;桜子会話呼び出し
[call storage="sakurako.ks" target="*sakurako_sizue_goout"]

;--①
[if exp="f.sizue_book == undefined || f.sizue_book == 1"]
#
[bg storage="book/img19_00.png" time="1000"]
Oh, it's Shizue!Shizue Sa[p]
#静江
[playse storage="sizue/sz19_001.ogg" buf="0"]
Your brother, are you returning now?[p]
#
Yeah, I'm going home[p]
#静江
[playse storage="sizue/sz19_002.ogg" buf="0"]
Then let's go back together[p]

;静江好感度UP
[sizue_f]

[eval exp="tf.place = 1"]

;パートナー静江さん変更
[eval exp="f.partner = 3"]

[eval exp="f.sizue_book = 2"]
[return]
[endif]

;--②
[if exp="f.sizue_book == 2"]
#
[bg storage="book/img19_01.png" time="1000"]
Shizue -san, I'm buying something book[p]
[bg storage="book/img19_01.png" time="1000"]
#静江
[playse storage="sizue/sz19_003.ogg" buf="0"]
Oh, my brother[p]
#
What kind of book did you like?[p]
#静江
[playse storage="sizue/sz19_004.ogg" buf="0"]
U couple, secret[p]
#
"Pochit Monster Z Thorough Strategy"[p]

[bg storage="bookstore_evening.png" time="1000"]
#
By the way, it seems that Shizue -san has returned[p]

;静江好感度UP
[sizue_f]

[eval exp="tf.place = 1"]

[eval exp="f.sizue_book = 3"]
[return]
[endif]

;--③
[if exp="f.sizue_book == 3"]
#
[bg storage="book/img19_01.png" time="1000"]
Shizue -san, I'm buying a book[p]
[bg storage="book/img19_01.png" time="1000"]
#静江
[playse storage="sizue/sz19_005.ogg" buf="0"]
Your brother, are you returning now?[p]
#
I'm going home, what did you buy?[p]
#静江
[playse storage="sizue/sz19_006.ogg" buf="0"]
Dowe!Don't feel free to hear the secret of a woman![p]
#
"Ultimate diet that can be thin just by reading"[p]


#
I decided to return with Shizue[p]

;静江好感度UP
[sizue_f]

[eval exp="tf.place = 1"]

;パートナー静江さん変更
[eval exp="f.partner = 3"]


[eval exp="f.sizue_book = 1"]
[return]
[endif]
