;図書館

*start

[cm]
[clearfix]
;体力減少
[eval exp="f.hp = f.hp - 10"]
[mask time="500"]
;桜子消去
#
[chara_hide name="sakurako"]
@bg storage ="library.png" time=0"
[playbgm storage="yuusyokugo.ogg" loop="true"]
[menuwindows]

[mask_off time="500"]

;--１回目の判別
[if exp="f.library_fast == undefined"]
#
I came to the rainbow -colored library[p]
Rina -chan may be coming because students are studying well[p]
There is also a manga, so it's okay to kill time[p]
I wonder if Riko is coming to read manga[p]
[eval exp="f.library_fast = true"]
[else]
#
I came to the library[p]
[endif]


;-キャラクター判別
;配列変数 f.library_day を日付で判別
;0 桜子　１　莉子　２　莉菜　３　静江
[if exp="f.library_day[f.day] == 0"]
[call storage="sakurako.ks" target="*sakurako_library"]
[return]
[endif]

;莉子
[if exp="f.library_day[f.day] == 1"]
[jump target="*riko_library"]
[endif]

;莉菜
[if exp="f.library_day[f.day] == 2"]
[jump target="*rina_library"]
[endif]

;[if exp="f.library_day[f.day] == 3"]
;[call storage="sakurako.ks" target="*sakurako_library"]
;[endif]

;-図書館イベント　莉子-----------------------------------------------------------------------------------------
*riko_library

;桜子会話呼び出し
[call storage="sakurako.ks" target="*sakurako_riko_goout"]

;--①
[if exp="f.riko_library == undefined || f.riko_library == 1"]
#
That? Riko -chan, I'm in the library[p]
[bg storage="library/img17_00.png" time="1000"]
#莉子
[playse storage="riko/rk17_001.ogg" buf="0"]
Oh, uncle[p]
#
Oh, there are manga in the library![p]
#莉子
[playse storage="riko/rk17_002.ogg" buf="0"]
Riko reads as much as Riko![p]
#
What are you reading now?[p]
[bg storage="library/img17_01.png" time="1000"]
#莉子
[playse storage="riko/rk17_003.ogg" buf="0"]
Well, manga ...[p]
#
[bg storage ="library.png" time=1000]
Riko -chan returned first[p]
What should I do after this?[p]
[eval exp="tf.place = 1"]
;莉子ちゃん好感度UP
[riko_f]

[eval exp="f.riko_library = 2"]
[return]
[endif]

;--②
[if exp="f.riko_library == 2"]
#
Oh, Riko -chan!Riko -chan[p]
[bg storage="library/img17_04.png" time="1000"]
#莉子
[playse storage="riko/rk17_004.ogg" buf="0"]
uncle![p]
#
what are you doing?Also a manga?[p]
#莉子
[playse storage="riko/rk17_005.ogg" buf="0"]
I'm reading a book with my friends now, so I'm reading a book ~[r]
It's not a manga ~[p]
#
friend?Which child?[p]
#莉子
[playse storage="riko/rk17_006.ogg" buf="0"]
The children at the desk there ... you won't match the lolicon![p]
[bg storage="library/img17_03.png" time="1000"]
[playse storage="riko/rk17_007.ogg" buf="0"]
a little bit!Riko is an honor student at the lane school!I'll notify you when you come here![p]
#
Ha ... yes ... I understand ...[p]
;莉子ちゃん好感度UP
[riko_f]
[eval exp="tf.place = 1"]
[eval exp="f.riko_library = 3"]
[return]
[endif]

;--③
[if exp="f.riko_library == 3"]
[bg storage="library/img17_05.png" time="1000"]
#莉子
[playse storage="riko/rk17_008.ogg" buf="0"]
I'm an uncle![p]
#
Hi, Riko -chan[p]
#莉子
[playse storage="riko/rk17_009.ogg" buf="0"]
Uncle, there is no naughty book in the library![p]
#
I know![p]
[bg storage ="library.png" time=1000]
#
Riko has already returned ...[p]

;莉子ちゃん好感度UP
[riko_f]
[eval exp="tf.place = 1"]
[eval exp="f.riko_library = 4"]
[return]
[endif]

;--④
[if exp="f.riko_library == 4"]
[bg storage="library/img17_06.png" time="1000"]
#
Riko -chan, unusually studying?[p]
#莉子
[playse storage="riko/rk17_010.ogg" buf="0"]
Riko is an honor student, so I study![p]
#
Ah!The eraser has fallen![p]
[bg storage="library/img17_07.png" time="1000"]
(Oh! You can see the pants!)[p]
[bg storage="library/img17_08.png" time="1000"]
#莉子
[playse storage="riko/rk17_011.ogg" buf="0"]
Uncle, you've seen your pants now![p]
#
eh![p]
I don't see it![p]
(Why did you understand?)[p]
[bg storage ="library.png" time=1000]
Riko -chan studying seems to be over and returned[p]

;莉子ちゃん好感度UP
[riko_f]
[eval exp="tf.place = 1"]
[eval exp="f.riko_library = 5"]
[return]
[endif]

;--⑤
[if exp="f.riko_library == 5"]
[bg storage="library/img17_05.png" time="1000"]
#
Riko[p]
#莉子
[playse storage="riko/rk17_012.ogg" buf="0"]
Ah!uncle[p]
#
I'm going home, but will I go home?[p]
#莉子
[playse storage="riko/rk17_013.ogg" buf="0"]
It's dangerous and it's dangerous, so I'll go home together[p]

;莉子ちゃん好感度UP
[riko_f]
;パートナー莉子ちゃん変更
[eval exp="f.partner = 1"]

[eval exp="tf.place = 1"]
[eval exp="f.riko_library = 1"]

[return]
[endif]

;-図書館イベント　莉菜-----------------------------------------------------------------------------------------
*rina_library

;桜子会話呼び出し
[call storage="sakurako.ks" target="*sakurako_rina_goout"]

;--①
[if exp="f.rina_library == undefined || f.rina_library == 1"]
#
[bg storage="library/img18_00.png" time="1000"]
Rina -chan![p]
I'm studying with my friends ...[p]
Let's not disturb[p]

[bg storage ="library.png" time=1000]

I broke down and left the place[p]
[eval exp="tf.place = 1"]
;莉子ちゃん好感度UP
[rina_f]

[eval exp="f.rina_library = 2"]
[return]
[endif]

;--②
[if exp="f.rina_library == 2"]
#
[bg storage="library/img18_01.png" time="1000"]
Oh, Rina -chan!study?[p]
#莉菜
[playse storage="rina/rn18_003.ogg" buf="0"]
brother!Yes, there is a test this time[p]
But I was going to go home, so will I go home?[p]
#
Yeah, that's right[p]

[eval exp="tf.place = 1"]
;莉子ちゃん好感度UP
[rina_f]
;パートナー莉菜ちゃん変更
[eval exp="f.partner = 2"]

[eval exp="f.rina_library = 3"]
[return]
[endif]

;--③
[if exp="f.rina_library == 3"]
#
There is Rina -chan[p]
[bg storage="library/img18_02.png" time="1000"]
What books are you reading?Love novel[p]
[bg storage="library/img18_03.png" time="1000"]
"100 cleaning surgery taught by professionals"[p]
...... It looks like Rina -chan[p]
[bg storage="library/img18_01.png" time="1000"]
#莉菜
[playse storage="rina/rn18_005.ogg" buf="0"]
Your brother, are you returning now?[p]
#
Yeah, let's go home together[p]

[eval exp="tf.place = 1"]
;莉子ちゃん好感度UP
[rina_f]
;パートナー莉菜ちゃん変更
[eval exp="f.partner = 2"]

[eval exp="f.rina_library = 1"]
[return]
[endif]
