;公園

*start

[cm]
[clearfix]
;体力減少
[eval exp="f.hp = f.hp - 10"]
[mask time="500"]
;桜子消去
#
[chara_hide name="sakurako"]
[playbgm storage="haretahiha.ogg" loop="true"]
@bg storage ="park_day.png" time=0"
[menuwindows]

[mask_off time="500"]

;--１回目の判別
[if exp="f.park_fast == undefined"]
#
I came to the rainbow commemorative park[p]
I heard that Shizue -san often stops on the way home from work[r]
Riko -chan may be playing with her friends[p]
[eval exp="f.park_fast = true"]
[else]
#
I came to the park[p]
[endif]


;-キャラクター判別
;配列変数 f.park_day を日付で判別
;0 桜子　１　莉子　２　莉菜　３　静江
[if exp="f.park_day[f.day] == 0"]
[call storage="sakurako.ks" target="*sakurako_park"]
[return]
[endif]

;莉子
[if exp="f.park_day[f.day] == 1"]
[jump target="*riko_park"]
[endif]

;莉菜
[if exp="f.park_day[f.day] == 2"]
[jump target="*rina_park"]
[endif]

;静江
[if exp="f.park_day[f.day] == 3"]
[jump target="*sizue_park"]
[endif]

;-公園イベント　莉子-----------------------------------------------------------------------------------------
*riko_park

;桜子会話呼び出し
[call storage="sakurako.ks" target="*sakurako_riko_goout"]

;--①
[if exp="f.riko_park == undefined || f.riko_park == 1"]
#
[bg storage="park/img17_18.png" time="1000"]
Riko -chan, I'm playing with my friends ...[p]
Girl playing in the park ... Like[p]
Oh, did you notice, Riko![p]
...... I'm approaching while glaring at something[p]
[bg storage="park/img17_19.png" time="1000"]
#莉子
[playse storage="riko/rk17_028.ogg" buf="0"]
What are you doing![p]
#
Eh ... no ... a walk[p]
#莉子
[playse storage="riko/rk17_029.ogg" buf="0"]
Because I'm a perverted person who is voyeuring the park[r]
Go home early before being reported![p]
#
[bg storage ="park_evening.png" time=1000]
I was returned ...[p]



[eval exp="tf.place = 1"]
;莉子ちゃん好感度UP
[riko_f]

[eval exp="f.riko_park = 2"]
[return]
[endif]

;--②
[if exp="f.riko_park == 2"]
#
[bg storage="park/img17_16.png" time="1000"]
Riko is walking[p]
A boy ran from behind![p]
#男の子
That ~[p]
[bg storage="park/img17_02.png" time="1000"]

#莉子
[playse storage="riko/rk17_030.ogg" buf="0"]
Kya ~[p]
[bg storage="park/img17_17.png" time="2000"]
#
oh!![p]
#莉子
[playse storage="riko/rk17_031.ogg" buf="0"]
This gaki[p]
#
I've been chasing ...[p]
[bg storage ="park_evening.png" time=1000]


;莉子ちゃん好感度UP
[riko_f]
[eval exp="tf.place = 1"]
[eval exp="f.riko_park = 1"]


[return]
[endif]

;-公園イベント　静江-----------------------------------------------------------------------------------------
*sizue_park

;桜子会話呼び出し
[call storage="sakurako.ks" target="*sakurako_sizue_goout"]

;--①
[if exp="f.sizue_park == undefined || f.sizue_park == 1"]
#
[bg storage="park/img19_03.png" time="1000"]
Shizue -san, I'm playing with my smartphone[p]
[bg storage="park/img19_04.png" time="1000"]
#静江
[playse storage="sizue/sz19_011.ogg" buf="0"]
Oh, my brother!Wait a minute[p]
#
Is it Pochimon Z?[p]
#静江
[playse storage="sizue/sz19_012.ogg" buf="0"]
sweet bean!I was able to escape[r]
That's right, it's hard to get together[p]
#
I started recently[r]
I don't know yet[p]
#静江
[playse storage="sizue/sz19_013.ogg" buf="0"]
Oh, that's right!This time my aunt will tell you![p]
[playse storage="sizue/sz19_013_2.ogg" buf="0"]
Good thing, older brother!Pochimon is not a play![r]
If you find an unusual monster, bring it to your aunt![p]
#
Yes, please be kind[p]
I gathered Pochimon for a while and decided to go home together[p]

;静江好感度UP
[sizue_f]

[eval exp="tf.place = 1"]

;パートナー静江さん変更
[eval exp="f.partner = 3"]

[eval exp="f.sizue_park = 2"]
[return]
[endif]

;--②
[if exp="f.sizue_park == 2"]
#
[bg storage="park/img19_06.png" time="1000"]
There are many people[r]
I wonder what?Everyone is doing Pochimon[p]
[bg storage="park/img19_07.png" time="1000"]
#静江
[playse storage="sizue/sz19_014.ogg" buf="0"]
My brother, see, soon![p]
#
eh!Shizue -san![p]
#静江
[playse storage="sizue/sz19_015.ogg" buf="0"]
It will start, raid battle[p]
#
ah!Is this a raid battle?[r]
That's why everyone is gathering[p]
[bg storage="park/img19_08.png" time="1000"]
#静江
[playse storage="sizue/sz19_016.ogg" buf="0"]
good thing!The countermeasure monster of your brother "Pika Maru Samurai" is physics![r]
Because the bite of "Nyantaro" is effective![p]
[playse storage="sizue/sz19_016_2.ogg" buf="0"]
If not, the crisp attack of the "rat"[r]
Because it's okay to annihilate[p]
[playse storage="sizue/sz19_016_3.ogg" buf="0"]
You should recover immediately and re -enter again!after that……[p]
#
(I feel so enthusiastic that I can imagine from the usual Shizue)[p]
#静江
[playse storage="sizue/sz19_017.ogg" buf="0"]
have understood?brother[p]
#
Ha ... yes, I'll do my best[p]
…… [L] …… [L] ……[p]
[bg storage="park/img19_09.png" time="1000"]
#静江
[playse storage="sizue/sz19_018.ogg" buf="0"]
Did your brother escape?[r]
It's okay because there is the next[p]
#
……yes[p]

I decided to go home together while talking about Pochimon[p]


;静江好感度UP
[sizue_f]

[eval exp="tf.place = 1"]

;パートナー静江さん変更
[eval exp="f.partner = 3"]

[eval exp="f.sizue_park = 3"]
[return]
[endif]

;--③
[if exp="f.sizue_park == 3"]
#
[bg storage="park/img19_06.png" time="1000"]
There are many people today![p]
[bg storage="park/img19_07.png" time="1000"]
#静江
[playse storage="sizue/sz19_019.ogg" buf="0"]
What are you doing!If you do not hurry![p]
#
Mr. Shizue, what is there?[p]
#静江
[playse storage="sizue/sz19_020.ogg" buf="0"]
Dialopon came out in the pond over there[r]
If you don't hurry, it will disappear[p]
#
Dialopon?ah!Pochimon![p]
I went to get it in a hurry[p]
…… [L] …… [L] ……[p]
[bg storage="park/img19_05.png" time="1000"]
#静江
[playse storage="sizue/sz19_021.ogg" buf="0"]
Your brother, did you get it?[p]
#
No ... it was no good[p]

I decided to go home together while collecting Pochimon[p]


;静江好感度UP
[sizue_f]

[eval exp="tf.place = 1"]

;パートナー静江さん変更
[eval exp="f.partner = 3"]

[eval exp="f.sizue_park = 4"]
[return]
[endif]

;--④
[if exp="f.sizue_park == 4"]
#
[bg storage="park/img19_04.png" time="1000"]
Shizue -san!Is it Pochimon today?[p]
#静江
[playse storage="sizue/sz19_022.ogg" buf="0"]
My brother, it was just right[r]
I'm going to look for Pochimon as I exercise![p]
#
Yes[p]

I decided to go home together while collecting Pochimon[p]


;静江好感度UP
[sizue_f]

[eval exp="tf.place = 1"]

;パートナー静江さん変更
[eval exp="f.partner = 3"]

[eval exp="f.sizue_park = 2"]
[return]
[endif]
