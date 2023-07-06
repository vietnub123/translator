;夕方イベント

*start

[cm]

@bg storage ="entrance.png" time=1000"

#
I came home[p]

;曜日判別
[if exp="f.oneweek ==5 || f.oneweek==6"]
 [return]
[endif]

;パートナー判別
[if exp="f.partner == 0"]
[jump target="*entrance_events"]
[endif]
[if exp="f.partner == 1"]
[jump target="*entrance_riko"]
[endif]
[if exp="f.partner == 2"]
[jump target="*entrance_rina"]
[endif]

[return]
;***********************************************************************************************************************
;-莉子ちゃん同伴帰宅イベント
*entrance_riko
[iscript]
tf.rand = Math.floor( Math.random() * 4)
[endscript]

;--帰宅イベント①
 [if exp="tf.rand == 0"]
 [freeimage layer="2" time="0"]
#
[bg storage="evening/img14_05.png" time="1000"]
oh!this is[p]
[bg storage="evening/img14_04.png" time="1000"]
Nice panchira![p]
 [endif]
 
;--帰宅イベント②
 [if exp="tf.rand == 1"]
 [freeimage layer="2" time="0"]
#
[bg storage="evening/img14_08.png" time="1000"]
oh!this is[p]
[bg storage="evening/img14_07.png" time="1000"]
Nice panchira![p]
 [endif]

[return]


;***********************************************************************************************************************
;-莉菜ちゃん同伴帰宅イベント
*entrance_rina
[iscript]
tf.rand = Math.floor( Math.random() * 3)
[endscript]

;--帰宅イベント①
 [if exp="tf.rand == 0"]
 [freeimage layer="2" time="0"]
#
[bg storage="evening/img15_01.png" time="1000"]
oh!this is[p]
[bg storage="evening/img15_02.png" time="1000"]
Nice panchira![p]
 [endif]
 
[return]


;***********************************************************************************************************************
;-帰宅イベント
*entrance_events
;***********************************************************************************************************************
;--莉子帰宅①
[if exp="f.riko_f >= 20 && f.riko_entrance == undefined"]
[freeimage layer="2" time="0"]
#
I'm right now[p]
I wonder if nobody has returned ...[p]
[bg storage="evening/img14_12.png" time="1000"]
Oh, I'm sleeping on Riko -chan sofa[p]
I'm sleeping soundly ...[p]
[bg storage="evening/img14_13.png" time="1000"]
I approached a little closer ...[p]
Riko -chan ...[p]
I'm getting a little closer[p]
[bg storage="evening/img14_14.png" time="1000"]
…… [L] …… [L] …… [L] ……[p]
I want to see a little more, but it's hard to get up[r]
Let's keep it around here[p]
[eval exp="f.riko_entrance = 2"]
[return]
[endif]

;--莉子帰宅②
[if exp="f.riko_f >= 40 && f.riko_entrance == 2"]
[freeimage layer="2" time="0"]
[bg storage ="room_evening.png" time=1000]
#
that?Where did you do[p]
I wonder if it was a storeroom ...[p]

[image storage ="entrance2.png" layer="3" page="fore" visible="true" time="500"]
[bg storage ="evening/img14_02.png" time ="0"]

[keyframe name="run"]
[frame p=100% scale = "2" y="150" opacity = "0"]
[endkeyframe]
[kanim layer="3" keyframe="run" time="2000" easing = "ease-in"]
[wait time="2000"]
[stop_kanim layer="3"]
[freeimage layer="3"]
[playse storage="se/butukaru.ogg" buf="2"]
[quake count="1" time="300"]

[bg storage ="black.png" time="0"]
#
…… [L] …… [L] ……[p]
Mah!It's dark[p]
This is what!?[p]
What's going on!![p]
[bg storage ="evening/img14_03.png" time = "1000"]
#莉子
[playse storage="riko/rk14_001.ogg" buf="0"]
……what are u doing?[p]
#
eh? eh?[p]
#莉子
[playse storage="riko/rk14_002.ogg" buf="0"]
This metamorphosis!![p]
#
[bg storage ="black.png" time = "500"]
[playse storage="se/naguru.ogg" buf="2"]
Guba![p]
[eval exp="f.riko_entrance = 3"]
[return]
[endif]

;--莉子帰宅③
[if exp="f.riko_f >= 60 && f.riko_entrance == 3"]
[freeimage layer="2" time="0"]
[bg storage ="room_evening.png" time=1000]
#
that?Where did you do[p]
I wonder if it was a storeroom ...[p]

[image storage ="entrance2.png" layer="3" page="fore" visible="true" time="500"]
[bg storage ="evening/img14_02.png" time ="0"]

[keyframe name="run"]
[frame p=100% scale = "2" y="150" opacity = "0"]
[endkeyframe]
[kanim layer="3" keyframe="run" time="2000" easing = "ease-in"]
[wait time="2000"]
[freeimage layer="3"]
[playse storage="se/butukaru.ogg" buf="2"]
[quake count="1" time="300"]
[bg storage="black.png" time="1000"]
[bgmovie storage="mov_14_14.webm" time="2000"]
#
…… [L] …… [L] ……[p]
Eh ... this is ...[p]
#莉子
[playse storage="riko/rk14_003.ogg" buf="0"]
Why this state[p]
#
Um ... on purpose ...[p]
#莉子
[playse storage="riko/rk14_004.ogg" buf="0"]
Always, always!This lolicon is ~![p]
#
[stop_bgmovie]
[playse storage="se/naguru.ogg" buf="2"]
Guba![p]
[eval exp="f.riko_entrance = 4"]
[return]
[endif]

;--莉子帰宅④
[if exp="f.riko_i >= 20 && f.riko_entrance == 4"]
[freeimage layer="2" time="0"]
[bg storage="black.png" time="1000"]
[bgmovie storage="mov_14_3.webm" time="2000" loop="true"]
#
Riko -chan is eating ice cream![p]
Riko looks delicious, ice cream[p]
[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[stop_bgmovie time="1000"]
[movie storage="mov_14_3_2.webm" skip="true"]
[movie storage="mov_14_3_3.webm" skip="true"]
[bgloop mov="mov_14_3_4.webm"  ti="2000"]
[menuwindows]
Ice was delicious[r]
[eval exp="f.riko_entrance = 5"]
[return]
[endif]

;***********************************************************************************************************************
;--莉菜帰宅①
[if exp="f.rina_f >= 20 && f.rina_entrance == undefined"]
[freeimage layer="2" time="0"]
#
I'm home![p]
[bg storage ="evening/img15_03.png" time = "1000"]
#
Rina -chan is folding her laundry[p]
Rina -chan will help you![p]
#莉菜
[playse storage="rina/rn21_026.ogg" buf="0"]
Thank you for always helping me[p]
#
[bg storage ="evening/img15_04.png" time = "1000"]
(Oh! Precious Rina -chan panchiragette!)[p]
(Rina -chan's valuable is valuable!)[p]
[eval exp="f.rina_entrance = 2"]
[return]
[endif]

;--莉菜帰宅②
[if exp="f.rina_f >= 35 && f.rina_entrance == 2"]
[freeimage layer="2" time="0"]
#
I'm home![p]
[bg storage ="evening/img15_05.png" time = "1000"]
#
Rina -chan is cleaning[p]
Don't always be saved[p]
[bg storage ="evening/img15_06.png" time = "1000"]
#
(Oh! Precious Rina -chan chest chiller!)[p]
(Rina -chan is valuable, unlike Shizue -san's chest, which is always visible!)[p]
[eval exp="f.rina_entrance = 3"]
[return]
[endif]

;--莉菜帰宅③
[if exp="f.rina_f >= 50 && f.rina_entrance == 3"]
[freeimage layer="2" time="0"]
[bg storage ="room_evening.png" time=1000]
#
that?Where did you do[p]
I wonder if it was a storeroom ...[p]

[bg storage="entrance2.png" time="500"]
[playse storage="se/asioto01.ogg" buf="2"]
[wait time="1000"]
[playse storage="se/butukaru.ogg" buf="2"]
[quake count="1" time="300"]
[bg storage ="black.png" time="0"]
#
…… [L] …… [L] ……[p]
What is this soft thing![p]
[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false

[bgloop mov="mov_15_1_1.webm"  ti="2000"]
[bg storage="evening/img15_07.png" time="1000"]
[menuwindows]
#
Go game!sorry!Rina -chan[r]
This is an accident ...[p]
#莉菜
[playse storage="rina/rn15_002.ogg" buf="0"]
No, no ... your brother, I didn't look forward ... I'm sorry[p]
#
(It was good ... I didn't seem angry ... I touched my ass ... it was soft ...)[p]
[eval exp="f.rina_entrance = 4"]

[return]
[endif]

;--莉菜帰宅④
[if exp="f.rina_f >= 60 && f.rina_entrance == 4"]
[freeimage layer="2" time="0"]
[bg storage ="room_evening.png" time=1000]
#
that?Where did you do[p]
I wonder if it was a storeroom ...[p]

[bg storage="entrance2.png" time="500"]
[playse storage="se/asioto01.ogg" buf="2"]
[wait time="1000"]
[playse storage="se/butukaru.ogg" buf="2"]
[quake count="1" time="300"]
[bg storage ="black.png" time="0"]
#
…… [L] …… [L] ……[p]
What is this soft thing![p]
[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false

[bgloop mov="mov_15_2_1.webm"  ti="2000"]
[bg storage="evening/img15_07.png" time="1000"]
[menuwindows]
#
I'm sorry![r]
Rina -chan is okay?Never intentionally ...[p]
#莉菜
[playse storage="rina/rn15_004.ogg" buf="0"]
Ah!No, I couldn't do it too[r]
I'm sorry ... was your brother okay?[p]
#
I'm no problem at all[r]
(Huh, I'm glad ... I'm not angry ... but ... I was big ...)[p]
[eval exp="f.rina_entrance = 5"]

[return]
[endif]

;***********************************************************************************************************************
;--静江帰宅①
[if exp="f.sizue_f >= 20 && f.sizue_entrance == undefined"]
[freeimage layer="2" time="0"]
#
I'm home![p]
[bg storage ="evening/img16_04.png" time = "1000"]
#
oh!Shizue -san is drunk[p]
It's still early to get drunk ...[p]
…… [L] …… [L] …… [L] ……[p]
Shizue San ...[p]
Don't get up ... a little closer ...[p]
[bg storage ="evening/img16_03.png" time = "1000"]
Shizue San[p]
Hello ...[p]
I'm completely drunk, this is ...[p]
[bg storage ="evening/img16_02.png" time = "1000"]
……[p]
Oops ... it's bad ... it's bad if you get up[r]
Do you want to stare?[p]

[eval exp="f.sizue_entrance = 2"]
[return]
[endif]

;--静江帰宅②
[if exp="f.sizue_f >= 40 && f.sizue_entrance == 2"]
[freeimage layer="2" time="0"]
[bg storage ="room_evening.png" time=1000]
#
that?Where did you do[p]
I wonder if it was a storeroom ...[p]

[bg storage="entrance3.png" time="500"]
[playse storage="se/asioto01.ogg" buf="2"]
[wait time="1000"]
[playse storage="se/butukaru.ogg" buf="2"]
[quake count="1" time="300"]
[bg storage ="black.png" time="0"]

#
…… [L] …… [L] …… [L] ……[p]
It's dark!What is this?[p]
[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false

[bgloop mov="mov_16_1_1.webm"  ti="2000"]
[bg storage="evening/img16_00.png" time="1000"]
[menuwindows]
#静江
[playse storage="sizue/sz16_002.ogg" buf="0"]
Your brother, aunt's boobs[r]
Do you want that much?[p]
#
Go game!sorry!Shizue -san, this is ...[p]
#静江
[playse storage="sizue/sz16_003.ogg" buf="0"]
If your brother wants to touch it, it's always okay![p]
#
picture!Ah ... that ...[p]
#静江
[playse storage="sizue/sz16_004.ogg" buf="0"]
Ufufu, joke!If you don't see it properly, you will be[p]
[eval exp="f.sizue_entrance = 3"]
#
[return]
[endif]

;--静江帰宅③
[if exp="f.sizue_f >= 60 && f.sizue_entrance == 3"]
[freeimage layer="2" time="0"]
[bg storage ="room_evening.png" time=1000]
#
that?Where did you do[p]
I wonder if it was a storeroom ...[p]

[bg storage="entrance3.png" time="500"]
[playse storage="se/asioto01.ogg" buf="2"]
[wait time="1000"]
[playse storage="se/butukaru.ogg" buf="2"]
[quake count="1" time="300"]
[bg storage ="black.png" time="0"]
#
…… [L] …… [L] …… [L] ……[p]
Well, it's completely dark!What is it?[p]

[bgmovie storage="mov_16_2_1.webm" time="2000"]

#静江
[playse storage="sizue/sz16_005.ogg" buf="0"]
Ah![p]
#
eh?Shifusan? this is[p]
#静江
[playse storage="sizue/sz16_006.ogg" buf="0"]
Yeah, my brother, how do you feel like this?[p]
#
Go game!I'm sorry[p]
#静江
[playse storage="sizue/sz16_007.ogg" buf="0"]
Oh ... older brother ... If you talk there ...[p]
#
Oh ...[p]
#静江
[playse storage="sizue/sz16_008.ogg" buf="0"]
Ah ... your brother ... is it intentional?[p]
[stop_bgmovie]

[bg storage="evening/img16_01.png" time="1000"]
[menuwindows]
#
death!Shizue -san ... I'm sorry!It's not intentional[p]
#静江
[playse storage="sizue/sz16_009.ogg" buf="0"]
Here!If you look at your brother, your aunt![r]
The next time you do it![p]
[eval exp="f.sizue_entrance = 4"]
#
[return]
[endif]


[return]
;***********************************************************************************************************************
;-夕食後の会話
*evening_events
;会話相手判別
;部屋に戻る
[if exp="tf.evening_select == 0"]
 [return]
[endif]
;莉子
[if exp="tf.evening_select == 1"]
 [jump target="*evening_riko"]
[endif]
;莉菜
[if exp="tf.evening_select == 2"]
[jump target="*evening_rina"]
[endif]
;静江
[if exp="tf.evening_select == 3"]
[jump target="*evening_sizue"]
[endif]
;***********************************************************************************************************************
;--莉子会話
*evening_riko
;莉子ランダム会話
;ランダム数値の取り出し
[iscript]
tf.rand = Math.floor( Math.random() * 35)
[endscript]
#莉子

[if exp="tf.rand == 0"]
[bg storage="evening/img20_01.png" time="1000"]
[playse storage="riko/rk20_001.ogg" buf="0"]
Uncle, play the game![p]
[endif]

[if exp="tf.rand == 1"]
[bg storage="evening/img20_06.png" time="1000"]
[playse storage="riko/rk20_002.ogg" buf="0"]
Uncle, you're doing your homework, do you know here?[p]
[endif]

[if exp="tf.rand == 2"]
[bg storage="evening/img20_10.png" time="1000"]
[playse storage="riko/rk20_003.ogg" buf="0"]
Kenta's guy!Be irregular[r]
I've been flipping the skirt again[p]
[endif]

[if exp="tf.rand == 3"]
[bg storage="evening/img20_14.png" time="1000"]
[playse storage="riko/rk20_004.ogg" buf="0"]
Take a bath[r]
Uncle, don't look![p]
[endif]

[if exp="tf.rand == 4"]
[bg storage="evening/img20_07.png" time="1000"]
[playse storage="riko/rk20_005.ogg" buf="0"]
Do you eat sweets?[p]
[endif]

[if exp="tf.rand == 5"]
[bg storage="evening/img20_08.png" time="1000"]
[playse storage="riko/rk20_007.ogg" buf="0"]
Today, Mari was interesting[p]

[endif]

[if exp="tf.rand == 6"]
[bg storage="evening/img20_08.png" time="1000"]
[playse storage="riko/rk20_007.ogg" buf="0"]
Today, Mari was interesting[p]
[endif]

[if exp="tf.rand == 7"]
[bg storage="evening/img20_03.png" time="1000"]
[playse storage="riko/rk20_008.ogg" buf="0"]
There is no interesting TV today[p]
[endif]

[if exp="tf.rand == 8"]
[bg storage="evening/img20_17.png" time="1000"]
[playse storage="riko/rk20_009.ogg" buf="0"]
Juice! Juice! Juice![p]
[endif]

[if exp="tf.rand == 9"]
[bg storage="evening/img20_02.png" time="1000"]
[playse storage="riko/rk20_010.ogg" buf="0"]
They did it again in the game[p]
[endif]

[if exp="tf.rand == 10"]
[bg storage="evening/img20_17.png" time="1000"]
[playse storage="riko/rk20_009.ogg" buf="0"]
Juice! Juice! Juice![p]
[endif]

[if exp="tf.rand == 11"]
[bg storage="evening/img20_14.png" time="1000"]
[playse storage="riko/rk20_012.ogg" buf="0"]
Uncle again, Riko, you looked at it with nasty eyes[p]
[endif]

[if exp="tf.rand == 12"]
[bg storage="evening/img20_10.png" time="1000"]
[playse storage="riko/rk20_013.ogg" buf="0"]
Tell your sister that you don't put peppers[p]
[endif]

[if exp="tf.rand == 13"]
[bg storage="evening/img20_06.png" time="1000"]
[playse storage="riko/rk20_014.ogg" buf="0"]
terrible!I forgot my homework![p]
[endif]

[if exp="tf.rand == 14"]
[bg storage="evening/img20_02.png" time="1000"]
[playse storage="riko/rk20_015.ogg" buf="0"]
Uncle, did you buy this week's Weekly Shonen Bambi?[p]
[endif]

[if exp="tf.rand == 15"]
[bg storage="evening/img20_18.png" time="1000"]
[playse storage="riko/rk20_016.ogg" buf="0"]
ice!Ice!Ice![p]
[endif]

[if exp="tf.rand == 16"]
[bg storage="evening/img20_10.png" time="1000"]
[playse storage="riko/rk20_017.ogg" buf="0"]
It's hot ~ Cooler temperature low[p]
[endif]

[if exp="tf.rand == 17"]
[bg storage="evening/img20_08.png" time="1000"]
[playse storage="riko/rk20_018.ogg" buf="0"]
If you like the song, the opening of Majoofure![r]
Majocar Lauture -I'll let you know next time[p]
[endif]

[if exp="tf.rand == 18"]
[bg storage="evening/img20_08.png" time="1000"]
[playse storage="riko/rk20_018.ogg" buf="0"]
If you like the song, the opening of Majoofure![r]
Majocar Lauture -I'll let you know next time[p]
[endif]

[if exp="tf.rand == 19"]
[bg storage="evening/img20_20.png" time="1000"]
[playse storage="riko/rk20_021.ogg" buf="0"]
Uncle, practice dodgeball practice!This time, the war broke out for the men and women of the class![p]
[endif]

[if exp="tf.rand == 20"]
[bg storage="evening/img20_16.png" time="1000"]
[playse storage="riko/rk20_022.ogg" buf="0"]
Sister, I'll make sweets next time[p]
[endif]

[if exp="tf.rand == 21"]
[bg storage="evening/img20_19.png" time="1000"]
[playse storage="riko/rk20_023.ogg" buf="0"]
Mom and sister are breasts big, so Riko will be big tits![p]
[endif]

[if exp="tf.rand == 22"]
[bg storage="evening/img20_15.png" time="1000"]
[playse storage="riko/rk20_024.ogg" buf="0"]
I will show you Riko's super cute yukata at the festival[p]
[endif]

[if exp="tf.rand == 23"]
[bg storage="evening/img20_08.png" time="1000"]
[playse storage="riko/rk20_025.ogg" buf="0"]
Uncle lolicon!Riko understands immediately![p]
[endif]

[if exp="tf.rand == 24"]
[bg storage="evening/img20_10.png" time="1000"]
[playse storage="riko/rk20_026.ogg" buf="0"]
Uncle's room, girls' figures[p]
[endif]

[if exp="tf.rand == 25"]
[bg storage="evening/img20_09.png" time="1000"]
[playse storage="riko/rk20_027.ogg" buf="0"]
Riko is an honor student![p]
[endif]

[if exp="tf.rand == 26"]
[bg storage="evening/img20_16.png" time="1000"]
[playse storage="riko/rk20_028.ogg" buf="0"]
Uncle Riko is too cute to see it.[p]
[endif]

[if exp="tf.rand == 27"]
[bg storage="evening/img20_10.png" time="1000"]
[playse storage="riko/rk20_029.ogg" buf="0"]
I feel like I was moving, but I was worried?[p]
[endif]

[if exp="tf.rand == 28"]
[bg storage="evening/img20_01.png" time="1000"]
[playse storage="riko/rk20_030.ogg" buf="0"]
Mom, it smells good!Don't be lustful![p]
[endif]

[if exp="tf.rand == 29"]
[bg storage="evening/img20_05.png" time="1000"]
[playse storage="riko/rk20_031.ogg" buf="0"]
Is it okay to change the channel because the news is not clogged?[p]
[endif]

[if exp="tf.rand == 30"]
[bg storage="evening/img20_10.png" time="1000"]
[playse storage="riko/rk20_032.ogg" buf="0"]
If you don't clean your room, your sister will get angry! bothersome[p]
[endif]

[if exp="tf.rand == 31"]
[bg storage="evening/img20_15.png" time="1000"]
[playse storage="riko/rk20_033.ogg" buf="0"]
I want to go to the pool because it's hot every day!You will imagine Riko's swimsuit![p]
[endif]

[if exp="tf.rand == 32"]
[bg storage="evening/img20_09.png" time="1000"]
[playse storage="riko/rk20_034.ogg" buf="0"]
Your sister's rice is delicious![p]
[endif]

[if exp="tf.rand == 33"]
[bg storage="evening/img20_07.png" time="1000"]
[playse storage="riko/rk20_035.ogg" buf="0"]
I sometimes talk to my uncle alone, but I should stop from Kimoi[p]
[endif]

[if exp="tf.rand == 34"]
[bg storage="evening/img20_04.png" time="1000"]
[playse storage="riko/rk20_020.ogg" buf="0"]
I wonder if it will be a summer vacation early ~[p]
[endif]

;莉子ちゃん好感度増加
[riko_f]

#
I talked to Riko![p]

[return]

;***********************************************************************************************************************
;--莉菜会話
*evening_rina
;莉子ランダム会話
;ランダム数値の取り出し
[iscript]
tf.rand = Math.floor( Math.random() * 30)
[endscript]
#莉菜

[if exp="tf.rand == 0"]
[bg storage="evening/img21_00.png" time="1000"]
[playse storage="rina/rn21_001.ogg" buf="0"]
Please wait, your brother!I'll end the washing[p]
[endif]

[if exp="tf.rand == 1"]
[bg storage="evening/img21_01.png" time="1000"]
[playse storage="rina/rn21_002.ogg" buf="0"]
Recently, vegetables are expensive[p]
[endif]

[if exp="tf.rand == 2"]
[bg storage="evening/img21_01.png" time="1000"]
[playse storage="rina/rn21_003.ogg" buf="0"]
Your brother, what do you want to eat tomorrow?[p]
[endif]

[if exp="tf.rand == 3"]
[bg storage="evening/img21_02.png" time="1000"]
[playse storage="rina/rn21_004.ogg" buf="0"]
A new cake shop was created in Higashimachi.[p]
[endif]

[if exp="tf.rand == 4"]
[bg storage="evening/img21_04.png" time="1000"]
[playse storage="rina/rn21_005.ogg" buf="0"]
I like sweets, but I can't waste it[p]
[endif]

[if exp="tf.rand == 5"]
[bg storage="evening/img21_04.png" time="1000"]
[playse storage="rina/rn21_006.ogg" buf="0"]
My favorite is Mont Blanc[p]
[endif]

[if exp="tf.rand == 6"]
[bg storage="evening/img21_05.png" time="1000"]
[playse storage="rina/rn21_007.ogg" buf="0"]
If you ask at Nishinomiya Shrine, it seems that it will come true.[p]
[endif]

[if exp="tf.rand == 7"]
[bg storage="evening/img21_03.png" time="1000"]
[playse storage="rina/rn21_008.ogg" buf="0"]
It was shiny today because I was cleaning the bath kettle today.[p]
[endif]

[if exp="tf.rand == 8"]
[bg storage="evening/img21_01.png" time="1000"]
[playse storage="rina/rn21_009.ogg" buf="0"]
How was your rice today?I was a little worried because I made it for the first time[p]
[endif]

[if exp="tf.rand == 9"]
[bg storage="evening/img21_06.png" time="1000"]
[playse storage="rina/rn21_010.ogg" buf="0"]
brother!You've eaten Riko's peppers again.[p]
[endif]

[if exp="tf.rand == 10"]
[bg storage="evening/img21_10.png" time="1000"]
[playse storage="rina/rn21_011.ogg" buf="0"]
a!Also, the temperature of the air conditioner is so cold![p]
[endif]

[if exp="tf.rand == 11"]
[bg storage="evening/img21_10.png" time="1000"]
[playse storage="rina/rn21_011.ogg" buf="0"]
a!Also, the temperature of the air conditioner is so cold![p]
[endif]

[if exp="tf.rand == 12"]
[bg storage="evening/img21_04.png" time="1000"]
[playse storage="rina/rn21_013.ogg" buf="0"]
今度お菓子作りに挑戦してみます[p]	
[endif]

[if exp="tf.rand == 13"]
[bg storage="evening/img21_03.png" time="1000"]
[playse storage="rina/rn21_014.ogg" buf="0"]
We are a girls' school[p]
[endif]

[if exp="tf.rand == 14"]
[bg storage="evening/img21_05.png" time="1000"]
[playse storage="rina/rn21_015.ogg" buf="0"]
Mom, at home, you can work greatly![p]
[endif]

[if exp="tf.rand == 15"]
[bg storage="evening/img21_09.png" time="1000"]
[playse storage="rina/rn21_016.ogg" buf="0"]
It seems that my friend was molested by train.[p]
[endif]

[if exp="tf.rand == 16"]
[bg storage="evening/img21_11.png" time="1000"]
[playse storage="rina/rn21_017.ogg" buf="0"]
Mom, I'm hiding in the middle of the night and eating cup ramen![r]
Do you think I'm not aware![p]
[endif]

[if exp="tf.rand == 17"]
[bg storage="evening/img21_12.png" time="1000"]
[playse storage="rina/rn21_018.ogg" buf="0"]
I drink all my mom, so I hide the sake.It's no good![p]
[endif]

[if exp="tf.rand == 18"]
[bg storage="evening/img21_04.png" time="1000"]
[playse storage="rina/rn21_019.ogg" buf="0"]
Uncles in the shopping street provide various services.[p]
[endif]

[if exp="tf.rand == 19"]
[bg storage="evening/img21_02.png" time="1000"]
[playse storage="rina/rn21_020.ogg" buf="0"]
There is a fortune in the shopping street, but it seems like a hot spring trip.[p]
[endif]

[if exp="tf.rand == 20"]
[bg storage="evening/img21_04.png" time="1000"]
[playse storage="rina/rn21_019.ogg" buf="0"]
Uncles in the shopping street provide various services.[p]
[endif]

[if exp="tf.rand == 21"]
[bg storage="evening/img21_03.png" time="1000"]
[playse storage="rina/rn21_022.ogg" buf="0"]
I'm going to the pool with Riko this time[p]
[endif]

[if exp="tf.rand == 22"]
[bg storage="evening/img21_09.png" time="1000"]
[playse storage="rina/rn21_023.ogg" buf="0"]
Your brother, don't drink from a cold thing because it's hot.[p]
[endif]

[if exp="tf.rand == 23"]
[bg storage="evening/img21_09.png" time="1000"]
[playse storage="rina/rn21_024.ogg" buf="0"]
It's no good if you just play games with your brother, Riko.[p]
[endif]

[if exp="tf.rand == 24"]
[bg storage="evening/img21_04.png" time="1000"]
[playse storage="rina/rn21_025.ogg" buf="0"]
I really like movies[r]
I often go to see[p]
[endif]


[if exp="tf.rand == 25"]
[bg storage="evening/img21_08.png" time="1000"]
[playse storage="rina/rn21_027.ogg" buf="0"]
Today I got a karaoke with my friends, so my throat is rattling[p]
[endif]

[if exp="tf.rand == 26"]
[bg storage="evening/img21_04.png" time="1000"]
[playse storage="rina/rn21_028.ogg" buf="0"]
Your brother, are you familiar with your computer?I was sick ...[p]
[endif]

[if exp="tf.rand == 27"]
[bg storage="evening/img21_02.png" time="1000"]
[playse storage="rina/rn21_029.ogg" buf="0"]
It ’s a Purikura taken with my friends[p]
[endif]

[if exp="tf.rand == 28"]
[bg storage="evening/img21_03.png" time="1000"]
[playse storage="rina/rn21_030.ogg" buf="0"]
I drew the fortune in the shopping street, but it was a tissue[p]
[endif]

[if exp="tf.rand == 29"]
[bg storage="evening/img21_03.png" time="1000"]
[playse storage="rina/rn21_031.ogg" buf="0"]
It seems that it will come true if you ask at a shrine, so I went with my friends[r]
Well, what did you ask? ……Is a secret[p]
[endif]

;莉菜ちゃん好感度増加
[rina_f]

#
I talked to Rina![p]
[return]

;***********************************************************************************************************************
;--静江会話
*evening_sizue
;静江ランダム会話
;ランダム数値の取り出し
[iscript]
tf.rand = Math.floor( Math.random() * 30)
[endscript]
#静江

[if exp="tf.rand == 0"]
[bg storage="evening/img22_00.png" time="1000"]
[playse storage="sizue/sz22_001.ogg" buf="0"]
Your brother, drink together?[p]
[endif]

[if exp="tf.rand == 1"]
[bg storage="evening/img22_01.png" time="1000"]
[playse storage="sizue/sz22_002.ogg" buf="0"]
Bi -Le!Bi -Le!Bi -Le![p]
[endif]

[if exp="tf.rand == 2"]
[bg storage="evening/img22_00.png" time="1000"]
[playse storage="sizue/sz22_003.ogg" buf="0"]
Oh, I want to talk to my brother and aunt ~[p]
[endif]

[if exp="tf.rand == 3"]
[bg storage="evening/img22_05.png" time="1000"]
[playse storage="sizue/sz22_004.ogg" buf="0"]
That bald father!Try it yourself ~[p]
[endif]

[if exp="tf.rand == 4"]
[bg storage="evening/img22_07.png" time="1000"]
[playse storage="sizue/sz22_005.ogg" buf="0"]
Look at your brother!A special raid invitation has arrived![p]
[endif]

[if exp="tf.rand == 5"]
[bg storage="evening/img22_08.png" time="1000"]
[playse storage="sizue/sz22_006.ogg" buf="0"]
After all Nyantaro is cute![p]
[endif]

[if exp="tf.rand == 6"]
[bg storage="evening/img22_15.png" time="1000"]
[playse storage="sizue/sz22_008.ogg" buf="0"]
I wonder if I've been a little fat recently ...[r]
It doesn't change much, but it's just a little ...[p]
[endif]

[if exp="tf.rand == 7"]
[bg storage="evening/img22_15.png" time="1000"]
[playse storage="sizue/sz22_008.ogg" buf="0"]
I wonder if I've been a little fat recently ...[r]
It doesn't change much, but it's just a little ...[p]
[endif]

[if exp="tf.rand == 8"]
[bg storage="evening/img22_13.png" time="1000"]
[playse storage="sizue/sz22_009.ogg" buf="0"]
Ah, already!Durable[r]
There was a phantom Olympic computer, but I was able to escape ~[p]
[endif]

[if exp="tf.rand == 9"]
[bg storage="evening/img22_16.png" time="1000"]
[playse storage="sizue/sz22_0.10" buf="0"]
Ufufufu ...It's getting fun[p]
[endif]

[if exp="tf.rand == 10"]
[bg storage="evening/img22_03.png" time="1000"]
[playse storage="sizue/sz22_011.ogg" buf="0"]
After all, after all, green soybeans are the best[p]
[endif]

[if exp="tf.rand == 11"]
[bg storage="evening/img22_10.png" time="1000"]
[playse storage="sizue/sz22_012.ogg" buf="0"]
Takuzo, Motota -san, I don't have a gift again![r]
Oh, it's Pochimon's friend[p]
[endif]

[if exp="tf.rand == 12"]
[bg storage="evening/img22_19.png" time="1000"]
[playse storage="sizue/sz22_013.ogg" buf="0"]
Oh, the report, was it until tomorrow ... Well, it's going to be somehow?[p]
[endif]

[if exp="tf.rand == 13"]
[bg storage="evening/img22_17.png" time="1000"]
[playse storage="sizue/sz22_014.ogg" buf="0"]
It looks like a nice bar was made in Minamimachi[p]
[endif]

[if exp="tf.rand == 14"]
[bg storage="evening/img22_17.png" time="1000"]
[playse storage="sizue/sz22_015.ogg" buf="0"]
If it's karaoke, do you like old song songs?[p]
[endif]

[if exp="tf.rand == 15"]
[bg storage="evening/img22_06.png" time="1000"]
[playse storage="sizue/sz22_016.ogg" buf="0"]
Good thing, older brother!Water is resistant to fire!Oh, the story of Pochimon[p]
[endif]

[if exp="tf.rand == 16"]
[bg storage="evening/img22_17.png" time="1000"]
[playse storage="sizue/sz22_017.ogg" buf="0"]
Rina -chan is too serious!Is it similar to me?[p]
[endif]

[if exp="tf.rand == 17"]
[bg storage="evening/img22_16.png" time="1000"]
[playse storage="sizue/sz22_018.ogg" buf="0"]
Rina -chan and Riko -chan grow up as a good child, and I'm glad my mother![p]
[endif]

[if exp="tf.rand == 18"]
[bg storage="evening/img22_09.png" time="1000"]
[playse storage="sizue/sz22_019.ogg" buf="0"]
It's still maintenance!Pochimon![r]
If you don't do it on time, you'll be in trouble![p]
[endif]

[if exp="tf.rand == 19"]
[bg storage="evening/img22_18.png" time="1000"]
[playse storage="sizue/sz22_020.ogg" buf="0"]
The suspense drama will start[p]
[endif]

[if exp="tf.rand == 20"]
[bg storage="evening/img22_19.png" time="1000"]
[playse storage="sizue/sz22_021.ogg" buf="0"]
For some reason, when I watch a movie, I fall asleep[p]
[endif]

[if exp="tf.rand == 21"]
[bg storage="evening/img22_17.png" time="1000"]
[playse storage="sizue/sz22_022.ogg" buf="0"]
I really like screaming vehicles[p]
[endif]

[if exp="tf.rand == 22"]
[bg storage="evening/img22_16.png" time="1000"]
[playse storage="sizue/sz22_023.ogg" buf="0"]
Will you go drinking together next time?Aunt is strong[p]
[endif]

[if exp="tf.rand == 23"]
[bg storage="evening/img22_17.png" time="1000"]
[playse storage="sizue/sz22_024.ogg" buf="0"]
The battery runs out right away so I carry a battery.[p]
[endif]

[if exp="tf.rand == 24"]
[bg storage="evening/img22_16.png" time="1000"]
[playse storage="sizue/sz22_025.ogg" buf="0"]
If you don't take a bath quickly, Rina will get angry[r]
Will you enter your brother?[p]
[endif]

[if exp="tf.rand == 25"]
[bg storage="evening/img22_00.png" time="1000"]
[playse storage="sizue/sz22_026.ogg" buf="0"]
It's finally the beer garden season[r]
fun[p]
[endif]

[if exp="tf.rand == 26"]
[bg storage="evening/img22_04.png" time="1000"]
[playse storage="sizue/sz22_027.ogg" buf="0"]
It's hot every day ~[p]
[endif]

[if exp="tf.rand == 27"]
[bg storage="evening/img22_02.png" time="1000"]
[playse storage="sizue/sz22_028.ogg" buf="0"]
This is my brother!I can't drink my aunt![p]
[endif]

[if exp="tf.rand == 28"]
[bg storage="evening/img22_19.png" time="1000"]
[playse storage="sizue/sz22_029.ogg" buf="0"]
I'm just angry[r]
Riko -chan is full of games, hey ...[p]
[endif]

[if exp="tf.rand == 29"]
[bg storage="evening/img22_01.png" time="1000"]
[playse storage="sizue/sz22_030.ogg" buf="0"]
The beer after working a lot is delicious[p]
[endif]

;静江さん好感度増加
[sizue_f]

#
I talked to Shizue![p]

[return]

;***********************************************************************************************************************
;-お風呂イベント
*bath
[if exp="f.riko_f >= 80 && f.riko_bath == undefined"]
 [jump target="*bath_riko"]
[endif]

[if exp="f.riko_h >= 50 && f.riko_bath2 == undefined"]
 [jump target="*bath_riko2"]
[endif]

[if exp="f.rina_f >= 80 && f.rina_bath == undefined"]
 [jump target="*bath_rina"]
[endif]

[if exp="f.rina_h >= 50 && f.rina_bath2 == undefined"]
 [jump target="*bath_rina2"]
[endif]

[if exp="f.sizue_f >= 80 && f.sizue_bath == undefined"]
 [jump target="*bath_sizue"]
[endif]

[if exp="f.sizue_h >= 75 && f.sizue_bath2 == undefined"]
 [jump target="*bath_sizue2"]
[endif]

[return]
;***********************************************************************************************************************
;--莉子お風呂
*bath_riko
[bg storage ="room_night.png" time="1000"]
[menuwindows]
#
By the way, I wonder if I will take a bath[p]

[freeimage layer="2" time="0"]
[bg storage="black.png" time="1000"]

;メッセージボックス非表示
[clearfix]
@layopt layer="message" visible=false

[movie storage="mov_14_4.webm" skip="true"]


[bg storage="evening/img14_10.png" time="1000"]

[menuwindows]
#莉子
[playse storage="riko/rk14_005.ogg" buf="0"]
Kya!![p]
#
Wow!![p]
[bg storage="evening/img14_09.png" time="1000"]
#莉子
[playse storage="riko/rk14_006.ogg" buf="0"]
Uncle, on purpose![p]
#
blood!It's different[r]
I really made a mistake ...[p]
#莉子
[playse storage="riko/rk14_007.ogg" buf="0"]
Hmm, how!My uncle's eyes are lolicon ...[p]
#
Please do it ...[p]
#莉子
[playse storage="riko/rk14_008.ogg" buf="0"]
Well, no[r]
This is lend!I'll get something next time![p]
#
It was good ... it seems to be forgiven ...[p]
[eval exp="f.riko_bath = true"]
[return]

;***********************************************************************************************************************
;--	莉菜お風呂
*bath_rina
[bg storage ="room_night.png" time="1000"]
[menuwindows]
#
By the way, I wonder if I will take a bath[p]

[freeimage layer="2" time="0"]
[bg storage="black.png" time="1000"]

;メッセージボックス非表示
[clearfix]
@layopt layer="message" visible=false

[movie storage="mov_15_3_1.webm" skip="true"]


[menuwindows]
[bg storage="evening/img15_08.png" time="1000"]
#
…… [L] …… [L] ……[p]
Um ... Rina -chan ... I'm sorry a while ago[p]
#莉菜
[playse storage="rina/rn15_006.ogg" buf="0"]
I was ... I didn't close the key[r]
Don't worry about your brother[p]
#
I'm glad, it seems to forgive me[p]

[eval exp="f.rina_bath = true"]
[return]

;***********************************************************************************************************************
;--	静江お風呂
*bath_sizue
[bg storage ="room_night.png" time="1000"]
[menuwindows]
#
By the way, I wonder if I will take a bath[p]

[freeimage layer="2" time="0"]
[bg storage="black.png" time="1000"]

;メッセージボックス非表示
[clearfix]
@layopt layer="message" visible=false

[movie storage="mov_16_3_1.webm" skip="true"]


[menuwindows]
[bg storage="evening/img16_05.png" time="1000"]
#静江
[playse storage="sizue/sz16_011.ogg" buf="0"]
what happened?Your brother, it's hardened ...[p]
[playse storage="sizue/sz16_011_2.ogg" buf="0"]
Ah!Is it fun to see your aunt naked?Well, are you talking?[r]
Reach![p]
[playse storage="sizue/sz16_012.ogg" buf="0"]
The next time I did it, I was going to get it[p]
#
I'm sorry[p]

[eval exp="f.sizue_bath = true"]
[return]

;***********************************************************************************************************************
;--莉子お風呂2
*bath_riko2
[bg storage ="room_night.png" time="1000"]
[stopse buf="0"]
[stopse buf="3"]
[menuwindows]
#
By the way, I wonder if I will take a bath[p]

[freeimage layer="2" time="0"]
[bg storage="black.png" time="1000"]

[playbgm storage="bass.ogg" loop="true"]
[bgmovie storage="mov_14_16.webm"]
#
Wow!Riko[p]
#莉子
[playse storage="riko/rk14_012.ogg" buf="0"]
Uncle, I'll join us together[p]
[stop_bgmovie]
[bgmovie storage="mov_14_17.webm"]
#莉子
[playse storage="riko/rk14_013.ogg" buf="0"]
Uncle, wash it properly[p]
#
No……!![p]
#莉子
[playse storage="riko/rk14_014.ogg" buf="0"]
Uncle, I'm hitting something on my back[p]
#
Ah ... no ... that's it[p]
#莉子
[playse storage="riko/rk14_015.ogg" buf="0"]
Did you feel like your child naked?[p]
#
No ... that's why ...[p]
#莉子
[playse storage="riko/rk14_016.ogg" buf="0"]
Is it so big?[p]
#
…………[p]
#莉子
[playse storage="riko/rk14_017.ogg" buf="0"]
I was lying so punish[p]
[stop_bgmovie]
[bgmovie storage="mov_14_18.webm"]

#莉子
[playse storage="riko/rk14_018.ogg" buf="0"]
What is your uncle doing now?[p]
#
eh?[p]
#莉子
[playse storage="riko/rk14_019.ogg" buf="0"]
What are you doing![p]
#
Uh ... to Riko -chan[r]
I'm being tampered with my feet ...[p]
#莉子
[playse storage="riko/rk14_020.ogg" buf="0"]
Why is this happening?[p]
#
That's ... it's ... the child's nakedness[r]
...... Because I was lustful[p]
#莉子
[playse storage="riko/rk14_021.ogg" buf="0"]
Did you reflect on it?[p]
#
Ha ... yes ... I reflected on it[p]
#莉子
[playse storage="riko/rk14_022.ogg" buf="0"]
Then, stop?[p]
#
picture!No ... too ... more ... please[p]
[stop_bgmovie]
[bgmovie storage="mov_14_20.webm"]

#莉子
[playse storage="riko/rk14_024.ogg" buf="0"]
Is it comfortable?[p]
#
Ki ... it feels good[p]
#莉子
[playse storage="riko/rk14_025.ogg" buf="0"]
I'm sorry with my child's feet ...[p]
#
Yes ... Uncle is a pervert[p]
[stop_bgmovie]
[bgmovie storage="mov_14_19.webm"]

#莉子
[playse storage="riko/rk14_026.ogg" buf="0"]
Do you want to put your uncle's chin?[p]
#
picture!...... Ah ... I want to put it in[p]
#莉子
[playse storage="riko/rk14_027.ogg" buf="0"]
Where do you want to put it?Uncle's chinchin[r]
Where do you want to put it?[p]
#
Riko's pussy ... I want to put it![p]
#莉子
[playse storage="riko/rk14_028.ogg" buf="0"]
After all, the uncle is perverted to want to be in a children's pussy[r]
But, I'm sorry!It's a good idea to be a perverted state with your feet[p]
#
picture!Such[p]
#莉子
[playse storage="riko/rk14_029.ogg" buf="0"]
Go with your child's footjob soon!This metamorphosis[p]
#

[stop_bgmovie]
[stopse buf="0"]
[stopse buf="3"]
[cm]
[clearfix]
[stopse buf="0"]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[movie storage="mov_14_21.webm" skip="true"]
[stop_bgmovie]
[menuwindows]

[bgmovie storage="mov_14_22.webm"]

#莉子
[playse storage="riko/rk14_030.ogg" buf="0"]
Oh, oh, I put it out so much ... my legs got dirty![p]
#

;莉子ちゃん愛情度UP
[riko_i]
;体力減少
[eval exp="f.hp = f.hp - 20"]
;主人公精力減少
[eval exp="f.energy = f.energy - 30"]

[stop_bgmovie]
[fadeoutbgm]

[eval exp="f.riko_bath2 = true"]
;デートフラグオン（帰宅時に部屋に行くを消すための変数）
[eval exp="tf.date = true"]

#
Riko -chan's footjob, it was nice![p]
#
I came back to the room[r]

[return]

;***********************************************************************************************************************
;--莉菜お風呂2
*bath_rina2
[bg storage ="room_night.png" time="1000"]
[stopse buf="0"]
[stopse buf="3"]
[menuwindows]
#
By the way, I wonder if I will take a bath[p]

[freeimage layer="2" time="0"]
[bg storage="black.png" time="1000"]

[playbgm storage="bass.ogg" loop="true"]
[bgmovie storage="mov_15_16.webm"]
#
oh!Rina -chan came![p]
#莉菜
[playse storage="rina/rn15_020.ogg" buf="0"]
I don't want to help my brother persistently![p]
#
Rina -chan, don't hide that much, show me better[p]
[stop_bgmovie]
[bgmovie storage="mov_15_17.webm"]
#莉菜
[playse storage="rina/rn15_021.ogg" buf="0"]
picture!That's no ... it's embarrassing ...[p]
#
Look, Rina's big boobs, show me well[p]
#莉菜
[playse storage="rina/rn15_022.ogg" buf="0"]
Oh, your brother ... if you can see it so much ... it's embarrassing ...[p]
#
Rina -chan, I'll wash it properly[p]
[stop_bgmovie]
[bgmovie storage="mov_15_18.webm"]
#莉菜
[playse storage="rina/rn15_023.ogg" buf="0" loop="true"]
Huh ... huh ... hmm ... oh ... hmm ... huh ...[r]
Yeah!Hmm ... your brother ... Hmm ...[p]
#莉菜
[playse storage="rina/rn15_024.ogg" buf="0"]
Ah!……… No …… No …… Your brother …… Such ……[p]
[stop_bgmovie]
[playse storage="rina/rn15_025.ogg" loop="true"]
[playse storage="se/kutyu01.ogg" loop="true" buf="3"]
[bgmovie storage="mov_15_19.webm"]
I'll wash Rina's many here[p]
#莉菜
[playse storage="rina/rn15_026.ogg" buf="0"]
And no more ... no!Your brother ... I will wash this time![p]

#
Then, it's a washing child, Rina -chan[p]
[stop_bgmovie]
[bgmovie storage="mov_15_20.webm"]
[playse storage="rina/rn15_025.ogg" loop="true"]
#
Rina -chan ... It feels good ...[p]
[playse storage="rina/rn15_027.ogg" buf="0"]
Oh, oh ... hmm ... older brother ... older brother ...[r]
Oh ... it's no good ... older brother ... Rina ... It feels good![p]
[playse storage="rina/rn15_025.ogg" loop="true"]
#
Rina -chan ... I'll put it out ... I'm going together[p]
[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[stop_bgmovie]
[stopse buf="0"]
[stopse buf="3"]
[movie storage="mov_15_21.webm" skip="true"]
[playse storage="rina/rn15_029_1.ogg" loop="true"]
[bgloop mov="mov_15_22.webm"  ti="2000"]
[stopse buf="0"]
[stopse buf="3"]
;莉菜ちゃん愛情度UP
[rina_i]
;体力減少
[eval exp="f.hp = f.hp - 20"]
;主人公精力減少
[eval exp="f.energy = f.energy - 30"]

[stop_bgmovie]
[fadeoutbgm]

[eval exp="f.rina_bath2 = true"]
;デートフラグオン（帰宅時に部屋に行くを消すための変数）
[eval exp="tf.date = true"]
[menuwindows]
#
Rina -chan and the bath were nice![p]
#
I came back to the room[r]

[return]

;***********************************************************************************************************************
;--静江お風呂2
*bath_sizue2
[bg storage ="room_night.png" time="1000"]
[stopse buf="0"]
[stopse buf="3"]
[menuwindows]
#
By the way, I wonder if I will take a bath[p]

[freeimage layer="2" time="0"]
[bg storage="black.png" time="1000"]

[playbgm storage="bass.ogg" loop="true"]

[bgmovie storage="mov_16_14.webm"]
#静江
[playse storage="sizue/sz16_023.ogg" buf="0"]
Your brother and aunt will flow back[p]
#
circle!Ah ... a little[p]
[stop_bgmovie]
[bgmovie storage="mov_16_15.webm"]
#静江
[playse storage="sizue/sz16_024.ogg" buf="0"]
What are you hiding?I'm a boy so I have to do it![r]
Oh dear!It's like this ... I'm young[p]
[playse storage="sizue/sz52_009.ogg" buf="0"]
#静江
Your brother, feel good?[r]
Your brother's pleasant face is cute![p]
#
It feels good!Shizue -san![p]
[stop_bgmovie]
[bgmovie storage="mov_16_16.webm"]
[playse storage="sizue/sz16_025.ogg" buf="0"]
#静江
I'll do it with my brother's favorite boobs!You like boobs, right?[p]
#
Yes, yes ... I like it ... Shizue's boobs ... I like it[p]
[playse storage="sizue/sz16_026.ogg" buf="0"]
#静江
Is it comfortable?Your brother's chinchin[r]
I'm bikunbikun in my aunt's boobs[p]
#
It's terrible ... it feels good ... it looks like it will be ...[p]
[playse storage="sizue/sz16_027.ogg" buf="0"]
#静江
Ufufu ... Good, for your aunt's boobs[r]
I guess it's okay to do it.[p]
#
Ahh!limit!go!Ah![p]
[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[stop_bgmovie]
[stopse buf="0"]
[stopse buf="3"]
[movie storage="mov_16_17.webm" skip="true"]
[stop_bgmovie]
[movie storage="mov_16_18.webm" skip="true"]
[stopse buf="0"]
[stopse buf="3"]


;静江さん愛情度UP
[sizue_i]
;体力減少
[eval exp="f.hp = f.hp - 20"]
;主人公精力減少
[eval exp="f.energy = f.energy - 30"]

[stop_bgmovie]
[fadeoutbgm]

[eval exp="f.sizue_bath2 = true"]
;デートフラグオン（帰宅時に部屋に行くを消すための変数）
[eval exp="tf.date = true"]
[menuwindows]
#
The bath with Shizue was nice![p]
#
I came back to the room[r]

[return]
