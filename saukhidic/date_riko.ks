;***********************************************************************************************************************
;-莉子ちゃんデート
;莉子ちゃんデートエッチ数値
;カラオケ  １回目　20　　２回目　40
;遊園地    １回目　50　　２回目　70
;漫画喫茶  １回目　30　　２回目　90
;お祭り    １回目　60　　３回目　80
;映画　　  １回目　65
;公園      １回目  95
;水着      １回目  50
;バイブ    １回目  80
;体操着    １回目  70
;ランドセル１回目  70

*start
;桜子消去
#
[chara_hide name="sakurako"]
;***********************************************************************************************************************
;-スクール水着判別
[if exp="tf.date_select == 8"]
[jump target="*mizugi"]
[endif]
;***********************************************************************************************************************
;-バイブ判別
[if exp="tf.date_select == 9"]
[jump target="*vibrator"]
[endif]
;***********************************************************************************************************************
;-体操着
[if exp="tf.date_select == 12"]
[jump target="*training_wear"]
[endif]
;***********************************************************************************************************************
;-ランドセル
[if exp="tf.date_select == 13"]
[jump target="*school_bag"]
[endif]
;***********************************************************************************************************************
;-好感度80以下で断られた
[if exp="f.riko_f < 80"]
;莉子ランダム会話
;ランダム数値の取り出し
[iscript]
tf.rand = Math.floor( Math.random() * 5)
[endscript]

[if exp="tf.rand == 0"]
#莉子
[playse storage="riko/rk28_006.ogg" buf="0"]
Eh!It ’s okay because it’ s troublesome[r]
Stop it![p]
[endif]

[if exp="tf.rand == 1"]
#莉子
[playse storage="riko/rk28_007.ogg" buf="0"]
See you next time[p]
[endif]

[if exp="tf.rand == 2"]
#莉子
[playse storage="riko/rk28_008.ogg" buf="0"]
Because I play with Mari![p]
[endif]

[if exp="tf.rand == 3"]
#莉子
[playse storage="riko/rk28_009.ogg" buf="0"]
I'm busy now![p]
[endif]

[if exp="tf.rand == 4"]
#莉子
[playse storage="riko/rk28_010.ogg" buf="0"]
Lolicon refusal![p]
[endif]

#
I was refused[p]
さて、どうしようか
[jump storage="main.ks" target="*choice2"]

[endif]
;***********************************************************************************************************************
;-デートOK

;莉子ランダム会話
;ランダム数値の取り出し
[iscript]
tf.rand = Math.floor( Math.random() * 5)
[endscript]

[if exp="tf.rand == 0"]
#莉子
[playse storage="riko/rk28_001.ogg" buf="0"]
Okay, I'll go[p]
[endif]

[if exp="tf.rand == 1"]
#莉子
[playse storage="riko/rk28_002.ogg" buf="0"]
I can't help it, so I'll go out[p]
[endif]

[if exp="tf.rand == 2"]
#莉子
[playse storage="riko/rk28_003.ogg" buf="0"]
It's okay because I'm free[p]
[endif]

[if exp="tf.rand == 3"]
#莉子
[playse storage="riko/rk28_004.ogg" buf="0"]
Yeah, go![p]
[endif]

[if exp="tf.rand == 4"]
#莉子
[playse storage="riko/rk28_005.ogg" buf="0"]
Oh, I want to go![p]
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
[jump target="*maturi"]
[endif]
;■映画
[if exp="tf.date_select == 10"]
[jump target="*movietheater"]
[endif]
;***********************************************************************************************************************
;-公園デート
*park
[cm]
[freeimage layer="2" time="0"]
[bg storage="park_day.png" time="1000"]
[playbgm storage="haretahiha.ogg" loop="true"]
#
I came to the park![p]
;***********************************************************************************************************************
;公園エッチ判別
[if exp="f.riko_h >= 95"]
[jump target="*park_h1"]
[endif]
;***********************************************************************************************************************
;莉子ランダム会話
;ランダム数値の取り出し
[iscript]
tf.rand = Math.floor( Math.random() * 5)
[endscript]

[if exp="tf.rand == 0"]
[cm]
[clearfix]
[freeimage layer="2" time="0"]
[bg storage="black.png" time="1000"]
[movie storage="mov_30_0.webm" skip="true"]
[menuwindows]
[bgmovie storage="mov_30_0_2.webm"]
[playse storage="riko/rk30_003.ogg" buf="0"]
I can't do it well![p]
Riko -chan can do anything[r]
Other than that, you can't go up![p]
I went out with Riko -chan's backing practice![p]
It is a secret to enjoy the panchira at close range[p]
[endif]

[if exp="tf.rand == 1"]
[cm]
[freeimage layer="2" time="0"]
[bg storage="black.png" time="1000"]
[bgmovie storage="mov_30_5.webm"]
……[p]
I'm tired ... It's hard for lack of exercise ...[p]
#莉子
[playse storage="riko/rk30_004.ogg" buf="0"]
Uncle, are you tired?[p]
I exercised and became a tingling ...[p]
[endif]

[if exp="tf.rand == 2"]
[cm]
[freeimage layer="2" time="0"]
[bg storage="black.png" time="1000"]
[bgmovie storage="mov_30_6.webm"]
I'm playing at Riko -chan at the Subelli stand[p]
cute!I'm satisfied just looking at it[p]
#莉子
[playse storage="riko/rk30_006.ogg" buf="0"]
I don't look so panchira![p]
#
No ... because it's enough[p]
[endif]

[if exp="tf.rand == 3"]
[cm]
[freeimage layer="2" time="0"]
[bg storage="black.png" time="1000"]
[bgmovie storage="mov_30_7.webm"]
#莉子
[playse storage="riko/rk30_001.ogg" buf="0"]
Do you play on the demon?I think it will definitely be notified[p]
#
I chased it and became a kutakuta[p]
[endif]

[if exp="tf.rand == 4"]
[cm]
[freeimage layer="2" time="0"]
[bg storage="black.png" time="1000"]
[bgmovie storage="mov_30_7.webm"]
#莉子
[playse storage="riko/rk30_005.ogg" buf="0"]
You're just watching girls![p]
#
No, no, I only see Riko ~[p]
[endif]


;公園帰宅
;莉子ちゃん好感度UP
[riko_f]
;体力減少
[eval exp="f.hp = f.hp - 20"]
[fadeoutbgm]
[stopse]
[stop_bgmovie time="1000"]

#
I came home[r]
[jump storage="main.ks" target="*night"]
;***********************************************************************************************************************
;-公園H
*park_h1

[cm]
[bg storage="black.png" time="1000"]
[clearfix]
[fadeoutbgm]
[stopse buf="0"]
[stopse buf="3"]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[playse storage="riko/rk30_011.ogg" buf="0" loop ="true"]
[playse storage="se/kutyu01.ogg" buf="3" loop ="true"]
[bgloop mov="mov_30_09.webm"  ti="2000"]
[stopse buf="0"]
[stopse buf="3"]
[menuwindows]
[playse storage="riko/rk30_012.ogg" buf="0" loop ="true"]
[bgmovie storage="mov_30_11.webm"]
#莉子
Huh ... huh ... uncle ... idiot[r]
Hentai ... Huh ... huh ...[p]
#
[stop_bgmovie time="1000"]
[stopse buf="0"]
[stopse buf="3"]
;公園帰宅
[bg storage="park_day.png" time="1000"]
;莉子ちゃん愛情UP
[riko_i]
;体力減少
[eval exp="f.hp = f.hp - 20"]
[stop_bgmovie time="2000"]
;公園フラグ　１
;[eval exp="f.park_riko_h = 1"]
;主人公精力減少
[eval exp="f.energy = f.energy - 30"]
;デートフラグオン（帰宅時に部屋に行くを消すための変数）
[eval exp="tf.date = true"]
;莉子ちゃんエッチフラグ
[eval exp="f.riko_sex = true"]
#
Riko -chan and Park etch, thrilling[p]
#
I came home[r]
[jump storage="main.ks" target="*night"]
;***********************************************************************************************************************
;-ゲーセンデート
*arcade
#
[bg storage="arcade.png" time="1000"]
[playbgm storage="dance.ogg" loop="true"]
I came to the game center[p]
;莉子ランダム会話
;ランダム数値の取り出し
[iscript]
tf.rand = Math.floor( Math.random() * 5)
[endscript]

[if exp="tf.rand == 0"]
[cm]
[freeimage layer="2" time="0"]
[bg storage="black.png" time="1000"]
[bgmovie storage="mov_29_2.webm"]
#莉子
[playse storage="riko/rk29_001.ogg" buf="0"]
Uncle, can you get that?[p]
#
It's a crane game[r]
Okay, when to leave![p]
…………[p]
After all I couldn't get it[p]
[endif]

[if exp="tf.rand == 1"]
[cm]
[freeimage layer="2" time="0"]
[bg storage="black.png" time="1000"]
[bgmovie storage="mov_29_2.webm"]
#
Challenge a crane game![p]
Oh ... can you go![p]
Ah ... ..............[p]
#莉子
[playse storage="riko/rk29_005.ogg" buf="0"]
Uncle, no![p]
#
After all I couldn't get it[p]
[endif]

[if exp="tf.rand == 2"]
[cm]
[freeimage layer="2" time="0"]
[bg storage="black.png" time="1000"]
[bgmovie storage="mov_29_2.webm"]
#莉子
[playse storage="riko/rk29_006.ogg" buf="0"]
You looked at Riko's dance with nasty eyes![p]
#
Hmm ... well, I wonder if I don't deny it[p]
[endif]

[if exp="tf.rand == 3"]
[cm]
[freeimage layer="2" time="0"]
[bg storage="black.png" time="1000"]
[bgmovie storage="mov_29_2.webm"]
#莉子
[playse storage="riko/rk29_007.ogg" buf="0"]
Let's take a picture with my uncle Purikura?[p]
#
Please![p]
[endif]

[if exp="tf.rand == 4"]
[cm]
[freeimage layer="2" time="0"]
[bg storage="black.png" time="1000"]
[bgmovie storage="mov_29_2.webm"]
#莉子
[playse storage="riko/rk29_009.ogg" buf="0"]
It looks like an uncle rhythm![p]
#
It is often said![p]
[endif]

;ゲーセン帰宅
;莉子ちゃん好感度UP
[riko_f]
;体力減少
[eval exp="f.hp = f.hp - 15"]
[stop_bgmovie time="1000"]
[bg storage="arcade.png" time="500"]
[fadeoutbgm]
[stopse]
#
I spent 2000 yen at the gamer[p]
[eval exp="f.money = f.money - 2000"]
[uiwindows]
[playse storage="se/money.ogg" buf="2"]
[kanim name="money" keyframe="money_a" time ="300"]
[stop_kanim]
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
;莉子ランダム会話
;ランダム数値の取り出し
[iscript]
tf.rand = Math.floor( Math.random() * 5)
[endscript]

[if exp="tf.rand == 0"]
[cm]
[freeimage layer="2" time="0"]
[bg storage="black.png" time="1000"]
[bgmovie storage="mov_35_1.webm"]
#莉子
[playse storage="riko/rk35_001.ogg" buf="0"]
Uncle, Riko Strawberry Parfait![p]
#
Okay, ask anything![p]
[endif]

[if exp="tf.rand == 1"]
[cm]
[freeimage layer="2" time="0"]
[bg storage="black.png" time="1000"]
[bgmovie storage="mov_35_1.webm"]
#莉子
[playse storage="riko/rk35_002.ogg" buf="0"]
Riko Cola Drink[p]
#
I wonder if I ask for coffee[p]
[endif]

[if exp="tf.rand == 2"]
[cm]
[freeimage layer="2" time="0"]
[bg storage="black.png" time="1000"]
[bgmovie storage="mov_35_1.webm"]
#莉子
[playse storage="riko/rk35_003.ogg" buf="0"]
Is coffee delicious?It's bitter and I can't rub it[p]
#
Riko is a child!If you grow up, you will understand the taste[r]
(I can't drink without milk and sugar)[p]
[endif]

[if exp="tf.rand == 3"]
[cm]
[freeimage layer="2" time="0"]
[bg storage="black.png" time="1000"]
[bgmovie storage="mov_35_1.webm"]
#莉子
[playse storage="riko/rk35_004.ogg" buf="0"]
Can I eat a cake?[p]
#
Oh, I want to eat[p]
[endif]

[if exp="tf.rand == 4"]
[cm]
[freeimage layer="2" time="0"]
[bg storage="black.png" time="1000"]
[bgmovie storage="mov_35_1.webm"]
#莉子
[playse storage="riko/rk35_005.ogg" buf="0"]
It's a secret to your sister[p]
#
If you eat too much, Rina will get angry[p]
[endif]

;ゲーセン帰宅
;莉子ちゃん好感度UP
[riko_f]
;体力減少
[eval exp="f.hp = f.hp - 10"]
[stop_bgmovie time="1000"]
[bg storage="cafe.png" time="500"]
[fadeoutbgm]
[stopse]
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


;■一回目
[if exp="f.karaoke_riko ==  undefined"]
#莉子
[bgmovie storage="mov_31_7.webm"]
Karaoke came[p]
[playse storage="riko/rk31_001.ogg" buf="0"]
Uncle, Riko's Majocal Lovely Love ♪[p]
[stop_bgmovie]
[cm]
[clearfix]
[stopse buf="0"]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[playbgm storage="Shining_dream.ogg" loop="true"]
[bgloop mov="mov_31_5.webm" ]
[stopbgm]
[eval exp="f.karaoke_riko = true"]
[bgmovie storage="mov_31_7.webm"]
[menuwindows]
#
I am satisfied with hearing Riko's song[p]
[jump target="*karaoke_return"]
[endif]
;***********************************************************************************************************************
;莉子ランダム会話
;ランダム数値の取り出し
[if exp="f.karaoke_riko_h == undefined"]
[bgmovie storage="mov_31_7.webm"]
[else]
[bgmovie storage="mov_31_9.webm"]
[endif]

Karaoke came[p]

[iscript]
tf.rand = Math.floor( Math.random() * 4)
[endscript]

[if exp="tf.rand == 0"]
#莉子
[playse storage="riko/rk31_002.ogg" buf="0"]
Uncle, I went to the song![p]
#
Huh!...... I thought it might be a thin sloppy ...[p]
[endif]

[if exp="tf.rand == 1"]
#莉子
[playse storage="riko/rk31_005.ogg" buf="0"]
The uncle points are low![p]
#
The reality of deafness pierces ...[p]
[endif]

[if exp="tf.rand == 2"]
#
It looks like time soon[p]
#莉子
[playse storage="riko/rk31_006.ogg" buf="0"]
It's an extension![p]
#
learn![p]
[endif]

[if exp="tf.rand == 3"]
#莉子
[playse storage="riko/rk31_008.ogg" buf="0"]
Uncle What song?I don't know so I stop![p]
#
Huh ... I've stopped!My 18th ...[p]
[endif]

[if exp="tf.rand == 4"]
#莉子
[playse storage="riko/rk31_008.ogg" buf="0"]
Uncle What song?I don't know so I stop![p]
#
Huh ... I've stopped!My 18th ...[p]
[endif]
;***********************************************************************************************************************
;カラオケＨ判別
[if exp="f.riko_h >= 20 && f.karaoke_riko_h == undefined"]
[jump target="*karaoke_h1"]
[endif]
[if exp="f.riko_h >= 40 && f.karaoke_riko_h == 1"]
[jump target="*karaoke_h2"]
[endif]
;***********************************************************************************************************************
*karaoke_return
;カラオケ帰宅
;莉子ちゃん好感度UP
[riko_f]
;体力減少
[eval exp="f.hp = f.hp - 15"]
[stop_bgmovie time="1000"]
[bg storage="karaoke.png" time="500"]
[fadeoutbgm]
[stopse]
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
[stop_bgmovie]
[fadeoutbgm]
[bgmovie storage="mov_31_1.webm"]
#莉子
[playse storage="riko/rk31_009.ogg" buf="0"]
I'm so lustful for my kids in such places[r]
What to do? this[p]
#
Riko -chan, if I moved so much ...[p]
#莉子
[playse storage="riko/rk31_010.ogg" buf="0"]
You said you did it yourself, this pervert![p]
#
Riko ... Riko -chan ... I want to insert ...[p]
#莉子
[playse storage="riko/rk31_011.ogg" buf="0"]
You're determined to be useless!Hands are enough for such a metamorphosis![p]
#
Riko -chan ... It feels good ...[p]
#莉子
[playse storage="riko/rk31_012.ogg" buf="0"]
go?Are you already going?Do you go with your child's hands?[p]
#
Oh, ah[p]
[stop_bgmovie]
[stopse buf="0"]
[stopse buf="3"]
[cm]
[clearfix]
[stopse buf="0"]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[movie storage="mov_31_2.webm" skip="true"]
[stop_bgmovie]
[menuwindows]
[bgmovie storage="mov_31_8.webm"]
#莉子
[playse storage="riko/rk31_013.ogg" buf="0"]
Ah, so much came out[p]
#
;カラオケ帰宅
[bg storage="karaoke.png" time="500"]
;莉子ちゃん愛情UP
[riko_i]
;体力減少
[eval exp="f.hp = f.hp - 20"]
[stop_bgmovie time="2000"]
;カラオケフラグ　１
[eval exp="f.karaoke_riko_h = 1"]
;主人公精力減少
[eval exp="f.energy = f.energy - 30"]
;莉子ちゃんエッチフラグ
[eval exp="f.riko_sex = true"]

#
I asked Riko to pull it out by hand[p]
It is a cost of 3000 yen at karaoke[p]
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
[stop_bgmovie]
[fadeoutbgm]
[bg storage="black.png" time="1000"]
[bgmovie storage="mov_31_3.webm"]
#莉子
[playse storage="riko/rk31_014.ogg" buf="0"]
When you come to the karaoke box, is it a disease that makes you want to get out of cock![p]
#
Oh ... oh, I just want to insert it into Riko![p]
#莉子
[playse storage="riko/rk31_015.ogg" buf="0"]
You say it's no good!It's just right to be tampered with with your child's feet![p]
#
Ah ... something ... my legs may be good[p]
#莉子
[playse storage="riko/rk31_016.ogg" buf="0"]
Should I be bullied with Riko's feet so much?Riko's legs feel good?[p]
#
Riko's legs are good[r]
Please bully more with Riko's feet[p]
#莉子
[playse storage="riko/rk31_017.ogg" buf="0"]
Fufu, I'm full of Riko's feet, bully[r]
Hey, hey![p]
#
Uh, Riko -chan, dangerous, I'm going ...[p]
[stop_bgmovie]

[cm]
[clearfix]
[stopse buf="0"]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[movie storage="mov_31_4.webm" skip="true"]
[stop_bgmovie]
[menuwindows]
;カラオケ帰宅
[bg storage="karaoke.png" time="500"]
;莉子ちゃん愛情度UP
[riko_i]
;体力減少
[eval exp="f.hp = f.hp - 20"]
[stop_bgmovie time="1000"]
;カラオケフラグ　１
;[eval exp="f.karaoke_riko_h = 1"]
[iscript]
delete f.karaoke_riko_h;
[endscript]
;主人公精力減少
[eval exp="f.energy = f.energy - 30"]
;莉子ちゃんエッチフラグ
[eval exp="f.riko_sex = true"]

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
[bgmovie storage="mov_33_3.webm"]
[playbgm storage="sizukana.ogg" loop="true"]
I came to a manga cafe[p]

;***********************************************************************************************************************
;莉子ランダム会話
;ランダム数値の取り出し
[iscript]
tf.rand = Math.floor( Math.random() * 5)
[endscript]

[if exp="tf.rand == 0"]
#莉子
[playse storage="riko/rk33_001.ogg" buf="0"]
Uncle, Riko Cola![p]
#
Riko Miss Riko![p]
[endif]

[if exp="tf.rand == 1"]
#莉子
[playse storage="riko/rk33_002.ogg" buf="0"]
Is that manga interesting?[p]
#
It's interesting!I'll finish reading it[p]
[endif]

[if exp="tf.rand == 2"]
#莉子
[playse storage="riko/rk33_005.ogg" buf="0"]
I'm reading it seriously now, so don't talk![p]
#
I was angry ...[p]
[endif]

[if exp="tf.rand == 3"]
#莉子
[playse storage="riko/rk33_006.ogg" buf="0"]
Uncle, read it fast![r]
I caught up[p]
#
A little, please get me a little ~[p]
[endif]

[if exp="tf.rand == 4"]
#莉子
[playse storage="riko/rk33_003.ogg" buf="0"]
Anyway, uncle, you're reading erotic manga, right?[p]
#
That's right[p]
[endif]
;***********************************************************************************************************************
;漫画喫茶Ｈ判別
[if exp="f.riko_h >= 30 && f.cartooncafe_riko_h == undefined"]
[jump target="*cartooncafe_h1"]
[endif]
[if exp="f.riko_h >= 90 && f.cartooncafe_riko_h == 1"]
[jump target="*cartooncafe_h2"]
[endif]
;***********************************************************************************************************************
;漫画喫茶帰宅
;莉子ちゃん好感度UP
[riko_f]
;体力減少
[eval exp="f.hp = f.hp - 15"]
[stop_bgmovie time="1000"]
[bg storage="cartooncafe.png" time="500"]
[fadeoutbgm]
[stopse]
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
[stop_bgmovie]
[fadeoutbgm]
[bgmovie storage="mov_33_1.webm"]
[playse storage="riko/rk33_007.ogg" buf="0" loop ="true"]
#
Riko -chan feels good![p]
Riko's pussy is in front of me![p]
I want to insert my uncle's Ochinchin here[p]
#莉子
[playse storage="riko/rk33_009.ogg" buf="0"]
You say it's no good!See you next time![p]
[playse storage="riko/rk33_007.ogg" buf="0" loop ="true"]
#
Yeah ...[p]

;漫画喫茶帰宅
[bg storage="cartooncafe.png" time="500"]
;莉子ちゃん愛情度UP
[riko_i]
;体力減少
[eval exp="f.hp = f.hp - 20"]
[stopse buf="0"]
[stop_bgmovie time="1000"]
;漫画喫茶フラグ　１
[eval exp="f.cartooncafe_riko_h = 1"]
;莉子ちゃんエッチフラグ
[eval exp="f.riko_sex = true"]

#
I spent 3000 yen at a manga cafe[p]
[eval exp="f.money = f.money - 3000"]
[uiwindows]
[playse storage="se/money.ogg" buf="2"]
[kanim name="money" keyframe="money_a" time ="300"]
[stop_kanim]
#
I came back without getting out of Riko -chan, so I'm horny ...[p]
I came home[r]
[jump storage="main.ks" target="*night"]

;***********************************************************************************************************************
;--漫画喫茶Ｈ2
*cartooncafe_h2
[stop_bgmovie]
[fadeoutbgm]
[bgmovie storage="mov_33_4.webm"]
[playse storage="riko/rk33_010.ogg" buf="0"]
#莉子
Hey!Look!Uncle, you want to insert it into Riko's Coco, right?[p]
#
Uh ... Riko -chan, I want to insert it[p]
#莉子
[playse storage="riko/rk33_011.ogg" buf="0"]
Fufu, but hey!I will not let you insert![p]
#
ancestor!That's it!Riko -chan ...[p]
#莉子
[playse storage="riko/rk33_012.ogg" buf="0"]
But the tip is likely to enter! uncle[p]
#
Oh ... Riko -chan ... as it is![p]
#莉子
[playse storage="riko/rk33_013.ogg" buf="0"]
Um!After all![p]
#
Riko -chan ... please!Let me insert it![p]
#莉子
[playse storage="riko/rk33_014.ogg" buf="0"]
What?[p]
#
Let me insert my uncle's cock[p]
#莉子
[playse storage="riko/rk33_015.ogg" buf="0"]
where?[p]
#
the law of nature!Riko's pussy![p]
#莉子
[playse storage="riko/rk33_016.ogg" buf="0"]
Ummm ... what should I do?[p]
#
oh! please!Riko, please let me insert it![p]
#莉子
[playse storage="riko/rk33_017.ogg" buf="0"]
If you say so much, let me insert it because it can't be helped[p]
[stop_bgmovie]
[cm]
[clearfix]
[stopse buf="0"]
[stopse buf="3"]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[movie storage="mov_33_7.webm" skip="true"]
[movie storage="mov_33_12.webm" skip="true"]
[playse storage="riko/rk33_020.ogg" buf="0" loop ="true"]
[playse storage="se/kutyu01.ogg" buf="3" loop ="true"]
[bgloop mov="mov_33_8.webm"  ti="2000"]
[stopse buf="0"]
[stopse buf="3"]
[movie storage="mov_33_9.webm" skip="true"]
[playse storage="riko/rk36_021.ogg" buf="0" loop ="true"]
[movie storage="mov_33_10.webm" skip="true"]
[bgloop mov="mov_33_11.webm"  ti="2000"]
[stopse buf="0"]
[stopse buf="3"]


;漫画喫茶帰宅
[bg storage="cartooncafe.png" time="500"]
;莉子ちゃん愛情度UP
[riko_i]
;体力減少
[eval exp="f.hp = f.hp - 20"]
;漫画喫茶フラグ　１
;[eval exp="f.cartooncafe_riko_h = 1"]
[iscript]
delete f.cartooncafe_riko_h;
[endscript]
;主人公精力減少
[eval exp="f.energy = f.energy - 30"]
;莉子ちゃんエッチフラグ
[eval exp="f.riko_sex = true"]


[stopse buf="0"]
[stop_bgmovie time="1000"]
[menuwindows]
#
I spent 3000 yen at a manga cafe[p]
[eval exp="f.money = f.money - 3000"]
[uiwindows]
[playse storage="se/money.ogg" buf="2"]
[kanim name="money" keyframe="money_a" time ="300"]
[stop_kanim]
#
Maybe I was excited by Riko -chan ...[p]
I came home[r]
[jump storage="main.ks" target="*night"]

;***********************************************************************************************************************
;-遊園地
*amusement
#
[cm]
[freeimage layer="2" time="0"]
[bg storage="black.png" time="1000"]

[playbgm storage="yuuenti.ogg" loop="true"]

;***********************************************************************************************************************
;莉子ランダム会話
;ランダム数値の取り出し
[iscript]
tf.rand = Math.floor( Math.random() * 4)
[endscript]
[if exp="f.riko_h >= 50 && f.amusement_riko_h == undefined"]
[eval exp="tf.rand = 3"]
[endif]
[if exp="f.riko_h >= 70 && f.amusement_riko_h == 1"]
[iscript]
tf.rand = Math.floor( Math.random() * 3)
[endscript]
[endif]

;タイトスカート
[if exp="tf.rand == 0"]
[bgmovie storage="mov_32_6.webm"]
I came to the amusement park[p]
#
What should I ride ...[p]
Okay![p]
Riko who is afraid of entering a haunted house[r]
Let's escort cool[p]
[stop_bgmovie time="1000"]
[bgmovie storage="mov_32_10.webm" time="1000"]
#莉子
[playse storage="riko/rk31_019.ogg" buf="0"]
Uncle ... Are you scared?Riko ... I'm not scared ...[p]
#
Oh ... I'm not afraid of my uncle ...[r]
(Yabai! Sushi ~ scary !!)[p]
[endif]
;タイトスカート　
[if exp="tf.rand == 1"]
[bgmovie storage="mov_32_6.webm"]
I came to the amusement park[p]
[stop_bgmovie time="1000"]
[bgmovie storage="mov_32_9.webm" time="1000"]
#莉子
[playse storage="riko/rk31_021.ogg" buf="0"]
uncle!I'm going again![p]
#
It's already crazy, but I can't say so ...[p]
[endif]
;タイトスカート
[if exp="tf.rand == 2"]
[bgmovie storage="mov_32_6.webm"]
I came to the amusement park[p]
[stop_bgmovie time="1000"]
[bgmovie storage="mov_32_7.webm" time="1000"]
#莉子
[playse storage="riko/rk31_023.ogg" buf="0"]
Uncle, okay[p]
#
Uh ... consecutive roller coasters are really tight ...[p]
[endif]
;デニムパンツ
[if exp="tf.rand == 3"]
[bg storage="amusement.png" time="500"]
I came to the amusement park[p]
[stop_bgmovie time="1000"]
[bgmovie storage="mov_32_8.webm" time="1000"]
#莉子
[playse storage="riko/rk31_022.ogg" buf="0"]
Wow, people are so small![p]
#
Riko -chan's thighs are only eye -catching[p]
[endif]
;***********************************************************************************************************************
;遊園地Ｈ判別
[if exp="f.riko_h >= 50 && f.amusement_riko_h == undefined"]
[jump target="*amusement_h1"]
[endif]
[if exp="f.riko_h >= 70 && f.amusement_riko_h == 1"]
[jump target="*amusement_h2"]
[endif]
;***********************************************************************************************************************
;遊園地帰宅
;莉子ちゃん好感度UP
[riko_f]
;体力減少
[eval exp="f.hp = f.hp - 15"]
[stop_bgmovie time="1000"]
[bg storage="amusement.png" time="500"]
[fadeoutbgm]
[stopse]
#
Satisfied with playing a lot in the amusement park with Riko[p]
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
;[bg storage="amusement.png" time="500"]
I came to the amusement park[p]
[bg storage="black.png" time="1000"]
[stop_bgmovie time="1000"]
[fadeoutbgm]


[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false

[playse storage="riko/rk31_025.ogg" buf="0" loop ="true"]
[bgloop mov="mov_32_1.webm"  ti="2000"]
[stopse buf="0"]

[movie storage="mov_32_2.webm" skip="true"]

;遊園地帰宅
[bg storage="amusement.png" time="500"]
;莉子ちゃん愛情度UP
[riko_i]
;体力減少
[eval exp="f.hp = f.hp - 20"]
[fadeoutse time="500"]
[stop_bgmovie time="1000"]

;遊園地フラグ　１
[eval exp="f.amusement_riko_h = 1"]
;主人公精力減少
[eval exp="f.energy = f.energy - 30"]
;莉子ちゃんエッチフラグ
[eval exp="f.riko_sex = true"]

[menuwindows]
#
Play a lot in the amusement park with Riko[r]
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
;--遊園地Ｈ２
*amusement_h2
;[bgmovie storage="mov_32_6.webm"]
I came to the amusement park[p]
[stop_bgmovie time="1000"]
[fadeoutbgm]

[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[playse storage="riko/rk31_028.ogg" buf="0" loop ="true"]
[playse storage="se/kutyu01.ogg" buf="3" loop ="true"]
[bgloop mov="mov_32_3.webm"  ti="2000"]
[stopse buf="0"]
[stopse buf="3"]
[movie storage="mov_32_4.webm" skip="true"]

;遊園地帰宅
[bg storage="amusement.png" time="500"]
;莉子ちゃん愛情度UP
[riko_i]
;体力減少
[eval exp="f.hp = f.hp - 20"]
[stop_bgmovie time="1000"]
;遊園地フラグ　１
;[eval exp="f.amusement_riko_h = 1"]
[iscript]
delete f.amusement_riko_h;
[endscript]
;主人公精力減少
[eval exp="f.energy = f.energy - 30"]
;莉子ちゃんエッチフラグ
[eval exp="f.riko_sex = true"]

[menuwindows]
#
Play a lot in the amusement park with Riko[r]
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
[bgmovie storage="mov_36_12.webm"]
[playbgm storage="sitamati.ogg" loop="true"]
I came to the festival[p]

;莉子ランダム会話
;ランダム数値の取り出し
[iscript]
tf.rand = Math.floor( Math.random() * 5)
[endscript]

[if exp="tf.rand == 0"]
#莉子
[playse storage="riko/rk36_001.ogg" ]
Uncle, Yoyo fishing![p]
#
Okay, I'll hang a lot of my uncle![p]
[endif]

[if exp="tf.rand == 1"]
#莉子
[playse storage="riko/rk36_002.ogg"]
Riko, I want to eat shaved ice[p]
#
It's hot every day ~[p]
[endif]

[if exp="tf.rand == 2"]
#莉子
[playse storage="riko/rk36_003.ogg" ]
Yukata is cute?[p]
#
Riko's yukata is cute[p]
[endif]

[if exp="tf.rand == 3"]
#莉子
[playse storage="riko/rk36_004.ogg" ]
Uncle, Riko's yukata, you've seen it with nasty eyes![p]
#
I will not deny[p]
[endif]

[if exp="tf.rand == 4"]
#莉子
[playse storage="riko/rk36_005.ogg"]
Yakisoba, potato, takoyaki, okonomiyaki, squid grilled, what to eat ~[p]
#
Riko -chan overeating[p]
[endif]

;***********************************************************************************************************************
;お祭りＨ判別
[if exp="f.riko_h >= 60 && f.maturi_riko_h == undefined"]
[jump target="*maturi_h1"]
[endif]
[if exp="f.riko_h >= 80 && f.maturi_riko_h == 1"]
[jump target="*maturi_h2"]
[endif]
;***********************************************************************************************************************


;お祭り帰宅
;莉子ちゃん好感度UP
[riko_f]
;体力減少
[eval exp="f.hp = f.hp - 10"]
[stop_bgmovie time="1000"]
[bg storage="maturi.png" time="500"]
[fadeoutbgm]
[stopse]
#
I am satisfied with playing a lot at the festival with Riko[p]
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
[bgmovie storage="mov_36_13.webm"]
#
Riko -chan, fireworks were amazing![p]
#莉子
[playse storage="riko/rk36_007_2.ogg"]
You're coming to a place where no one is at all! uncle![p]
#
I wonder ... I guess it's a coincidence![p]
#莉子
[playse storage="riko/rk36_008.ogg"]
You're trying to do something nasty for Riko![p]
#
yes!No![p]
#莉子
[playse storage="riko/rk36_009.ogg"]
It can't be helped because Riko is cute![r]
Are you lustful for Riko in a yukata?[p]
#
Certainly, Riko's yukata ... cute[p]
#莉子
[playse storage="riko/rk36_010.ogg"]
Riko is cute?[p]
#
Yeah, Riko is cute!Yukata looks good too[p]
#莉子
[playse storage="riko/rk36_011.ogg"]
Yeah, right?I can't help Riko because it's too cute![p]
#
That's right, Riko is too cute![p]
#莉子
[playse storage="riko/rk36_012.ogg"]
Then, Riko will do something naughty to the uncle[p]
[fadeoutbgm]
[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[stop_bgmovie time="1000"]
[stopse buf="0"]
[movie storage="mov_36_1.webm" skip="true"]
[movie storage="mov_36_2.webm" skip="true"]
[bgloop mov="mov_36_3.webm"  ti="1000"]
[movie storage="mov_36_4.webm" skip="true"]

;お祭り帰宅
[bg storage="maturi_night.png" time="500"]
;莉子ちゃん愛情度UP
[riko_i]
;体力減少
[eval exp="f.hp = f.hp - 20"]
[stop_bgmovie time="1000"]
;お祭りフラグ　１
[eval exp="f.maturi_riko_h = 1"]
;主人公精力減少
[eval exp="f.energy = f.energy - 30"]
;莉子ちゃんエッチフラグ
[eval exp="f.riko_sex = true"]

[menuwindows]
#
Play a lot at the festival with Riko[r]
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
[fadeoutbgm]
[playbgm storage="night.ogg" loop="true"]
[stop_bgmovie time="1000"]
[bgmovie storage="mov_36_13.webm"]
#莉子
[playse storage="riko/rk36_015.ogg"]
Uncle, you're coming again![p]
#
ancestor!I guess ... there is certainly no people around![p]
#莉子
[playse storage="riko/rk36_016.ogg"]
Do you want to do so naughty with Riko?[p]
#
It's, of course, Riko is cute ...[p]
#莉子
[playse storage="riko/rk36_017.ogg"]
Lustful in the child's yukata![r]
How far is your uncle lolicon!Want to etch with Riko so much?[p]
#
I want to do[p]
#莉子
[playse storage="riko/rk36_018.ogg"]
I can't help it so I'll etch with my uncle[p]
[fadeoutbgm]
[stop_bgmovie time="1000"]
[cm]
[clearfix]
[stopse buf="0"]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[playse storage="riko/rk36_019.ogg" loop="true"]
[playse storage="se/kutyu01.ogg" loop="true" buf="3"]

[bgloop mov="mov_36_5.webm"  ti="2000"]
[stopse buf="0"]
[stopse buf="3"]
[movie storage="mov_36_6.webm" skip="true"]

;お祭り帰宅
[bg storage="maturi_night.png" time="500"]
;莉子ちゃん愛情度UP
[riko_i]
;体力減少
[eval exp="f.hp = f.hp - 20"]
[stop_bgmovie time="1000"]
;お祭りフラグ　１
;[eval exp="f.maturi_riko_h = 1"]
[iscript]
delete f.maturi_riko_h;
[endscript]
;主人公精力減少
[eval exp="f.energy = f.energy - 30"]
;莉子ちゃんエッチフラグ
[eval exp="f.riko_sex = true"]

[menuwindows]
#
I played a lot at the festival with Riko[r]
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
;-スクール水着
*mizugi

;エッチ度判定
[if exp="f.riko_h < 50"]
#
It seems that you still don't wear it ...[p]
さて、どうしようか
[jump storage="main.ks" target="*choice2"]
[endif]

#
[cm]
[freeimage layer="2" time="0"]
[bg storage="black.png" time="1000"]
[bgmovie storage="mov_65_11.webm"]
#莉子
[playse storage="riko/rk65_012.ogg"]
What is this a school swimsuit?[p]
#
Yes, I want Riko to wear it![p]
#莉子
[playse storage="riko/rk65_013.ogg"]
Haha ... Uncle is already a hardcore metamorphosis![r]
Call me the lolicon emperor[p]
#
Please Riko!Wear and wear![p]
#莉子
[playse storage="riko/rk65_014.ogg"]
I'll wear it because it can't be helped, but I just wear it![p]
#
[stop_bgmovie]
[cm]
[bg storage="black.png" time="1000"]
[bgmovie storage="mov_65_12.webm"]
#莉子
[playse storage="riko/rk65_015.ogg"]
copper?Uncle, Riko is cute no matter what![p]
#
Yeah, cute, Riko -chan[p]
#莉子
[playse storage="riko/rk65_016.ogg"]
My uncle's eyes are nasty ...[p]
#
Riko -chan, a little backwards, the hands are like this[p]
[stop_bgmovie]
[bgmovie storage="mov_65_13.webm"]
#莉子
[playse storage="riko/rk65_017.ogg"]
Hmm, like this?Like this[p]
#
Oh yeah, that[p]
#莉子
[playse storage="riko/rk65_018.ogg"]
Hmm ... Then, if you look like this, I'm excited[p]
[stop_bgmovie]
[bgmovie storage="mov_65_14.webm"]
#
Ha ... yes[p]
#莉子
[playse storage="riko/rk65_020.ogg"]
What if I turned here?[p]
[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[stop_bgmovie]
[movie storage="mov_65_15.webm" skip="true"]
[bgmovie storage="mov_65_16.webm"]
[menuwindows]
#
Huh ... Huh ... Riko -chan can I touch it?[p]
#莉子
[playse storage="riko/rk65_021.ogg"]
Huh?You're not good![p]
#
Please ... Riko is cute ... I can't stand it anymore![p]
#莉子
[playse storage="riko/rk65_022.ogg"]
Can't you stand it because Riko is cute?[p]
#
Riko -chan is too cute, too cute ... it's already the limit of patience[p]
#莉子
[playse storage="riko/rk65_023.ogg"]
Hmmm, then ... a little ...[p]

[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[stop_bgmovie]
[playse storage="riko/rk65_024.ogg" loop="true"]
[bgloop mov="mov_65_17.webm"  ti="2000"]
[bgloop mov="mov_65_19.webm"  ti="2000"]
[menuwindows]
[bgmovie storage="mov_65_20.webm"]
#
Riko -chan is good ... it's okay to insert it[p]
[stopse buf="0"]
#莉子
[playse storage="riko/rk65_025.ogg"]
Huh, huh, uncle ...[r]
If you just say ... apart ...[p]
[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[stop_bgmovie]
[playse storage="riko/rk65_027.ogg" loop="true"]
[playse storage="se/kutyu01.ogg" loop="true" buf="3"]
[bgloop mov="mov_65_21.webm"  ti="2000"]
[bgloop mov="mov_65_22.webm"  ti="2000"]
[stopse buf="0"]
[stopse buf="3"]
[movie storage="mov_65_24.webm" skip="true"]
[playse storage="riko/rk65_028.ogg" loop="true"]
[bgloop mov="mov_65_25.webm"  ti="2000"]
[stopse buf="0"]
;帰宅
;莉子ちゃん愛情度UP
[riko_i]
;体力減少
[eval exp="f.hp = f.hp - 20"]
[stop_bgmovie time="1000"]
;水着フラグ　１
[eval exp="f.mizugi_riko_h = 1"]
;主人公精力減少
[eval exp="f.energy = f.energy - 30"]
;デートフラグオン（帰宅時に部屋に行くを消すための変数）
[eval exp="tf.date = true"]
;莉子ちゃんエッチフラグ
[eval exp="f.riko_sex = true"]

[menuwindows]
#
Riko's school swimsuit is very exciting[p]
#
I came back to the room[r]
[jump storage="main.ks" target="*night"]

;***********************************************************************************************************************
;-バイブ
*vibrator

;エッチ度判定
[if exp="f.riko_h < 80"]
#
As expected, it would be impossible ...[p]
さて、どうしようか
[jump storage="main.ks" target="*choice2"]
[endif]


[cm]
[clearfix]
[freeimage layer="2" time="0"]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[bg storage="black.png" time="1000"]

[bgloop mov="mov_84_1.webm"  ti="2000"]
[movie storage="mov_84_20.webm" skip="true"]
[bgloop mov="mov_84_21.webm"  ti="2000"]

;帰宅
;莉子ちゃん愛情度UP
[riko_i]
;体力減少
[eval exp="f.hp = f.hp - 20"]
[stop_bgmovie time="2000"]
;バイブフラグ　１
[eval exp="f.vibrator_riko_h = 1"]
;デートフラグオン（帰宅時に部屋に行くを消すための変数）
[eval exp="tf.date = true"]
;莉子ちゃんエッチフラグ
[eval exp="f.riko_sex = true"]

[menuwindows]
#
Riko -chan seemed very comfortable[p]
#
I came back to the room[r]
[jump storage="main.ks" target="*night"]

;***********************************************************************************************************************
;-映画館デート
*movietheater
#
[cm]
[freeimage layer="2" time="0"]
[bg storage="black.png" time="1000"]
[bg storage="movietheater/img_34_11_2.png" time="500"]
[playbgm storage="asobiniikuhi.ogg" loop="true"]
I came to the movie theater[p]
[cm]
[clearfix]
[freeimage layer="2" time="0"]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[bg storage="black.png" time="1000"]

[movie storage="mov_34_1.webm" skip="true"]
[bgmovie storage="mov_34_2.webm"]
[menuwindows]
何の映画を見ようかな?
[glink  color="pink" size="20"  x="900"  width="200"  y="150"  text="アクション"  target="*movie_choice" exp="tf.movie_choice = 1"]
[glink  color="pink" size="20"  x="900"  width="200"  y="220"  text="恋愛"  target="*movie_choice" exp="tf.movie_choice = 2"]
[glink  color="pink" size="20"  x="900"  width="200"  y="290"  text="ドキュメンタリー"  target="*movie_choice" exp="tf.movie_choice = 3"]
[glink  color="pink" size="20"  x="900"  width="200"  y="360"  text="アニメ"  target="*movie_choice" exp="tf.movie_choice = 4"]
[glink  color="pink" size="20"  x="900"  width="200"  y="430"  text="ホラー"  target="*movie_choice" exp="tf.movie_choice = 5"]
[s]
*movie_choice
[stop_bgmovie]

;***********************************************************************************************************************
[if exp="tf.movie_choice == 1"]
[bgmovie storage="mov_34_3_3.webm" time = 2000]
Watching an action movie[p]
Riko -chan was happy![p]
[endif]
[if exp="tf.movie_choice == 2"]
[bgmovie storage="mov_34_3_1.webm" time = 2000]
Love movies ...[p]
Riko seems boring[p]
[endif]
[if exp="tf.movie_choice == 3"]
[bgmovie storage="mov_34_3_4.webm" time = 2000]
Documentary looks no good[p]
I'm sleeping ... it's so interesting[p]
[endif]
[if exp="tf.movie_choice == 4"]
[bgmovie storage="mov_34_3_2.webm" time = 2000]
The anime is Riko's favorite Major -Calph Rens![p]
I'm looking seriously[p]
[endif]
[if exp="tf.movie_choice == 5"]
[bgmovie storage="mov_34_3_5.webm" time = 2000]
Horror seems to be not good at it[p]
The strongest place is cute[p]
[endif]
;***********************************************************************************************************************
;映画館Ｈ判別
[if exp="f.riko_h >= 65 && f.movietheater_riko_h == undefined && tf.movie_choice == 3"]
[jump target="*movietheater_h1"]
[endif]
[if exp="f.riko_h >= 65 && f.movietheater_riko_h == 1 && tf.movie_choice == 3"]
[stop_bgmovie]
[fadeoutbgm]
[bgmovie storage="mov_34_5.webm" time = 2000]
#莉子
[playse storage="riko/rk34_008.ogg" buf="0"]
Uncle, boring movie again ...[r]
You're coming to Riko to do naughty things![p]
[jump target="*movietheater_h2"]
[endif]

;***********************************************************************************************************************
*movietheater_return
;映画帰宅
;莉子ちゃん好感度UP
[riko_f]
;体力減少
[eval exp="f.hp = f.hp - 15"]
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
[movie storage="mov_34_4.webm" skip="true"]
[bgmovie storage="mov_34_5.webm" time = 2000]

#莉子
[playse storage="riko/rk34_001.ogg" buf="0"]
This movie is boring[p]
#
picture! yes?Is it boring?[p]
#莉子
[playse storage="riko/rk34_002.ogg" buf="0"]
Because there's no other person ... it's boring, so there's no customer at all[p]
#
I think it's pretty interesting[p]
#莉子
[playse storage="riko/rk34_003.ogg" buf="0"]
Uncle, it's a pervert, so it's a bit different![p]
#
Riko -chan! a little bit[p]
#莉子
[playse storage="riko/rk34_004.ogg" buf="0"]
Oh, okay, okay!You can watch the movie[p]
[stop_bgmovie time="2000"]
[bgmovie storage="mov_34_7.webm" time = 2000]
#莉子
[playse storage="riko/rk34_005.ogg" buf="0"]
As expected, uncle!If I licked a little, it was so big[r]
Uncle should watch the movie[p]
#
I can't concentrate ...[p]
*movietheater_h2
[cm]
[clearfix]
[freeimage layer="2" time="0"]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[stop_bgmovie time="2000"]
[movie storage="mov_34_8.webm" skip="true"]
[playse storage="riko/rk34_006.ogg" buf="0" loop="true"]
[stop_bgmovie time="2000"]
[bgloop mov="mov_34_9.webm"  ti="2000"]
[stopse buf="0"]
[stopse buf="3"]
[stop_bgmovie time="2000"]
[movie storage="mov_34_10.webm" skip="true"]
[menuwindows]
;映画帰宅
[bg storage="movietheater/img_34_11_1.png" time="500"]
;莉子ちゃん愛情UP
[riko_i]
;体力減少
[eval exp="f.hp = f.hp - 20"]
[stop_bgmovie time="2000"]
;映画フラグ　１
[eval exp="f.movietheater_riko_h = 1"]
;主人公精力減少
[eval exp="f.energy = f.energy - 30"]
#
I asked Riko to pull it out with her mouth[p]
It is a 3000 yen expense in a movie[p]
[eval exp="f.money = f.money - 3000"]
[uiwindows]
[playse storage="se/money.ogg" buf="2"]
[kanim name="money" keyframe="money_a" time ="300"]
[stop_kanim]
#
I came home[r]
[jump storage="main.ks" target="*night"]
;***********************************************************************************************************************
;体操着
*training_wear

;エッチ度判定
[if exp="f.riko_h < 70"]
#
It seems that you still don't wear it ...[p]
さて、どうしようか
[jump storage="main.ks" target="*choice2"]
[endif]

#
[cm]
[freeimage layer="2" time="0"]
[bg storage="black.png" time="1000"]
[bgmovie storage="mov_65_47.webm"]
#莉子
[playse storage="riko/rk102_001.ogg"]
What is this uncle?[p]
#
This is an old item and called bloomers ...[p]
#莉子
[playse storage="riko/rk102_002.ogg"]
Do you want Uncle Riko to wear this?[p]
#
yes!I want you to wear it![p]
#莉子
[playse storage="riko/rk102_003.ogg"]
Eh ~ ... what should I do?[p]
#
please!Riko, please wear it![p]
#莉子
[playse storage="riko/rk102_004.ogg"]
But this is embarrassing[p]
#
fine!Riko is definitely cute![r]
It's just a little!Please Riko![p]
#莉子
[playse storage="riko/rk102_005.ogg"]
Uncle is too desperate ...[p]
#
Please, Riko!Please just![r]
It's just a little, so I just wear it, yeah![p]
#莉子
[playse storage="riko/rk102_006.ogg"]
already!I'll wear it because it can't be helped, but I just wear it[p]
#
I did it ~[p]
[cm]
[clearfix]
[stopse buf="0"]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[movie storage="mov_65_48.webm" skip="true"]
[stop_bgmovie]
[menuwindows]
[bgmovie storage="mov_65_50.webm" time="1000"]

#莉子
[playse storage="riko/rk102_007.ogg"]
How?uncle!Riko is cute?[p]
#
Yes, Riko is cute![p]
#莉子
[playse storage="riko/rk102_008.ogg"]
Uncle, do you like this?Hmm ... Hentai![p]
[playse storage="riko/rk102_009.ogg"]
My uncle's nose is rough!Don't touch it![p]
#
Riko -chan, I can't stand it anymore!Can I touch it a little?[p]
#莉子
[playse storage="riko/rk102_010.ogg"]
Dowe!Don't touch it![p]
#
Such ...[p]
[stop_bgmovie time="1000"]
[bgmovie storage="mov_65_52.webm" time="1000"]
#莉子
[playse storage="riko/rk102_011.ogg"]
Uncle, like this!Is it an etch?[p]
[playse storage="riko/rk102_012.ogg"]
That's right!Wow ~ Uncle's eyes are bloody![p]
[playse storage="riko/rk102_013.ogg"]
[stop_bgmovie time="1000"]
[bgmovie storage="mov_65_51.webm" time="1000"]
Chira! copper?Uncle, I want to see more![p]
[playse storage="riko/rk102_014.ogg"]
Uncle, I'm close to my face!Here, this!Don't touch it ...[p]
[stop_bgmovie time="1000"]
[playse storage="riko/rk102_015.ogg" loop="true"]
[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[bgloop mov="mov_65_34.webm"  ti="2000"]
[playse storage="riko/rk68_028.ogg" loop="true"]
[playse storage="se/kutyu02.ogg" loop="true" buf="3"]
[bgloop mov="mov_65_35.webm"  ti="2000"]
[bgloop mov="mov_65_35_2.webm"  ti="2000"]
[bgloop mov="mov_65_36.webm"  ti="2000"]
[stopse buf="0"]
[stopse buf="3"]
[movie storage="mov_65_37.webm" skip="true"]
[playse storage="riko/rk65_028.ogg" loop="true"]
[bgloop mov="mov_65_38.webm"  ti="2000"]
[stopse buf="0"]
;帰宅
;莉子ちゃん愛情度UP
[riko_i]
;体力減少
[eval exp="f.hp = f.hp - 20"]
[stop_bgmovie time="1000"]
;体操着フラグ　１
[eval exp="f.training_wear_riko_h = 1"]
;主人公精力減少
[eval exp="f.energy = f.energy - 30"]
;デートフラグオン（帰宅時に部屋に行くを消すための変数）
[eval exp="tf.date = true"]
;莉子ちゃんエッチフラグ
[eval exp="f.riko_sex = true"]

[menuwindows]
#
Riko's bloomers are very excited[p]
#
I came back to the room[r]
[jump storage="main.ks" target="*night"]

;***********************************************************************************************************************
;ランドセル
*school_bag

;エッチ度判定
[if exp="f.riko_h < 70"]
#
It seems that you still don't wear it ...[p]
さて、どうしようか
[jump storage="main.ks" target="*choice2"]
[endif]

#
[cm]
[freeimage layer="2" time="0"]
[bg storage="black.png" time="1000"]
[bgmovie storage="mov_65_40.webm"]
#莉子
[playse storage="riko/rk101_001.ogg"]
Uncle, I bought this ...[p]
#
I want Riko to carry it!Put it together with your uniform![p]
#莉子
[playse storage="riko/rk101_002.ogg"]
Well, no way it was a lolicon so far ...[r]
I'm not ashamed anymore, this metamorphosis![p]
#
Please, I want to see Riko's cute figure![p]
#莉子
[playse storage="riko/rk101_003.ogg"]
Do you want to see Riko's cute figure?[p]
#
Oh yeah, I really want to see Riko![p]
#莉子
[playse storage="riko/rk101_004.ogg"]
I'll wear it if I say so ... because I just wear it![p]
[cm]
[clearfix]
[stopse buf="0"]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[movie storage="mov_65_53.webm" skip="true"]
[stop_bgmovie]
[menuwindows]
[bgmovie storage="mov_65_41.webm" time="1000"]
#
Riko's school bag!Too cute![p]
#莉子
[playse storage="riko/rk101_005.ogg"]
Uncle face is perverted!The disgusting face is even more disgusting[p]
#
I can't help Riko because it's too cute[p]
#莉子
[playse storage="riko/rk101_006.ogg"]
yes?Riko is cute?[p]
#
Riko -chan is so cute![p]
#莉子
[playse storage="riko/rk101_007.ogg"]
Then, it can't be helped!I'll give you a little service[p]
[cm]
[clearfix]
[stopse buf="0"]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[movie storage="mov_65_42.webm" skip="true"]
[stop_bgmovie]
[menuwindows]
[bgmovie storage="mov_65_45.webm" time="1000"]
#莉子
[playse storage="riko/rk101_008.ogg"]
copper?uncle![p]
[playse storage="riko/rk101_009.ogg"]
Riko is cute![p]
[stop_bgmovie time="1000"]
[bgmovie storage="mov_65_43.webm" time="1000"]
[playse storage="riko/rk101_010.ogg"]
How about like this?[p]
[stop_bgmovie time="1000"]
[bgmovie storage="mov_65_44.webm" time="1000"]
[playse storage="riko/rk101_011.ogg"]
Wow!A nasty face!Uncle, I'm lustful in my child's school bag[r]
It's a lolicon that can't be helped![p]
[playse storage="riko/rk101_012.ogg"]
a little bit!I'm close to my uncle's face ...[p]
#
Riko is too cute to be patient anymore[r]
Please, just a little![p]
#莉子
[playse storage="riko/rk101_013.ogg"]
already…!I can't help Riko because it's too cute![r]
It's just a little![p]
[cm]
[clearfix]
[stopse buf="0"]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[movie storage="mov_65_46.webm" skip="true"]
[stop_bgmovie]
[playse storage="riko/rk101_014.ogg" loop="true"]
[playse storage="se/kutyu01.ogg" loop="true" buf="3"]
[bgloop mov="mov_65_28.webm"  ti="2000"]

[playse storage="riko/rk68_028.ogg" loop="true"]
[playse storage="se/kutyu02.ogg" loop="true" buf="3"]
[bgloop mov="mov_65_29.webm"  ti="2000"]
[playse storage="riko/rk68_031.ogg" loop="true"]
[bgloop mov="mov_65_30.webm"  ti="2000"]
[stopse buf="0"]
[stopse buf="3"]
[movie storage="mov_65_32.webm" skip="true"]
[playse storage="riko/rk65_028.ogg" loop="true"]
[bgloop mov="mov_65_33.webm"  ti="2000"]
[stopse buf="0"]
;帰宅
;莉子ちゃん愛情度UP
[riko_i]
;体力減少
[eval exp="f.hp = f.hp - 20"]
[stop_bgmovie time="1000"]
;ランドセルフラグ　１
[eval exp="f.school_bag_riko_h = 1"]
;主人公精力減少
[eval exp="f.energy = f.energy - 30"]
;デートフラグオン（帰宅時に部屋に行くを消すための変数）
[eval exp="tf.date = true"]
;莉子ちゃんエッチフラグ
[eval exp="f.riko_sex = true"]

[menuwindows]
#
I'm very excited about Riko's school bag[p]
#
I came back to the room[r]
[jump storage="main.ks" target="*night"]
