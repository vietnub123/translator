;***********************************************************************************************************************
;-莉菜ちゃんデート
;莉菜ちゃんデートエッチ数値
;カラオケ １回目　20　　２回目　40
;遊園地   １回目　50　　２回目　70
;漫画喫茶 １回目　30　　２回目　50
;お祭り   １回目　60　　３回目　80
;映画     １回目  45    ２回目  45



*start
;桜子消去
#
[chara_hide name="sakurako"]
;***********************************************************************************************************************
;-メイド服判別
[if exp="tf.date_select == 8"]
[jump target="*meido"]
[endif]
;***********************************************************************************************************************
;-バイブ判別
[if exp="tf.date_select == 9"]
[jump target="*vibrator"]
[endif]
;***********************************************************************************************************************
;-好感度80以下で断られた
[if exp="f.rina_f < 80"]
;莉菜ランダム会話
;ランダム数値の取り出し
[iscript]
tf.rand = Math.floor( Math.random() * 5)
[endscript]

[if exp="tf.rand == 0"]
#莉菜
[playse storage="rina/rn39_006.ogg" buf="0"]
I'm sorry, I have an errand today[p]
[endif]

[if exp="tf.rand == 1"]
#莉菜
[playse storage="rina/rn39_007.ogg" buf="0"]
I'm sorry I have a promise with my friends today[p]
[endif]

[if exp="tf.rand == 2"]
#莉菜
[playse storage="rina/rn39_008.ogg" buf="0"]
I'm a little busy now, please invite me again[p]
[endif]

[if exp="tf.rand == 3"]
#莉菜
[playse storage="rina/rn39_009.ogg" buf="0"]
Oh, I'm sorry ... your brother, a little today ...[p]
[endif]

[if exp="tf.rand == 4"]
#莉菜
[playse storage="rina/rn39_010.ogg" buf="0"]
I'm going out, so please again[p]
[endif]

#
I was refused[p]
さて、どうしようか
[jump storage="main.ks" target="*choice2"]
[endif]

;***********************************************************************************************************************
;-デートOK

;莉菜ランダム会話
;ランダム数値の取り出し
[iscript]
tf.rand = Math.floor( Math.random() * 5)
[endscript]

[if exp="tf.rand == 0"]
#莉菜
[playse storage="rina/rn39_001.ogg" buf="0"]
OK[p]
[endif]

[if exp="tf.rand == 1"]
#莉菜
[playse storage="rina/rn39_002.ogg" buf="0"]
yes, I'll go[p]
[endif]

[if exp="tf.rand == 2"]
#莉菜
[playse storage="rina/rn39_003.ogg" buf="0"]
I also wanted to go![p]
[endif]

[if exp="tf.rand == 3"]
#莉菜
[playse storage="rina/rn39_004.ogg" buf="0"]
Of course I will go[p]
[endif]

[if exp="tf.rand == 4"]
#莉菜
[playse storage="rina/rn39_005.ogg" buf="0"]
to go! wait a minute![r]
I'll prepare![p]
[endif]

;デートフラグオン（帰宅時に部屋に行くを消すための変数）
[eval exp="tf.date = true"]

;桜子シナリオコール
[call storage="sakurako.ks" target="*sakurako_date"]

;***********************************************************************************************************************
;-場所判別
;■公園
[if exp="tf.date_select == 1"]
[jump target="*park"]
[endif]
;■ゲーセン
[if exp="tf.date_select == 2"]
[jump target="*arcade"]
[endif]
;■カフェ
[if exp="tf.date_select == 5"]
[jump target="*cafe"]
[endif]
;■カラオケ
[if exp="tf.date_select == 3"]
[jump target="*karaoke"]
[endif]
;■漫画喫茶
[if exp="tf.date_select == 4"]
[jump target="*cartooncafe"]
[endif]
;■遊園地
[if exp="tf.date_select == 6"]
[jump target="*amusement"]
[endif]
;■お祭り
[if exp="tf.date_select == 7"]
[jump target="maturi"]
[endif]
;■映画
[if exp="tf.date_select == 10"]
[jump target="*movietheater"]
[endif]
;***********************************************************************************************************************
;-公園デート
*park
#
[bg storage="park_day.png" time="1000"]
[playbgm storage="haretahiha.ogg" loop="true"]
I came to the park![p]
;莉菜ランダム会話
;ランダム数値の取り出し
[iscript]
tf.rand = Math.floor( Math.random() * 5)
[endscript]

[if exp="tf.rand == 0"]
[cm]
[freeimage layer="2" time="0"]
[bg storage="black.png" time="1000"]
[bgmovie storage="mov_40_1.webm"]
#莉菜
[playse storage="rina/rn40_001.ogg" buf="0"]
The weather is nice today and it feels good![p]
#
It feels good in the nature of the park[p]
[endif]

[if exp="tf.rand == 1"]
[cm]
[freeimage layer="2" time="0"]
[bg storage="black.png" time="1000"]
[bgmovie storage="mov_40_1.webm"]
#莉菜
[playse storage="rina/rn40_002.ogg" buf="0"]
It's hot every day![p]
#
It's the hottest today[p]
[endif]

[if exp="tf.rand == 2"]
[cm]
[freeimage layer="2" time="0"]
[bg storage="black.png" time="1000"]
[bgmovie storage="mov_40_2.webm"]
#莉菜
[playse storage="rina/rn40_003.ogg" buf="0"]
I have made a lunch![p]
#
Rina -chan's dishes are delicious.[p]
[endif]

[if exp="tf.rand == 3"]
[cm]
[freeimage layer="2" time="0"]
[bg storage="black.png" time="1000"]
[bgmovie storage="mov_40_2.webm"]
#莉菜
[playse storage="rina/rn40_004.ogg" buf="0"]
When it's so hot every day, I just drink cold things[p]
#
Drinking too much and breaking my stomach[p]
[endif]

[if exp="tf.rand == 4"]
[cm]
[freeimage layer="2" time="0"]
[bg storage="black.png" time="1000"]
[bgmovie storage="mov_40_3.webm"]
#莉菜
[playse storage="rina/rn42_006.ogg" buf="0"]
Are you okay with your brother?[p]
#
If you exercise a little, this is all ...[p]
The view is great[p]
[endif]

;公園帰宅
;莉菜ちゃん好感度UP
[rina_f]
;体力減少
[eval exp="f.hp = f.hp - 20"]
[fadeoutbgm]
[stop_bgmovie time="1000"]
#
I came home[r]
[jump storage="main.ks" target="*night"]

;***********************************************************************************************************************
;-カフェデート
*cafe
#
[bg storage="cafe.png" time="1000"]
[playbgm storage="osyare.ogg" loop="true"]
I came to the cafe[p]

[cm]
[freeimage layer="2" time="0"]
[bg storage="black.png" time="1000"]
[bgmovie storage="mov_45_1.webm"]

;莉菜ランダム会話
;ランダム数値の取り出し
[iscript]
tf.rand = Math.floor( Math.random() * 4)
[endscript]

[if exp="tf.rand == 0"]
#莉菜
[playse storage="rina/rn45_002.ogg" buf="0"]
The cake here is delicious![p]
#
oh!it is delicious![p]
[endif]

[if exp="tf.rand == 1"]
#莉菜
[playse storage="rina/rn45_003.ogg" buf="0"]
It's a secret to your family![p]
#
Riko seems to get angry[p]
[endif]

[if exp="tf.rand == 2"]
#莉菜
[playse storage="rina/rn45_004.ogg" buf="0"]
I will make matcha latte[p]
#
Then, fill the coffee with milk[p]
[endif]

[if exp="tf.rand == 3"]
#莉菜
[playse storage="rina/rn45_005.ogg" buf="0"]
I like Blueberry Milpheuille[p]
#
Hoho, I wonder if I will try it too[p]
[endif]

;カフェ帰宅
;莉菜ちゃん好感度UP
[rina_f]
;体力減少
[eval exp="f.hp = f.hp - 10"]
[stop_bgmovie time="1000"]
[bg storage="cafe.png" time="500"]
[fadeoutbgm]
#
I spent 3000 yen at the cafe[p]
[eval exp="f.money = f.money - 3000"]
[uiwindows]
[playse storage="se/money.ogg" buf="2"]
[kanim name="money" keyframe="money_a" time ="300"]
[stop_kanim]
#
I came home[r]
[jump storage="main.ks" target="*night"]

;***********************************************************************************************************************
;-カラオケデート
*karaoke
#
[cm]
[freeimage layer="2" time="0"]
[bg storage="black.png" time="1000"]
[playbgm storage="ways.ogg" loop="true"]

[if exp="f.rina_h >= 40 && f.karaoke_rina_h == 1"]
[bgmovie storage="mov_41_6.webm"]
[else]
[bgmovie storage="mov_41_7.webm"]
[endif]

Karaoke came[p]
;***********************************************************************************************************************
;莉菜ランダム会話
;ランダム数値の取り出し
[iscript]
tf.rand = Math.floor( Math.random() * 5)
[endscript]

[if exp="tf.rand == 0"]
#莉菜
[playse storage="rina/rn41_001.ogg" buf="0"]
Well, I like it![p]
#
Here is the person who can understand my song![p]
[endif]

[if exp="tf.rand == 1"]
#莉菜
[playse storage="rina/rn41_002.ogg" buf="0"]
What should I sing?[p]
#
Rina's song, fun[p]
[endif]

[if exp="tf.rand == 2"]
#莉菜
[playse storage="rina/rn41_003.ogg" buf="0"]
I'm ashamed, but I'll sing![p]
#
Rina -chan, do your best ~[p]
[endif]

[if exp="tf.rand == 3"]
#莉菜
[playse storage="rina/rn41_004.ogg" buf="0"]
Brother, what do you like?[p]
#
Then, even with coffee ... with milk sugar[p]
[endif]

[if exp="tf.rand == 4"]
#莉菜
[playse storage="rina/rn41_005.ogg" buf="0"]
Your brother, what do you do?[p]
#
By all means extension![p]
[endif]

;***********************************************************************************************************************
;カラオケＨ判別
[if exp="f.rina_h >= 20 && f.karaoke_rina_h == undefined"]
[jump target="*karaoke_h1"]
[endif]
[if exp="f.rina_h >= 40 && f.karaoke_rina_h == 1"]
[jump target="*karaoke_h2"]
[endif]
;***********************************************************************************************************************

;カラオケ帰宅
;莉菜ちゃん好感度UP
[rina_f]
;体力減少
[eval exp="f.hp = f.hp - 15"]
[stop_bgmovie time="1000"]
[bg storage="karaoke.png" time="500"]
[fadeoutbgm]
#
I spent 3000 yen for karaoke[p]
[eval exp="f.money = f.money - 3000"]
[uiwindows]
[playse storage="se/money.ogg" buf="2"]
[kanim name="money" keyframe="money_a" time ="300"]
[stop_kanim]
#
I came home[r]
[jump storage="main.ks" target="*night"]

;***********************************************************************************************************************
;--カラオケＨ1
*karaoke_h1
[stop_bgmovie time="2000"]
[fadeoutbgm]
[bgmovie storage="mov_41_1.webm" time="2000"]
[playse storage="rina/rn41_007.ogg" buf="0" loop="true"]
#
Rina's blowjob feels good![p]
While watching Rina's pussy so close[r]
You can get a blowjob[p]
Rina -chan's butt is soft[p]
It looks like this![p]
Uh ... Yabai[p]

[stop_bgmovie time="1000"]
[stopse buf="0"]
[bg storage="karaoke.png" time="500"]
;カラオケ帰宅
;莉菜ちゃん愛情UP
[rina_i]
;体力減少
[eval exp="f.hp = f.hp - 20"]
[stop_bgmovie time="1000"]
;カラオケフラグ　１
[eval exp="f.karaoke_rina_h = 1"]
;主人公精力減少
[eval exp="f.energy = f.energy - 30"]
;莉菜ちゃんエッチフラグ
[eval exp="f.rina_sex = true"]

#
It's time to go and time has come ...[p]
I spent 3000 yen for karaoke[p]
[eval exp="f.money = f.money - 3000"]
[uiwindows]
[playse storage="se/money.ogg" buf="2"]
[kanim name="money" keyframe="money_a" time ="300"]
[stop_kanim]
#
I came home[r]
[jump storage="main.ks" target="*night"]
;***********************************************************************************************************************
;--カラオケＨ2
*karaoke_h2
[stop_bgmovie time="2000"]
[fadeoutbgm]
[bgmovie storage="mov_41_2.webm" time="2000"]
[playse storage="se/kutyu01.ogg" loop="true" buf="3"]
#莉菜
[playse storage="rina/rn41_008.ogg" buf="0"]
Hmmm, no, it's no good, your brother[r]
Hmmm, this ... in such a place, he, hmm, oh![p]
[playse storage="rina/rn41_009.ogg" buf="0" loop="true"]
#
It's okay because it's pretty noisy[p]
Because the last blowjob was on the way[r]
I wonder if I can feel a lot of comfort this time[p]
You may be excited by thrilling and tension[p]
Rina -chan feels good![p]
Oh ... Rina -chan is going to go[p]
Uh ... oh[p]
[stop_bgmovie time="1000"]
[stopse buf="0"]
[stopse buf="3"]
[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[playse storage="rina/rn41_010.ogg" buf="0" loop="true"]
[movie storage="mov_41_3.webm" skip="true"]
[stop_bgmovie]
[stopse buf="0"]
[stopse buf="3"]
;カラオケ帰宅
[bg storage="karaoke.png" time="500"]
;莉菜ちゃん愛情度UP
[rina_i]
;体力減少
[eval exp="f.hp = f.hp - 20"]
;カラオケフラグ　2
;[eval exp="f.karaoke_rina_h = 1"]
[iscript]
delete f.karaoke_rina_h;
[endscript]
;主人公精力減少
[eval exp="f.energy = f.energy - 30"]
;莉菜ちゃんエッチフラグ
[eval exp="f.rina_sex = true"]

[menuwindows]
#
I spent 3000 yen for karaoke[p]
[eval exp="f.money = f.money - 3000"]
[uiwindows]
[playse storage="se/money.ogg" buf="2"]
[kanim name="money" keyframe="money_a" time ="300"]
[stop_kanim]
#
I came home[r]
[jump storage="main.ks" target="*night"]

;***********************************************************************************************************************
;-漫画喫茶
*cartooncafe
#
[cm]
[freeimage layer="2" time="0"]
[bg storage="black.png" time="1000"]

[playbgm storage="sizukana.ogg" loop="true"]

[if exp="f.rina_h >= 50 && f.cartooncafe_rina_h == 1"]
[bgmovie storage="mov_43_7.webm"]
[else]
[bgmovie storage="mov_43_8.webm"]
[endif]
I came to a manga cafe[p]
;***********************************************************************************************************************
;莉菜ランダム会話
;ランダム数値の取り出し
[iscript]
tf.rand = Math.floor( Math.random() * 4)
[endscript]

[if exp="tf.rand == 0"]
#莉菜
[playse storage="rina/rn43_001.ogg" buf="0"]
Do you recommend it?[p]
#
Um ...[r]
(I can't help but advance a naughty manga ...)[p]
[endif]

[if exp="tf.rand == 1"]
#莉菜
[playse storage="rina/rn43_002.ogg" buf="0"]
Your brother, what do you drink?I'll bring you[p]
#
Thank you Rina -chan! Then, with coffee milk sugar[p]
[endif]

[if exp="tf.rand == 2"]
#莉菜
[playse storage="rina/rn43_003.ogg" buf="0"]
I read a girl manga![p]
#
Then I'm a youth manga[p]
[endif]

[if exp="tf.rand == 3"]
#莉菜
[playse storage="rina/rn43_004.ogg" buf="0"]
My brother, I'm reading that it looks like an etch![p]
#
It's different!It looks like it's etch, and it's actually a naughty manga[p]
[endif]

;***********************************************************************************************************************
;漫画喫茶Ｈ判別
[if exp="f.rina_h >= 30 && f.cartooncafe_rina_h == undefined"]
[jump target="*cartooncafe_h1"]
[endif]

[if exp="f.rina_h >= 50 && f.cartooncafe_rina_h == 1"]
[jump target="*cartooncafe_h2"]
[endif]

;***********************************************************************************************************************

;漫画喫茶帰宅
;莉菜ちゃん好感度UP
[rina_f]
;体力減少
[eval exp="f.hp = f.hp - 15"]
[stop_bgmovie time="1000"]
[bg storage="cartooncafe.png" time="500"]
[fadeoutbgm]
#
I spent 3000 yen at a manga cafe[p]
[eval exp="f.money = f.money - 3000"]
[uiwindows]
[playse storage="se/money.ogg" buf="2"]
[kanim name="money" keyframe="money_a" time ="300"]
[stop_kanim]
#
I came home[r]
[jump storage="main.ks" target="*night"]

;***********************************************************************************************************************
;--漫画喫茶Ｈ1
*cartooncafe_h1
[stop_bgmovie time="2000"]
[fadeoutbgm]
[bgmovie storage="mov_43_3.webm" time="2000"]
[playse storage="se/kutyu01.ogg" loop="true" buf="3"]
[playse storage="rina/rn43_007.ogg" buf="0" loop="true"]

#
I have to make sure I can't hear it around[p]
Rina -chan is also trying not to speak out[r]
Double your excitement[p]
Huh, huh, it feels good[p]
Rina -chan, let's go![p]
Ah! UU[p]

[stop_bgmovie time="1000"]
[stopse buf="0"]
[stopse buf="3"]
[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[movie storage="mov_43_4.webm" skip="true"]
[bg storage="cartooncafe.png" time="1000"]
;漫画喫茶帰宅
;莉菜ちゃん愛情UP
[rina_i]
;体力減少
[eval exp="f.hp = f.hp - 20"]


;カラオケフラグ　１
[eval exp="f.karaoke_rina_h = 1"]
;主人公精力減少
[eval exp="f.energy = f.energy - 30"]
;莉菜ちゃんエッチフラグ
[eval exp="f.rina_sex = true"]

[stop_bgmovie time="1000"]
;漫画喫茶フラグ　１
[eval exp="f.cartooncafe_rina_h = 1"]
[menuwindows]
#
I spent 3000 yen at a manga cafe[p]
[eval exp="f.money = f.money - 3000"]
[uiwindows]
[playse storage="se/money.ogg" buf="2"]
[kanim name="money" keyframe="money_a" time ="300"]
[stop_kanim]
#
I came home[r]
[jump storage="main.ks" target="*night"]
;***********************************************************************************************************************
;--漫画喫茶Ｈ2
*cartooncafe_h2
[stop_bgmovie time="2000"]
[fadeoutbgm]
[bgmovie storage="mov_43_1.webm"]
[playse storage="se/kutyu01.ogg" loop="true" buf="3"]
[playse storage="rina/rn43_006.ogg" buf="0" loop="true"]

#
Rina -chan, if you don't be quiet, you can hear it![p]
This thrill is excited[p]
Rina -chan, Rina -chan![p]
Oh, Rina -chan!I'm going![p]
I'll put a lot on Rina's pussy![p]
Oh, uu ...[p]
[stop_bgmovie time="1000"]
[stopse buf="0"]
[stopse buf="3"]
[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[movie storage="mov_43_2.webm" skip="true"]
[bg storage="cartooncafe.png" time="1000"]
;漫画喫茶帰宅
;莉菜ちゃん愛情UP
[rina_i]
;体力減少
[eval exp="f.hp = f.hp - 20"]
[stop_bgmovie time="1000"]
;漫画喫茶フラグ　2
;[eval exp="f.cartooncafe_rina_h = 1"]
[iscript]
delete f.cartooncafe_rina_h;
[endscript]
;主人公精力減少
[eval exp="f.energy = f.energy - 30"]
;莉菜ちゃんエッチフラグ
[eval exp="f.rina_sex = true"]

[menuwindows]
#
I spent 3000 yen at a manga cafe[p]
[eval exp="f.money = f.money - 3000"]
[uiwindows]
[playse storage="se/money.ogg" buf="2"]
[kanim name="money" keyframe="money_a" time ="300"]
[stop_kanim]
#
I came home[r]
[jump storage="main.ks" target="*night"]

;***********************************************************************************************************************
;-遊園地
*amusement
#
[cm]
[freeimage layer="2" time="0"]
[bg storage="black.png" time="1000"]
[bgmovie storage="mov_42_9.webm"]
[playbgm storage="yuuenti.ogg" loop="true"]
I came to the amusement park[p]

;***********************************************************************************************************************
;莉菜ランダム会話
;ランダム数値の取り出し
[iscript]
tf.rand = Math.floor( Math.random() * 4)
[endscript]

[if exp="tf.rand == 0"]
#
What should I ride ...[p]
Okay![p]
Rina -chan who is scared after entering the haunted house[r]
Let's escort cool[p]
[stop_bgmovie time="1000"]
[bg storage="img_42_11.png" time="500"]
#莉菜
[playse storage="rina/rn42_002.ogg" buf="0"]
Kya!brother!No, no!I can't do it![p]
#
But it's okay Rina -chan!I'm on it![r]
(Yabe ~ !! I'm scared)[p]
[bg storage="black.png" time="2000"]
[endif]

[if exp="tf.rand == 1"]
[stop_bgmovie time="1000"]
[bgmovie storage="mov_42_10.webm" time="1000"]
#莉菜
[playse storage="rina/rn42_001.ogg" buf="0"]
brother! Hey Hey![r]
Next, let's ride![p]
#
I really feel uncomfortable, but I have to be cool in front of Rina![p]
[endif]

[if exp="tf.rand == 2"]
#莉菜
[playse storage="rina/rn42_004.ogg" buf="0"]
You have to buy souvenirs![p]
#
Riko looks angry![p]
[endif]

[if exp="tf.rand == 3"]
#莉菜
[playse storage="rina/rn42_005.ogg" buf="0"]
I love roller coasters ♪[p]
#
Uh, yeah ... that's right![r]
(I'm not good at it ...)[p]
[endif]

;***********************************************************************************************************************
;遊園地Ｈ判別
[if exp="f.rina_h >= 50 && f.amusement_rina_h == undefined"]
[jump target="*amusement_h1"]
[endif]
[if exp="f.rina_h >= 70 && f.amusement_rina_h == 1"]
[jump target="*amusement_h2"]
[endif]
;***********************************************************************************************************************
;遊園地帰宅
;莉菜ちゃん好感度UP
[rina_f]
;体力減少
[eval exp="f.hp = f.hp - 15"]
[stop_bgmovie time="1000"]
[bg storage="amusement.png" time="500"]
[fadeoutbgm]
#
Satisfied with playing a lot in the amusement park with Rina[p]
I spent 6000 yen[p]
[eval exp="f.money = f.money - 6000"]
[uiwindows]
[playse storage="se/money.ogg" buf="2"]
[kanim name="money" keyframe="money_a" time ="300"]
[stop_kanim]
#
I came home[r]
[jump storage="main.ks" target="*night"]
;***********************************************************************************************************************
;--遊園地Ｈ1
*amusement_h1
[stop_bgmovie time="2000"]
[fadeoutbgm]
[bgmovie storage="mov_42_1.webm" time="2000"]
#莉菜
[playse storage="rina/rn42_007.ogg" buf="0"]
Is your brother comfortable?[p]
#
OK!Rina -chan and Rina -chan's boobs are big, so it's very good![p]
#莉菜
[playse storage="rina/rn42_008.ogg" buf="0"]
I can't do it well, but I want to feel a lot of my brother[p]
#
Oh, Rina -chan!I'm going[p]
[stop_bgmovie time="1000"]
[cm]
[clearfix]
[stopse buf="0"]
[stopse buf="3"]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[movie storage="mov_42_2.webm" skip="true"]
;遊園地帰宅
[bg storage="amusement.png" time="2000"]
;莉菜ちゃん愛情度UP
[rina_i]
;体力減少
[eval exp="f.hp = f.hp - 20"]
;遊園地フラグ　１
[eval exp="f.amusement_rina_h = 1"]
;主人公精力減少
[eval exp="f.energy = f.energy - 30"]
;莉菜ちゃんエッチフラグ
[eval exp="f.rina_sex = true"]

[menuwindows]
#
No way Rina -chan will fuck[p]
Feel good and very satisfied[p]
I spent 6000 yen in an amusement park[p]
[eval exp="f.money = f.money - 6000"]
[uiwindows]
[playse storage="se/money.ogg" buf="2"]
[kanim name="money" keyframe="money_a" time ="300"]
[stop_kanim]
#
I came home[r]
[jump storage="main.ks" target="*night"]

;***********************************************************************************************************************
;--遊園地Ｈ２
*amusement_h2
[stop_bgmovie time="2000"]
[fadeoutbgm]

[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[playse storage="se/kutyu01.ogg" loop="true" buf="3"]
[playse storage="rina/rn42_011.ogg" buf="0" loop="true"]
[bgloop mov="mov_42_3.webm"  ti="2000"]
[stopse buf="0"]
[stopse buf="3"]
[movie storage="mov_42_4.webm" skip="true"]

;遊園地帰宅
[bg storage="amusement.png" time="2000"]
;莉菜ちゃん愛情度UP
[rina_i]
;体力減少
[eval exp="f.hp = f.hp - 20"]
[stop_bgmovie time="1000"]
;遊園地フラグ　１
;[eval exp="f.amusement_rina_h = 1"]
[iscript]
delete f.amusement_rina_h;
[endscript]
;主人公精力減少
[eval exp="f.energy = f.energy - 30"]
;莉菜ちゃんエッチフラグ
[eval exp="f.rina_sex = true"]

[menuwindows]
#
Play a lot in the amusement park with Rina[r]
I was very happy because I did that on the ferris wheel[p]
I spent 6000 yen[p]
[eval exp="f.money = f.money - 6000"]
[uiwindows]
[playse storage="se/money.ogg" buf="2"]
[kanim name="money" keyframe="money_a" time ="300"]
[stop_kanim]
#
I came home[r]
[jump storage="main.ks" target="*night"]

;***********************************************************************************************************************
;-お祭り
*maturi
#
[cm]
[freeimage layer="2" time="0"]
[bg storage="black.png" time="1000"]
[bgmovie storage="mov_46_7.webm"]
[playbgm storage="sitamati.ogg" loop="true"]
I came to the festival[p]

;***********************************************************************************************************************
;莉菜ランダム会話
;ランダム数値の取り出し
[iscript]
tf.rand = Math.floor( Math.random() * 4)
[endscript]

[if exp="tf.rand == 0"]
#莉菜
[playse storage="rina/rn46_001.ogg" buf="0"]
Your brother, do you look good?yukata[p]
#
I think Rina is cute no matter what[p]
[endif]

[if exp="tf.rand == 1"]
#莉菜
[playse storage="rina/rn46_002.ogg" buf="0"]
Let's do yo -yo fishing![p]
#
Okay, I'll do my best![p]
[endif]

[if exp="tf.rand == 2"]
#莉菜
[playse storage="rina/rn46_004.ogg" buf="0"]
I'm looking forward to the fireworks display[p]
#
No way, Rina -chan can see fireworks[p]
[endif]

[if exp="tf.rand == 3"]
#莉菜
[playse storage="rina/rn46_005.ogg" buf="0"]
It's hot, let's eat shaved ice[p]
#
It's hot every day[p]
[endif]

;***********************************************************************************************************************
;お祭りＨ判別
[if exp="f.rina_h >= 60 && f.maturi_rina_h == undefined"]
[jump target="*maturi_h1"]
[endif]
[if exp="f.rina_h >= 80 && f.maturi_rina_h == 1"]
[jump target="*maturi_h2"]
[endif]
;***********************************************************************************************************************

;お祭り帰宅
;莉菜ちゃん好感度UP
[rina_f]
;体力減少
[eval exp="f.hp = f.hp - 15"]
[stop_bgmovie time="1000"]
[bg storage="maturi.png" time="500"]
[fadeoutbgm]
#
I am satisfied with playing a lot at the festival with Rina[p]
I spent 5000 yen[p]
[eval exp="f.money = f.money - 5000"]
[uiwindows]
[playse storage="se/money.ogg" buf="2"]
[kanim name="money" keyframe="money_a" time ="300"]
[stop_kanim]
#
I came home[r]
[jump storage="main.ks" target="*night"]

;***********************************************************************************************************************
;--お祭りＨ1
*maturi_h1
[stop_bgmovie time="1000"]
[fadeoutbgm]
[playbgm storage="night.ogg" loop="true"]
[bgmovie storage="mov_46_8.webm"]
#
Fireworks were beautiful[p]
#莉菜
[playse storage="rina/rn46_006.ogg" buf="0"]
Yes, it was very beautiful[p]
#
But Rina -chan is more beautiful[p]
#莉菜
[playse storage="rina/rn46_007.ogg" buf="0"]
What are you saying, your brother![p]
#
Rina's yukata is cute and seems to be somehow managed[p]
#莉菜
[playse storage="rina/rn46_008.ogg" buf="0"]
Your brother, no good!In such a place![p]
#
No one is around[p]
#莉菜
[playse storage="rina/rn46_009.ogg" buf="0"]
……brother!Did you come to a place where there are no people on purpose?[p]
#
please!Rina -chan.It's already like this[p]
[fadeoutbgm]
[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[stop_bgmovie time="1000"]
[bgloop mov="mov_46_1.webm"  ti="1000"]
[stopse buf="0"]
[movie storage="mov_46_2.webm" skip="true"]

;お祭り帰宅
[bg storage="maturi_night.png" time="500"]
;莉菜ちゃん愛情度UP
[rina_i]
;体力減少
[eval exp="f.hp = f.hp - 20"]
[stop_bgmovie time="1000"]
;お祭りフラグ　１
[eval exp="f.maturi_rina_h = 1"]
;主人公精力減少
[eval exp="f.energy = f.energy - 30"]
;莉菜ちゃんエッチフラグ
[eval exp="f.rina_sex = true"]

[menuwindows]
#
Play a lot at the festival with Rina[r]
I was very satisfied because I did a blowjob in a yukata[p]
I spent 5000 yen[p]
[eval exp="f.money = f.money - 5000"]
[uiwindows]
[playse storage="se/money.ogg" buf="2"]
[kanim name="money" keyframe="money_a" time ="300"]
[stop_kanim]
#
I came home[r]
[jump storage="main.ks" target="*night"]

;***********************************************************************************************************************
;--お祭りＨ２
*maturi_h2
[stop_bgmovie time="1000"]
[fadeoutbgm]
[playbgm storage="night.ogg" loop="true"]
[bgmovie storage="mov_46_8.webm"]
#
It was fun, was not it!Festival[p]
#莉菜
…………[p]
#
yeah?What happened, Rina -chan[p]
#莉菜
[playse storage="rina/rn46_014.ogg" buf="0"]
My brother is coming to an unpleasant place again![p]
#
Because it can't be helped![p]
#莉菜
[playse storage="rina/rn46_015.ogg" buf="0"]
What is it?[p]
#
Rina's yukata is too cute, so I think this is because of Rina -chan![p]
#莉菜
[playse storage="rina/rn46_016.ogg" buf="0"]
What kind of theory is it![p]
#
Because of Rina -chan, I have to have Rina take responsibility![p]
#莉菜
[playse storage="rina/rn46_017.ogg" buf="0"]
Your brother only has a naughty thing![p]
#
Rina -chan is too cute![p]
#莉菜
[playse storage="rina/rn46_018.ogg" buf="0"]
Already ... your brother ... idiot ...[p]
[fadeoutbgm]
[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[stop_bgmovie]
[playse storage="se/kutyu01.ogg" loop="true" buf="3"]
[playse storage="rina/rn46_019.ogg" buf="0" loop="true"]
[bgloop mov="mov_46_3.webm"  ti="1000"]
[stopse buf="0"]
[stopse buf="3"]
[movie storage="mov_46_4.webm" skip="true"]

;お祭り帰宅
[bg storage="maturi_night.png" time="500"]
;莉菜ちゃん愛情度UP
[rina_i]
;体力減少
[eval exp="f.hp = f.hp - 20"]
[stop_bgmovie time="1000"]
;お祭りフラグ　１
;[eval exp="f.maturi_rina_h = 1"]
[iscript]
delete f.maturi_rina_h;
[endscript]
;主人公精力減少
[eval exp="f.energy = f.energy - 30"]
;莉菜ちゃんエッチフラグ
[eval exp="f.rina_sex = true"]

[menuwindows]
#
I played a lot at the festival with Rina[r]
I'm very excited to etch in a yukata[p]
I spent 5000 yen today[p]
[eval exp="f.money = f.money - 5000"]
[uiwindows]
[playse storage="se/money.ogg" buf="2"]
[kanim name="money" keyframe="money_a" time ="300"]
[stop_kanim]
#
I came home[r]
[jump storage="main.ks" target="*night"]
;***********************************************************************************************************************
;-メイド服
*meido


;エッチ度判定
[if exp="f.rina_h < 50"]
#
It seems that you still don't wear it ...[p]
さて、どうしようか
[jump storage="main.ks" target="*choice2"]
[endif]


#
[cm]
[freeimage layer="2" time="0"]
[bg storage="black.png" time="1000"]
[bgmovie storage="mov_66_10.webm"]
#莉菜
[playse storage="rina/rn66_009.ogg"]
Your brother, what is this?[p]
I want Rina to wear it![p]
#莉菜
[playse storage="rina/rn66_010.ogg"]
yes!Are you to me?[p]
#
please!I want to see Rina's maid clothes[p]
#莉菜
[playse storage="rina/rn66_011.ogg"]
Yeah! That's no good!That's embarrassing ...[p]
Rina -chan will definitely look good!Everything looks good because it's cute![p]
#莉菜
[playse storage="rina/rn66_012.ogg"]
Your brother, you're trying to do this and do naughty things![p]
#
Well, it's different!Just see it!Just see it![p]
[stop_bgmovie]
[bgmovie storage="mov_66_11.webm"]
#莉菜
[playse storage="rina/rn66_013.ogg"]
Something suspicious, but I just look at it anyway!Absolutely![p]
#
Just look ... just see ...[p]
#莉菜
[playse storage="rina/rn66_014.ogg"]
It is still!Please go over there![p]
[stop_bgmovie]
[bgmovie storage="mov_66_12.webm"]
#莉菜
[playse storage="rina/rn66_015.ogg"]
How about ...?Do you look good?[p]
#
Rina -chan!Okay, good, it's cute, so it looks good![p]
Next, lift the skirt like this[p]
#莉菜
[playse storage="rina/rn66_018.ogg"]
brother!You just said it!I'm trying to do something naughty[p]
#
No, Rina -chan just looks!It's okay because I'm just watching![p]
#莉菜
[playse storage="rina/rn66_019.ogg"]
What is OK![p]
#
I just wanted to see it!Keep your promise properly![r]
yes!I'm just watching![p]
#莉菜
[playse storage="rina/rn66_020.ogg"]
Yeah, my brother is just that kind of thing as soon as she is careless ... it's just a little![p]
[stop_bgmovie]
[movie storage="mov_66_13.webm" skip="true"]
[bgmovie storage="mov_66_14.webm"]
#莉菜
[playse storage="rina/rn66_021.ogg"]
Your brother ... If you can see it so close ... it's embarrassing ...[p]
#
…………[p]
#莉菜
[playse storage="rina/rn66_027.ogg"]
Oh, your brother! What are you doing![p]
#
picture!Because if you wear pants, wouldn't it look good?[r]
All right!Just look, just look[p]
#莉菜
[playse storage="rina/rn66_028.ogg"]
Already, your brother ~ ...[p]
[stop_bgmovie]
[bgmovie storage="mov_66_17.webm"]
#
I'm just watching ... I'm just watching ... Hey, are you really looking at it?Even if you touch it a little ...[p]
#莉菜
[playse storage="rina/rn66_022.ogg"]
Just look![p]
#
I'm just watching ... Uh ... I'm just watching ... Ugu ...[p]
#莉菜
[playse storage="rina/rn66_023.ogg"]
already!Why are you crying![p]
#
It's okay ... Ugu ... I'm just watching ...[p]
#莉菜
[playse storage="rina/rn66_024.ogg"]
.......... If it's a little ... it's good ... even if you touch it ...[p]
#
Really! Hooray!Then, immediately ...[p]
#莉菜
[playse storage="rina/rn66_025.ogg"]
That's just a little![p]
[stop_bgmovie]
[bgmovie storage="mov_66_20.webm"]
Rina -chan's cute crack ...[p]
#莉菜
[playse storage="rina/rn66_029.ogg"]
So ... don't look at Girodillo ... it's embarrassing ...[p]
#
Rina -chan, see more![p]
#莉菜
[playse storage="rina/rn66_030.ogg"]
No, no!Such a place!I'm ashamed of my brother![p]
#
But it's so cute pink.I have to show you better[p]
#莉菜
[playse storage="rina/rn66_031.ogg"]
brother!Don't spread that much![p]
#
Rina -chan, it's hard!I'm saying I want to touch Rina's pussy[p]
#莉菜
[playse storage="rina/rn66_032.ogg"]
brother! What are you saying![p]
Rina's pussy also wants to touch Ochinchin![p]
#莉菜
[playse storage="rina/rn66_033.ogg"]
ancestor!I haven't said that![p]
#
I'm saying!Because!I'm so excited about it![p]
#莉菜
[playse storage="rina/rn66_034.ogg"]
Oh, hmm![p]
#莉菜
[playse storage="rina/rn66_036.ogg"]
My brother ... Hmm, already ... huh ...[p]
#
It's okay Rina -chan, it's just a little![p]
#莉菜
[playse storage="rina/rn66_037.ogg"]
Your brother ...[p]
#
Just a little, a little[p]
#莉菜
[playse storage="rina/rn66_038.ogg"]
Your brother ... please ... please insert ...[p]
#
What should I do ... it's just a little ...[p]
#莉菜
[playse storage="rina/rn66_039.ogg"]
Your brother ... don't mess around ...[p]
#
Then, Rina -chan can insert it![p]
[stop_bgmovie]
[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false

[playse storage="rina/rn66_040.ogg" loop="true"]
[playse storage="se/kutyu01.ogg" loop="true" buf="3"]
[bgloop mov="mov_66_18.webm"  ti="2000"]
[stopse buf="0"]
[stopse buf="3"]
[movie storage="mov_66_19.webm" skip="true"]

;帰宅
;莉菜ちゃん愛情度UP
[rina_i]
;体力減少
[eval exp="f.hp = f.hp - 20"]
[stop_bgmovie time="1000"]
;メイドフラグ　１
[eval exp="f.meido_rina_h = 1"]
;主人公精力減少
[eval exp="f.energy = f.energy - 30"]
;莉菜ちゃんエッチフラグ
[eval exp="f.rina_sex = true"]

;デートフラグオン（帰宅時に部屋に行くを消すための変数）
[eval exp="tf.date = true"]
[menuwindows]
#
Rina's maid clothes were cute[p]
#
I'm back in the room[r]
[jump storage="main.ks" target="*night"]

;***********************************************************************************************************************
;-バイブ
*vibrator

;エッチ度判定
[if exp="f.rina_h < 80"]
#
As expected, it would be impossible ...[p]
さて、どうしようか
[jump storage="main.ks" target="*choice2"]
[endif]

#
[cm]
[clearfix]
[freeimage layer="2" time="0"]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[bg storage="black.png" time="1000"]

[bgloop mov="mov_85_1.webm"  ti="2000"]
[movie storage="mov_85_3.webm" skip="true"]
[bgloop mov="mov_85_4.webm"  ti="2000"]

;帰宅
;莉菜ちゃん愛情度UP
[rina_i]
;体力減少
[eval exp="f.hp = f.hp - 20"]
[stop_bgmovie time="1000"]
;バイブフラグ　１
[eval exp="f.vibrator_rina_h = 1"]
;デートフラグオン（帰宅時に部屋に行くを消すための変数）
[eval exp="tf.date = true"]
;莉菜ちゃんエッチフラグ
[eval exp="f.rina_sex = true"]

[menuwindows]
#
Rina -chan seemed to feel good[p]
#
I'm back in the room[r]
[jump storage="main.ks" target="*night"]


;***********************************************************************************************************************
;-映画館デート
*movietheater
#
[cm]
[freeimage layer="2" time="0"]
[bg storage="black.png" time="1000"]
[if exp="f.movietheater_rina_h == undefined"]
[bgmovie storage="mov_44_1.webm"]
[else]
[bgmovie storage="mov_44_14.webm"]
[jump target="*movietheater_h2"]
[endif]

[playbgm storage="asobiniikuhi.ogg" loop="true"]

I came to the movie theater[p]

何の映画を見ようかな?
[glink  color="pink" size="20"  x="200"  width="200"  y="150"  text="アクション"  target="*movie_choice" exp="tf.movie_choice = 1"]
[glink  color="pink" size="20"  x="200"  width="200"  y="220"  text="恋愛"  target="*movie_choice" exp="tf.movie_choice = 2"]
[glink  color="pink" size="20"  x="200"  width="200"  y="290"  text="ドキュメンタリー"  target="*movie_choice" exp="tf.movie_choice = 3"]
[glink  color="pink" size="20"  x="200"  width="200"  y="360"  text="サスペンス"  target="*movie_choice" exp="tf.movie_choice = 4"]
[glink  color="pink" size="20"  x="200"  width="200"  y="430"  text="ホラー"  target="*movie_choice" exp="tf.movie_choice = 5"]
[s]
*movie_choice
[stop_bgmovie]
;***********************************************************************************************************************
;映画館Ｈ判別
[if exp="f.rina_h >= 45 && f.movietheater_rina_h == undefined && tf.movie_choice == 4"]
[jump target="*movietheater_h1"]
[endif]
;***********************************************************************************************************************
[if exp="tf.movie_choice == 1"]
[bgmovie storage="mov_44_2_5.webm" time = 2000]
Watching an action movie[p]
Rina is also looking seriously[p]
[endif]
[if exp="tf.movie_choice == 2"]
[bgmovie storage="mov_44_2_3.webm" time = 2000]
Love movies ...[p]
I like Rina -chan[p]
[endif]
[if exp="tf.movie_choice == 3"]
[bgmovie storage="mov_44_2_1.webm" time = 2000]
Documentary is fun[p]
How about Rina -chan?[p]
[endif]
[if exp="tf.movie_choice == 4"]
[bgmovie storage="mov_44_2_2.webm" time = 2000]
Suspense[p]
Rina -chan is also seriously looking at it[p]
[endif]
[if exp="tf.movie_choice == 5"]
[bgmovie storage="mov_44_2_4.webm" time = 2000]
The horror[p]
Rina who is scared is cute![p]
[endif]
;***********************************************************************************************************************
*movietheater_return
;映画帰宅
;莉菜ちゃん好感度UP
[rina_f]
;体力減少
[eval exp="f.hp = f.hp - 15"]
;デートフラグオン（帰宅時に部屋に行くを消すための変数）
[eval exp="tf.date = true"]

[stop_bgmovie time="1000"]
[bg storage="movietheater/img_34_11_1.png" time="500"]
[fadeoutbgm]
[stopse]
#
I spent 3000 yen in the movie[p]
[eval exp="f.money = f.money - 3000"]
[uiwindows]
[playse storage="se/money.ogg" buf="2"]
[kanim name="money" keyframe="money_a" time ="300"]
[stop_kanim]
#
I came home[r]
[jump storage="main.ks" target="*night"]
;***********************************************************************************************************************
;--映画館Ｈ1
*movietheater_h1
[stop_bgmovie]
[fadeoutbgm]
[bgmovie storage="mov_44_4.webm" time = 2000]
#
Isn't this movie popular?[p]
#莉菜
[playse storage="rina/rn44_001.ogg" buf="0"]
There is no one other than us[p]
#
If nobody is there, Rina -chan, don't come here[r]
On the knee[p]
#莉菜
[playse storage="rina/rn44_002.ogg" buf="0"]
Well, ... yes ...[p]
#
[cm]
[clearfix]
[freeimage layer="2" time="0"]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[stop_bgmovie]
[movie storage="mov_44_5.webm" skip="true"]
[menuwindows]
[bg storage="movietheater/img_44_16.png" time="1000"]
(Oh! It was a joke, but ... he came!)[p]
(No! The movie is boring at all, yes ... here)[p]
#莉菜
[playse storage="rina/rn44_003.ogg" buf="0"]
Hi![p]
;[freeimage layer="2" time="0"]
[bgmovie storage="mov_44_7.webm" time = 2000]
#莉菜
[playse storage="rina/rn44_004.ogg" buf="0"]
oh! brother!Oh ... no, no![p]
#
Rina -chan can watch the movie!Don't worry about this[p]
#莉菜
[playse storage="rina/rn44_005.ogg" buf="0"]
already!Your brother ... because it's just a naughty thing[p]
#
I can't help Rina -chan's boobs too big[p]
#莉菜
[playse storage="rina/rn44_006.ogg" buf="0"]
There is no help for it![p]
#
[stop_bgmovie]
[bg storage="movietheater/img_44_16.png" time="1000"]
The movie is over!I wanted to rub more[p]
#莉菜
[playse storage="rina/rn44_010.ogg" buf="0"]
Older -san's idiot ... Echi![p]
;映画フラグ
[eval exp="f.movietheater_rina_h = 1"]
;莉菜ちゃんエッチフラグ
[eval exp="f.rina_sex = true"]

[jump target="*movietheater_return"]
;***********************************************************************************************************************
;--映画館Ｈ2
*movietheater_h2
I came to the movie theater[p]
[stop_bgmovie time="1000"]
[fadeoutbgm]
[bgmovie storage="mov_44_15.webm" time = 2000]
#
I came to a boring movie again[p]
#莉菜
[playse storage="rina/rn44_011.ogg" buf="0"]
No way!On purpose, a boring movie ...[p]
#
No, no!I happened to happen[r]
But how about it on your knees again?[p]
#莉菜
[playse storage="rina/rn44_012.ogg" buf="0"]
already!This time, my chest is prohibited![p]
#
Okay, with boobs prohibited[p]
[stop_bgmovie time="1000"]
[bg storage="movietheater/img_44_17.png" time="1000"]
………[p]
Movies are boring ... but boobs are prohibited ...[r]
Oh, yeah ... I guess it's prohibited except for boobs[p]
#莉菜
[playse storage="rina/rn44_013.ogg" buf="0"]
Hi![p]
[bgmovie storage="mov_44_13.webm" time = 2000]
#莉菜
[playse storage="rina/rn44_014.ogg" buf="0"]
brother!You said banned![p]
I don't touch my boobs!Watch the movie without worrying about it[p]
#莉菜
[playse storage="rina/rn44_015.ogg" buf="0"]
I am concerned about it!Hmm ...[p]
Rina's here is a lot wet!Do you feel good?[p]
#莉菜
[playse storage="rina/rn44_017.ogg" buf="0"]
Already ... your brother ...[p]
[stop_bgmovie time="1000"]
[bg storage="movietheater/img_44_17.png" time="1000"]
#
I didn't see it at all, and the movie was over[r]
I wanted to see Rina -chan more comfortable[p]
#莉菜
[playse storage="rina/rn44_018.ogg" buf="0"]
Already ... I don't watch a movie with my brother![p]
#
;映画フラグ
[iscript]
delete f.movietheater_rina_h;
[endscript]
;莉菜ちゃんエッチフラグ
[eval exp="f.rina_sex = true"]

[jump target="*movietheater_return"]
