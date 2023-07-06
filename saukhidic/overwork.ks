;***********************************************************************************************************************
;-過労シナリオ

*start
[cm]
[clearfix]

@bg storage ="room_day.png" time=1000
[menuwindows]
#
that?...... I'm crazy ...[p]
[playse storage="se/butukaru.ogg" buf="2"]
[quake count="1" time="300"]
[mask time="500"]



;■恋人状態か判別
[if exp="f.riko_lover == 2 || f.rina_lover == 2 || f.sizue_lover == 2"]
;愛情度判別にジャンプ
 [jump target="*love"]
[endif]

;***********************************************************************************************************************
;-好感度判定
[if exp="f.riko_f >= f.rina_f && f.riko_f >= f.sizue_f"]
;お見舞い判定　莉子
[eval exp="tf.omimai = 4"]
[endif]

[if exp="f.rina_f > f.riko_f && f.rina_f >= f.sizue_f"]
;お見舞い判定　莉菜
[eval exp="tf.omimai = 5"]
[endif]

[if exp="f.sizue_f > f.riko_f && f.sizue_f > f.rina_f"]
;お見舞い判定　静江
[eval exp="tf.omimai = 6"]
[endif]

;***********************************************************************************************************************
;-好感度お見舞い判別
;莉子
[if exp="tf.omimai == 4 && f.riko_f > = 30"]
Riko Come on 4[p]
[jump target="*riko_nursing"]
[endif]
;莉菜
[if exp="tf.omimai == 5 && f.rina_f >= 30"]
Rina Gourd 5[p]
[jump target="*rina_nursing"]
[endif]
;静江
[if exp="tf.omimai == 6 && f.sizue_f >= 30"]
; Shizue visit 6[p]
[jump target="*sizue_nursing"]
[endif]
[eval exp="tf.omimai =0"]
[jump target="*omimai_sakurako"]

;-愛情判別-----------------------------------------------------------------------
*love

;[if exp="f.riko_i >= f.rina_i && f.riko_i >= f.sizue_i"]
;お見舞い判定　莉子
;[eval exp="tf.omimai = 1"]
;[endif]

;[if exp="f.rina_i > f.riko_i && f.rina_i >= f.sizue_i"]
;お見舞い判定　莉菜
;[eval exp="tf.omimai = 2"]
;[endif]

;[if exp="f.sizue_i > f.riko_i && f.sizue_i > f.rina_i"]
;お見舞い判定　静江
;[eval exp="tf.omimai = 3"]
;[endif]

*omimai_loop
;ランダム数値の取り出し
[iscript]
tf.rand = Math.floor( Math.random() * 3)
[endscript]

[if exp="tf.rand ==0"]
 [if exp="f.riko_lover == 2"]
 [eval exp="tf.omimai = 1"]
 [jump target="*riko_nursing2"]
 [endif]
[endif]

[if exp="tf.rand ==1"]
 [if exp="f.rina_lover == 2"]
 [eval exp="tf.omimai = 2"]
 [jump target="*rina_nursing2"]
 [endif]
[endif]

[if exp="tf.rand ==2"]
 [if exp="f.sizue_lover == 2"]
 [eval exp="tf.omimai = 3"]
 [jump target="*sizue_nursing2"]
 [endif]
[endif]

[jump target="*omimai_loop"]

;-愛情お見舞い判別---------------------------------------------------------------
;莉子
[if exp="tf.omimai == 1"]
;莉子お見舞い1
[jump target="*riko_nursing2"]
[endif]
;莉菜
[if exp="tf.omimai == 2"]
;莉菜お見舞い
[jump target="*rina_nursing2"]
[endif]
;静江
[if exp="tf.omimai == 3"]
;静江お見舞い
[jump target="*sizue_nursing2"]
[endif]
;



;全員判定以下の場合お見舞いイベント無-----------------------------------------------------
*omimai_sakurako
[if exp="tf.omimai == 0"]
@bg storage ="room_evening.png"
[mask_off time="500"]
#
Apparently I was too tired and fell down[p]
[endif]

[return]

;-莉子ちゃん好感度判定-----------------------------------------------------------------------
*riko_nursing
;--好感度80以上
[if exp="f.riko_f >= 80 "]
@bg storage ="room_evening.png"
[mask_off time="500"]
#
Apparently I was too tired and fell down[p]
@bg storage ="nursing/img08_02.png" time=1000
#
Riko -chan?[p]
[playse storage="riko/rk08_005.ogg" buf="0"]
Uncle, porridge!Can you eat?[r]
Ah, let's give it?[p]
@bg storage ="room_evening.png" time=1000
#
I'm fine because Riko cared for me![p]
[return]
[endif]

;--好感度60以上
[if exp="f.riko_f >= 60 "]
@bg storage ="room_evening.png"
[mask_off time="500"]
#
Apparently I was too tired and fell down[p]
@bg storage ="nursing/img08_01.png" time=1000
#
Riko -chan?[p]
[playse storage="riko/rk08_004.ogg" buf="0"]
OK, uncle?What is the heat?[p]
@bg storage ="room_evening.png" time=1000
#
I'm fine because Riko cared for me![p]

[return]
[endif]

;--好感度30以上
[if exp="f.riko_f >= 30 "]
@bg storage ="room_evening.png"
[mask_off time="500"]
#
Apparently I was too tired and fell down[p]
@bg storage ="nursing/img08_00.png" time=1000
#
Riko -chan?[p]
[playse storage="riko/rk08_003.ogg" buf="0"]
Uncle, are you okay?Do you want something?[p]
@bg storage ="room_evening.png" time=1000
#
I'm fine because Riko cared for me![p]

[return]
[endif]

;-莉菜ちゃん好感度判定-----------------------------------------------------------------------
*rina_nursing
;--好感度80以上
[if exp="f.rina_f >= 80 "]
@bg storage ="room_evening.png"
[mask_off time="500"]
#
Apparently I was too tired and fell down[p]
@bg storage ="nursing/img09_01.png" time=1000
#
Rina -chan?[p]
[playse storage="rina/rn09_005.ogg" buf="0"]
My brother porridge has been prepared[r]
can you eat?[p]
[playse storage="rina/rn09_005_1.ogg" buf="0"]
It looks hot, ... I'll let you eat it[p]
@bg storage ="room_evening.png" time=1000
#
Rina -chan took care of me, so I'm fine![p]

[return]
[endif]

;--好感度60以上
[if exp="f.rina_f >= 60 "]
@bg storage ="room_evening.png"
[mask_off time="500"]
#
Apparently I was too tired and fell down[p]
@bg storage ="nursing/img09_02.png" time=1000
#
Rina -chan?[p]
[playse storage="rina/rn09_004.ogg" buf="0"]
My brother, how about fever?[r]
Ah, it's still hot[p]
@bg storage ="room_evening.png" time=1000
#
Rina -chan took care of me, so I'm fine![p]

[return]
[endif]

;--好感度30以上
[if exp="f.rina_f >= 30 "]
@bg storage ="room_evening.png"
[mask_off time="500"]
#
Apparently I was too tired and fell down[p]
@bg storage ="nursing/img09_00.png" time=1000
#
Rina -chan?[p]
[playse storage="rina/rn09_001.ogg" buf="0"]
My brother, I stuck a porridge[r]
Please eat if you like[p]
@bg storage ="room_evening.png" time=1000
#
Rina -chan took care of me, so I'm fine![p]

[return]
[endif]

;-静江さん好感度判定-----------------------------------------------------------------------
*sizue_nursing
;--好感度80以上
[if exp="f.sizue_f >= 80 "]
@bg storage ="room_evening.png"
[mask_off time="500"]
#
Apparently I was too tired and fell down[p]
@bg storage ="nursing/img10_00.png" time=1000
#
Shizue?[p]
[playse storage="sizue/sz10_003.ogg" buf="0"]
Oh, my brother!Can you eat porridge?[r]
Shall I let my aunt eat?[p]
[playse storage="sizue/sz10_003_1.ogg" buf="0"]
yes!Ah[p]
@bg storage ="room_evening.png" time=1000
#
Shizue -san took care of me, so I'm fine![p]

[return]
[endif]

;--好感度60以上
[if exp="f.sizue_f >= 60 "]
@bg storage ="room_evening.png"
[mask_off time="500"]
#
Apparently I was too tired and fell down[p]
@bg storage ="nursing/img10_01.png" time=1000
#
Shizue?[p]
[playse storage="sizue/sz10_004.ogg" buf="0"]
My brother still has a fever ~[r]
You have to sleep properly![p]
@bg storage ="room_evening.png" time=1000
#
Shizue -san took care of me, so I'm fine![p]

[return]
[endif]

;--好感度30以上
[if exp="f.sizue_f >= 30 "]
@bg storage ="room_evening.png"
[mask_off time="500"]
#
Apparently I was too tired and fell down[p]
@bg storage ="nursing/img10_02.png" time=1000
#
Shizue?[p]
[playse storage="sizue/sz10_001.ogg" buf="0"]
What happened to your brother?[r]
I had a cold[p]
@bg storage ="room_evening.png" time=1000
#
Shizue -san took care of me, so I'm fine![p]

[return]
[endif]

;-莉子ちゃん愛情度判定------------------------------------------------------------------------------------------------------
*riko_nursing2

;--莉子お見舞いイベント①　スカート-------------------------------------------------

[if exp="f.nursing_riko == undefined"]
@bg storage ="room_evening.png"
[mask_off time="500"]
#
Apparently I was too tired and fell down[p]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[cm]
[clearfix]

[freeimage layer="base" time="500"]

[movie storage="mov_08_3_1.webm" skip="true"]
[movie storage="mov_08_3_2.webm" skip="true"]
[movie storage="mov_08_3_3.webm" skip="true"]

@bg storage ="room_evening.png" time=1000
[menuwindows]
#
Looking at Riko's pants, I'm fine![p]

;お見舞い胸見せフラグ
[eval exp="f.nursing_riko = 2"]

[return]
[endif]

;--莉子お見舞いイベント②　胸見せ-------------------------------------------------

[if exp="f.nursing_riko == 2"]
@bg storage ="room_evening.png"
[mask_off time="500"]
#
Apparently I was too tired and fell down[p]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[cm]
[clearfix]

[freeimage layer="base" time="500"]

[movie storage="mov_08_4_1.webm" skip="true"]

@bg storage ="room_evening.png" time=1000
[menuwindows]
#
When I saw Riko's boobs, I got help![p]

;お見舞い胸見せフラグ
[eval exp="f.nursing_riko = 3"]

[return]
[endif]

;--莉子お見舞いイベント③　クパァ-------------------------------------------------

[if exp="f.nursing_riko == 3"]
@bg storage ="room_evening.png"
[mask_off time="500"]
#
Apparently I was too tired and fell down[p]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[cm]
[clearfix]

[freeimage layer="base" time="500"]

[movie storage="mov_08_5_1.webm" skip="true"]

@bg storage ="room_evening.png" time=1000
[menuwindows]
#
Thanks to Riko -chan, are you getting better?[p]

;お見舞いクパァフラグ
[eval exp="f.nursing_riko = 4"]

[return]
[endif]

;--莉子お見舞いイベント④　足コキ-------------------------------------------------

[if exp="f.nursing_riko == 4"]
@bg storage ="room_evening.png"
[mask_off time="500"]
#
Apparently I was too tired and fell down[p]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[cm]
[clearfix]

[freeimage layer="base" time="500"]

[movie storage="mov_08_6_1.webm" skip="true"]
[movie storage="mov_08_6_2.webm" skip="true"]
[movie storage="mov_08_6_4.webm" skip="true"]
[movie storage="mov_08_6_5.webm" skip="true"]
[movie storage="mov_08_6_6.webm" skip="true"]
[movie storage="mov_08_6_7.webm" skip="true"]

@bg storage ="room_evening.png" time=1000
[menuwindows]
#
I was fine because Riko took care of me ...[p]

;お見舞い足コキ１回目フラグ
[eval exp="f.nursing_riko = 5"]

;主人公精力減少
[eval exp="f.energy = f.energy - 30"]

[return]
[endif]

;--莉子お見舞いイベント⑤　フェラ１回目-------------------------------------------------
[if exp="f.nursing_riko == 5"]
@bg storage ="room_evening.png"
[mask_off time="500"]
#
Apparently I was too tired and fell down[p]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[cm]
[clearfix]

[freeimage layer="base" time="500"]

[movie storage="mov_08_7_1.webm" skip="true"]
[movie storage="mov_08_7_2.webm" skip="true"]
[movie storage="mov_08_7_3.webm" skip="true"]
[movie storage="mov_08_7_4.webm" skip="true"]
[bgloop mov="mov_08_7_5.webm" ]
[movie storage="mov_08_7_6.webm" skip="true"]

@bg storage ="room_evening.png" time=1000
[menuwindows]
#
I was fine because Riko took care of me ...[p]

;お見舞いフェラ１回目フラグ
[eval exp="f.nursing_riko = 6"]

;主人公精力減少
[eval exp="f.energy = f.energy - 30"]

[return]
[endif]

;--莉子お見舞いイベント⑥　フェラ２回目以降-------------------------------------------------
[if exp="f.nursing_riko == 6"]
@bg storage ="room_evening.png"
[mask_off time="500"]
#
Apparently I was too tired and fell down[p]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[cm]
[clearfix]

[freeimage layer="base" time="500"]

[movie storage="mov_08_7_1.webm" skip="true"]
[bgloop mov="mov_08_7_5.webm" ]
[movie storage="mov_08_7_6.webm" skip="true"]

@bg storage ="room_evening.png" time=1000
[menuwindows]
#
I was fine because Riko took care of me ...[p]

;主人公精力減少
[eval exp="f.energy = f.energy - 30"]

[return]
[endif]

;-莉菜ちゃん愛情度判定------------------------------------------------------------------------------------------------------
*rina_nursing2

;--莉菜お見舞いイベント①　胸見せ-------------------------------------------------

[if exp="f.nursing_rina == undefined"]
@bg storage ="room_evening.png"
[mask_off time="500"]
#
Apparently I was too tired and fell down[p]
[bg storage ="nursing/img09_04.png" time="1000"]
#莉菜
[playse storage="rina/rn09_008.ogg" buf="0"]
How about a cold?brother[r]
I'm worried[p]
#
It's okay, Rina -chan[r]
If you are at rest, you will be fine soon[p]
But there is a way to get better quickly ...[p]
#莉菜
[playse storage="rina/rn09_009.ogg" buf="0"]
What is the method?[p]
#
That's ...[p]
Rina's boobs![r]
If you see Rina's boobs, you'll be fine right away![p]
[bg storage ="nursing/img09_05.png" time="500"]
#莉菜
[playse storage="rina/rn09_010.ogg" buf="0"]
yes![r]
............. My brother's etch ...[p]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[cm]
[clearfix]
[stopse buf="0"]
[freeimage layer="base" time="500"]

[movie storage="mov_09_4_1.webm" skip="true" time="500"]
[movie storage="mov_09_4_2.webm" skip="true"]
[movie storage="mov_09_4_3.webm" skip="true"]

@bg storage ="room_evening.png" time=1000
[menuwindows]
#
I'm fine thanks to Rina's boobs!![p]

;お見舞い胸見せフラグ
[eval exp="f.nursing_rina = 2"]

[return]
[endif]

;--莉菜お見舞いイベント②　下見せ-------------------------------------------------

[if exp="f.nursing_rina == 2"]
@bg storage ="room_evening.png"
[mask_off time="500"]
#
Apparently I was too tired and fell down[p]
[bg storage ="nursing/img09_06.png" time="1000"]
#莉菜
[playse storage="rina/rn09_012.ogg" buf="0"]
Your brother, don't overdo it[r]
How's your health?[p]
#
Hmm ... I'm not feeling well[p]
#莉菜
[playse storage="rina/rn09_013.ogg" buf="0"]
Shall I take medicine?[p]
#
No ... I know how to get well[p]
If you get well, your heart will be well![p]
Rina -chan, please![r]
Show Rina's important points![p]
[bg storage ="nursing/img09_07.png" time="500"]
#莉菜
[playse storage="rina/rn09_014.ogg" buf="0"]
What!...... Why is that so![p]
#
If you can see Rina's there, I will be fine and the cold will be cured in one shot.[r]
Rina -chan, please![p]
#莉菜
[playse storage="rina/rn09_015.ogg" buf="0"]
Yeah, because I'm just thinking about that kind of thing[r]
This is only this time ...[p]
#
;メッセージボックスは非表示
@layopt layer="message" visible=false
[cm]
[clearfix]
[stopse buf="0"]
[freeimage layer="base" time="500"]

[movie storage="mov_09_5_1.webm" skip="true" time="500"]
[movie storage="mov_09_5_2.webm" skip="true"]
[menuwindows]
[bg storage ="nursing/img09_03.png" time="500"]

Thank you, Rina -chan[r]
I want to get well and be inserted into Rina -chan![p]

;メッセージボックスは非表示
@layopt layer="message" visible=false
[cm]
[clearfix]

[freeimage layer="base" time="500"]
[movie storage="mov_09_5_3.webm" skip="true" time="500"]


@bg storage ="room_evening.png" time=1000
[menuwindows]
#
I was satisfied because I saw Riko's there[p]

;お見舞い下見せフラグ
[eval exp="f.nursing_rina = 3"]

[return]
[endif]

;--莉菜お見舞いイベント③　手コキ-------------------------------------------------

[if exp="f.nursing_rina == 3"]
@bg storage ="room_evening.png"
[mask_off time="500"]
#
Apparently I was too tired and fell down[p]

[bg storage ="nursing/img09_08.png" time="1000"]
#莉菜
[playse storage="rina/rn09_017.ogg" buf="0"]
Your brother, when you have a cold, you should be warm and sleepy.[p]
#
No ... Rina -chan, I want to sleep too ...[r]
I had a lot of things[p]
#莉菜
[playse storage="rina/rn09_018.ogg" buf="0"]
what is it?[p]
#
Look!this,[r]
I'm so fine that I can't sleep at all[p]
[bg storage ="nursing/img09_09.png" time="1000"]
#莉菜
[playse storage="rina/rn09_019.ogg" buf="0"]
My brother is just like that when I have a cold[p]
#
Rina -chan!please!You can do it by hand![p]
#莉菜
[playse storage="rina/rn09_020.ogg" buf="0"]
I guess we have no choice……[p]

;メッセージボックスは非表示
@layopt layer="message" visible=false
[cm]
[clearfix]
[freeimage layer="base" time="500"]
[playse storage="se/tekoki_oso.ogg" buf="3" loop="true"]
[bgloop mov="mov_09_6_1.webm"]
[stopse buf="3"]
[movie storage="mov_09_6_3.webm" skip="true"]

@bg storage ="room_evening.png" time=1000
[menuwindows]
#
Did you get well thanks to Rina -chan?[p]

;お見舞いテコキフラグ
[eval exp="f.nursing_rina = 4"]

;主人公精力減少
[eval exp="f.energy = f.energy - 30"]

[return]
[endif]

;--莉菜お見舞いイベント④　フェラ-------------------------------------------------

[if exp="f.nursing_rina == 4"]
@bg storage ="room_evening.png"
[mask_off time="500"]
#
Apparently I was too tired and fell down[p]

[bg storage ="nursing/img09_10.png" time="1000"]
#莉菜
[playse storage="rina/rn09_023.ogg" buf="0"]
My brother, did you get sick again?[r]
Isn't that really fine?[p]
#
That's right, Rina -chan!I want to rest as much as possible and cure it as soon as possible[r]
I don't hear what this guy says[p]
please!Rina -chan[r]
Will you calm down this guy with your mouth?[p]
[bg storage ="nursing/img09_11.png" time="1000"]
#莉菜
[playse storage="rina/rn09_024.ogg" buf="0"]
Well, your brother is just that![p]

;メッセージボックスは非表示
@layopt layer="message" visible=false
[cm]
[clearfix]
[stopse buf="0"]
[freeimage layer="base" time="500"]
;[playse storage="rina/rn09_025.ogg" buf="0" loop="true"]
[bgloop mov="mov_09_7_1.webm" ]
[stopse buf="0"]
[movie storage="mov_09_7_3.webm" skip="true"]

@bg storage ="room_evening.png" time=1000
[menuwindows]
#
Thanks to Rina -chan, I'm fine ...[p]

;お見舞いフェラフラグ
[eval exp="f.nursing_rina = 4"]

;主人公精力減少
[eval exp="f.energy = f.energy - 30"]

[return]
[endif]

;-静江さん愛情度判定------------------------------------------------------------------------------------------------------
*sizue_nursing2

;--静江お見舞いイベント①　キス-------------------------------------------------

[if exp="f.nursing_sizue == undefined"]
@bg storage ="room_evening.png"
[mask_off time="500"]
#
Apparently I was too tired and fell down[p]

[bg storage ="nursing/img10_03.png" time="1000"]
#静江
[playse storage="sizue/sz10_005.ogg" buf="0"]
Is your brother okay?[r]
I'm going to be energetic[p]

;メッセージボックスは非表示
@layopt layer="message" visible=false
[cm]
[clearfix]

[freeimage layer="base" time="500"]
[playse storage="sizue/sz10_006.ogg" buf="0" loop="true"]
[movie storage="mov_10_3_1.webm" skip="true"]
[stopse buf="0"]
@bg storage ="room_evening.png" time=1000
[menuwindows]
#
Shizue's kiss is perfect![p]

;お見舞いキスフラグ
[eval exp="f.nursing_sizue = 2"]

[return]
[endif]

;--静江お見舞いイベント②　胸-------------------------------------------------

[if exp="f.nursing_sizue == 2"]
@bg storage ="room_evening.png"
[mask_off time="500"]
#
Apparently I was too tired and fell down[p]

[bg storage ="nursing/img10_04.png" time="1000"]
#静江
[playse storage="sizue/sz10_007.ogg" buf="0"]
Oh oh, your brother, aren't you fine?[r]
Will this be fine?[p]

;メッセージボックスは非表示
@layopt layer="message" visible=false
[cm]
[clearfix]

[freeimage layer="base" time="500"]
[bgloop mov="mov_10_4_1.webm" ]

@bg storage ="room_evening.png" time=1000
[menuwindows]
#
Shizue's boobs are the best![p]

;お見舞い胸みせフラグ
[eval exp="f.nursing_sizue = 3"]

[return]
[endif]

;--静江お見舞いイベント③　あそこ-------------------------------------------------

[if exp="f.nursing_sizue == 3"]
@bg storage ="room_evening.png"
[mask_off time="500"]
#
Apparently I was too tired and fell down[p]

[bg storage ="nursing/img10_05.png" time="1000"]
#静江
[playse storage="sizue/sz10_009.ogg" buf="0"]
I'm sorry ... My brother seems to be spicy[r]
But ~ Aunt is also spicy[p]
[playse storage="sizue/sz10_009_1.ogg" buf="0"]
Look, look[p]

;メッセージボックスは非表示
@layopt layer="message" visible=false
[cm]
[clearfix]

[freeimage layer="base" time="500"]
[playse storage="sizue/sz10_010.ogg" buf="0"]
[movie storage="mov_10_5_1.webm" skip="true"]
[bgloop mov="mov_10_5_2.webm" ]


@bg storage ="room_evening.png" time=1000
[menuwindows]
#
Thanks to Mr. Shizue, another place has become well[p]

;お見舞いあそこフラグ
[eval exp="f.nursing_sizue = 4"]

[return]
[endif]

;--静江お見舞いイベント④　フェラ-------------------------------------------------

[if exp="f.nursing_sizue == 4"]
@bg storage ="room_evening.png"
[mask_off time="500"]
#
Apparently I was too tired and fell down[p]
?[p]
Shizue -san![p]

[bg storage ="nursing/img10_06.png" time="1000"]
#静江
[playse storage="sizue/sz10_017.ogg" buf="0"]
This is the best way to make your brother healthy[p]

;メッセージボックスは非表示
@layopt layer="message" visible=false
[cm]
[clearfix]

[freeimage layer="base" time="500"]
[bgloop mov="mov_10_6_1.webm" ]
[movie storage="mov_10_6_3.webm" skip="true"]


@bg storage ="room_evening.png" time=1000
[menuwindows]
#
Did you feel better thanks to Shizue -san?[p]

;主人公精力減少
[eval exp="f.energy = f.energy - 30"]
;お見舞いあそこフラグ
[eval exp="f.nursing_sizue = 4"]

[return]
[endif]

