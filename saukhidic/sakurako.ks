;桜子のシナリオ

;***********************************************************************************************************************
;-起床イベント
*sakurako_wakeup
@bg storage ="room_day.png" time=1000
[menuwindows]


;1回目の朝
[if exp="f.wakeup == undefined"]
#
It's a refreshing morning, let's do our best again today![p]
#桜子
[chara_show name="sakurako" face="okori02" left=100]
[playse storage="sakurako/sa71_011.ogg" buf="0"]
This is the reason! What's refreshing! It's already noon![p]
#
It can't be helped, because I've always been a hikikomori![r]
Even just waking up at noon is great![p]
#桜子
[chara_mod  name="sakurako" face="akireru" ]
[playse storage="sakurako/sa71_012.ogg" buf="0"]
Hah... I'm worried about what's ahead[p]
[eval exp="f.wakeup = true "]
[return]
[else]
#
Fua~, I woke up... it's already past noon today[p]
[chara_show name="sakurako" face="default" left=100 ]
[endif]

;桜子ランダム会話
;ランダム数値の取り出し
[iscript]
tf.rand = Math.floor( Math.random() * 6)
[endscript]

[if exp="tf.rand == 0"]
#桜子
[chara_mod  name="sakurako" face="niko" ]
[playse storage="sakurako/sa71_013.ogg" buf="0"]
what are you doing today[p]
[endif]

[if exp="tf.rand == 1"]
#桜子
[chara_mod  name="sakurako" face="niko" ]
[playse storage="sakurako/sa71_014.ogg" buf="0"]
You finally woke up![p]
[endif]

[if exp="tf.rand == 2"]
#桜子
[chara_mod  name="sakurako" face="akubi" ]
[playse storage="sakurako/sa71_015.ogg" buf="0"]

Hmm, are you awake?[p]

[endif]

[if exp="tf.rand == 3"]
#桜子
[chara_mod  name="sakurako" face="akireru02" ]
[playse storage="sakurako/sa71_016.ogg" buf="0"]
I'm totally relaxed~[p]
[endif]

[if exp="tf.rand == 4"]
#桜子
[chara_mod  name="sakurako" face="okori" ]
[playse storage="sakurako/sa71_017.ogg" buf="0"]

After I wiped my sleepy face[p]

[endif]

[if exp="tf.rand == 5"]
#桜子
[chara_mod  name="sakurako" face="okori02" ]
[playse storage="sakurako/sa71_018.ogg" buf="0"]

Hurry up and wash your face[p]
[endif]

[return]

;***********************************************************************************************************************
;-休養
*sakurako_break

;桜子ランダム会話
;ランダム数値の取り出し
[iscript]
tf.rand = Math.floor( Math.random() * 5)
[endscript]

[if exp="tf.rand == 0"]
#桜子
[chara_mod  name="sakurako" face="niko" ]
[playse storage="sakurako/sa71_019.ogg" buf="0"]
How are you today?[p]
[endif]

[if exp="tf.rand == 1"]
#桜子
[chara_mod  name="sakurako" face="niko" ]
[playse storage="sakurako/sa71_020.ogg" buf="0"]
I'm just completely slacking off[p]
[endif]

[if exp="tf.rand == 2"]
#桜子
[chara_mod  name="sakurako" face="akubi" ]
[playse storage="sakurako/sa71_021.ogg" buf="0"]
Are you tired?[p]
[endif]

[if exp="tf.rand == 3"]
#桜子
[chara_mod  name="sakurako" face="akireru02" ]
[playse storage="sakurako/sa71_022.ogg" buf="0"]
Are you off again?[p]
[endif]

[if exp="tf.rand == 4"]
#桜子
[chara_mod  name="sakurako" face="okori" ]
[playse storage="sakurako/sa71_023.ogg" buf="0"]
I think I need a break once in a while[p]
[endif]
#
[return]


;***********************************************************************************************************************
;-バイト
*sakurako_work
;1回目のバイト
[if exp="f.work == undefined"]
#桜子
[chara_mod  name="sakurako" face="niko" ]
[playse storage="sakurako/sa72_024.ogg" buf="0"]
Did you finally want to work?[p]
#
No, but ... I'm still scared ...[p]
#桜子
[playse storage="sakurako/sa72_025.ogg" buf="0"]
All right!I'm finally on![p]
#
Do you feel like you will follow?[p]
#桜子
[chara_mod  name="sakurako" face="panchi03" ]
[playse storage="sakurako/sa72_026.ogg" buf="0"]
Naturally!Don't monitor it firmly![r]
Think of it, you're a man!I'm excited!![p]

[eval exp="f.work = true "]
;桜子消去
#
[chara_hide name="sakurako"]
[return]
[endif]

;桜子ランダム会話
;ランダム数値の取り出し
[iscript]
tf.rand = Math.floor( Math.random() * 5)
[endscript]

[if exp="tf.rand == 0"]
#桜子
[chara_mod  name="sakurako" face="niko" ]
[playse storage="sakurako/sa72_027.ogg" buf="0"]
Oh!Are you going to a part -time job![p]
[endif]

[if exp="tf.rand == 1"]
#桜子
[chara_mod  name="sakurako" face="niko" ]
[playse storage="sakurako/sa72_028.ogg" buf="0"]
Hmmm, Impression[p]
[endif]

[if exp="tf.rand == 2"]
#桜子
[chara_mod  name="sakurako" face="panchi02" ]
[playse storage="sakurako/sa72_029.ogg" buf="0"]
I'll do my best today![p]
[endif]

[if exp="tf.rand == 3"]
#桜子
[chara_mod  name="sakurako" face="kobusi01" ]
[playse storage="sakurako/sa72_030.ogg" buf="0"]
I'm going to make money![p]
[endif]

[if exp="tf.rand == 4"]
#桜子
[chara_mod  name="sakurako" face="okori" ]
[playse storage="sakurako/sa72_031.ogg" buf="0"]
You can do it too![p]
[endif]

;桜子消去
#
[chara_hide name="sakurako"]
[return]

;***********************************************************************************************************************
;-占い
*sakurako_status
;所持金判別
[if exp="f.money < 500"]
#桜子
[chara_show name="sakurako" face="okori02" left=100 ]
[playse storage="sakurako/sa79_002.ogg" buf="0"]
I don't have money![p]
[chara_hide name="sakurako"]
#
[return]
[endif]

;桜子ランダム会話
;ランダム数値の取り出し
[iscript]
tf.rand = Math.floor( Math.random() * 2)
[endscript]

[if exp="tf.rand == 0"]
#桜子
[chara_show name="sakurako" face="niko" left=100 ]
[playse storage="sakurako/sa79_001.ogg" buf="0"]
Do you fortune -telling!Yes 500 yen![p]
[endif]

[if exp="tf.rand == 1"]
#桜子
[chara_show name="sakurako" face="niko" left=100 ]
[playse storage="sakurako/sa79_003.ogg" buf="0"]
There is Maito![p]
[endif]
[eval exp="f.money = f.money - 500"]
[uiwindows]
[playse storage="se/money.ogg" buf="2"]
[kanim name="money" keyframe="money_a" time ="300"]
[stop_kanim]

;コール占い画面
[call storage="status.ks"]

;桜子消去
#
[chara_hide name="sakurako"]

[return]

;***********************************************************************************************************************
;-過労
*overwork
;桜子ランダム会話
;ランダム数値の取り出し
[iscript]
tf.rand = Math.floor( Math.random() * 5)
[endscript]

[if exp="tf.rand == 0"]
#桜子
[chara_show name="sakurako" face="okori" left=100 ]
[playse storage="sakurako/sa71_001.ogg" buf="0"]
Hmm!Poor guy![r]
In such a condition, you can think of it![p]
[endif]

[if exp="tf.rand == 1"]
#桜子
[chara_show name="sakurako" face="okori" left=100 ]
[playse storage="sakurako/sa71_002.ogg" buf="0"]
I'm weak![r]
Because I'm withdrawn![p]
[endif]

[if exp="tf.rand == 2"]
#桜子
[chara_show name="sakurako" face="okori" left=100 ]
[playse storage="sakurako/sa71_003.ogg" buf="0"]
I am sorry that self -management is not possible![p]
[endif]

[if exp="tf.rand == 3"]
#桜子
[chara_show name="sakurako" face="okori" left=100 ]
[playse storage="sakurako/sa71_004.ogg" buf="0"]
Nitoran!It's just like![p]
[endif]

[if exp="tf.rand == 4"]
#桜子
[chara_show name="sakurako" face="okori" left=100 ]
[playse storage="sakurako/sa71_005.ogg" buf="0"]
Huh, it's all![r]
I'm a weak body![p]
[endif]

;桜子消去
#
[chara_hide name="sakurako"]

[return]

;***********************************************************************************************************************
;-夢
*sakurako_dream

@bg storage ="room_day.png" time=1000
[menuwindows]
#
Something ... I had a great dream ...[p]

;桜子ランダム会話
;ランダム数値の取り出し
[iscript]
tf.rand = Math.floor( Math.random() * 5)
[endscript]

[if exp="tf.rand == 0"]
#桜子
[chara_show name="sakurako" face="okori" left=100 ]
[playse storage="sakurako/sa71_006.ogg" buf="0"]
I'm sleeping with a completely uncomfortable face[p]
[endif]

[if exp="tf.rand == 1"]
#桜子
[chara_show name="sakurako" face="okori" left=100 ]
[playse storage="sakurako/sa71_007.ogg" buf="0"]
I'm going to do something that is real and erotic quickly[p]
[endif]

[if exp="tf.rand == 2"]
#桜子
[chara_show name="sakurako" face="okori" left=100 ]
[playse storage="sakurako/sa71_008.ogg" buf="0"]
How do you wash your pants yourself?[p]
[endif]

[if exp="tf.rand == 3"]
#桜子
[chara_show name="sakurako" face="okori" left=100 ]
[playse storage="sakurako/sa71_009.ogg" buf="0"]
After watching only nasty dreams[p]
[endif]

[if exp="tf.rand == 4"]
#桜子
[chara_show name="sakurako" face="okori" left=100 ]
[playse storage="sakurako/sa71_010.ogg" buf="0"]
Is it accumulated?Shall I pull it out?[r]
Don't be serious![p]
[endif]

[return]

;***********************************************************************************************************************
;-外出
*GoOut
;1回目の外出
[if exp="f.goout == undefined"]
#桜子
[chara_mod  name="sakurako" face="niko" ]
[playse storage="sakurako/sa73_032.ogg" buf="0"]
Okay, I'm going outside![p]
#
After all I feel heavy ...[p]
#桜子
[chara_mod  name="sakurako" face="okori03" ]
[playse storage="sakurako/sa73_033.ogg" buf="0"]
This garbage is!Because of your thoughts!You're already out![r]
This is the decision![p]
#
Eh, after all!![p]
#桜子
[chara_mod  name="sakurako" face="keri01" ]
[playse storage="sakurako/sa73_034.ogg" buf="0"]
てい！
[playse storage="se/naguru.ogg" buf="2"]
[quake count="1" time="300"]
Eh, after all!![p][p]
#
Gyafun![p]
[chara_mod  name="sakurako" face="mahou01" ]
[playse storage="se/o_ra.ogg" buf="2" loop="true"]
#
Uh! Your body moves on your own!?[p]
[fadeoutse buf="2"]
#桜子
[playse storage="sakurako/sa73_035.ogg" buf="0"]
Fufufu, I have no choice but to go![p]

#
Uu ... yeah ~[p]


[eval exp="f.goout = true "]
;桜子消去
;#
;[chara_hide name="sakurako"]
[return]

[endif]

;桜子ランダム会話
;ランダム数値の取り出し
[iscript]
tf.rand = Math.floor( Math.random() * 5)
[endscript]

[if exp="tf.rand == 0"]
#桜子
[chara_mod  name="sakurako" face="niko" ]
[playse storage="sakurako/sa73_036.ogg" buf="0"]
oh!Are you going out?[p]
[endif]

[if exp="tf.rand == 1"]
#桜子
[chara_mod  name="sakurako" face="niko" ]
[playse storage="sakurako/sa73_037.ogg" buf="0"]
Hmmm!Go out![p]
[endif]

[if exp="tf.rand == 2"]
#桜子
[chara_mod  name="sakurako" face="akubi" ]
[playse storage="sakurako/sa73_038.ogg" buf="0"]
Where are you going today?[p]
[endif]

[if exp="tf.rand == 3"]
#桜子
[chara_mod  name="sakurako" face="akireru02" ]
[playse storage="sakurako/sa73_039.ogg" buf="0"]
Departure![p]
[endif]

[if exp="tf.rand == 4"]
#桜子
[chara_mod  name="sakurako" face="okori" ]
[playse storage="sakurako/sa73_040.ogg" buf="0"]
I'm going out today![p]
[endif]

;桜子消去
;#
;[chara_hide name="sakurako"]
[return]

;***********************************************************************************************************************
;-図書館会話
*sakurako_library

;桜子ランダム会話
;ランダム数値の取り出し
[iscript]
tf.rand = Math.floor( Math.random() * 5)
[endscript]

[if exp="tf.rand == 0"]
#桜子
[chara_show name="sakurako" face="niko" left=100 ]
[playse storage="sakurako/sa80_001.ogg" buf="0"]
Well, what is a library ... do you study?[p]
[endif]

[if exp="tf.rand == 1"]
#桜子
[chara_show name="sakurako" face="okori02" left=100 ]
[playse storage="sakurako/sa80_002.ogg" buf="0"]
Um, I'm impressed!Encourage you![p]
[endif]

[if exp="tf.rand == 2"]
#桜子
[chara_show name="sakurako" face="default" left=100 ]
[playse storage="sakurako/sa80_003.ogg" buf="0"]
There is no erotic book here[p]
[endif]

[if exp="tf.rand == 3"]
#桜子
[chara_show name="sakurako" face="niya" left=100 ]
[playse storage="sakurako/sa80_004.ogg" buf="0"]
Did you come to find a health and physical education book?[p]
[endif]

[if exp="tf.rand == 4"]
#桜子
[chara_show name="sakurako" face="okori02" left=100 ]
[playse storage="sakurako/sa80_005.ogg" buf="0"]
You will be warned that you are talking[p]
[endif]

[return]

;***********************************************************************************************************************
;-莉子発見
*sakurako_riko_goout
;ランダム数値の取り出し
[iscript]
tf.rand = Math.floor( Math.random() * 3)
[endscript]
[chara_show name="sakurako" face="tobi01" left=100 ]
[if exp="tf.rand == 0"]
#桜子
[playse storage="sakurako/sa76_001.ogg" buf="0"]
There is Riko!Come on![p]
[endif]
[if exp="tf.rand == 1"]
#桜子
[playse storage="sakurako/sa76_002.ogg" buf="0"]
Mmmm!Isn't that Riko?[p]
[endif]
[if exp="tf.rand == 2"]
#桜子
[playse storage="sakurako/sa76_003.ogg" buf="0"]
I found Riko![p]
[endif]
;桜子消去
#
[chara_hide name="sakurako"]
[return]

;-莉菜発見
*sakurako_rina_goout
;ランダム数値の取り出し
[iscript]
tf.rand = Math.floor( Math.random() * 3)
[endscript]
[chara_show name="sakurako" face="tobi01" left=100 ]
[if exp="tf.rand == 0"]
#桜子
[playse storage="sakurako/sa76_004.ogg" buf="0"]
There is Rina!Come on![p]
[endif]
[if exp="tf.rand == 1"]
#桜子
[playse storage="sakurako/sa76_005.ogg" buf="0"]
Rina, what are you doing?[p]
[endif]
[if exp="tf.rand == 2"]
#桜子
[playse storage="sakurako/sa76_006.ogg" buf="0"]
Isn't Rina there?[p]
[endif]
;桜子消去
#
[chara_hide name="sakurako"]
[return]

;***********************************************************************************************************************
;-静江発見
*sakurako_sizue_goout
;ランダム数値の取り出し
[iscript]
tf.rand = Math.floor( Math.random() * 3)
[endscript]
[chara_show name="sakurako" face="tobi01" left=100 ]
[if exp="tf.rand == 0"]
#桜子
[playse storage="sakurako/sa76_007.ogg" buf="0"]
Shizue!Now, go![p]
[endif]
[if exp="tf.rand == 1"]
#桜子
[playse storage="sakurako/sa76_008.ogg" buf="0"]
Hmmm, Shizue is there![p]
[endif]
[if exp="tf.rand == 2"]
#桜子
[playse storage="sakurako/sa76_009.ogg" buf="0"]
That's not Shizue!Come on![p]
[endif]
;桜子消去
#
[chara_hide name="sakurako"]
[return]

;***********************************************************************************************************************
;-本屋会話
*sakurako_bookstore

;桜子ランダム会話
;ランダム数値の取り出し
[iscript]
tf.rand = Math.floor( Math.random() * 5)
[endscript]

[if exp="tf.rand == 0"]
#桜子
[chara_show name="sakurako" face="niko" left=100 ]
[playse storage="sakurako/sa80_006.ogg" buf="0"]
The purpose is erotic books![p]
[endif]

[if exp="tf.rand == 1"]
#桜子
[chara_show name="sakurako" face="akireru02" left=100 ]
[playse storage="sakurako/sa80_007.ogg" buf="0"]
I can't do it because I'm just reading manga[p]
[endif]

[if exp="tf.rand == 2"]
#桜子
[chara_show name="sakurako" face="akireru" left=100 ]
[playse storage="sakurako/sa80_008.ogg" buf="0"]
Did you come to buy something?[p]
[endif]

[if exp="tf.rand == 3"]
#桜子
[chara_show name="sakurako" face="okori" left=100 ]
[playse storage="sakurako/sa80_009.ogg" buf="0"]
Occasionally read novels![p]
[endif]

[if exp="tf.rand == 4"]
#桜子
[chara_show name="sakurako" face="okori02" left=100 ]
[playse storage="sakurako/sa80_010.ogg" buf="0"]
I'm angry if I'm just browsing![p]
[endif]

[if exp="f.money >= 1000"]
#
I wonder if I should buy a manga[p]

;所持金減少
[eval exp="f.money = f.money - 1000"]
[uiwindows]
[playse storage="se/money.ogg" buf="2"]
[kanim name="money" keyframe="money_a" time ="300"]
[stop_kanim]
[endif]

[return]

;***********************************************************************************************************************
;-公園会話
*sakurako_park

;桜子ランダム会話
;ランダム数値の取り出し
[iscript]
tf.rand = Math.floor( Math.random() * 5)
[endscript]

[if exp="tf.rand == 0"]
#桜子
[chara_show name="sakurako" face="niko" left=100 ]
[playse storage="sakurako/sa80_021.ogg" buf="0"]
What if you exercise too![p]
[endif]

[if exp="tf.rand == 1"]
#桜子
[chara_show name="sakurako" face="akireru02" left=100 ]
[playse storage="sakurako/sa80_022.ogg" buf="0"]
Look!I'll run!I'm so sloppy![p]
[endif]

[if exp="tf.rand == 2"]
#桜子
[chara_show name="sakurako" face="akireru" left=100 ]
[playse storage="sakurako/sa80_023.ogg" buf="0"]
It's sweaty, unsightly![p]
[endif]

[if exp="tf.rand == 3"]
#桜子
[chara_show name="sakurako" face="okori" left=100 ]
[playse storage="sakurako/sa80_024.ogg" buf="0"]
A little sunlight!It looks unhealthy![p]
[endif]

[if exp="tf.rand == 4"]
#桜子
[chara_show name="sakurako" face="okori02" left=100 ]
[playse storage="sakurako/sa80_025.ogg" buf="0"]
There is a good thing to train your body[p]
[endif]

#
I was forced to exercise by Sakurako[p]
[eval exp="f.hp = f.hp - 10"]

[return]

;-駄菓子屋会話
*sakurako_store

;桜子ランダム会話
;ランダム数値の取り出し
[iscript]
tf.rand = Math.floor( Math.random() * 5)
[endscript]

[if exp="tf.rand == 0"]
#桜子
[chara_show name="sakurako" face="niko" left=100 ]
[playse storage="sakurako/sa80_032.ogg" buf="0"]
Oh!Do you draw a card?[p]
[endif]

[if exp="tf.rand == 1"]
#桜子
[chara_show name="sakurako" face="akireru02" left=100 ]
[playse storage="sakurako/sa80_033.ogg" buf="0"]
Did it look good?[p]
[endif]

[if exp="tf.rand == 2"]
#桜子
[chara_show name="sakurako" face="akireru" left=100 ]
[playse storage="sakurako/sa80_034.ogg" buf="0"]
Why is it off?[p]
[endif]

[if exp="tf.rand == 3"]
#桜子
[chara_show name="sakurako" face="okori" left=100 ]
[playse storage="sakurako/sa80_035.ogg" buf="0"]
Did you come to buy candy?[p]
[endif]

[if exp="tf.rand == 4"]
#桜子
[chara_show name="sakurako" face="okori02" left=100 ]
[playse storage="sakurako/sa80_037.ogg" buf="0"]
The grandmother in the store looks like a figurine[p]
[endif]

[if exp="f.money >= 1000"]
#
I wonder if I can buy sweets[p]

;所持金減少
[eval exp="f.money = f.money - 1000"]
[uiwindows]
[playse storage="se/money.ogg" buf="2"]
[kanim name="money" keyframe="money_a" time ="300"]
[stop_kanim]
[endif]

[return]

;***********************************************************************************************************************
;-ゲームセンター
*sakurako_arcade

;桜子ランダム会話
;ランダム数値の取り出し
[iscript]
tf.rand = Math.floor( Math.random() * 5)
[endscript]

[if exp="tf.rand == 0"]
#桜子
[chara_show name="sakurako" face="niko" left=100 ]
[playse storage="sakurako/sa80_011.ogg" buf="0"]
There are many figures in crane games![r]
There are a lot of handsome figures[p]
[playse storage="sakurako/sa80_011_2.ogg" buf="0"]
Because your room has only a girl's figure ...[p]
[endif]

[if exp="tf.rand == 1"]
#桜子
[chara_show name="sakurako" face="akireru02" left=100 ]
[playse storage="sakurako/sa80_012.ogg" buf="0"]
If you get along with the girl, you can take a picture![p]
[endif]

[if exp="tf.rand == 2"]
#桜子
[chara_show name="sakurako" face="akireru" left=100 ]
[playse storage="sakurako/sa80_013.ogg" buf="0"]
Do you play games!You look bad![p]
[endif]

[if exp="tf.rand == 3"]
#桜子
[chara_show name="sakurako" face="okori" left=100 ]
[playse storage="sakurako/sa80_014.ogg" buf="0"]
It doesn't seem to be rhythm, so you can't dance![p]
[endif]

[if exp="tf.rand == 4"]
#桜子
[chara_show name="sakurako" face="okori02" left=100 ]
[playse storage="sakurako/sa80_015.ogg" buf="0"]
In the match, you will play a match game![p]
[endif]

[if exp="f.money >= 1000"]
#
I came with great effort[r]
I wonder if I should play games and play[p]

;所持金減少
[eval exp="f.money = f.money - 1000"]
[uiwindows]
[playse storage="se/money.ogg" buf="2"]
[kanim name="money" keyframe="money_a" time ="300"]
[stop_kanim]
[endif]
Well, next[r]
[return]

;-商店街
*sakurako_shoppingstreet

;桜子ランダム会話
;ランダム数値の取り出し
[iscript]
tf.rand = Math.floor( Math.random() * 5)
[endscript]

[if exp="tf.rand == 0"]
#桜子
[chara_show name="sakurako" face="niko" left=100 ]
[playse storage="sakurako/sa80_038.ogg" buf="0"]
I'm doing a fortune over there[p]
[endif]

[if exp="tf.rand == 1"]
#桜子
[chara_show name="sakurako" face="akireru02" left=100 ]
[playse storage="sakurako/sa80_039.ogg" buf="0"]
You can't cook yourself[p]
[endif]

[if exp="tf.rand == 2"]
#桜子
[chara_show name="sakurako" face="akireru" left=100 ]
[playse storage="sakurako/sa80_040.ogg" buf="0"]
This shopping street is fine[p]
[endif]

[if exp="tf.rand == 3"]
#桜子
[chara_show name="sakurako" face="okori" left=100 ]
[playse storage="sakurako/sa80_041.ogg" buf="0"]
The father of the shopkeeper here seems to be weak to a young woman[p]
[endif]

[if exp="tf.rand == 4"]
#桜子
[chara_show name="sakurako" face="okori02" left=100 ]
[playse storage="sakurako/sa80_042.ogg" buf="0"]
Do you do shopping?[p]
[endif]

[return]

;***********************************************************************************************************************
;-カフェ
*sakurako_cafe

;桜子ランダム会話
;ランダム数値の取り出し
[iscript]
tf.rand = Math.floor( Math.random() * 4)
[endscript]

[if exp="tf.rand == 0"]
#桜子
[chara_show name="sakurako" face="niko" left=100 ]
[playse storage="sakurako/sa80_016.ogg" buf="0"]
Why is it a break?[r]
I'm not doing anything enough to take a break![p]
[endif]

[if exp="tf.rand == 1"]
#桜子
[chara_show name="sakurako" face="akireru02" left=100 ]
[playse storage="sakurako/sa80_017.ogg" buf="0"]
Chocolate parfait or delicious[p]
[endif]

[if exp="tf.rand == 2"]
#桜子
[chara_show name="sakurako" face="akireru" left=100 ]
[playse storage="sakurako/sa80_019.ogg" buf="0"]
Do you want to take a break?[p]
[endif]

[if exp="tf.rand == 3"]
#桜子
[chara_show name="sakurako" face="okori" left=100 ]
[playse storage="sakurako/sa80_020.ogg" buf="0"]
It's a very stylish place[p]
[endif]

[if exp="f.money >= 1000"]
#
I'm tired so I wonder if I should take a break[p]
I took a break and my physical strength was restored[p]

;所持金減少
[eval exp="f.money = f.money - 1000"]
;体力減少
[eval exp="f.hp = f.hp + 10"]
[uiwindows]
[playse storage="se/money.ogg" buf="2"]
[kanim name="money" keyframe="money_a" time ="300"]
[stop_kanim]
[endif]

[return]

;***********************************************************************************************************************
;-夕食後
*sakurako_evening

;１回目判別
[if exp="f.sakurako_evening == undefined"]
[eval exp="f.sakurako_evening = true"]
[chara_show name="sakurako" face="niko" left=100 ]
#桜子
[playse storage="sakurako/sa77_001.ogg" buf="0"]
Alright, talk to someone![p]
#
yes!now?[p]
#桜子
[playse storage="sakurako/sa77_002.ogg" buf="0"]
Ah!When do you talk without talking now![p]
#
but!What should I talk about ...[p]
#桜子
[playse storage="sakurako/sa77_003.ogg" buf="0"]
I would have been so lectured yesterday!Remember![r]
Just talk about anything![p]
[return]
[endif]

;桜子ランダム会話
;ランダム数値の取り出し
[iscript]
tf.rand = Math.floor( Math.random() * 5)
[endscript]

[if exp="tf.rand == 0"]
#桜子
[chara_show name="sakurako" face="niko" left=100 ]
[playse storage="sakurako/sa77_004.ogg" buf="0"]
Go today[p]
[endif]

[if exp="tf.rand == 1"]
#桜子
[chara_show name="sakurako" face="akireru02" left=100 ]
[playse storage="sakurako/sa77_005.ogg" buf="0"]
Who are you talking to today?[p]
[endif]

[if exp="tf.rand == 2"]
#桜子
[chara_show name="sakurako" face="akireru" left=100 ]
[playse storage="sakurako/sa77_006.ogg" buf="0"]
Look, talk![p]
[endif]

[if exp="tf.rand == 3"]
#桜子
[chara_show name="sakurako" face="okori" left=100 ]
[playse storage="sakurako/sa77_007.ogg" buf="0"]
Look!Now![p]
[endif]

[if exp="tf.rand == 4"]
#桜子
[chara_show name="sakurako" face="okori02" left=100 ]
[playse storage="sakurako/sa77_008.ogg" buf="0"]
Now is the chance![p]
[endif]

[return]

;***********************************************************************************************************************
;-部屋会話
*sakurako_room

;桜子ランダム会話
;ランダム数値の取り出し
[iscript]
tf.rand = Math.floor( Math.random() * 5)
[endscript]

[if exp="tf.rand == 0"]
#桜子
[chara_show name="sakurako" face="niko" left=100 ]
[playse storage="sakurako/sa75_006.ogg" buf="0"]
yeah!Maybe you can do erotic things![p]
[endif]

[if exp="tf.rand == 1"]
#桜子
[chara_show name="sakurako" face="niko" left=100 ]
[playse storage="sakurako/sa75_007.ogg" buf="0"]
Good luck today![p]
[endif]

[if exp="tf.rand == 2"]
#桜子
[chara_show name="sakurako" face="niko" left=100 ]
[playse storage="sakurako/sa75_008.ogg" buf="0"]
I'll do it too![p]
[endif]

[if exp="tf.rand == 3"]
#桜子
[chara_show name="sakurako" face="niko" left=100 ]
[playse storage="sakurako/sa75_009.ogg" buf="0"]
This doskebe![p]
[endif]

[if exp="tf.rand == 4"]
#桜子
[chara_show name="sakurako" face="niko" left=100 ]
[playse storage="sakurako/sa75_010.ogg" buf="0"]
It's going well!It's going well![p]
[endif]

[return]

;***********************************************************************************************************************
;-デート会話
*sakurako_date

;1回目のデート
[if exp="f.date_sakurako == undefined"]
#桜子
[chara_show name="sakurako" face="niya" left=100]
[playse storage="sakurako/sa74_041.ogg" buf="0"]
How do you go on a date! Good job!I did it well, it's good![p]
[playse storage="sakurako/sa74_041_2.ogg" buf="0"]
This is also thanks to my education ... I'll tell you in detail when you come back![p]
#
yes!Can you follow me?[p]
#桜子
[chara_mod  name="sakurako" face="okori02" ]

[playse storage="sakurako/sa74_042.ogg" buf="0"]
Why I have to see me doing it!Ah![p]
#
No ... but I'm worried ...[p]
#桜子
[chara_mod  name="sakurako" face="panchi01" ]

[playse storage="sakurako/sa74_043.ogg" buf="0"]
are you OK!You can go![r]
Let's do Eloy soon![p]
#
So you can't do it![r]
It's just a date![p]
#桜子
[chara_mod  name="sakurako" face="okori" ]

[playse storage="sakurako/sa74_044.ogg" buf="0"]
You don't know, but you give money![p]

[eval exp="f.date_sakurako = true "]
;桜子消去
#
[chara_hide name="sakurako"]
[return]
[endif]

;桜子ランダム会話
;ランダム数値の取り出し
[iscript]
tf.rand = Math.floor( Math.random() * 5)
[endscript]

[if exp="tf.rand == 0"]
#桜子
[chara_show name="sakurako" face="niya" left=100 ]
[playse storage="sakurako/sa74_045.ogg" buf="0"]
oh!Is it a date today!I'll do my best![p]
[endif]

[if exp="tf.rand == 1"]
#桜子
[chara_show name="sakurako" face="kobusi01" left=100 ]
[playse storage="sakurako/sa74_046.ogg" buf="0"]
You can go!With confidence![p]
[endif]

[if exp="tf.rand == 2"]
#桜子
[chara_show name="sakurako" face="niya" left=100 ]
[playse storage="sakurako/sa74_047.ogg" buf="0"]
I'm going to do a lot of Eloy![p]
[endif]

[if exp="tf.rand == 3"]
#桜子
[chara_show name="sakurako" face="niya" left=100 ]
[playse storage="sakurako/sa74_048.ogg" buf="0"]
You're also doing it too![p]
[endif]

[if exp="tf.rand == 4"]
#桜子
[chara_show name="sakurako" face="niko" left=100 ]
[playse storage="sakurako/sa74_049.ogg" buf="0"]
Don't be crazy![p]
[endif]
;桜子消去
#
[chara_hide name="sakurako"]
[return]
;***********************************************************************************************************************
;-宅配便
*sakurako_delivery
[chara_show name="sakurako" face="niko" left=100 ]
#桜子
[playse storage="sakurako/sa75_001.ogg" buf="0"]
oi!The luggage has arrived[p]
[return]
;***********************************************************************************************************************
;-夜の会話
*sakurako_talk

;桜子ランダム会話
;ランダム数値の取り出し
[iscript]
tf.rand = Math.floor( Math.random() * 31)
[endscript]

;[eval exp="tf.rand = 15"]

[if exp="tf.rand == 0"]
#桜子
[chara_show name="sakurako" face="akireru03" left=100 ]
[playse storage="sakurako/sa81_001.ogg" buf="0"]
Riko is not S.I have such a face[p]
#
It feels like that[p]
[endif]

[if exp="tf.rand == 1"]
#桜子
[chara_show name="sakurako" face="niko" left=100 ]
[playse storage="sakurako/sa81_002.ogg" buf="0"]
I often see Riko in Ge Sen[p]
#
I'm going to go[p]
[endif]

[if exp="tf.rand == 2"]
#桜子
[chara_show name="sakurako" face="akireru03" left=100 ]
[playse storage="sakurako/sa81_005.ogg" buf="0"]
Rina is M, I understand[p]
#
Is that so?Hmmm[p]
[endif]

[if exp="tf.rand == 3"]
#桜子
[chara_show name="sakurako" face="akireru03" left=100 ]
[playse storage="sakurako/sa81_009.ogg" buf="0"]
Shizue is quite nasty[r]
I'm a view[p]
#
Certainly that boobs is like that![p]
[endif]

[if exp="tf.rand == 4"]
#桜子
[chara_show name="sakurako" face="niko" left=100 ]
[playse storage="sakurako/sa81_011.ogg" buf="0"]
Shizue seems to be good in parks[r]
I'm collecting Pochimon[p]
#
I see, let's go[p]
[endif]

[if exp="tf.rand == 5"]
#桜子
[chara_show name="sakurako" face="akubi03" left=100 ]
[playse storage="sakurako/sa81_012.ogg" buf="0"]
You can buy not only beautiful girl figures but also handsome figures[p]
#
There is no such money![p]
[endif]

[if exp="tf.rand == 6"]
#桜子
[chara_show name="sakurako" face="akireru" left=100 ]
[playse storage="sakurako/sa81_013.ogg" buf="0"]
Your PC history is only erotic![p]
#
I think that is the PC history of a healthy man[p]
[endif]

[if exp="tf.rand == 7"]
#桜子
[chara_show name="sakurako" face="kobusi03" left=100 ]
[playse storage="sakurako/sa81_014.ogg" buf="0"]
I'm free, do something!Mick[p]
#
Don't suddenly get rid of it ~[p]
[endif]

[if exp="tf.rand == 8"]
#桜子
[chara_show name="sakurako" face="kobusi03" left=100 ]
[playse storage="sakurako/sa81_015.ogg" buf="0"]
Do you want to work properly?It's not[p]
#
I want to stop ...[p]
[endif]

[if exp="tf.rand == 9"]
#桜子
[chara_show name="sakurako" face="akireru" left=100 ]
[playse storage="sakurako/sa81_018.ogg" buf="0"]
You can't do anything without me[p]
#
That's right ... so ...[p]
[endif]

[if exp="tf.rand == 10"]
#桜子
[chara_show name="sakurako" face="talk01" left=100 ]
[playse storage="sakurako/sa81_019.ogg" buf="0"]
shoot![p]
#
Are you playing soccer?[p]
[endif]

[if exp="tf.rand == 11"]
#桜子
[chara_show name="sakurako" face="talk04" left=100]
[playse storage="sakurako/sa81_020.ogg" buf="0"]
Sakurako, brilliant dribbling handling![p]
#
Isn't it quite a feint![p]
[endif]

[if exp="tf.rand == 12"]
#桜子
[chara_show name="sakurako" face="talk02" left=100 ]
[playse storage="sakurako/sa81_021.ogg" buf="0"]
Atta![p]
#
Guba![p]
[endif]

[if exp="tf.rand == 13"]
#桜子
[chara_show name="sakurako" face="talk03" left=100 ]
[playse storage="sakurako/sa81_022.ogg" buf="0"]
Me! men! men![p]
#
It hurts![p]
[endif]

[if exp="tf.rand == 14"]
#桜子
[chara_show name="sakurako" face="akireru02" left=100 ]
[playse storage="sakurako/sa81_023.ogg" buf="0"]
I'm busy right now![p]
#
Well, you're not doing anything![p]
[endif]

[if exp="tf.rand == 15"]
#桜子
[chara_show name="sakurako" face="talk05" left=100]
[playse storage="sakurako/sa81_024.ogg" buf="0"]
Ah, Sakurako is a notice home run!Oysters![p]
#
Don't hit the ball here![p]
[endif]

[if exp="tf.rand == 16"]
#
Sakurako, S point![r]
Today, there is something like this ...[p]
Five women.。。[p]
#桜子
[chara_show name="sakurako" face="akubi02" left=100 ]
[playse storage="sakurako/sa81_025.ogg" buf="0"]
Don't worry about the details![p]
[endif]

[if exp="tf.rand == 17"]
#桜子
[chara_show name="sakurako" face="talk00" left=100 ]
[playse storage="sakurako/sa81_026.ogg" buf="0"]
Huh, yes! because of!Yes![p]
#
It hurts and hurts![p]
[endif]

[if exp="tf.rand == 18"]
#桜子
[chara_show name="sakurako" face="okori02" left=100 ]
[playse storage="sakurako/sa81_027.ogg" buf="0"]
I'm watching TV now, so will you do it later?[p]
#
Eh ~, deal with it ~[p]
[endif]

[if exp="tf.rand == 19"]
#桜子
[chara_show name="sakurako" face="okori02" left=100 ]
[playse storage="sakurako/sa81_028.ogg" buf="0"]
I'm reading it now and later[p]
#
Sakurako, P -A -Sei S store ~[p]
[endif]

[if exp="tf.rand == 20"]
#桜子
[chara_show name="sakurako" face="okori" left=100 ]
[playse storage="sakurako/sa81_029.ogg" buf="0"]
Be careful of physical strength[r]
Because it consumes by working or going out[p]
#
Don't worry, I'm always taking a break[p]
[endif]

[if exp="tf.rand == 21"]
#桜子
[chara_show name="sakurako" face="akireru02" left=100 ]
[playse storage="sakurako/sa81_030.ogg" buf="0"]
Don't collect too much[r]
You'll soon have a nasty dream[p]
#
That's a healthy boy[p]
[endif]

[if exp="tf.rand == 22"]
#桜子
[chara_show name="sakurako" face="akireru03" left=100 ]
[playse storage="sakurako/sa81_031.ogg" buf="0"]
Anyway, talk a lot to give you a good impression[p]
#
Can I talk to it ...[p]
[endif]

[if exp="tf.rand == 23"]
#桜子
[chara_show name="sakurako" face="panchi03" left=100 ]
[playse storage="sakurako/sa81_033.ogg" buf="0"]
It's hot every day ~[r]
what?The hot ones are hot even in figures![p]
#
Hoho, will that clothes come off?[p]
[endif]

[if exp="tf.rand == 24"]
#桜子
[chara_show name="sakurako" face="panchi03" left=100 ]
[playse storage="sakurako/sa81_034.ogg" buf="0"]
Saturdays and Sundays are salary UP![p]
#
Let's take a rest on holidays[p]
[endif]

[if exp="tf.rand == 25"]
#桜子
[chara_show name="sakurako" face="mahou01" left=100 ]
[playse storage="sakurako/sa81_035.ogg" buf="0"]
If you use my spiritual power, there's nothing you can't do[p]
#
Don't play and play![p]
[endif]

[if exp="tf.rand == 26"]
#桜子
[chara_show name="sakurako" face="kobusi04" left=100 ]
[playse storage="sakurako/sa81_037.ogg" buf="0"]
Increase your liking and invite you to a date[p]
#
I'll do my best somehow ~[p]
[endif]

[if exp="tf.rand == 27"]
#桜子
[chara_show name="sakurako" face="akireru02" left=100 ]
[playse storage="sakurako/sa81_038.ogg" buf="0"]
If your energy is declining, it will be useful in the important time[p]
#
It's okay because it's always accumulated[p]
[endif]

[if exp="tf.rand == 28"]
#桜子
[chara_show name="sakurako" face="talk06" left=100 ]
[playse storage="sakurako/sa81_040.ogg" buf="0"]
Unununu!I'm quiet ... I'm on the left![p]
#
What kind of play?[p]
[endif]

[if exp="tf.rand == 29"]
#桜子
[chara_show name="sakurako" face="mahou01" left=100 ]
[playse storage="sakurako/sa81_042.ogg" buf="0"]
Get disappeared by the flame of darkness![p]
#
reach!![p]
[endif]

[if exp="tf.rand == 30"]
#桜子
[chara_show name="sakurako" face="talk07" left=100 ]
[playse storage="sakurako/sa81_043.ogg" buf="0"]
This eye looks dark ... it looks good ...[p]
#
I'm doing something ...[p]
[endif]

;桜子消去
#
[chara_hide name="sakurako"]

[return]

;***********************************************************************************************************************
;-野球拳
*yakyuu

@bg storage ="room_day.png" time=1000
[menuwindows]

;***********************************************************************************************************************
;１回目会話
[if exp="f.sakurako_yakyuu_end == 0"]
[chara_show name="sakurako" face="niko" left=100 ]
#
Hey, hey[p]
You take off Sakurako's clothes[p]
#桜子
[playse storage="sakurako/sa82_001.ogg" buf="0"]
Um, I'll take it off properly[r]
Because I clean it every day[p]
#
really!Show me a little[p]
#桜子
[chara_mod  name="sakurako" face="okori" ]
[playse storage="sakurako/sa82_002.ogg" buf="0"]
teeth!?[p]
#
How becoming it?I want to see[p]
#桜子
[playse storage="sakurako/sa82_003.ogg" buf="0"]
Ah!I guess[p]
#
Good, good!Because it's just a little[p]
#桜子
[chara_mod  name="sakurako" face="okori03" ]
[playse storage="sakurako/sa82_004.ogg" buf="0"]
This garbage[r]
If you do not play around, you'll kick your face again![p]
#
Such sly ~[r]
Sly, sly![p]
#桜子
[chara_mod  name="sakurako" face="okori02" ]
[playse storage="sakurako/sa82_005.ogg" buf="0"]
Huh? Unfair?What is[p]
#
It's unfair to impose that one -sided convenience and make various things[r]
You can ask me a little bit of this request ~[p]
#桜子
[playse storage="sakurako/sa82_006.ogg" buf="0"]
Great![p]
#
OK, I won't do it[r]
I'll stay withdrawn all the time[p]
#桜子
[chara_mod  name="sakurako" face="akireru" ]
[playse storage="sakurako/sa82_007.ogg" buf="0"]
Wow ... Okay, I understand[p]
#
picture!I'll take it off[p]
#桜子
[chara_mod  name="sakurako" face="panchi03" ]
[playse storage="sakurako/sa82_008.ogg" buf="0"]
If this happens, it's a game!If you win, let's take off your clothes[p]
#
Game?Why do you compete?[p]
#桜子
[playse storage="sakurako/sa82_009.ogg" buf="0"]
A fool!If you bet your clothes and compete, it's a baseball fist[p]
#
Why do you know that[p]
#桜子
[playse storage="sakurako/sa82_010.ogg" buf="0"]
If you lose, you will take it off!Don't know[p]
#
Where ...[p]
#桜子
[chara_mod  name="sakurako" face="niya" ]
[playse storage="sakurako/sa82_011.ogg" buf="0"]
Hmmm, I'll make you crying naked![r]
Don't regret exposing Sotin![p]
[endif]
;***********************************************************************************************************************
;２回目会話
[if exp="f.sakurako_yakyuu_end == 1"]
[chara_show name="sakurako" face="niko" left=100 ]
#
Sakurako!It's a game![p]
#桜子
[chara_mod  name="sakurako" face="okori02" ]
[playse storage="sakurako/sa82_035.ogg" buf="0"]
teeth?You lost and ended naked![p]
#
Fufu, I'm afraid of losing[p]
#桜子
[chara_mod  name="sakurako" face="niya" ]
[playse storage="sakurako/sa82_036.ogg" buf="0"]
Am I losing?There is no![r]
I wonder if you lose to the garbage like you![p]
#
Then you should compete[r]
The next one will win[p]
#桜子
[chara_mod  name="sakurako" face="yakyuu00" ]
[playse storage="sakurako/sa82_037.ogg" buf="0"]
Hmm!This fool[r]
I'll try to kick it into that sotin again[p]
[endif]


;桜子消去
#
[chara_hide name="sakurako"]
[bg storage="yakyuu2_1.png" time="1000"]

;***********************************************************************************************************************
;--じゃんけん勝負
[playbgm storage="game_maoudamashii_2_boss08.ogg" loop="true"]
[eval exp="tf.round = 0"]
[eval exp="tf.s_fuku = 1"]
[eval exp="tf.p_fuku = 1"]

*select
#
何を出そうかな？
[glink  color="pink" size="20"  x="100"  width="200"  y="110"  text="グー"  target="*syoubu" exp="tf.janken = 0"]
[glink  color="pink" size="20"  x="100"  width="200"  y="170"  text="チョキ"  target="*syoubu" exp="tf.janken = 1" ]
[glink  color="pink" size="20"  x="100"  width="200"  y="230"  text="パー"  target="*syoubu" exp="tf.janken = 2" ]
[s]

*round

;***********************************************************************************************************************
*syoubu
[fadeoutbgm time="500"]
[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false

[bg storage="black.png" time="500"]
[eval exp="tf.s_mov = 'mov_82_' + tf.s_fuku + '.webm'"]
[movie storage=&tf.s_mov skip="true"]
[call target="*jyanken"]
[menuwindows]
;■桜子グー
[if exp="tf.rand == 0 || tf.rand == 1 || tf.rand == 2"]
 [if exp="tf.s_fuku <=3"] 
  [bg storage="jyanken_00.png" time="0"]
 [endif]
 [if exp="tf.s_fuku ==5 || tf.s_fuku ==4"] 
  [bg storage="jyanken_03.png" time="0"]
 [endif]
 [if exp="tf.s_fuku ==6"] 
  [bg storage="jyanken_06.png" time="0"]
 [endif]
[endif]
;■桜子チョキ
[if exp="tf.rand == 3 "]
 [if exp="tf.s_fuku <=3"] 
  [bg storage="jyanken_01.png" time="0"]
 [endif]
 [if exp="tf.s_fuku ==5 || tf.s_fuku ==4"] 
  [bg storage="jyanken_04.png" time="0"]
 [endif]
 [if exp="tf.s_fuku ==6"] 
  [bg storage="jyanken_07.png" time="0"]
 [endif]
[endif]
;■桜子パー
[if exp="tf.rand == 4 || tf.rand == 5"]
 [if exp="tf.s_fuku <=3"] 
  [bg storage="jyanken_02.png" time="0"]
 [endif]
 [if exp="tf.s_fuku ==5 || tf.s_fuku ==4"] 
  [bg storage="jyanken_05.png" time="0"]
 [endif]
 [if exp="tf.s_fuku ==6"] 
  [bg storage="jyanken_08.png" time="0"]
 [endif]
[endif]


#
[if exp="tf.janken == 0"]  
Goo![p]
[endif]
[if exp="tf.janken == 1"]  
Choki![p]
[endif]
[if exp="tf.janken == 2"]  
Par![p]
[endif]

[if exp="tf.result == 0"]
[jump target="*aiko"]
[endif]

[if exp="tf.result == 1"]
[jump target="*make"]
[endif]

[if exp="tf.result == 2"]
[jump target="*kati"]
[endif]


;***********************************************************************************************************************
;--勝ち
*kati
[if exp="tf.s_fuku == 1"]
 [jump target="*fuku1"]
[endif]
[if exp="tf.s_fuku == 2"]
 [jump target="*fuku2"]
[endif]
[if exp="tf.s_fuku == 3"]
 [jump target="*fuku3"]
[endif]
[if exp="tf.s_fuku == 4"]
 [jump target="*fuku4"]
[endif]
[if exp="tf.s_fuku == 5"]
 [jump target="*fuku5"]
[endif]
[if exp="tf.s_fuku == 6"]
 [jump target="*fuku6"]
[endif]
;***********************************************************************************************************************
;---服１枚目
*fuku1
[bg storage="room_day.png" time="500"]
[chara_show name="sakurako" face="yakyuu00" time="500"]
[menuwindows]
#
Hooray!I won![p]
#桜子
[playse storage="sakurako/sa82_012.ogg" buf="0"]
Well, first of all, shoes[p]
#
Shoes will not be clothes[p]
;桜子消去
#
[chara_hide name="sakurako" time="500"]
[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[bg storage="black.png" time="500"]
[movie storage="mov_82_10.webm" skip="true"]
[bg storage="yakyuu2_2.png" time="500"]
[menuwindows]
[eval exp="tf.s_fuku = tf.s_fuku + 1"]
[jump target="*select"]

;***********************************************************************************************************************
;---服2枚目
*fuku2
[bg storage="room_day.png" time="500"]
[chara_show name="sakurako" face="yakyuu00" time="500"]
[menuwindows]
#
Hooray!I won![p]
#桜子
[playse storage="sakurako/sa82_015.ogg" buf="0"]
Next is Nee Socks[p]
#
Hoho ... it's pretty good[p]
;桜子消去
#
[chara_hide name="sakurako" time="500"]
[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[bg storage="black.png" time="500"]
[movie storage="mov_82_11.webm" skip="true"]
[bg storage="yakyuu2_3.png" time="500"]
[menuwindows]
[eval exp="tf.s_fuku = tf.s_fuku + 1"]
[jump target="*select"]
;***********************************************************************************************************************
;---服3枚目
*fuku3
[bg storage="room_day.png" time="500"]
[chara_show name="sakurako" face="yakyuu01" time="500"]
[menuwindows]
#
Fufufu, next is my jacket[p]
;桜子消去
#
[chara_hide name="sakurako" time="500"]
[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[bg storage="black.png" time="500"]
[movie storage="mov_82_12.webm" skip="true"]
[bg storage="yakyuu2_4.png" time="500"]
[menuwindows]
[eval exp="tf.s_fuku = tf.s_fuku + 1"]
[jump target="*select"]
;***********************************************************************************************************************
;---服4枚目
*fuku4
[bg storage="room_day.png" time="500"]
[chara_show name="sakurako" face="yakyuu02" time="500"]
[menuwindows]
#
Alright, I won![p]
#
Now, take off your skirt[p]
;桜子消去
#
[chara_hide name="sakurako" time="500"]
[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[bg storage="black.png" time="500"]
[movie storage="mov_82_13.webm" skip="true"]
[bg storage="yakyuu2_5.png" time="500"]
[menuwindows]
[eval exp="tf.s_fuku = tf.s_fuku + 1"]
[jump target="*select"]
;***********************************************************************************************************************
;---服5枚目
*fuku5
[bg storage="room_day.png" time="500"]
[chara_show name="sakurako" face="yakyuu03" time="500"]
[menuwindows]
#
Fufufu, rank[p]
;桜子消去
#
[chara_hide name="sakurako" time="500"]
[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[bg storage="black.png" time="500"]
[movie storage="mov_82_14.webm" skip="true"]
[bg storage="room_day.png" time="500"]
[chara_show name="sakurako" face="yakyuu03" time="500"]
[menuwindows]
#
Is that an angel lying?[p]
;桜子消去
#
[chara_hide name="sakurako" time="500"]
[bg storage="black.png" time="500"]
[movie storage="mov_82_15.webm" skip="true"]
[movie storage="mov_82_16.webm" skip="true"]
[bg storage="yakyuu2_6.png" time="500"]
[menuwindows]
[eval exp="tf.s_fuku = tf.s_fuku + 1"]
[jump target="*select"]
;***********************************************************************************************************************
;---服6枚目
*fuku6
[bg storage="room_day.png" time="500"]
[chara_show name="sakurako" face="yakyuu04" time="500"]
[menuwindows]
#
Yeah!Win!![p]
;桜子消去
#
[chara_hide name="sakurako" time="500"]
[bg storage="black.png" time="500"]
[bgmovie storage="mov_82_17.webm" skip="true"]
#桜子
[playse storage="sakurako/sa82_022.ogg" buf="0"]
U ... Mugu ...[p]
#
Nana ... I'm getting sorry[p]
Sakurako -chan, T's Hill Y[r]
So far ...[p]
[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[movie storage="mov_82_18.webm" skip="true"]
[movie storage="mov_82_19.webm" skip="true"]
[stop_bgmovie]
[bg storage="room_day.png" time="1000"]
[menuwindows]
#
Well, I enjoyed it[p]
#桜子
[chara_show name="sakurako" face="yakyuu07" time="0" top=" 200"]
[anim name="sakurako" top="-300" left="700"]
[playse storage="sakurako/sa82_026.ogg" buf="0"]
バカバカ、このド変態！　
I'll give it to my father and mother![p]
;桜子消去
#
[chara_hide name="sakurako" time="500"]
#
I got angry!Is there a father or mother?[p]
[eval exp="f.sakurako_yakyuu_end = 2"]
[return]

;***********************************************************************************************************************
;--負け
*make
[bg storage="room_day.png" time="500"]

[if exp="tf.p_fuku != 4"]

[if exp="tf.s_fuku ==1"]
 [chara_show name="sakurako" face="yakyuu00" time="500"]
[endif]
[if exp="tf.s_fuku ==2"]
 [chara_show name="sakurako" face="yakyuu00" time="500"]
[endif]
[if exp="tf.s_fuku ==3"]
 [chara_show name="sakurako" face="yakyuu01" time="500"]
[endif]
[if exp="tf.s_fuku ==4"]
 [chara_show name="sakurako" face="yakyuu02" time="500"]
[endif]
[if exp="tf.s_fuku ==5"]
 [chara_show name="sakurako" face="yakyuu03" time="500"]
[endif]
[if exp="tf.s_fuku ==6"]
 [chara_show name="sakurako" face="yakyuu04" time="500"]
[endif]

[endif]

[menuwindows]
;***********************************************************************************************************************
;---１枚目
[if exp="tf.p_fuku == 1"]
#桜子
[playse storage="sakurako/sa82_027.ogg" buf="0"]
Hmmm, I win![p]
#
Ku, first ... from the socks[p]
#桜子
[playse storage="sakurako/sa82_028.ogg" buf="0"]
Hmm, there is no winning[p]
[eval exp="tf.p_fuku = tf.p_fuku + 1"]
;桜子消去
#
[chara_hide name="sakurako"]
[eval exp="tf.fuku_i = 'yakyuu2_' + tf.s_fuku + '.png'"]
[bg storage=&tf.fuku_i time="500"]
[jump target="*select"]
[endif]
;***********************************************************************************************************************
;---２枚目
[if exp="tf.p_fuku == 2"]
#桜子
[playse storage="sakurako/sa82_029.ogg" buf="0"]
Ah, Hahaha, weak, weak[p]
#
Damn, next will win![p]
[eval exp="tf.p_fuku = tf.p_fuku + 1"]
;桜子消去
#
[chara_hide name="sakurako"]
[eval exp="tf.fuku_i = 'yakyuu2_' + tf.s_fuku + '.png'"]
[bg storage=&tf.fuku_i time="500"]
[jump target="*select"]
[endif]
;***********************************************************************************************************************
;---３枚目
[if exp="tf.p_fuku == 3"]
#桜子
[playse storage="sakurako/sa82_030.ogg" buf="0"]
Fufufufu, next is the pants[r]
Take off, garbage.[p]
#
Well, I still have pants![r]
I'll show you the power of pants[p]
[eval exp="tf.p_fuku = tf.p_fuku + 1"]
;桜子消去
#
[chara_hide name="sakurako"]
[eval exp="tf.fuku_i = 'yakyuu2_' + tf.s_fuku + '.png'"]
[bg storage=&tf.fuku_i time="500"]
[jump target="*select"]
[endif]
;***********************************************************************************************************************
;---４枚目
*p_fuku4
[if exp="tf.p_fuku == 4"]

[if exp="f.sakurako_yakyuu_end == 0"]
[chara_show name="sakurako" face="yakyuu00" time="500"]
#桜子
[playse storage="sakurako/sa82_031.ogg" buf="0"]
Hahahaha, did you realize the power of the Archangel Sakurako?[r]
He made the ugly garbage naked!Take off and put out sochen![p]
#
Let's show you if you say so much, Sakurako -sama[p]
here you are![p]
[chara_mod  name="sakurako" face="yakyuu05" ]
#桜子
[playse storage="sakurako/sa82_032.ogg" buf="0"]
Hiya![p]
#
Look at Sakurako!This freshly born appearance[p]
[chara_mod  name="sakurako" face="yakyuu06" ]
#桜子
[playse storage="sakurako/sa82_033.ogg" buf="0"]
Kyya ~~[p]
#
Why do you run away, please take a closer look at Sakurako[p]
[chara_mod  name="sakurako" face="keri01" ]
[playse storage="se/naguru.ogg" buf="2"]
[quake count="1" time="300"]
#桜子
[playse storage="sakurako/sa82_034.ogg" buf="0"]
This pervert!Please die ~[p]

[eval exp="f.sakurako_yakyuu_end = 1"]

;桜子消去
#
[chara_hide name="sakurako" time="500"]
[bg storage="black.png" time="1000"]
#
…… [L] …… [L] ……[p]
Sakurako ... What is the kick in the defenseless crotch ...[p]
The next one will not lose ...[p]
@bg storage ="room_day.png" time=1000
[chara_show name="sakurako" face="default" left=100 ]
[uiwindows]
[return]
[endif]

[if exp="f.sakurako_yakyuu_end == 1"]
#
[chara_show name="sakurako" face="yakyuu00" time="500"]
Kuku ... I lost again ... I can't help it![r]
Late's Sea Sakurako -Sam![p]
[chara_mod  name="sakurako" face="keri01" ]
[playse storage="se/naguru.ogg" buf="2"]
[quake count="1" time="300"]
#桜子
[playse storage="sakurako/sa82_038.ogg" buf="0"]
A pervert that does not discipline!I'll crush it![p]
#
Also ... I'm going to be crushed[p]
;桜子消去
#
[chara_hide name="sakurako" time="500"]
[bg storage="black.png" time="1000"]
#
…… [L] …… [L] ……[p]
But I got a strategy method[p]
Sakurako has a high probability of giving a goo![p]
F U couple, can win next![p]
[cm]
@bg storage ="room_day.png" time=1000
[uiwindows]
[return]
[endif]
[endif]



;***********************************************************************************************************************
*aiko
;あいこ
[eval exp="tf.fuku_i = 'yakyuu2_' + tf.s_fuku + '.png'"]
[bg storage=&tf.fuku_i time="500"]
[menuwindows]
#
Aiko[p]
[jump target="*select"]



;***********************************************************************************************************************
;-じゃんけんルーチン
*jyanken
;ランダム数値の取り出し
[iscript]
tf.rand = Math.floor( Math.random() * 6)
[endscript]

;■桜子グー
[if exp="tf.rand == 0 || tf.rand == 1 || tf.rand == 2"]
 ;アイコ
 [if exp="tf.janken ==0"]
  [eval exp="tf.result = 0"]
 [endif]
 ;負け
 [if exp="tf.janken ==1"]
  [eval exp="tf.result = 1"]
 [endif]
 ;勝ち
 [if exp="tf.janken ==2"]
  [eval exp="tf.result = 2"]
 [endif]
[endif]
;■桜子チョキ
[if exp="tf.rand == 3"]
 ;アイコ
 [if exp="tf.janken ==1"]
  [eval exp="tf.result = 0"]
 [endif]
 ;負け
 [if exp="tf.janken ==2"]
  [eval exp="tf.result = 1"]
 [endif]
 ;勝ち
 [if exp="tf.janken ==0"]
  [eval exp="tf.result = 2"]
 [endif]
[endif]
;■桜子パー
[if exp="tf.rand == 4 || tf.rand == 5"]
 ;アイコ
 [if exp="tf.janken ==2"]
  [eval exp="tf.result = 0"]
 [endif]
 ;負け
 [if exp="tf.janken ==0"]
  [eval exp="tf.result = 1"]
 [endif]
 ;勝ち
 [if exp="tf.janken ==1"]
  [eval exp="tf.result = 2"]
 [endif]
[endif]


[return]

;***********************************************************************************************************************
;-エンディング
*ending
[eval exp="f.sakurako_yakyuu_end = 4"]
[bg storage="room_day.png" time="1000"]
[chara_show name="sakurako" face="default" ]
[menuwindows]
#
Sakurako!Where are you ...[p]
#桜子
[playse storage="sakurako/sa83_001.ogg" buf="0"]
It looks like I'm going home ...[p]
#
Well, wait a moment[r]
Suddenly ... are you really going home?[p]
#桜子
[playse storage="sakurako/sa83_002.ogg" buf="0"]
Because you are picked up[p]
#
What happens to the NEET escape plan![r]
You haven't done all humanity yet?You're on the ground, right?[p]
#桜子
[playse storage="sakurako/sa83_003.ogg" buf="0"]
It's okay if I don't have it anymore ... Nii -chan[p]
#
Nii ...ph-...[p]
;桜子消去
#
[chara_hide name="sakurako"]
[bg storage="ending.png" time="2000"]
#桜子
[playse storage="sakurako/sa83_004.ogg" buf="0"]
Wow haha, we're all -notified!Fools kneel![p]
#
Sakurako ... You are two illnesses[r]
What TV did you watch[p]
#お母さん
I'll leave[r]
Isn't your brother really going?[p]
#
It's okay to go to my friend's house[p]
[bg storage="ending2.png" time="2000"]
#
Sakurako ... I'm ... why ...[r]
I remembered ... Sakurako is my ... my sister[p]
Dad and mother and you are ... in an accident ...[p]
So I ... I forget everything ... withdraw ...[p]

[bg storage="room_day.png" time="1000"]
[chara_show name="sakurako" face="default" ]
#桜子
[playse storage="sakurako/sa83_005.ogg" buf="0"]
Nii -chan is okay[r]
You have an important person[p]
#
Bo, I have met that family ... that's right![p]
;桜子消去
#
[chara_hide name="sakurako"]
[bg storage="ending3.png" time="1000"]
I used to play together a lot in the past ... I lived next to it ...[p]
[bg storage="room_day.png" time="1000"]
[chara_show name="sakurako" face="default" ]
I knew it wasn't your power ...[p]
#桜子
[chara_mod  name="sakurako" face="panchi04" ]
[playse storage="sakurako/sa83_006.ogg" buf="0"]
That's right, it's all the power of my brother[r]
I'm not doing anything[p]
#
Are you really going ...[p]
#桜子
[chara_mod  name="sakurako" face="akireru02" ]
[playse storage="sakurako/sa83_007.ogg" buf="0"]
Dad and mother are waiting ...[r]
I also say that my brother has sexual harassment[p]
#
Ma ... I'm sorry, that's it[p]
#桜子
[chara_mod  name="sakurako" face="tobi04" ]
[playse storage="sakurako/sa83_008.ogg" buf="0"]
I won't say it[r]
Then, your brother is fine[p]
#
Well, Sakurako! please wait![p]
[chara_hide name="sakurako"]
[bg storage="white.png" time="1000"]
[fadeoutse]
[bg storage="ending4.png" time="1000"]
#
Sakurako ...[p]
[cm]
[clearfix]
[bg storage="black.png" time="500"]
[movie storage="mov_ending2.webm" skip="true" ]

[bgmovie storage="mov_ending3.webm" loop="true" ]
[menuwindows]
#
Yeah, I'll eat Riko -chan[r]
It's been a long time since breakfast[p]
[stop_bgmovie]
[cm]
[clearfix]
[movie storage="mov_ending.webm" skip="true" ]
[menuwindows]
[bg storage="ending5.png" time="1000"]
……[p]
[bg storage="ending6.png" time="1000"]
#桜子
[playse storage="sakurako/sa83_009.ogg" buf="0"]
Oh ... that?I can't go home ... what should I do?[r]
Well, is it okay ...[p]
#
[bg storage="black.png" time="1000"]
[bg storage="room_day.png" time="1000"]
[chara_show name="sakurako" face="niko" left="100"]
#桜子
[playse storage="sakurako/sa83_010.ogg" buf="0"]
Ahhahahaha, we are an almond angel sakurako.[r]
Fireless fools![p]
#
…… Why are you …… I'm talking like Chunibyo again ……[p]
#桜子
[playse storage="sakurako/sa83_011.ogg" buf="0"]
Well, the spiritual power of the warp is recovering![r]
Be prepared for you to train you in Kusonito![p]
#
Fufufu ... That's right ... I have to train more and more[p]
[eval exp="f.ending = 1"]
[playse storage="se/fanfare.ogg" buf="2"]
Free mode has been released[r]
You will be able to associate with everyone in the future[p]
[return]


;***********************************************************************************************************************
;-温泉
*spa_sakurako
[bg storage="room_day.png" time="1000"]
[chara_show name="sakurako" face="default" left=100]
[menuwindows]
#
Today is a hot spring trip![p]
No way to hit the first class in Fukuhiki ...[p]
I got a mixed bath[p]
[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[movie storage="mov_80_1.webm" skip="true" ]
[menuwindows]
#
Do you want to follow?[p]
[chara_mod  name="sakurako" face="okori03" ]
[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[movie storage="mov_80_3.webm" skip="true" ]
[menuwindows]
#
No ... it's okay[p]
;桜子消去
#
[chara_hide name="sakurako"]
[return]
;***********************************************************************************************************************
;-PC
*pc_sakurako
;桜子ランダム会話
;ランダム数値の取り出し
[iscript]
tf.rand = Math.floor( Math.random() * 5)
[endscript]

[if exp="tf.rand == 0"]
#桜子
[chara_show name="sakurako" face="default" left=100 ]
[playse storage="sakurako/sa78_001.ogg" buf="0"]
Do you buy something?[p]
[endif]

[if exp="tf.rand == 1"]
#桜子
[chara_show name="sakurako" face="akireru02" left=100 ]
[playse storage="sakurako/sa78_002.ogg" buf="0"]
Don't waste it[p]
[endif]

[if exp="tf.rand == 2"]
#桜子
[chara_show name="sakurako" face="akubi03" left=100 ]
[playse storage="sakurako/sa78_003.ogg" buf="0"]
What is there?[p]
[endif]

[if exp="tf.rand == 3"]
#桜子
[chara_show name="sakurako" face="niko" left=100 ]
[playse storage="sakurako/sa78_004.ogg" buf="0"]
Is it something you want?[p]
[endif]

[if exp="tf.rand == 4"]
#桜子
[chara_show name="sakurako" face="niya" left=100 ]
[playse storage="sakurako/sa78_005.ogg" buf="0"]
Do you buy erotic things?[p]
[endif]

;桜子消去
#
[chara_hide name="sakurako"]

[return]

;***********************************************************************************************************************
;-おねだり
*orgasm_sakurako
;桜子ランダム会話
;ランダム数値の取り出し
[iscript]
tf.rand = Math.floor( Math.random() * 3)
[endscript]

[if exp="tf.rand == 0"]
#桜子
[chara_show name="sakurako" face="yakyuu05" left=100 ]
[playse storage="sakurako/sa75_009.ogg" buf="0"]
This doskebe![p]
[endif]

[if exp="tf.rand == 1"]
#桜子
[chara_show name="sakurako" face="yakyuu05" left=100 ]
[playse storage="sakurako/sa74_048.ogg" buf="0"]
You're also doing it too![p]
[endif]

[if exp="tf.rand == 2"]
#桜子
[chara_show name="sakurako" face="yakyuu05" left=100 ]
[playse storage="sakurako/sa75_008.ogg" buf="0"]
I'll do it too![p]
[endif]
;桜子消去
#
[chara_hide name="sakurako"]
#
どうしようかな
[return]
