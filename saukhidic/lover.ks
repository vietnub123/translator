;告白イベント
;好感度100で告白待ち状態 f.riko_lover = 1になります
;この状態で帰宅時に告白イベント開始
;イベント終了で恋人状態 f.riko_lover = 2になります

*start

[cm]
[clearfix]
;***********************************************************************************************************************
;誰とも恋人でない場合
[if exp="f.riko_lover == undefined && f.rina_lover == undefined && f.sizue_lover == undefined"]

 [if exp="f.riko_f >= 100"]
  [jump target="*riko_lover"]
 [endif]
 [if exp="f.rina_f >= 100"]
  [jump target="*rina_lover"]
 [endif]
 [if exp="f.sizue_f >= 100"]
  [jump target="*sizue_lover"]
 [endif]
 
[endif]

;***********************************************************************************************************************
;誰かと恋人の場合エンディング済みならフリーモード
[if exp="f.ending == 1"]

 ;■莉子
 [if exp="f.riko_lover == undefined "]
  [if exp="f.riko_f >= 100"]
   [jump target="*riko_lover"]
  [endif]
 [endif]
 ;■莉菜
 [if exp="f.rina_lover == undefined "]
  [if exp="f.rina_f >= 100"]
   [jump target="*rina_lover"]
  [endif]
 [endif]
 ;■静江
 [if exp="f.sizue_lover == undefined "]
  [if exp="f.sizue_f >= 100"]
   [jump target="*sizue_lover"]
  [endif]
 [endif]
 
[endif]

[return]


;-莉子ちゃん恋人判定------------------------------------------------------------------
*riko_lover
[bg storage="black.png" time="1000"]
#
…… [L] …… [L] ……[p]
#桜子
[playse storage="sakurako/sa75_011.ogg" buf="0"]
Riko -chan and Etch, Riko and Etch, Riko and Etch, Riko and Etch,[p]
#
[bg storage="room_night.png" time="1000"]
[chara_show name="sakurako" face="akubi03" left=100]
What are you making noise![p]
Sleep early!![p]
[fadeoutse]
;桜子消去
#
[chara_hide name="sakurako"]
[bg storage="black.png" time="1000"]
#
……[l]……[l]……[l]
I'm really worried because I'm talking about it ...[p]
Maybe I'm Riko -chan ...[p]
[glink  color="pink" size="20"  x="400"  width="400"  y="250"  text="莉子ちゃんを好きかも"  target="*riko_lover_1"]
[glink  color="pink" size="20"  x="400"  width="400"  y="350"  text="いや、気のせいか……"  target="*riko_lover_2"]
[s]

;--莉子ちゃん好きかも
*riko_lover_1
#
I liked Riko -chan ...[p]
[eval exp="f.riko_lover = 1"]
What should I do if I'm worried from tomorrow ...[p]
……[l]……[l]……[l]
Su ~ Su ~ ...[p]
[return]

;--そんなことはなかった
*riko_lover_2
#
No, that's not the case ...[p]
I wonder if I should sleep[p]
[eval exp="f.riko_f = 80"]
[return]

;-莉菜ちゃん恋人判定-------------------------------------------------------------------------
*rina_lover
[bg storage="black.png" time="1000"]
#
…… [L] …… [L] ……[p]
#桜子
[playse storage="sakurako/sa75_012.ogg" buf="0"]
Rina -chan and such things and this!Rina -chan and such things and this![r]
Rina -chan and such things and this!Rina -chan and such things and this![p]
#
[bg storage="room_night.png" time="1000"]
[chara_show name="sakurako" face="akubi03" left=100]
What are you making noise![p]
Sleep early!![p]
[fadeoutse]
;桜子消去
#
[chara_hide name="sakurako"]
[bg storage="black.png" time="1000"]
#
……[l]……[l]……[l]
I'm really worried because I'm talking about it ...[p]
Maybe I'm Rina -chan ...[p]
[glink  color="pink" size="20"  x="400"  width="400"  y="250"  text="莉菜ちゃんを好きかも"  target="*rina_lover_1"]
[glink  color="pink" size="20"  x="400"  width="400"  y="350"  text="いや、気のせいか……"  target="*rina_lover_2"]
[s]

;--莉菜ちゃん好きかも
*rina_lover_1
#
I liked Rina -chan ...[p]
[eval exp="f.rina_lover = 1"]
What should I do if I'm worried from tomorrow ...[p]
……[l]……[l]……[l]
Su ~ Su ~ ...[p]
[return]

;--そんなことはなかった
*rina_lover_2
#
No, that's not the case ...[p]
I wonder if I should sleep[p]
[eval exp="f.rina_f = 80"]
[return]

;-静江さん恋人判定--------------------------------------------------------------------------------
*sizue_lover
[bg storage="black.png" time="1000"]
#
…… [L] …… [L] ……[p]
#桜子
[playse storage="sakurako/sa75_013.ogg" buf="0"]
Shizue's boobs!Shizue's boobs!Shizue's boobs!Shizue's boobs![p]
#
[bg storage="room_night.png" time="1000"]
[chara_show name="sakurako" face="akubi03" left=100]
What are you making noise![p]
Sleep early!![p]
[fadeoutse]
;桜子消去
#
[chara_hide name="sakurako"]
[bg storage="black.png" time="1000"]
#
……[l]……[l]……[l]
I'm really worried because I'm talking about it ...[p]
Maybe I'm Shizue -san ...[p]
[glink  color="pink" size="20"  x="400"  width="400"  y="250"  text="静江さんを好きかも"  target="*sizue_lover_1"]
[glink  color="pink" size="20"  x="400"  width="400"  y="350"  text="いや、気のせいか……"  target="*sizue_lover_2"]
[s]

;--静江さん好きかも
*sizue_lover_1
#
I liked Shizue -san ...[p]
[eval exp="f.sizue_lover = 1"]
What should I do if I'm worried from tomorrow ...[p]
……[l]……[l]……[l]
Su ~ Su ~ ...[p]
[return]

;--そんなことはなかった
*sizue_lover_2
#
No, that's not the case ...[p]
I wonder if I should sleep[p]
[eval exp="f.sizue_f = 80"]
[return]
;***********************************************************************************************************************
;-告白イベント
*confession
;土日なら延期
[if exp="f.oneweek == 5 || f.oneweek == 6"]
 [eval exp="tf.enki = 1"]
 [return]
[endif]

;パートナー判別桜子以外延期
[if exp="f.partner > 0"]
 [eval exp="tf.enki = 1"]
 [return]
[endif]
;***********************************************************************************************************************
;***********************************************************************************************************************
;--莉子ちゃん告白イベント
[if exp="f.riko_lover == 1"]
[freeimage layer="2" time="0"]
[bg storage="entrance.png" time="1000"]
#
I came home[p]
[bg storage="black.png" time="1000"]
[bgmovie storage="mov_23_1.webm" time="1000" loop="true"]
Riko -chan[p]
I wonder if Rina and Shizue have not returned yet[p]
#莉子
[playse storage="riko/rk23_001.ogg" buf="0"]
Your sister said that it would be late at a study session with a friend[r]
Mom is a drinking party[p]
#
(Riko -chan, I can see pants!)[p]
(Nice angle as usual!)[p]
(How do you look at it so that you don't notice it, it's a place to show your arms!)[p]
I'm ready for dinner!As expected, Rina -chan (Chira!)[p]
#莉子
[playse storage="riko/rk23_002.ogg" buf="0"]
Uncle game![p]
#
Oh, good!This time I will not lose (Chira!)[p]
[stop_bgmovie time="1000"]
[bgmovie storage="mov_23_2.webm" time="1000" loop="true"]
No, I have no teeth![p]
Riko is strong![p]
#莉子
[playse storage="riko/rk23_003.ogg" buf="0"]
Uncle ~[p]
#
yeah?[p]
#莉子
[playse storage="riko/rk23_004.ogg" buf="0"]
You always see Riko's pants![p]
#
！！[p]
Mi ... I haven't seen it![p]
#莉子
[playse storage="riko/rk23_005.ogg" buf="0"]
Didn't you see it?[p]
#
Eh ... oh ... uh ...[p]
#莉子
[playse storage="riko/rk23_006.ogg" buf="0"]
Hmm, then ... do you want to see?[p]
#
Eh ... Ah ... Riko -chan ...[p]
#莉子
[playse storage="riko/rk23_007.ogg" buf="0"]
Do you want to see Riko's pants?[p]
#
Mi ... I want to see ...[p]
[stop_bgmovie time = "0"]
[cm]
[clearfix]
[stopse buf="0"]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[movie storage="mov_23_3.webm" time="0" skip="true" ]


[bgmovie storage="mov_23_4.webm" time="2000" loop="true"]
[menuwindows]
#莉子
[playse storage="riko/rk23_009.ogg" buf="0"]
copper?Riko's pants[r]
You will be excited to see it so close![p]
#
Riko -chan ... like this ...[p]
#莉子
[playse storage="riko/rk23_010.ogg" buf="0"]
Uncle, you like Riko, right?[p]
#
Eh ... I like ... but ...[p]
#莉子
[playse storage="riko/rk23_011.ogg" buf="0"]
Wow ... Lolicon ... Kimon![p]
#
Riko ... Riko -chan?[p]
[stop_bgmovie time = "0"]
[cm]
[clearfix]
[stopse buf="0"]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[movie storage="mov_23_5.webm" time="0" skip="true"]
[bgmovie storage="mov_23_6.webm" time="1000" loop="true"]
[menuwindows]
#莉子
[playse storage="riko/rk23_013.ogg" buf="0" loop="true"]
yeah……[p]
[playse storage="riko/rk23_014.ogg" buf="0"]
It was Riko's first kiss, what would you do?[p]
#
What should I do ...[p]
Riko -chan ... I want to see Riko's boobs[p]
#莉子
[playse storage="riko/rk23_015.ogg" buf="0"]
Because it's an uncle lolicon, you like Petanko, right?[p]
#
yes, I love it[p]
[stop_bgmovie time="0"]
[bgmovie storage="mov_23_7.webm" time="2000" loop="true"]
#莉子
[playse storage="riko/rk23_016.ogg" buf="0"]
But Riko, in a few years, I will get big tits like my sister.[p]
#
If you have Riko's boobs, I love both[p]
[stop_bgmovie time="0"]
[bgmovie storage="mov_23_8.webm" time="0" loop="true"]
#
[playse storage="riko/rk23_017.ogg" buf="0" loop="true"]
Riko's cute boobs[p]
Blinking boobs![p]
If you touch this, it will be somehow![p]
Yabai ... Riko -chan ... Uncle, I can't stop anymore[p]
Riko's important points ... show me![p]
[stop_bgmovie time = "500"]
[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[movie storage="mov_23_9.webm" time="1000" skip="true"]

[bgmovie storage="mov_23_10.webm" time="1000" loop="true"]
[menuwindows]
[playse storage="riko/rk23_027.ogg" buf="0" loop="true"]
#
(Riko's cute dick in front of me)[p]
[stopse buf="0"]
#莉子
[playse storage="riko/rk23_025.ogg" buf="0"]
Uncle, when something is touched by something ... weird feeling[p]
#
[playse storage="riko/rk23_027.ogg" buf="0" loop="true"]
Do you expose it yourself?[p]
#莉子
[playse storage="riko/rk23_026.ogg" buf="0" clear="true"]
I don't know ...[p]
[stop_bgmovie time="0"]
[bgmovie storage="mov_23_11.webm" time="1000" loop="true"]
[playse storage="riko/rk23_027.ogg" buf="0" loop="true"]
#
Riko's pussy is in front of me[p]
#莉子
[playse storage="riko/rk23_028.ogg" buf="0"]
Uncle, embarrassing ...[p]
#
[playse storage="riko/rk23_027.ogg" buf="0" loop="true"]
Riko -chan ... I can't stand it anymore ...[p]
#莉子
[playse storage="riko/rk23_029.ogg" buf="0"]
Yeah ... don't hurt[p]
[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[fadeoutse buf="0"]
[stop_bgmovie time = "1000"]
[movie storage="mov_23_12.webm" time="1000" skip="true"]
[bgmovie storage="mov_23_13.webm" time="1000" loop="true"]
[menuwindows]
#莉子
[playse storage="se/kutyu00.ogg" buf="3" loop="true"]
[playse storage="riko/rk26_013.ogg" buf="0"]
Uncle ... It hurts ... Is this comfortable?[p]
#
[playse storage="riko/rk26_014.ogg" buf="0" loop="true"]
If you get used to it, you will feel more and more comfortable, Riko -chan![p]
I'll move slowly[p]
Huh ... Huh ... it feels good, Riko -chan[p]
Riko -chan ... It feels good, I want to do more ... I can't stand it anymore[p]
[stop_bgmovie time="0"]
[bgmovie storage="mov_23_16.webm" time="1000" loop="true"]
[playse storage="se/kutyu01.ogg" buf="3" loop="true"]
#莉子
Uh!Ahh!Hmm ...[p]
#
Riko -chan, I'm sorry ... I can't stand it[p]
Uncle's chin is in the back of Riko![p]
Huh ... Huh ... Riko -chan feels good ...[p]
Riko -chan!Riko -chan!Uh ... oh![p]
[stop_bgmovie time = "0"]
[stopse buf="0"]
[stopse buf="3"]
[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false

[movie storage="mov_23_14.webm" skip="true"]

[movie storage="mov_23_15.webm" skip="true"]
[menuwindows]
[bgmovie storage="mov_23_17.webm" time="2000" loop="true"]
#莉子
[playse storage="riko/rk26_018.ogg" buf="0"]
Uncle was painful![p]
#
Uh ... I'm sorry, Riko -chan[p]
I can't stand it ... I'll forgive anything[p]
#莉子
[playse storage="riko/rk26_019.ogg" buf="0"]
anything?What should I do?[r]
Thinking![p]
#
Ah ... it's done ... I said something extra[p]
[stop_bgmovie time="2000"]
[stopse buf="0"]
;パートナー桜子変更
[eval exp="f.partner = 0"]

[bg storage="room_night.png" time="1000"]
#
I'm back in the room[p]
While in the lingering lingering sound with Riko[r]
I wonder if I should sleep today[p]

;莉子恋人ステータス
[eval exp="f.riko_lover = 2"]
[eval exp="f.riko_i = 10"]
[eval exp="f.energy = 0"]
[return]
[endif]

;***********************************************************************************************************************
;***********************************************************************************************************************
;--莉菜ちゃん告白イベント
[if exp="f.rina_lover == 1"]
[freeimage layer="2" time="0"]
[bg storage="entrance.png" time="1000"]
#
I came home[p]
[bg storage="black.png" time="1000"]
[bg storage="lover/img24_00.png" time="1000"]
I'm right now[p]
#莉菜
[playse storage="rina/rn24_001.ogg" buf="0"]
Your brother, go home[r]
There is no Riko or mother today[p]
#
is that so[p]
#莉菜
[playse storage="rina/rn24_002.ogg" buf="0"]
Mom, he said that he had trouble at work and said he would be late[r]
Riko -chan is staying at a friend's house together[p]
#
Well, today I'm alone with Rina![p]
[bg storage="lover/img24_01.png" time="1000"]
#莉菜
[playse storage="rina/rn24_003.ogg" buf="0"]
……[p]
#
(Yabat, I said something[p]
[bg storage="lover/img24_02.png" time="1000"]
#莉菜
[playse storage="rina/rn24_004.ogg" buf="0"]
I did my best to cook today[r]
I can do it soon, so please wait[p]
#	
Ya[p]
[bg storage="lover/img24_03.png" time="1000"]
#莉菜
[playse storage="rina/rn24_005.ogg" buf="0"]
Your brother, thank you!It's done[r]
I'm worried if it suits your mouth[p]
#
What Rina -chan made is delicious![p]
oh!It looks like a restaurant, Rina -chan![p]

#
Riko looks super delicious!I wish I was alone every day![p]
[bg storage="lover/img24_04.png" time="1000"]
#莉菜
[playse storage="rina/rn24_007.ogg" buf="0"]
……[p]
#
(It's done![p]
#
Then, let's get it!Please give me[p]
[bg storage="lover/img24_05.png" time="1000"]
#
Rina -chan is delicious!No ~ I'm glad Rina -chan came ~[p]
#
I've been instants all the time, so how many years have been decent food ...[p]
#
yeah?What's wrong with Rina -chan?[p]
[bg storage="lover/img24_06.png" time="1000"]
#莉菜
[playse storage="rina/rn24_008.ogg" buf="0"]
No, no ... nothing ...[p]
#
[bg storage="black.png" time="1000"]
[bg storage="lover/img24_07.png" time="1000"]
#莉菜
[playse storage="rina/rn24_009.ogg" buf="0"]
My brother, please watch it on TV[p]
[stopse buf="0"]
[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false

[movie storage="mov_24_22.webm" time="0" skip="true"]
[wait_bgmovie]
[freeimage layer="base"]
[stop_bgmovie]
#
[menuwindows]
[freeimage layer="base"]
……[p]
[bgmovie storage="mov_24_23.webm" time="1000" loop="true"]

#莉菜
[playse storage="rina/rn24_014.ogg" buf="0"]
Ah ... that ...[p]
#
(No! What should I do ... I'm conscious and can't stop anymore ...)[p]
(No more![p]
I ... Rina -chan ... I like ...[p]
#莉菜
……[p]
#
Sorry ... was it annoying?[p]
#莉菜
[playse storage="rina/rn24_016.ogg" buf="0"]
blood!No ... I ... I also like my brother ... I like it ... I also like my brother![p]
#
Rina -chan ...[p]
#莉菜
[playse storage="rina/rn24_017.ogg" buf="0"]
I always like it ... but if I'm shaken and awkward ...[r]
I ... what should I do ... I'm worried ...[p]
[stop_bgmovie]
[stopse buf="0"]

[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[movie storage="mov_24_24.webm" skip="true"]
[bgmovie storage="mov_24_2_1.webm" time="1000" loop="true"]
[menuwindows]
#莉菜
[playse storage="rina/rn24_019.ogg" buf="0" loop="true"]
yeah……[p]
#
(Rina -chan's lips ... soft ...)[p]
(I can't stand this anymore ...)[p]
Rina -chan ... I ...[p]
[stopse buf="0"]
[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[stop_bgmovie time="0"]
[movie storage="mov_24_3_1.webm" skip ="true"]
[menuwindows]
[bgmovie storage="mov_24_4_1.webm" time="1000" loop="true"]
#
[playse storage="rina/rn24_024_1.ogg" buf="0" loop="true"]
Rina's boobs are big![p]
#莉菜
[playse storage="rina/rn24_022.ogg" buf="0"]
If you can see it so much ... it's embarrassing ...[p]
[playse storage="rina/rn24_024_2.ogg" buf="0" loop="true"]
[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[stop_bgmovie time="0"]
[movie storage="mov_24_5_1.webm" skip ="true"]
[menuwindows]
[bgmovie storage="mov_24_6_1.webm" time="1000" loop="true"]
[stopse buf="0"]
#莉菜
[playse storage="rina/rn24_026.ogg" buf="0" loop="true"]
Oh, your brother!...... That's a place ... because it doesn't come ...[p]
#
(Rina's pussy is in front of me ...)[p]
(No ... I want to put it in)[p]
#
Rina -chan ... It's okay[p]
#莉菜
[playse storage="rina/rn24_027.ogg" buf="0"]
Is ... for the first time, so please be kind ...[p]
[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[stop_bgmovie time="0"]
[movie storage="mov_24_7.webm" skip ="true"]
[menuwindows]
[bgmovie storage="mov_24_8.webm" time="1000" loop="true"]
#
[playse storage="rina/rn24_024_2.ogg" buf="0" loop="true"]
sorry!Rina -chan, did it hurt?[p]
#莉菜
[playse storage="rina/rn24_029.ogg" buf="0"]
It's okay ... it's okay, your brother[p]
[playse storage="rina/rn24_024_2.ogg" buf="0" loop="true"]
#
I'll be more kind[p]
Rina -chan, I'll move[p]
[stop_bgmovie time="0"]
[stopse buf="0"]
[bgmovie storage="mov_24_9.webm" time="1000" loop="true"]
#
[playse storage="rina/rn24_032.ogg" buf="0" loop="true"]
[playse storage="se/kutyu00.ogg" buf="3" loop="true"]
Huh ... huh ... it feels good ...[p]
Rina -chan is too comfortable ...[p]
I can't stop ...[p]
[stop_bgmovie time="0"]
[bgmovie storage="mov_24_10.webm" time="1000" loop="true"]
#
[playse storage="rina/rn24_033.ogg" buf="0" loop="true"]
Rina -chan!Rina -chan![p]
It feels good ... Rina -chan!It feels good![p]
Ah ... Rina -chan, no!Let's go![p]
Rina -chan!Uh!Ah![p]
[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[stop_bgmovie time="0"]
[stopse buf="0"]
[stopse buf="3"]
[movie storage="mov_24_11.webm" skip ="true"]
[movie storage="mov_24_13.webm" skip ="true"]


;[bgmovie storage="mov_24_12.webm" time="1000" loop="true"]
[playse storage="rina/rn24_036.ogg" buf="0" loop="true"]
[bgloop mov="mov_24_12.webm" ti="1000"]
[stop_bgmovie time="2000"]
[stopse buf="0"]
[stopse buf="3"]
[menuwindows]

;パートナー桜子変更
[eval exp="f.partner = 0"]

[bg storage="room_night.png" time="1000"]
#
I'm back in the room[p]
No way I can get along with Rina ...[p]
If you imagine that boobs, it seems to be getting better again[p]
I wonder if I should sleep quietly today[p]


;莉菜恋人ステータス
[eval exp="f.rina_lover = 2"]
[eval exp="f.rina_i = 10"]
[eval exp="f.energy = 0"]
[return]
[endif]

;***********************************************************************************************************************
;***********************************************************************************************************************
;--静江さん告白イベント
[if exp="f.sizue_lover == 1"]
[freeimage layer="2" time="0"]
[bg storage="entrance.png" time="1000"]
#
I came home[p]
[bg storage="black.png" time="1000"]
[bgmovie storage="mov_25_15.webm" time="1000" loop="true"]
#静江
[playse storage="sizue/sz25_001.ogg" buf="0"]
Now, your brother![p]
#
Go home, Shizue -san.[p]
#静江
[playse storage="sizue/sz25_002.ogg" buf="0"]
I see!Rina and Riko are late today[p]
#
Rina -chan had a study session[r]
Riko was staying at a friend's house[p]
Rina -chan, I'm sorry I couldn't get ready for dinner[p]
#静江
[playse storage="sizue/sz25_003.ogg" buf="0"]
That means today ...[p]
#
picture?...[p]
#静江
[playse storage="sizue/sz25_004.ogg" buf="0"]
Let's go out before pizza![p]
#
Ah ... yes[p]
#静江
[playse storage="sizue/sz25_005.ogg" buf="0"]
Rina's dishes are delicious, but sometimes![r]
You want to eat junk food or asexually![p]
#
It looks angry when you come back![p]
#静江
[playse storage="sizue/sz25_006.ogg" buf="0"]
There should have been delicious sake!Rina -chan's hidden place is right now![r]
My brother, I'm lucky to be at home today.[p]
#
No[r]
I'm happy to get along[p]
[stop_bgmovie time="2000"]
[bgmovie storage="mov_25_16.webm" time="1000" loop="true"]
#静江
[playse storage="sizue/sz25_007.ogg" buf="0"]
Look, your brother!I'm drinking properly ~[p]
#
Yes, yes ... somehow[p]
#静江
[playse storage="sizue/sz25_008.ogg" buf="0"]
brother!Are you catching Pochimon?[r]
It's not a play!Life itself![p]
#
yes!I'm collecting as I learned from Mr. Shizue[p]
#静江
[playse storage="sizue/sz25_009.ogg" buf="0"]
Ufufu, older brother good girl[r]
I'll do it[p]
[playse storage="sizue/sz25_010.ogg" buf="0"]
Oh, that's right!The cupmen is also hidden ~[r]
Now when you eat![p]
#
I eat too much![p]
#静江
[playse storage="sizue/sz25_011.ogg" buf="0"]
I have to do my best from tomorrow![p]
[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false
#
[stop_bgmovie time="2000"]
[movie storage="mov_25_17.webm" skip="true"]
[menuwindows]
Ah!Caution[p]
…………[p]
[bg storage="lover/img25_18_00.png" time="1000"]
#静江
[playse storage="sizue/sz25_012.ogg" buf="0"]
Thank you, your brother[r]
Did you drink too much?[p]
[playse storage="sizue/sz25_013.ogg" buf="0"]
brother?...[p]
#
Mr. Shizue ... I ...[p]
#静江
[playse storage="sizue/sz25_014.ogg" buf="0"]
what happened? brother[p]
#
I like Shizue -san![p]
#静江
[playse storage="sizue/sz25_015.ogg" buf="0"]
Ufufu, thank you for your brother[r]
I also love my older brother[p]
#
No, no!I really love it ...[r]
I've always been thinking about Shizue -san![p]
#静江
[playse storage="sizue/sz25_016.ogg" buf="0"]
This!Don't get rid of your aunt[r]
Did you get drunk?[p]
#
Yeah, I'm not drunk![p]
I ... I'm serious ... Shizue -san dislikes me?[p]
[bg storage="lover/img25_18_02.png" time="1000"]
#静江
[playse storage="sizue/sz25_017.ogg" buf="0"]
I don't hate it, I hate it ...[r]
That's no good!Da -me[p]
[playse storage="sizue/sz25_017_1.ogg" buf="0"]
You know your brother!No![p]
#
Wow, I don't know[r]
I don't know at all[p]
#静江
[playse storage="sizue/sz25_018.ogg" buf="0"]
Don't bother your aunt!Come on, please let go of this hand[p]
#
No, don't let go ... If you really don't like it, please say it's good ...[p]
#静江
[playse storage="sizue/sz25_019.ogg" buf="0"]
What are you saying, your brother ...[p]
#
If you say you hate it ... let go of your hand and give up ...[p]
[bg storage="lover/img25_18_01.png" time="1000"]
#静江
[playse storage="sizue/sz25_020.ogg" buf="0"]
...... I was in trouble ... my brother ... already ...[r]
I can say ... no[p]
#
[bg storage="black.png" time="1000"]
[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[stop_bgmovie]
[playse storage="sizue/sz25_021.ogg" buf="0" loop="true"]
[bgloop mov="mov_25_1.webm" ti="1000"]
[stopse buf="0"]
[movie storage="mov_25_2.webm" skip ="true"]
[menuwindows]
#
[cm]
[bgmovie storage="mov_25_3.webm" time="1000" loop="true"]
#
[playse storage="sizue/sz25_024.ogg" buf="0" loop="true"]
Shizue's chest is big[p]
Soft ... big ...[p]
Mr. Shizue ... I show you more ...[p]
[stop_bgmovie time="1000"]
[stopse buf="0"]
[bgmovie storage="mov_25_4.webm" time="1000" loop="true"]
#静江
[playse storage="sizue/sz25_026.ogg" buf="0"]
Your brother ... I don't want to see it so much ... this middle -aged body[p]
#
It's attractive, Shizue -san ... I'm very excited[p]
[stop_bgmovie]
[bgmovie storage="mov_25_5.webm" time="1000" loop="true"]
#静江
[playse storage="sizue/sz25_029.ogg" buf="0" loop="true"]
Oh, hmm[p]
#
Shizue -san ... It's so wet[p]
#静江
[playse storage="sizue/sz25_028.ogg" buf="0"]
Already ... your brother ...[p]
#
[stop_bgmovie]
[stopse buf="0"]
[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[stop_bgmovie time="0"]
[movie storage="mov_25_6.webm" skip ="true"]
[menuwindows]
[stop_bgmovie]
[bgmovie storage="mov_25_7.webm" time="1000" loop="true"]
[playse storage="sizue/sz25_035.ogg" buf="0" loop="true"]
[playse storage="se/kutyu01.ogg" buf="3" loop="true"]
#
Huh, huh, Shizue -san[p]
Inside Shizue -san ... it feels good[p]
[stop_bgmovie]
[bgmovie storage="mov_25_8.webm" time="1000" loop="true"]
[playse storage="sizue/sz25_036.ogg" buf="0" loop="true"]
[playse storage="se/kutyu02.ogg" buf="3" loop="true"]
Shizue -san!Oh ... it feels good!It feels like Shizue[p]
Mr. Shizue ... It looks like it will go ...[p]
#静江
[playse storage="sizue/sz25_037.ogg" buf="0"]
Good, my brother, put it out a lot ...[p]
#
[playse storage="sizue/sz25_036.ogg" buf="0" loop="true"]
Shizue -san, I like it, Huh ... I love it![p]
[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[stop_bgmovie time="0"]
[stopse buf="0"]
[stopse buf="3"]
[movie storage="mov_25_9.webm" skip ="true"]
[playse storage="sizue/sz25_040_1.ogg" buf="0" loop="true"]
[movie storage="mov_25_10.webm" skip ="true"]
[bgloop mov="mov_25_11.webm" ti="1000"]
[stopse buf="0"]
[movie storage="mov_25_12.webm" skip ="true"]
[menuwindows]
[bgmovie storage="mov_25_13.webm" time="0"]
#静江
[playse storage="sizue/sz25_041.ogg" buf="0"]
My brother, because it's only this time[r]
I forget about today[p]
#
And Mr. Shizue ... I am ...[p]
#静江
[playse storage="sizue/sz25_042.ogg" buf="0"]
Well, from tomorrow, it will be as usual! have understood?[p]
#
……[p]
[stop_bgmovie time="2000"]
[stopse buf="0"]
[stopse buf="3"]
;パートナー桜子変更
[eval exp="f.partner = 0"]

[bg storage="room_night.png" time="1000"]
#
I'm back in the room[p]
Etch with Shizue -san ... It was pleasant ...[p]
I was told that ...[p]
Can you give up ...[p]
No, it's impossible ...[p]
…… [L] …… [L] ……[p]

For the time being, let's sleep today[p]


;静江恋人ステータス
[eval exp="f.sizue_lover = 1.5"]
[eval exp="f.sizue_i = 0"]
[eval exp="f.energy = 0"]
[return]
[endif]
;***********************************************************************************************************************
