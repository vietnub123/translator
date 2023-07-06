;初日

*start

[cm]
[clearfix]
[start_keyconfig]

[movie storage="mov_01.webm" skip=true ]

@bg storage ="living.png" time=1000

;メッセージウィンドウの表示
[menuwindows]

さて、自分は……[l][r][er]
Sakurako is staring ...[r]
I feel like helping someone ...[p]
どうしようか？

[glink  color="pink" size="20"  x="400"  width="400"  y="150"  text="莉子ちゃんとお掃除"  target="*riko"  ]
[glink  color="pink" size="20"  x="400"  width="400"  y="250"  text="莉菜ちゃんとお買い物"  target="*rina"  ]
[glink  color="pink" size="20"  x="400"  width="400"  y="350"  text="静江さんとお風呂掃除"  target="*sizue"  ]
[s]

*riko
;莉子ちゃんとお掃除
;好感度上昇
[eval exp="f.riko_f = f.riko_f + 5"]


;メッセージボックス非表示
[clearfix]
@layopt layer="message" visible=false

@bg storage ="black.png" time=1000"
[movie storage="mov_02.webm" skip=true ]


@jump target="*dinner"

*rina
;莉菜ちゃんとお買い物
;好感度上昇
[eval exp="f.rina_f = f.rina_f + 5"]

;メッセージボックス非表示
[clearfix]
@layopt layer="message" visible=false

@bg storage ="black.png" time=1000"
[movie storage="mov_03.webm" skip=true ]

@jump target="*dinner"

*sizue
;静江さんとお風呂掃除
;好感度上昇
[eval exp="f.sizue_f = f.sizue_f + 5"]

;メッセージボックス非表示
[clearfix]
@layopt layer="message" visible=false

@bg storage ="black.png" time=1000"
[movie storage="mov_04.webm" skip=true ]

@jump target="*dinner"

*dinner
[movie storage="mov_05.webm" skip=true ]

[movie storage="mov_06.webm" skip=true ]

*room

@bg storage ="room_night.png" time=1000

;メッセージウィンドウの表示
[menuwindows]

I came back to my room[p]
部屋は余っているのでそれぞれに案内してきたが
Riko -chan is the room on the second floor [L][r]
Shizue decided to use the Japanese -style room on the first floor[p]
お風呂は最後に入ったけど……
I was thrilled ...[p]

[chara_show name="sakurako" face="niko" left=100 ]
#桜子
[playse storage="sakurako/sa07_001.ogg" buf="0"]
Have you already done Eloy?[p]
#
teeth?Huh!What is it?[p]
#桜子
[chara_mod  name="sakurako" face="akireru" ]
[playse storage="sakurako/sa07_002.ogg" buf="0"]
Why still ...[p]
#
(What are you talking about? This angel ...)[p]
#桜子
[chara_mod  name="sakurako" face="default" ]
[playse storage="sakurako/sa07_003.ogg" buf="0"]
Oh, yeah, you seem to have money[r]
It is forbidden to use it except for living expenses[p]
#
eh!why?[p]
#桜子
[chara_mod  name="sakurako" face="okori" ]
[playse storage="sakurako/sa07_004.ogg" buf="0"]
Naturally!This is a neat rehabilitation plan[r]
Have you work[p]
#
Yeah, work![r]
That's ... that's ...[p]
#桜子
[playse storage="sakurako/sa07_005.ogg" buf="0"]
yeah?Somehow[p]
#
No, there was "losing if I work" in the maxim of the house[p]
#桜子
[playse storage="sakurako/sa07_006.ogg" buf="0"]
Is there such a thing!If there is, you should not eat it[p]
#
Mugugu ...[p]
#桜子
[chara_mod  name="sakurako" face="default" ]
[playse storage="sakurako/sa07_007.ogg" buf="0"]
I found a part -time job, so I'm relieved[p]
#
A part -time job has been added to the hero's options[p]
If you work on Saturdays and Sundays, your wage will increase[r]
Please note that if your physical strength is exhausted, it will fall![p]
#桜子
[playse storage="sakurako/sa07_008.ogg" buf="0"]
From now on, every day, I will divulge the status at night[p]
#
status?[p]
#桜子
[playse storage="sakurako/sa07_009.ogg" buf="0"]
How well you have with your family![p]
#
oh!It's convenient[p]
#桜子
[chara_mod  name="sakurako" face="niya" ]
[playse storage="sakurako/sa07_010.ogg" buf="0"]
500 yen at a time![p]
#
Do you take money![r]
I mean, use it for![p]
#桜子
[playse storage="sakurako/sa07_011.ogg" buf="0"]
Let's do it for free with the bleeding service for the first time[p]

;占いステータス画面コール
[call storage="status.ks"]

#桜子
[chara_mod  name="sakurako" face="panchi02" ]
[playse storage="sakurako/sa07_013.ogg" buf="0"]
Erotic with my family with reference to this status ...[p]

#
Ha ……[p]

#桜子
[playse storage="sakurako/sa07_015.ogg" buf="0"]
Have a diary write for the closing of the day[p]

#
diary?I've never written that![p]

#桜子
[chara_mod  name="sakurako" face="okori" ]
[playse storage="sakurako/sa07_016.ogg" buf="0"]
This is also part of the rehabilitation plan!Because I will write it firmly![p]

#
You can save the game by writing a diary at the end of the day[p]


[chara_mod  name="sakurako" face="akubi" ]
(Is this angel always in my room?[r]
...... What should I do if I want to pull it out ...)[p]
I wonder if I will write in my diary for the time being[p]

;セーブ画面移動
[showsave]
;バージョンが上がったら消す
[eval exp="f.save_v = 1.03"]
;画面暗転
[mask time="500"]
;レイヤ全消去
[cm]
[clearfix]
@layopt layer="message" visible=false
[chara_hide name="sakurako" time="0"]
[freeimage layer="base" time="0"]

[mask_off]
[return]
