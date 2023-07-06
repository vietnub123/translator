;***********************************************************************************************************************
;-静江さんデート
;静江さんデートエッチ数値
;カラオケ １回目　60　　２回目　75
;遊園地   １回目　65　　２回目　80
;お祭り   １回目　70　　３回目　85
;カフェ   １回目  90
;居酒屋   １回目  90


*start
;桜子消去
#
[chara_hide name="sakurako"]
;***********************************************************************************************************************
;-ナース服判別
[if exp="tf.date_select == 8"]
[jump target="*na_su"]
[endif]
;***********************************************************************************************************************
;-バイブ判別
[if exp="tf.date_select == 9"]
[jump target="*vibrator"]
[endif]
;***********************************************************************************************************************
;-好感度80以下で断られた
[if exp="f.sizue_f < 80"]
;静江ランダム会話
;ランダム数値の取り出し
[iscript]
tf.rand = Math.floor( Math.random() * 5)
[endscript]

[if exp="tf.rand == 0"]
#静江
[playse storage="sizue/sz49_006.ogg" buf="0"]
I'm sorry, your brother[r]
I'm going out today[p]
[endif]

[if exp="tf.rand == 1"]
#静江
[playse storage="sizue/sz49_007.ogg" buf="0"]
Don't get rid of your brother, your aunt[p]
[endif]

[if exp="tf.rand == 2"]
#静江
[playse storage="sizue/sz49_008.ogg" buf="0"]
Ufufu, my brother again this time[p]
[endif]

[if exp="tf.rand == 3"]
#静江
[playse storage="sizue/sz49_009.ogg" buf="0"]
Aunt is a hangover today ... I'm sorry[p]
[endif]

[if exp="tf.rand == 4"]
#静江
[playse storage="sizue/sz49_010.ogg" buf="0"]
Aunt, I have an errand today[p]
[endif]

#
I was refused[p]
さて、どうしようか
[jump storage="main.ks" target="*choice2"]
[endif]

;***********************************************************************************************************************
;-デートOK

;静江ランダム会話
;ランダム数値の取り出し
[iscript]
tf.rand = Math.floor( Math.random() * 5)
[endscript]

[if exp="tf.rand == 0"]
#静江
[playse storage="sizue/sz49_001.ogg" buf="0"]
Okay, older brother[p]
[endif]

[if exp="tf.rand == 1"]
#静江
[playse storage="sizue/sz49_002.ogg" buf="0"]
Is it okay to date an aunt?[p]
[endif]

[if exp="tf.rand == 2"]
#静江
[playse storage="sizue/sz49_003.ogg" buf="0"]
Will you invite your brother?[p]
[endif]

[if exp="tf.rand == 3"]
#静江
[playse storage="sizue/sz49_004.ogg" buf="0"]
Oh, it looks fun, my brother[p]
[endif]

[if exp="tf.rand == 4"]
#静江
[playse storage="sizue/sz49_005.ogg" buf="0"]
Ufufu, older brother, invitation for a date?[p]
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
;■遊園地
[if exp="tf.date_select == 6"]
[jump target="*amusement"]
[endif]
;■お祭り
[if exp="tf.date_select == 7"]
[jump target="*maturi"]
[endif]
;■居酒屋
[if exp="tf.date_select == 11"]
[jump target="*pub"]
[endif]
;***********************************************************************************************************************
;-公園デート
*park
#
[bg storage="park_day.png" time="1000"]
[playbgm storage="haretahiha.ogg" loop="true"]
I came to the park![p]

[cm]
[freeimage layer="2" time="0"]
[bg storage="black.png" time="1000"]
[bgmovie storage="mov_51_2.webm"]

;静江ランダム会話
;ランダム数値の取り出し
[iscript]
tf.rand = Math.floor( Math.random() * 5)
[endscript]

[if exp="tf.rand == 0"]
#静江
[playse storage="sizue/sz51_001.ogg" buf="0"]
Older brother!Look, I'm going to look for Pochimon![p]
#
Shizue is fine even though it's so hot[p]
[endif]

[if exp="tf.rand == 1"]
#静江
[playse storage="sizue/sz51_002.ogg" buf="0"]
It's hot every day ~[p]
#
My throat is a carakara[p]
[endif]

[if exp="tf.rand == 2"]
#静江
[playse storage="sizue/sz51_004.ogg" buf="0"]
Hey!Your brother, I'm going ~[p]
#
It's already the limit of physical strength[p]
[endif]

[if exp="tf.rand == 3"]
#静江
[playse storage="sizue/sz51_005.ogg" buf="0"]
Raid time soon![p]
#
Preparation is all[p]
[endif]

[if exp="tf.rand == 4"]
#静江
[playse storage="sizue/sz51_006.ogg" buf="0"]
I will earn the distance of Pochimon eggs![r]
Oni -chan, around the park![p]
#
Are you still walking![p]
[endif]

;公園帰宅
;静江ちゃん好感度UP
[sizue_f]
;体力減少
[eval exp="f.hp = f.hp - 20"]
[fadeoutbgm]
[stopse]

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
[bgmovie storage="mov_54_1.webm"]

;静江ランダム会話
;ランダム数値の取り出し
[iscript]
tf.rand = Math.floor( Math.random() * 3)
[endscript]

[if exp="tf.rand == 0"]
#静江
[playse storage="sizue/sz54_001.ogg" buf="0"]
Brother, do you put milk?[p]
#
Yes, please put in a lot[p]
[endif]

[if exp="tf.rand == 1"]
#静江
[playse storage="sizue/sz54_002.ogg" buf="0"]
Even if you look like this, coffee is black![p]
#
Sugar and milk are required[p]
[endif]

[if exp="tf.rand == 2"]
#静江
[playse storage="sizue/sz54_003.ogg" buf="0"]
This cake is delicious[p]
#
delicious[p]
[endif]
;***********************************************************************************************************************
;ロータープレイ
[if exp="f.item[6] == true && f.sizue_h >= 90"]
どうしようかな
[glink  color="pink" size="20"  x="950"  width="150"  y="300"  text="ローターを使う"  target="*rotor_play"]
[glink  color="pink" size="20"  x="950"  width="150"  y="400"  text="使わない"  target="*cafe_return"]
[s]
[else]
[jump target="*cafe_return"]
[endif]
*rotor_play
[eval exp="tf.rotor = 0"]
[stop_bgmovie time="1000"]
[fadeoutbgm]
#
ローターのスイッチを入れてみた！
[playse storage="sizue/sz54_004.ogg" buf="0" loop="true"]
[playse storage="se/rotor.ogg" buf="3" loop="true"]
[bgmovie storage="mov_54_2_2.webm" time="1000"]
[jump target="*rotor_play2"]
*rotor_play1
#
[if exp="tf.rotor < 0"]
[eval exp="tf.rotor = 0"]
[endif]
[if exp="tf.rotor > 3"]
[eval exp="tf.rotor = 3"]
[endif]
[stop_bgmovie time="2000"]
[if exp="tf.rotor == 0"]
[bgmovie storage="mov_54_2_2.webm" time="1000"]
[endif]
[if exp="tf.rotor == 1"]
[bgmovie storage="mov_54_3.webm" time="1000"]
[endif]
[if exp="tf.rotor == 2"]
[bgmovie storage="mov_54_6.webm" time="1000"]
[endif]
[if exp="tf.rotor == 3"]
[bgmovie storage="mov_54_4.webm" time="1000"]
[endif]
;セリフランダム--------------------------------------
*rotor_random
[iscript]
tf.rand = Math.floor( Math.random() * 3)
[endscript]
[if exp="tf.rand == tf.rand_old"]
[jump target="*rotor_random"]
[endif]
[if exp="tf.rand == 0"]
[playse storage="se/rotor.ogg" buf="3" loop="true"]
#静江
[playse storage="sizue/sz54_005.ogg" buf="0"]
お兄ちゃん、だめ！
[endif]
[if exp="tf.rand == 1"]
#静江
[playse storage="sizue/sz54_006.ogg" buf="0"]
もう、お兄ちゃん！！
[endif]
[if exp="tf.rand == 2"]
#静江
[playse storage="sizue/sz54_007.ogg" buf="0"]
お兄ちゃん…それ以上は…
[endif]
[eval exp="tf.rand_old = tf.rand"]
;---------------------------------------------------------
[wse]
[playse storage="sizue/sz54_004.ogg" buf="0" loop="true"]
*rotor_play2
[eval exp="tf.button_y = 300"]
[if exp="tf.rotor != 3"]
[glink  color="pink" size="20"  x="950"  width="150"  y="&tf.button_y"  text="強くする"  target="*rotor_play1" exp="tf.rotor = tf.rotor + 1" ]
[eval exp="tf.button_y = tf.button_y + 100"]
[endif]
[if exp="tf.rotor != 0"]
[glink  color="pink" size="20"  x="950"  width="150"  y="&tf.button_y"  text="弱くする"  target="*rotor_play1" exp="tf.rotor = tf.rotor - 1" ]
[eval exp="tf.button_y = tf.button_y + 100"]
[endif]
[glink  color="pink" size="20"  x="950"  width="150"  y="&tf.button_y"  text="やめる"  target="*cafe_return"]
[s]
;***********************************************************************************************************************
*cafe_return
;カフェ帰宅
#
;静江さん好感度UP
[sizue_f]
;体力減少
[eval exp="f.hp = f.hp - 10"]
[stop_bgmovie time="1000"]
[bg storage="cafe.png" time="500"]
[fadeoutbgm]
[stopse buf="0"]
[stopse buf="3"]
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
;-ゲーセンデート
*arcade
#
[bg storage="arcade.png" time="1000"]
[playbgm storage="dance.ogg" loop="true"]
I came to the game center[p]

[cm]
[freeimage layer="2" time="0"]
[bg storage="black.png" time="1000"]
[bgmovie storage="mov_50_1.webm"]


;静江ランダム会話
;ランダム数値の取り出し
[iscript]
tf.rand = Math.floor( Math.random() * 3)
[endscript]

[if exp="tf.rand == 0"]
#静江
[playse storage="sizue/sz50_002.ogg" buf="0"]
Nyantaro's stuffed animal![r]
Can you get your brother?[p]
#
do one's best[p]
[endif]

[if exp="tf.rand == 1"]
#静江
[playse storage="sizue/sz50_003.ogg" buf="0"]
Older brother!I'm going to take a picture![p]
#
Sounds good![p]
[endif]

[if exp="tf.rand == 2"]
#静江
[playse storage="sizue/sz50_006.ogg" buf="0"]
Older brother!  Wow wow![p]
#
I got it miraculously![p]
[endif]

;ゲーセン帰宅
;静江さん好感度UP
[sizue_f]
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
;-カラオケデート
*karaoke
#
[cm]
[freeimage layer="2" time="0"]
[bg storage="black.png" time="1000"]
[playbgm storage="ways.ogg" loop="true"]
;***********************************************************************************************************************
;静江ランダム会話

[bgmovie storage="mov_52_8.webm"]
#
I came to karaoke[p]

;ランダム数値の取り出し
[iscript]
tf.rand = Math.floor( Math.random() * 7)
[endscript]
[if exp="tf.rand == 0"]
#静江
[playse storage="sizue/sz52_001.ogg" buf="0"]
Aunt, I don't know much about recent songs[p]
#
I can only sing anison[p]
[endif]

[if exp="tf.rand == 1"]
#静江
[playse storage="sizue/sz52_002.ogg" buf="0"]
Oni -chan, what do you drink?Aunt is a beer![p]
#
With coffee milk sugar[p]
[endif]

[if exp="tf.rand == 2"]
#静江
[playse storage="sizue/sz52_003.ogg" buf="0"]
Yeah ... your brother, your voice is good ...[p]
#
Hooray!Praised[p]
[endif]

[if exp="tf.rand == 3"]
#静江
[playse storage="sizue/sz52_004.ogg" buf="0"]
brother!Extend because you got on![p]
#
Sounds good[p]
[endif]

[if exp="tf.rand == 4"]
#静江
[playse storage="sizue/sz52_005.ogg" buf="0"]
Fufu, Riko's favorite song?My brother is good[p]
#
I can't say my favorite song[p]
[endif]

[if exp="tf.rand == 5"]
#静江
[playse storage="sizue/sz52_006.ogg" buf="0"]
Let's eat pizza![p]
#
I eat too much[p]
[endif]

[if exp="tf.rand == 6"]
#静江
[playse storage="sizue/sz52_007.ogg" buf="0"]
How many songs do you sing![p]
#
Shizue's song, fun[p]
[endif]
;***********************************************************************************************************************
;カラオケＨ判別
[if exp="f.sizue_h >= 60 && f.karaoke_sizue_h == undefined"]
[jump target="*karaoke_h1"]
[endif]
[if exp="f.sizue_h >= 75 && f.karaoke_sizue_h == 1"]
[jump target="*karaoke_h2"]
[endif]
;***********************************************************************************************************************
;カラオケ帰宅
;静江ちゃん好感度UP
[sizue_f]
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
[fadeoutbgm]
[stop_bgmovie time="1000"]
[bgmovie storage="mov_52_5.webm" time="1000"]

[playse storage="sizue/sz52_008.ogg" buf="0"]
#静江
Oh, my brother[r]
It's so big[p]
#
Uh, hell!Shizue -san ...[p]
#静江
[playse storage="sizue/sz52_009.ogg" buf="0"]
Your brother, feel good?[r]
Your brother's pleasant face, cute[p]
#
And Shizue -san, no!In such a place[p]
#静江
[playse storage="sizue/sz52_010.ogg" buf="0"]
It feels good, your brother!Because the surroundings are noisy[r]
It's okay to make a lot of voices[p]
[playse storage="sizue/sz52_010_1.ogg" buf="0"]
Aunt will feel comfortable[p]
#
Huh, huh, Shizue -san ... It feels good[p]
#静江
[playse storage="sizue/sz52_011.ogg" buf="0"]
Your brother, cute, feels good?[r]
You can always put it out!It's okay to put it out[p]
#
Oh, Shizue -san!No, no, get out!Ahhhhh[p]
[stop_bgmovie]
[stopse buf="0"]
[movie storage="mov_52_6.webm" skip="true"]

[stop_bgmovie time="1000"]
[bg storage="karaoke.png" time="1000"]
;カラオケ帰宅
;静江ちゃん愛情UP
[sizue_i]
;体力減少
[eval exp="f.hp = f.hp - 20"]
[stop_bgmovie time="2000"]
;カラオケフラグ　１
[eval exp="f.karaoke_sizue_h = 1"]
;主人公精力減少
[eval exp="f.energy = f.energy - 30"]
;静江さんエッチフラグ
[eval exp="f.sizue_sex = true"]

#
It was nice to have Shizue -san pulled out[p]
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
[fadeoutbgm]
[stop_bgmovie time="1000"]
[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[stop_bgmovie]
[bgloop mov="mov_52_1.webm"  ti="1000"]
[movie storage="mov_52_2.webm" skip="true"]


;カラオケ帰宅
[bg storage="karaoke.png" time="1000"]
;静江さん愛情度UP
[sizue_i]
;体力減少
[eval exp="f.hp = f.hp - 20"]
[stop_bgmovie time="1000"]
;カラオケフラグ　2
;[eval exp="f.karaoke_sizue_h = 1"]
[iscript]
delete f.karaoke_sizue_h;
[endscript]
;主人公精力減少
[eval exp="f.energy = f.energy - 30"]
;静江さんエッチフラグ
[eval exp="f.sizue_sex = true"]

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
;-遊園地
*amusement
#
[cm]
[freeimage layer="2" time="0"]
[bg storage="black.png" time="1000"]
[playbgm storage="yuuenti.ogg" loop="true"]


;***********************************************************************************************************************
;遊園地Ｈ判別
[if exp="f.sizue_h >= 65 && f.amusement_sizue_h == undefined"]
[jump target="*amusement_h1"]
[endif]
[if exp="f.sizue_h >= 80 && f.amusement_sizue_h == 1"]
[jump target="*amusement_h2"]
[endif]
;***********************************************************************************************************************
;静江ランダム会話
;ランダム数値の取り出し
*rand
[iscript]
tf.rand = Math.floor( Math.random() * 5)
[endscript]

[if exp="tf.rand == 0"]
[bgmovie storage="mov_53_7.webm"]
I came to the amusement park[p]
#
What should I ride ...[p]
Okay![p]
Mr. Shizue who is afraid of entering a haunted house[r]
Let's escort cool[p]
[stop_bgmovie time="1000"]
[bgmovie storage="mov_53_8.webm" time="1000"]
#静江
[playse storage="sizue/sz53_001.ogg" buf="0"]
Oh dear!Are you scared of your brother?[r]
It's okay because your aunt is on![p]
#
On the contrary, it was escorted[p]
[endif]

[if exp="tf.rand == 1"]
[bgmovie storage="mov_53_7.webm"]
I came to the amusement park[p]
[stop_bgmovie time="1000"]
[bgmovie storage="mov_53_10.webm" time="1000"]
#静江
[playse storage="sizue/sz53_002.ogg" buf="0"]
My brother, I'll ride again![p]
#
yes!I'll do my best[p]
[endif]

[if exp="tf.rand == 2"]
[bgmovie storage="mov_53_7.webm"]
I came to the amusement park[p]
;恋人状態以外はやり直し
[if exp="f.sizue_lover  != 2"]
[jump target="*rand"]
[endif]
[stop_bgmovie time="1000"]
[bgmovie storage="mov_53_9.webm" time="1000"]
#静江
[playse storage="sizue/sz53_006.ogg" buf="0"]
It's a bit shy to hold hands![p]
#
Alright, I held my hands naturally[p]
[endif]

[if exp="tf.rand == 3"]
[bgmovie storage="mov_53_7.webm"]
I came to the amusement park[p]
#静江
[playse storage="sizue/sz53_003.ogg" buf="0"]
You have to catch Pochimon in such a place![p]
[endif]

;遊園地帰宅
;静江ちゃん好感度UP
[sizue_f]
;体力減少
[eval exp="f.hp = f.hp - 15"]
[stop_bgmovie time="1000"]
[bg storage="amusement.png" time="500"]
[fadeoutbgm]
[stopse]
#
Satisfied with playing with Shizue -san in an amusement park[p]
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
[bg storage="amusement.png" time="500"]
I came to the amusement park[p]
[stop_bgmovie time="1000"]
[fadeoutbgm]
[bg storage="black.png" time="1000"]


[bgmovie storage="mov_53_1.webm" time="1000"]
#静江
[playse storage="sizue/sz53_007.ogg" buf="0"]
My brother, I like boobs![r]
I will feel comfortable with my aunt's boobs[p]
#
I like boobs!I love Shizue's boobs[p]
#静江
[playse storage="sizue/sz53_008.ogg" buf="0"]
My brother's chin, I'm bikunbikun sandwiched between boobs[r]
okay?Your brother, do you like your boobs?Feeling boobs?[p]
#
Shizue -san! Is good!Shizue's boobs are nice[p]
#静江
[playse storage="sizue/sz53_009.ogg" buf="0"]
Your brother is feeling good![r]
good?Boobs, feel good?[p]
[playse storage="sizue/sz53_009_1.ogg" buf="0"]
Ufufu, good brother[r]
You can get out of the chin again![p]
#
Shizue -san!Oh oh oh![p]

[stop_bgmovie time="1000"]
[stopse buf="0"]
[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[movie storage="mov_53_2.webm" skip="true"]

;遊園地帰宅
[bg storage="amusement.png" time="1000"]
;静江ちゃん愛情度UP
[sizue_i]
;体力減少
[eval exp="f.hp = f.hp - 20"]
[stop_bgmovie time="1000"]
;遊園地フラグ　１
[eval exp="f.amusement_sizue_h = 1"]
;主人公精力減少
[eval exp="f.energy = f.energy - 30"]
;静江さんエッチフラグ
[eval exp="f.sizue_sex = true"]

[menuwindows]
#
Shizue's boobs were big![p]
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

[bg storage="amusement.png" time="500"]
I came to the amusement park[p]
[stop_bgmovie time="1000"]
[fadeoutbgm]
[bg storage="black.png" time="1000"]

[playse storage="se/kutyu01.ogg" loop="true" buf="3"]
[bgmovie storage="mov_53_3.webm" time="1000"]
#静江
[playse storage="sizue/sz53_012.ogg" buf="0"]
Huh, huh, older brother, aunt's pussy, feel good?[r]
You can put it in and out of your older -chan's favorite ... Hmm, huh ...[p]
#
Shizue -san, it feels good, it's very comfortable in Shizue![p]
#静江
[playse storage="sizue/sz53_013.ogg" buf="0"]
Hmm, Oh, my brother, a pleasant face ... Huh, cute[r]
Huh, it's an aunt's pussy, and it's a lot of pleasant ...[p]
#
[playse storage="sizue/sz53_014.ogg" buf="0" loop="true"]
Shizue -san!Huh, huh,[p]

[stop_bgmovie time="1000"]
[stopse buf="0"]
[stopse buf="3"]
[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[movie storage="mov_53_4.webm" skip="true"]

;遊園地帰宅
[bg storage="amusement.png" time="1000"]
;静江ちゃん愛情度UP
[sizue_i]
;体力減少
[eval exp="f.hp = f.hp - 20"]
[stop_bgmovie time="1000"]
;遊園地フラグ　１
;[eval exp="f.amusement_sizue_h = 1"]
[iscript]
delete f.amusement_sizue_h;
[endscript]
;主人公精力減少
[eval exp="f.energy = f.energy - 30"]
;静江さんエッチフラグ
[eval exp="f.sizue_sex = true"]

[menuwindows]
#
Play a lot in the amusement park with Shizue[r]
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
[bgmovie storage="mov_55_8.webm"]
[playbgm storage="sitamati.ogg" loop="true"]
I came to the festival[p]
;***********************************************************************************************************************
;静江ランダム会話
;ランダム数値の取り出し
[iscript]
tf.rand = Math.floor( Math.random() * 4)
[endscript]

[if exp="tf.rand == 0"]
#静江
[playse storage="sizue/sz55_001.ogg" buf="0"]
Are you happy to see your aunt's yukata?[p]
#
Mr. Shizue looks very good[p]
[endif]

[if exp="tf.rand == 1"]
#静江
[playse storage="sizue/sz55_002.ogg" buf="0"]
I have to try not to eat too much, I'm on a diet[p]
#
I feel like I'm eating quite a bit[p]
[endif]

[if exp="tf.rand == 2"]
#静江
[playse storage="sizue/sz55_003.ogg" buf="0"]
Your brother, do you eat shaved ice?[p]
#
Good[p]
[endif]

[if exp="tf.rand == 3"]
#静江
[playse storage="sizue/sz55_004.ogg" buf="0"]
picture?What you drink, of course, beer[p]
#
I thought so[p]
[endif]
;***********************************************************************************************************************
;お祭りＨ判別
[if exp="f.sizue_h >= 70 && f.maturi_sizue_h == undefined"]
[jump target="*maturi_h1"]
[endif]
[if exp="f.sizue_h >= 85 && f.maturi_sizue_h == 1"]
[jump target="*maturi_h2"]
[endif]
;***********************************************************************************************************************
;お祭り帰宅
;静江さん好感度UP
[sizue_f]
;体力減少
[eval exp="f.hp = f.hp - 15"]
[stop_bgmovie time="1000"]
[bg storage="maturi.png" time="500"]
[fadeoutbgm]
[stopse]
#
Satisfied with playing with Shizue at the festival[p]
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
[bgmovie storage="mov_55_9.webm" time="1000"]

#静江
[playse storage="sizue/sz55_005.ogg" buf="0"]
Bring to a place where there is no one[r]
What are you going to do! brother[p]
#
Well ... that's ...[p]
#静江
[playse storage="sizue/sz55_006.ogg" buf="0"]
Ufufu, come, your brother!Aunt will feel comfortable[p]
#
[fadeoutbgm]
[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[stop_bgmovie time="1000"]
[stopse buf="0"]
[bgloop mov="mov_55_1.webm"  ti="1000"]
[movie storage="mov_55_2.webm" skip="true"]

;お祭り帰宅
[bg storage="maturi_night.png" time="500"]
;静江さん愛情度UP
[sizue_i]
;体力減少
[eval exp="f.hp = f.hp - 20"]
[stop_bgmovie time="1000"]
;お祭りフラグ　１
[eval exp="f.maturi_sizue_h = 1"]
;主人公精力減少
[eval exp="f.energy = f.energy - 30"]
;静江さんエッチフラグ
[eval exp="f.sizue_sex = true"]

[menuwindows]
#
Play a lot with Shizue -san at the festival[r]
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
[bgmovie storage="mov_55_9.webm" time="1000"]

#静江
[playse storage="sizue/sz55_009.ogg" buf="0"]
Bring your aunt to a place where you can no longer[r]
What are you trying to do?[p]
#
Ah ... that[p]
#静江
[playse storage="sizue/sz55_010.ogg" buf="0"]
Good, do your favorite brother and brother as you like[p]

[fadeoutbgm]
[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[stop_bgmovie]
[stopse buf="0"]
[playse storage="sizue/sz55_011.ogg" buf="0"]
[playse storage="se/kutyu01.ogg" loop="true" buf="3"]
[bgloop mov="mov_55_3.webm"  ti="1000"]
[stopse buf="0"]
[stopse buf="3"]
[movie storage="mov_55_4.webm" skip="true"]

;お祭り帰宅
[bg storage="maturi_night.png" time="500"]
;静江ちゃん愛情度UP
[sizue_i]
;体力減少
[eval exp="f.hp = f.hp - 20"]
[stop_bgmovie time="1000"]
;お祭りフラグ　１
;[eval exp="f.maturi_sizue_h = 1"]
[iscript]
delete f.maturi_sizue_h;
[endscript]
;主人公精力減少
[eval exp="f.energy = f.energy - 30"]
;静江さんエッチフラグ
[eval exp="f.sizue_sex = true"]

[menuwindows]
#
I played a lot at the festival with Shizue[r]
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
;-ナース服
*na_su

;エッチ度判定
[if exp="f.sizue_h < 70"]
#
I can't really say it yet ...[p]
さて、どうしようか
[jump storage="main.ks" target="*choice2"]
[endif]
#
[cm]
[freeimage layer="2" time="0"]
[bg storage="black.png" time="1000"]
[bgmovie storage="mov_67_10.webm"]
#静江
[playse storage="sizue/sz67_009.ogg"]
Your brother, do you want to wear this?[p]
#
Yes, yes ... by all means[p]
#静江
[playse storage="sizue/sz67_010.ogg"]
Ufufu, nurse clothes are naughty! OK!Wear[p]
#静江
[playse storage="sizue/sz67_011.ogg"]
Your brother, you don't have to look behind that ~[p]
[stop_bgmovie]
[bgmovie storage="mov_67_11.webm"]
#静江
[playse storage="sizue/sz67_012.ogg"]
My brother, I changed my clothes!So what do you do?[p]
#
It's Shizue -san!For the time being, such a pose![p]
#静江
[playse storage="sizue/sz67_013.ogg"]
I wonder if it looks like this![p]
#
I would like this pose too![p]
#静江
[playse storage="sizue/sz67_014.ogg"]
Ufufu! shell?[p]
#
That's right, Shizue -san ... it's erotic![p]
#静江
[playse storage="sizue/sz67_015.ogg"]
already!brother!What I like my brother is boobs![p]
[stop_bgmovie]
[bgmovie storage="mov_67_12.webm"]
#静江
[playse storage="sizue/sz67_016.ogg"]
teacher!My boobs are so swollen! please look![p]
#
Certainly ... it's so big![p]
#静江
[playse storage="sizue/sz67_017.ogg"]
Look!Look closer, teacher!I'm really excited![p]
#静江
[playse storage="sizue/sz67_018.ogg"]
Teacher, please palpate!Please see every corner of the swelling and swollen boobs[p]
#静江
[playse storage="sizue/sz67_019.ogg"]
teacher!Are you ready for injections? I will check![p]
#静江
[playse storage="sizue/sz67_020.ogg"]
Oh, such a big injection!I will disinfect it well![p]
[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[stop_bgmovie]
[playse storage="sizue/sz67_021.ogg" loop="true"]
[bgloop mov="mov_67_13.webm"  ti="2000"]
[stop_bgmovie]
[stopse buf="0"]
[bgmovie storage="mov_67_15.webm"]
[menuwindows]
#静江
[playse storage="sizue/sz67_022.ogg"]
Teacher ... Please give me an injection ... look!A big injection here ...[r]
Otherwise, I can't do it anymore ... Teacher ... Inject![p]
[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[stop_bgmovie]
[playse storage="sizue/sz67_025.ogg" loop="true"]
[playse storage="se/kutyu01.ogg" loop="true" buf="3"]
[bgloop mov="mov_67_16.webm"  ti="2000"]
[stopse buf="0"]
[stopse buf="3"]
[movie storage="mov_67_17.webm" skip="true"]

;帰宅
;静江さん愛情度UP
[sizue_i]
;体力減少
[eval exp="f.hp = f.hp - 20"]
[stop_bgmovie time="1000"]
;ナース服フラグ　１
[eval exp="f.na_su_sizue_h = 1"]
;主人公精力減少
[eval exp="f.energy = f.energy - 30"]
;静江さんエッチフラグ
[eval exp="f.sizue_sex = true"]

;デートフラグオン（帰宅時に部屋に行くを消すための変数）
[eval exp="tf.date = true"]
[menuwindows]
#
Nurse clothes I'm very excited[p]
#
I'm back in the room[r]
[jump storage="main.ks" target="*night"]

;***********************************************************************************************************************
;-バイブ
*vibrator

;エッチ度判定
[if exp="f.sizue_h < 80"]
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

[bgloop mov="mov_86_1.webm"  ti="2000"]
[movie storage="mov_86_3.webm" skip="true"]
[bgloop mov="mov_86_4.webm"  ti="2000"]

;帰宅
;静江さん愛情度UP
[sizue_i]
;体力減少
[eval exp="f.hp = f.hp - 20"]
[stop_bgmovie time="1000"]
;バイブフラグ　１
[eval exp="f.vibrator_sizue_h = 1"]
;デートフラグオン（帰宅時に部屋に行くを消すための変数）
[eval exp="tf.date = true"]
;静江さんエッチフラグ
[eval exp="f.sizue_sex = true"]

[menuwindows]
#
Shizue -san seemed to be comfortable[p]
#
I'm back in the room[r]
[jump storage="main.ks" target="*night"]

;***********************************************************************************************************************
;-居酒屋
*pub
#
[cm]
[freeimage layer="2" time="0"]
[bg storage="black.png" time="1000"]
[bgmovie storage="mov_56_1.webm"]
[playbgm storage="roujintoneko.ogg" loop="true"]
I came to the izakaya[p]
;***********************************************************************************************************************
;静江ランダム会話
;ランダム数値の取り出し
[iscript]
tf.rand = Math.floor( Math.random() * 2)
[endscript]

[if exp="tf.rand == 0"]
#静江
[playse storage="sizue/sz56_002.ogg" buf="0"]
Ufufu, what are you going to do with your aunt get drunk?[p]
[endif]

[if exp="tf.rand == 1"]
#静江
[playse storage="sizue/sz56_005.ogg" buf="0"]
Aunt, maybe I'm a little drunk[p]
[endif]

;***********************************************************************************************************************
;居酒屋Ｈ判別
[if exp="f.sizue_h >= 90 && f.hotel_sizue_h == undefined && f.money >= 10000"]
[jump target="*hotel_h1"]
[endif]
;***********************************************************************************************************************
;居酒屋帰宅
;静江さん好感度UP
[sizue_f]
;体力減少
[eval exp="f.hp = f.hp - 15"]
[stop_bgmovie time="1000"]
[bg storage="black.png" time="1000"]
[fadeoutbgm]
[stopse]
#
I drank a lot ...[p]
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
;ホテルH1
*hotel_h1
[stopse]
[fadeoutbgm]
#
[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[stop_bgmovie time="1000"]
[movie storage="mov_56_2.webm" skip="true"]
[bg storage="pub/img_56_12.png"]
[menuwindows]
#
Shizue -san, drink too much![p]
And it's like this[p]
[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[movie storage="mov_56_3.webm" skip="true"]
[menuwindows]
#
No, that's not the case![p]
I still want to be together[p]
[cm]
[clearfix]
[bg storage="black.png" time="1000"]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[movie storage="mov_56_4.webm" skip="true"]
[bg storage="hotel/hotel.png" time="2000"]
[menuwindows]
I came to the hotel[p]
[bg storage="black.png" time="1000"]
[cm]
[clearfix]
[bg storage="black.png" time="1000"]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[movie storage="mov_56_5.webm" skip="true"]
[bgloop mov="mov_56_7.webm"  ti="2000"]
[playse storage="sizue/sz70_016.ogg" buf="0" loop="true"]
[playse storage="se/kutyu02.ogg" buf="3" loop="true"]
[bgloop mov="mov_56_9.webm"  ti="2000"]
[stopse buf="0"]
[stopse buf="3"]
[bgloop mov="mov_56_13.webm"  ti="2000"]
[movie storage="mov_56_10.webm" skip="true" ti="200"]
[playse storage="sizue/sz55_012_1.ogg" buf="0" loop="true"]
[bgloop mov="mov_56_11.webm"  ti="2000"]
;***********************************************************************************************************************
;ホテル帰宅
[stopse]
[bg storage="hotel/hotel.png" time="2000"]
;静江さん愛情度UP
[sizue_i]
;体力減少
[eval exp="f.hp = f.hp - 20"]
[stop_bgmovie time="1000"]
;ホテルフラグ　１
;[eval exp="f.maturi_sizue_h = 1"]
;[iscript]
;delete f.hoteru_sizue_h;
;[endscript]
;主人公精力減少
[eval exp="f.energy = f.energy - 30"]
;静江さんエッチフラグ
[eval exp="f.sizue_sex = true"]

[menuwindows]
#
It's like a dream at the hotel with Shizue[p]
I spent 10,000 yen at izakaya and hotel[p]
[eval exp="f.money = f.money - 10000"]
[uiwindows]
[playse storage="se/money.ogg" buf="2"]
[kanim name="money" keyframe="money_a" time ="300"]
[stop_kanim]
#
I came home[r]
[jump storage="main.ks" target="*night"]

