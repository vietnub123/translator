;商店街

*start

[cm]
[clearfix]
;体力減少
[eval exp="f.hp = f.hp - 10"]
[mask time="500"]
;桜子消去
#
[chara_hide name="sakurako"]
[playbgm storage="nonbiri.ogg" loop="true"]
@bg storage ="shoppingstreet_day.png" time=0"
[menuwindows]

[mask_off time="500"]

;--１回目の判別
[if exp="f.shoppingstreet_fast == undefined"]
#
I came to the rainbow shopping street[p]
Rina seems to come shopping often[p]

[eval exp="f.shoppingstreet_fast = true"]
[else]
#
I came to the rainbow shopping street[p]
[endif]


;-キャラクター判別
;配列変数 f.shoppingstreet_day を日付で判別
;0 桜子　１　莉子　２　莉菜　３　静江
[if exp="f.shoppingstreet_day[f.day] == 0"]
[call storage="sakurako.ks" target="*sakurako_shoppingstreet"]
[return]
[endif]

;莉子
[if exp="f.shoppingstreet_day[f.day] == 1"]
[jump target="*riko_shoppingstreet"]
[endif]

;莉菜
[if exp="f.shoppingstreet_day[f.day] == 2"]
[jump target="*rina_shoppingstreet"]
[endif]

;静江
[if exp="f.shoppingstreet_day[f.day] == 3"]
[jump target="*sizue_shoppingstreet"]
[endif]

;二人
[if exp="f.shoppingstreet_day[f.day] == 5"]
[jump target="*futari_shoppingstreet"]
[endif]

;-商店街イベント　莉菜-----------------------------------------------------------------------------------------
*rina_shoppingstreet

;桜子会話呼び出し
[call storage="sakurako.ks" target="*sakurako_rina_goout"]

;温泉判別
;エッチ度70以上
;f.spa = 1 莉子　　f.spa = 2 莉菜　　f.spa = 3 静江　　f.spa = 4 帰宅
[if exp="f.spa == undefined"]
 [if exp="f.riko_h >= 70 && f.spa_riko_h == undefined"]
  [eval exp = "f.spa = 1"]
  [jump target="*spa_shoppingstreet"]
 [endif]
 [if exp="f.rina_h >= 70 && f.spa_rina_h == undefined"]
  [eval exp = "f.spa = 2"]
  [jump target="*spa_shoppingstreet"]
 [endif]
 [if exp="f.sizue_h >= 70 && f.spa_sizue_h == undefined"]
  [eval exp = "f.spa = 3"]
  [jump target="*spa_shoppingstreet"]
 [endif]
[endif]

;--①
[if exp="f.rina_shoppingstreet == undefined || f.rina_shoppingstreet == 1"]
#
[bg storage="shoppingstreet/img18_06.png" time="1000"]
Ah!Rina -chan[p]
#莉菜
[playse storage="rina/rn18_008.ogg" buf="0"]
What happened to your brother?In such a place[p]
#
It happened, but it's full of luggage[p]
#莉菜
[playse storage="rina/rn18_009.ogg" buf="0"]
It was cheap at special sale, so I bought it too much[r]
thank you very much[p]
#
I returned with Rina -chan[p]

[eval exp="tf.place = 1"]
;莉菜ちゃん好感度UP
[rina_f]

;パートナー莉菜ちゃん変更
[eval exp="f.partner = 2"]

[eval exp="f.rina_shoppingstreet = 2"]
[return]
[endif]

;--②
[if exp="f.rina_shoppingstreet == 2"]
#
[bg storage="shoppingstreet/img18_07.png" time="1000"]
Rina -chan, I'm talking happily with the owner ...[r]
I wonder if it looks fun[p]
Rina -chan, shopping is over[p]
[bg storage="shoppingstreet/img18_07.png" time="1000"]
#莉菜
[playse storage="rina/rn18_010.ogg" buf="0"]
brother!Yeah, where did you see it![p]
#
Yeah, I wonder if I'm in a battle with the shopkeeper[p]
#莉菜
[playse storage="rina/rn18_011.ogg" buf="0"]
I'm absorbed in ... embarrassing[p]
#
Let's go home together[p]
#莉菜
[playse storage="rina/rn18_012.ogg" buf="0"]
yes[p]
#魚屋さん
Rina -chan, fish is cheap today![p]
#莉菜
[playse storage="rina/rn18_013.ogg" buf="0"]
picture!really?Which fish is it![p]
[bg storage ="shoppingstreet_day.png" time="1000"]
#
Ah ...[p]
[bg storage ="shoppingstreet_evening.png" time="1000"]
#
I waited for Rina -chan's shopping to finish and went home[p]


;莉菜ちゃん好感度UP
[rina_f]

;パートナー莉菜ちゃん変更
[eval exp="f.partner = 2"]

[eval exp="tf.place = 1"]
[eval exp="f.rina_shoppingstreet = 3"]


[return]
[endif]

;--③
[if exp="f.rina_shoppingstreet == 3"]
#
[bg storage="shoppingstreet/img18_08.png" time="1000"]
Rina -chan!Shopping?[p]
#莉菜
[playse storage="rina/rn18_014.ogg" buf="0"]
Yes, today is a special sale day[p]
Ju, even if you have luggage[p]
#莉菜
[playse storage="rina/rn18_015.ogg" buf="0"]
really?thank you[p]
#
[bg storage ="shoppingstreet_day.png" time="1000"]
At all ...[p]
[bg storage="shoppingstreet/img18_09.png" time="1000"]
#莉菜
[playse storage="rina/rn18_016.ogg" buf="0"]
Your brother, I'm going to that shop this time![p]
#
Huh ~ ... It's hard for lack of exercise ...[p]

[bg storage ="shoppingstreet_evening.png" time="1000"]
#
I waited for Rina -chan's shopping to finish and went home[p]


;莉菜ちゃん好感度UP
[rina_f]

;パートナー莉菜ちゃん変更
[eval exp="f.partner = 2"]

[eval exp="tf.place = 1"]
[eval exp="f.rina_shoppingstreet = 1"]


[return]
[endif]

;--二人

*futari_shoppingstreet
#
[bg storage="shoppingstreet/img17_15.png" time="1000"]
Are both shopping?[p]
[playse storage="rina/rn18_017.ogg" buf="0"]
I asked Riko to go shopping.[p]

;莉菜ちゃん好感度UP
[rina_f]

;パートナー二人変更
[eval exp="f.partner = 4"]

[eval exp="tf.place = 1"]

[return]

;温泉福引
*spa_shoppingstreet
#
[bg storage="spa/img_48_1.png" time="1000"]
Rina -chan, are you returning now?[p]
#莉菜
[playse storage="rina/rn48_001.ogg" buf="0"]
My brother, I'm going to go to the shopping district from now on[r]
Would you go with you?[p]
#
lottery?[p]
#莉菜
[playse storage="rina/rn48_002.ogg" buf="0"]
yes!The first place is a hot spring trip[r]
There are several tickets, so let's turn together[p]
#
Yeah, go![p]
[bg storage="spa/img_48_3.png" time="1000"]
Rina -chan, I was sorry ... all tissues![p]
#莉菜
[playse storage="rina/rn48_003.ogg" buf="0"]
I'm lucky luck ...[p]
#商店街のおじさん
How about Anchan[p]
[bg storage="spa/img_48_2.png" time="1000"]
#莉菜
[playse storage="rina/rn48_004.ogg" buf="0"]
Your brother, please do your best! Last once![p]
#
(I'll ask you, my fortune! God! Buddha! Sakurako Sakurako! Wow ~)[p]
[bg storage="spa/img_48_4.png" time="1000"]
child!This is ~!?[p]
[bg storage="spa/img_48_5.png" time="1000"]
#莉菜
[playse storage="rina/rn48_005.ogg" buf="0"]
brother!Great!It's a hot spring trip![p]
#
No way to win the first place![p]
It's a hot spring trip on the next holiday![p]
[stopse]
;パートナー莉菜ちゃん変更
[eval exp="f.partner = 2"]
[eval exp="tf.place = 1"]
[return]
[
