;おねだりエッチ
*start


;f.riko_orgasm  絶頂経験ありでフラグオン
;f.riko_sex エッチしたらフラグオン
;f.riko_libido 性欲 エッチしないと増加

;***********************************************************************************************************************
;おねだり判別　莉子
;f.riko_libido　8以上でおねだり
[if exp="f.riko_libido >= 8"]
I wonder if I will write in my diary for the time being[p][p]
[freeimage layer="2" time="0"]
[stop_bgmovie]
[bg storage="black.png" time="1000"]
[bgmovie storage="mov_58_1.webm" time="2000"]
#
Oh, Riko -chan[r]
what happened[p]
#莉子
[playse storage="riko/rk58_001.ogg" buf="0"]
Uncle ... Riko, I want to etch ...[p]
#
eh?[p]
#莉子
[playse storage="riko/rk58_002.ogg" buf="0"]
Riko, I want to etch![p]
#
Riko -chan ...[p]
[stop_bgmovie time="1000"]
[bgmovie storage="mov_58_2.webm" time="2000"]
#莉子
[playse storage="riko/rk58_003.ogg" buf="0"]
Hey, uncle ... Riko, it's like this ... you want to insert it in Riko, right?[p]
#
yes[p]
#莉子
[playse storage="riko/rk58_004.ogg" buf="0"]
Want to insert it into Riko's pussy?[p]
#
Yeah, I want to insert[p]
#莉子
[playse storage="riko/rk58_005.ogg" buf="0"]
Do you want to insert it into your uncle's Ochinchin, Riko's pussy?[p]
#
I want to insert[p]
#莉子
[playse storage="riko/rk58_006.ogg" buf="0"]
If you say so much, Riko will etch[p]
#
yes?[p]
#莉子
[playse storage="riko/rk58_007.ogg" buf="0"]
I can't help it, so I'll give you a lot of sex! uncle[p]
#
(That? ... Well, I'm sorry)[r]
Riko Miss, I can't stand it anymore![p]
[cm]
[clearfix]
[stopse buf="0"]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[stop_bgmovie time="1000"]
[playse storage="riko/rk58_008.ogg" buf="0" loop ="true"]
[playse storage="se/kutyu03.ogg" buf="3" loop ="true"]
[bgloop mov="mov_58_3.webm"  ti="2000"]
[playse storage="riko/rk58_009.ogg" buf="0" loop ="true"]
[bgloop mov="mov_58_5.webm"  ti="2000"]
[stopse buf="0"]
[stopse buf="3"]
[movie storage="mov_58_7.webm" skip="true"]
[playse storage="riko/rk58_011.ogg" buf="0" loop ="true"]
[bgloop mov="mov_58_8.webm"  ti="2000"]
[stopse buf="0"]
[stopse buf="3"]

[bg storage="black.png" time="1000"]
@bg storage ="room_night.png" time=1000
[menuwindows]
[uiwindows]
#
;主人公精力減少
[eval exp="f.energy = f.energy - 30"]
;莉子ちゃんエッチフラグ
[eval exp="f.riko_sex = true"]
;デートフラグオン（帰宅時に部屋に行くを消すための変数）
[eval exp="tf.date = true"]

[call storage="sakurako.ks" target="*orgasm_sakurako"]

[return]
[endif]
;***********************************************************************************************************************
;おねだり判別　莉菜
;f.riko_libido　7以上でおねだり
[if exp="f.rina_libido >= 7"]
Riko Miss, I can't stand it anymore![p][p]
[freeimage layer="2" time="0"]
[stop_bgmovie]
[bg storage="black.png" time="1000"]
[bgmovie storage="mov_59_1.webm" time="2000"]
#
Oh, Rina -chan! what happened?[p]
#莉菜
[playse storage="rina/rn59_001.ogg" buf="0"]
Your brother ... that ...[p]
#
Hmm, what?[p]
[cm]
[clearfix]
[stopse buf="0"]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[stop_bgmovie time="1000"]
[movie storage="mov_59_2.webm" skip="true"]
[menuwindows]
[bg storage="img_59_9.png" time="1000"]
Rina -chan?[p]
#莉菜
[playse storage="rina/rn59_003.ogg" buf="0"]
I'm always bullied by my brother, so today I will bully my brother![p]
#
yes![p]
#莉菜
[playse storage="rina/rn59_004.ogg" buf="0"]
Please be prepared![p]
[cm]
[clearfix]
[stopse buf="0"]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[bg storage="black.png" time="1000"]
[playse storage="rina/rn59_005.ogg" buf="0" loop="true"]
[playse storage="se/kutyu03.ogg" buf="3" loop ="true"]
[bgloop mov="mov_59_5.webm"  ti="2000"]
[stopse buf="0"]
[stopse buf="3"]

[movie storage="mov_59_7.webm" skip="true"]
[playse storage="rina/rn59_009.ogg" buf="0" loop="true"]
[movie storage="mov_59_8.webm" skip="true"]
[stopse buf="0"]
[bg storage="black.png" time="1000"]

@bg storage ="room_night.png" time=1000
[menuwindows]
[uiwindows]

#
;主人公精力減少
[eval exp="f.energy = f.energy - 30"]
;莉菜ちゃんエッチフラグ
[eval exp="f.rina_sex = true"]
;デートフラグオン（帰宅時に部屋に行くを消すための変数）
[eval exp="tf.date = true"]

[call storage="sakurako.ks" target="*orgasm_sakurako"]

[return]
[endif]
;***********************************************************************************************************************
;おねだり判別　静江
;f.riko_libido　6以上でおねだり
[if exp="f.sizue_libido >= 6"]
Please be prepared![p][p]
[freeimage layer="2" time="0"]
[stop_bgmovie]
[bg storage="black.png" time="1000"]
[bgmovie storage="mov_60_2.webm" time="2000"]
#
a!Mr. Shizue, what happened[p]
#静江
[playse storage="sizue/sz60_001.ogg" buf="0"]
My brother, an aunt ... it's already the limit ...[p]
#
yes!What is it?[p]
#静江
[playse storage="sizue/sz60_002.ogg" buf="0"]
My brother ... no more ... no ...[p]
#
Shizue -san! What happened![p]
#静江
[playse storage="sizue/sz60_003.ogg" buf="0"]
My brother ... I'll do it![p]
#
eh![p]
[stop_bgmovie time="2000"]
[bgmovie storage="mov_60_3.webm" time="2000"]
#静江
[playse storage="sizue/sz60_004.ogg" buf="0"]
Look, your brother ... Aunt's here ... It's like this! I want your brother[r]
It's a guchogucho ... already!Because of your brother!I did this much of my aunt ...[p]
[stop_bgmovie time="1000"]
[cm]
[clearfix]
[stopse buf="0"]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[bg storage="black.png" time="1000"]
[playse storage="sizue/sz61_009.ogg" buf="0" loop="true"]
[playse storage="se/kutyu03.ogg" buf="3" loop ="true"]
[bgloop mov="mov_60_4.webm"  ti="2000"]
[stopse buf="0"]
[stopse buf="3"]
[movie storage="mov_60_6.webm" skip="true"]

[bg storage="black.png" time="1000"]
@bg storage ="room_night.png" time=1000
[menuwindows]
[uiwindows]

;主人公精力減少
[eval exp="f.energy = f.energy - 30"]
;静江さんエッチフラグ
[eval exp="f.sizue_sex = true"]
;デートフラグオン（帰宅時に部屋に行くを消すための変数）
[eval exp="tf.date = true"]

[call storage="sakurako.ks" target="*orgasm_sakurako"]

[return]
[endif]

;***********************************************************************************************************************
[return]
