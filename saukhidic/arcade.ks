;ゲームセンター

*start

[cm]
[clearfix]
;体力減少
[eval exp="f.hp = f.hp - 10"]
[mask time="500"]
;桜子消去
#
[chara_hide name="sakurako"]
[playbgm storage="dance.ogg" loop="true"]
@bg storage ="arcade.png" time=0"
[menuwindows]

[mask_off time="500"]

;--１回目の判別
[if exp="f.arcade_fast == undefined"]
#
i came to the game center.[p]
maybe rikochan came a lot.[p]

[eval exp="f.arcade_fast = true"]
[else]
#
i came to the game center.[p]
[endif]


;-キャラクター判別
;配列変数 f.arcade_day を日付で判別
;0 桜子　１　莉子　２　莉菜　３　静江
[if exp="f.arcade_day[f.day] == 0"]
[call storage="sakurako.ks" target="*sakurako_arcade"]
[return]
[endif]

;莉子
[if exp="f.arcade_day[f.day] == 1"]
[jump target="*riko_arcade"]
[endif]

;莉菜
[if exp="f.arcade_day[f.day] == 2"]
[jump target="*rina_arcade"]
[endif]

;静江
[if exp="f.arcade_day[f.day] == 3"]
[jump target="*sizue_arcade"]
[endif]

;-ゲームセンターイベント　莉子-----------------------------------------------------------------------------------------
*riko_arcade

;桜子会話呼び出し
[call storage="sakurako.ks" target="*sakurako_riko_goout"]

;--①
[if exp="f.riko_arcade == undefined || f.riko_arcade == 1"]
#
[bg storage="arcade/img17_21.png" time="1000"]
oh! Riko-chan is coming with her friend[r]
It looks like she's taking purikura[p]
[bg storage="arcade/img17_22.png" time="1000"]
#Mari-chan
See you soon Riko-chan~[p]
#Riko
[playse storage="riko/rk17_025.ogg" buf="0"]
bye bye[p]
#
[bg storage="arcade/img17_23.png" time="1000"]
Sun, Ricoh[p]
#Riko
[playse storage="riko/rk17_026.ogg" buf="0"]
Ah! Stalker![p]
#
who is the stalker![p]
Did you take purikura just now? show me[p]
#Riko
[playse storage="riko/rk17_027.ogg" buf="0"]
There's no reason to show it! This lolicon![p]
#
[bg storage ="arcade.png" time="1000"]

Riko-chan seems to have already gone home[p]
[eval exp="tf.place = 1"]
; Riko-chan's favorability UP
[riko_f]

;パートナー莉子ちゃん変更
;[eval exp="f.partner = 1"]

[eval exp="f.riko_arcade = 2"]
[return]
[endif]

;--②
[if exp="f.riko_arcade == 2"]
#
[bg storage="arcade/img17_24.png" time="1000"]
Ah, Riko-chan is playing a game![p]
Alright... I'll break in![r]
If you have a good match, they may review it[p]
…… [L] …… [L] ……[p]
……I was instantly killed[p]

[bg storage="arcade/img17_25.png" time="1000"]
#莉子
[playse storage="riko/rk17_027_1.ogg" buf="0"]
Oh... was it your uncle?[r]
I was so weak I was surprised![p]
#
[bg storage ="arcade.png" time="1000"]
Let's practice for a while[p]
……[p]
……[p]

;莉子ちゃん好感度UP
[riko_f]
[eval exp="tf.place = 1"]
[eval exp="f.riko_arcade = 3"]


[return]
[endif]

;--③
[if exp="f.riko_arcade == 3"]
#
[bg storage="arcade/img17_26.png" time="1000"]
Riko-chan is playing a crane game with her friend[p]
what are you taking?[r]
[bg storage="arcade/img17_27.png" time="1000"]
……[p]
……[p]
……[p]
(Don't feel pressure to come here...)[p]

I can't help it... go home[p]

;莉子ちゃん好感度UP
[riko_f]
[eval exp="tf.place = 1"]
[eval exp="f.riko_arcade = 1"]


[return]
[endif]



