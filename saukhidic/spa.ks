;温泉旅行
*start
[bg storage="black.png" time="1000"]
#
About 2 hours after being swayed by the train[p]
This long journey is hard for withdrawal ...[p]
[fadeinse storage="se/cicada.ogg" buf="2" loop="true" time="2000"]
After walking for a while from the station[r]
You can see the hot spring inn![p]

[bg storage="spa/japanese_hotel.png" time="1000"]
I want to get into a mixed bath quickly ~[p]
I'm looking forward to it ~[p]
[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[bg storage="black.png" time="1000"]
[movie storage="mov_38_1.webm" skip="true" ]
[menuwindows]
[bg storage="spa/img_38_2_1.png" time="1000"]
There is a cat![p]
I'm quite used to it[r]
Is it a signboard cat at this inn?[p]
[bg storage="spa/img_38_2_2.png" time="1000"]
No, Sakurako ...[p]
Are you trying to fight ...[p]
I'm shouting a special move, but I'm not being dealt with[p]
[bg storage="spa/img_38_2_4.png" time="1000"]
Mr. Shizue is still crazy about Pochimon[p]
I wonder if there is a rare Pochimon that is only in this area[p]
[bg storage="spa/img_38_2_3.png" time="1000"]
oh!this is?[p]
Isn't it a great panchira![p]
As expected, cat power![p]
To make it so defenseless so far![p]
Let's enjoy it a little closer[p]
[bg storage="spa/img_38_2_6.png" time="1000"]
I'm crazy about Riko -chan cats[p]
[bg storage="spa/img_38_2_5.png" time="1000"]
Rina -chan is also a nice panchira![p]
[bg storage="black.png" time="1000"]
I moved to the room because I played with the cat enough[p]
[fadeoutse time="2000" buf="2"]
[bg storage="spa/hotel_room.png" time="1000"]
It's a pretty good room![p]
[bgmovie storage="mov_38_4.webm"]
#莉子
[playse storage="riko/rk38_001.ogg" buf="0"]
The room is wide![p]
#
Riko who changed into a yukata is fluffy![p]
[bg storage="spa/img_38_10_8.png" time="0"]
[stop_bgmovie time="1000"]
#莉菜
[playse storage="rina/rn48_008.ogg" buf="0"]
You can have tea[p]
#
Thank you Rina[p]
[bg storage="spa/img_38_10_9.png" time="1000"]
#静江
[playse storage="sizue/sz57_005.ogg" buf="0"]
At first it is a can beer![p]
Shizue -san is too early![p]
#
[bg storage="black.png" time="1000"]
[bg storage="spa/spa01.png" time="1000"]
#
And I came to the long -awaited hot spring[p]
[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[bg storage="black.png" time="1000"]
[movie storage="mov_38_5.webm" skip="true" ]
[movie storage="mov_57_2.webm" skip="true" ]
[movie storage="mov_48_11.webm" skip="true" ]
[menuwindows]
[bg storage="spa/spa01.png" time="1000"]
#
Such ...[p]
I can't get into a mixed bath ...[p]
[chara_show name="sakurako" face="niya" left=100 ]
… Hot springs, do you enter together?[p]
[chara_mod  name="sakurako" face="okori02" ]
#桜子
[playse storage="sakurako/sa80_089.ogg" buf="0"]
Who will enter!This metamorphosis[r]
I'm going to the women's bath with everyone![p]
;桜子消去
#
[chara_hide name="sakurako"]
[stopse]
Will you be lonely alone ...[p]
[fadeinbgm storage="bass.ogg" time="2000" loop="true"]
[bg storage="spa/spa02.png" time="1000"]
HM[p]
It's a very good hot water[p]
There is a women's bath beyond this wall ...[p]
It may be time to demonstrate the delusion of special abilities now[p]
Ha ~[p]
;エッチ度70以上で選択肢出現
[if exp="f.riko_h >= 70"]
[glink  color="pink" size="20"  x="700"  width="400"  y="150"  text="莉子ちゃんを妄想"  target="*spa_riko"]
[endif]
[if exp="f.rina_h >= 70"]
[glink  color="pink" size="20"  x="700"  width="400"  y="250"  text="莉菜ちゃんを妄想"  target="*spa_rina"]
[endif]
[if exp="f.sizue_h >= 70"]
[glink  color="pink" size="20"  x="700"  width="400"  y="350"  text="静江さんを妄想"  target="*spa_sizue"]
[endif]
[s]
;***********************************************************************************************************************
;莉子ちゃん女湯
*spa_riko
[fadeinse storage="se/o_ra.ogg" buf="2" time="2000"]
[bg storage="spa/img_38_10_1.png" time="4000"]
……[p]
You can see it!You can see the women's bath![p]
You can see Riko![p]
Huh ... huh ...[p]
Still!Furthermore, the delusional power is released![p]
[fadeinse storage="se/o_ra.ogg" buf="2" time="2000"]
[bg storage="spa/img_38_10_2.png" time="4000"]
[eval exp="tf.choice = 1"]
[jump target="*spa_night"]
;***********************************************************************************************************************
;莉菜ちゃん女湯
*spa_rina
[fadeinse storage="se/o_ra.ogg" buf="2" time="2000"]
[bg storage="spa/img_38_10_4.png" time="4000"]
……[p]
You can see it!You can see the women's bath![p]
You can see Rina![p]
Huh ... huh ...[p]
Still!Furthermore, the delusional power is released![p]
[fadeinse storage="se/o_ra.ogg" buf="2" time="2000"]
[bg storage="spa/img_38_10_5.png" time="4000"]
[eval exp="tf.choice = 2"]
[jump target="*spa_night"]
;***********************************************************************************************************************
;静江さん女湯
*spa_sizue
[fadeinse storage="se/o_ra.ogg" buf="2" time="2000"]
[bg storage="spa/img_38_10_6.png" time="4000"]
……[p]
You can see it!You can see the women's bath![p]
You can see Shizue![p]
Huh ... huh ...[p]
Still!Furthermore, the delusional power is released![p]
[fadeinse storage="se/o_ra.ogg" buf="2" time="2000"]
[bg storage="spa/img_38_10_7.png" time="4000"]
[eval exp="tf.choice = 3"]
[jump target="*spa_night"]
;***********************************************************************************************************************
;温泉夜
*spa_night
Haha ...[p]
It's a wonderful delusional power[p]
…[p]
[stopse buf="2"]
What I was doing, I got a blur[p]
Is it going to go up soon?[p]
[fadeoutbgm time="1000"]
[bg storage="black.png" time="1000"]
I enjoyed it and it was night[p]
[stopse buf="0"]
[stopse buf="2"]
[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[if exp="tf.choice == 1"]
[movie storage="mov_38_12.webm" skip="true" ]
[endif]
[if exp="tf.choice == 2"]
[movie storage="mov_48_12.webm" skip="true" ]
[endif]
[if exp="tf.choice == 3"]
[movie storage="mov_57_3.webm" skip="true" ]
[endif]
[bg storage="spa/hoter_room2.png" time="1000"]
[menuwindows]
……[p]
I have been driven by a wide edge[p]
Well ... it can't be helped[p]
I'm going to sleep[p]
[bg storage="black.png" time="2000"]
[if exp="tf.choice == 1"]
[jump target="*spa_riko_h"]
[endif]
[if exp="tf.choice == 2"]
[jump target="*spa_rina_h"]
[endif]
[if exp="tf.choice == 3"]
[jump target="*spa_sizue_h"]
[endif]
;***********************************************************************************************************************
;莉子ちゃん女湯
*spa_riko_h
[bgmovie storage="mov_38_13.webm" time="2000"]
#
Hmm ... nmm ...?Riko -chan![p]
#莉子
[playse storage="riko/rk38_008.ogg" buf="0"]
What are you sleeping on your own!Look, I'm going to a private bath![p]
[stop_bgmovie time="1000"]
[stopse]
#
[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[movie storage="mov_38_15.webm" skip="true" ]
[movie storage="mov_38_16.webm" skip="true" ]
[fadeinbgm storage="bass.ogg" time="2000" loop="true"]
[menuwindows]
[bgmovie storage="mov_38_17.webm" time="2000"]
#
There is a hot spring with Riko![p]
I have to thank you with gratitude[p]
Miss Riko, the servant will be washed beautifully.[p]
#莉子
[playse storage="riko/rk38_009.ogg" buf="0"]
Please wash it neatly![p]
#
[stopse]
[stop_bgmovie time="1000"]
[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[movie storage="mov_38_19.webm" skip="true" ]
[menuwindows]
#莉子
[playse storage="riko/rk38_011.ogg" buf="0"]
This, here!There is![p]
[fadeinbgm storage="bass2.ogg" time="2000" loop="true"]
[bgmovie storage="mov_38_20.webm" time="2000"]
#
Miss Riko, I will also wash it here as well.[p]
#
You're so slimy![r]
Please be assured that the servant will be beautifully cleaned to the back![p]
[stop_bgmovie time="1000"]
[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[movie storage="mov_38_21.webm" skip="true" ]
[playse storage="riko/rk38_013.ogg" buf="0" loop="true"]
[playse storage="se/kutyu02.ogg" buf="3" loop="true"]
[bgloop mov="mov_38_22.webm"  ti="2000"]
[playse storage="riko/rk38_014.ogg" buf="0" loop="true"]
[bgloop mov="mov_38_23.webm"  ti="2000"]
[playse storage="riko/rk38_015.ogg" buf="0" loop="true"]
[playse storage="se/kutyu03.ogg" buf="3" loop="true"]
[bgloop mov="mov_38_24.webm"  ti="2000"]
[stopse buf="0"]
[stopse buf="3"]
[movie storage="mov_38_25.webm" skip="true"]
[playse storage="riko/rk36_021.ogg" buf="0" loop="true"]
[bgloop mov="mov_38_26.webm"  ti="2000"]
[stopse buf="0"]
[movie storage="mov_38_27.webm" skip="true ]
[bg storage="black.png" time = 500]
[stop_bgmovie]
;温泉帰りフラグ
[eval exp="f.spa = 4"]
;莉子ちゃん温泉エッチフラグ
[eval exp="f.spa_riko_h = 1"]
;莉子ちゃん愛情UP
[riko_i]
;主人公精力減少
[eval exp="f.energy = f.energy - 30"]
;莉子ちゃんエッチフラグ
[eval exp="f.riko_sex = true"]

[return]
;***********************************************************************************************************************
;莉菜ちゃん女湯
*spa_rina_h
[bgmovie storage="mov_48_13.webm" time="2000"]
#
Hmmm ... Rina -chan![p]
#莉菜
[playse storage="rina/rn48_011.ogg" buf="0"]
My brother ... I'm sorry, did you get up?I couldn't sleep ...[p]
#
I'm glad Rina -chan is coming[r]
Yes, there is a private bath, so let's go[p]
#莉菜
[playse storage="rina/rn48_012.ogg" buf="0"]
Well, ha ... yes[p]
[stop_bgmovie time="1000"]
[stopse]
#
[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[movie storage="mov_48_15.webm" skip="true" ]
[movie storage="mov_48_16.webm" skip="true" ]
[movie storage="mov_48_17.webm" skip="true" ]
[fadeinbgm storage="bass2.ogg" time="2000" loop="true"]
[menuwindows]
[bgmovie storage="mov_48_18.webm" time="2000"]
#
There is a hot spring with Rina -chan![p]
I have to thank you with gratitude[p]
[stop_bgmovie time="1000"]
[bgmovie storage="mov_48_19.webm" time="2000"]
#莉菜
[playse storage="rina/rn48_013.ogg" buf="0"]
Ah ... older brother ... If you touch it so much ... no ...[p]
[playse storage="rina/rn48_014.ogg" buf="0" loop="true"]
#
Rina's boobs are so big, so I have to wash them properly.[p]
Rina -chan, I'm getting my nipples!Is it comfortable?[p]
#莉菜
[playse storage="rina/rn48_015.ogg" buf="0"]
no!Your brother, don't say weird![p]
But Rina -chan, I feel good, so I stood my nipples.[r]
is it wrong?Isn't it comfortable?[p]
#莉菜
…………[p]
Isn't it comfortable?Rina -chan[p]
#莉菜
[playse storage="rina/rn48_017.ogg" buf="0"]
Ki ... it feels good ...[p]
Well, I'll make you feel better[p]
#莉菜
[playse storage="rina/rn48_018.ogg" buf="0"]
Oh, your brother ... there ...[p]
[stop_bgmovie time="1000"]
[bgmovie storage="mov_48_20.webm" time="2000"]
Here too, I will clean a lot[p]
Is it so slimy to feel so slimy?Rina -chan?[p]
#莉菜
[playse storage="rina/rn48_019.ogg" buf="0"]
……It feels good……[p]
#
Where is it comfortable?Rina -chan[p]
#莉菜
[playse storage="rina/rn48_020.ogg" buf="0"]
picture?[p]
#
Rina -chan, tell me from Rina -chan's mouth.[p]
#莉菜
[playse storage="rina/rn48_021.ogg" buf="0"]
I can't say ... that ...[p]
#
It feels good, right?Rina -chan[r]
If you don't tell me where it feels good, you'll stop[p]
[stop_bgmovie time="1000"]
[bgmovie storage="mov_48_21.webm" time="2000"]
#莉菜
[playse storage="rina/rn48_022.ogg" buf="0"]
Hmm ... my brother's ...[p]
#
I want you to hear from Rina's mouth[r]
Where is it comfortable!Come on, Rina -chan[p]
#莉菜
[playse storage="rina/rn48_023.ogg" buf="0"]
......, your pussy ...[p]
#
I can't hear Rina -chan[p]
#莉菜
[playse storage="rina/rn48_024.ogg" buf="0"]
The pussy feels good ...[p]
#
I could say it properly, but Rina's pussy[r]
I want to be more comfortable!I'm inserted from a while ago, and I'm saying it's inserted[p]
#莉菜
[playse storage="rina/rn48_025.ogg" buf="0"]
I didn't say ...[p]
#
Eh!I'm saying, Rina's pussy![r]
Look!Insert and insert!You're saying[p]
#莉菜
…………[p]
#
What do you want to insert?Rina -chan, tell me?[p]
#莉菜
[playse storage="rina/rn48_027.ogg" buf="0"]
I don't know ...[p]
#
But Rina's pussy is saying that this is inserted like this![r]
Look, Rina -chan, please say[p]
#莉菜
[playse storage="rina/rn48_028.ogg" buf="0"]
Oh, dick ...[p]
#
yeah?What do you want to do with a chinchin?[p]
#莉菜
[playse storage="rina/rn48_029.ogg" buf="0"]
お兄さんのおちんちんを、私の……おまんこに挿れてください……[p]	
#
Rina -chan is a nasty child -because she'll punish a lot![p]
[stop_bgmovie time="1000"]
[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[playse storage="rina/rn48_031.ogg" buf="0" loop="true"]
[playse storage="se/kutyu02.ogg" buf="3" loop="true"]
[bgloop mov="mov_48_23.webm"  ti="2000"]
[bgloop mov="mov_48_24.webm"  ti="2000"]
[playse storage="rina/rn48_032.ogg" buf="0" loop="true"]
[playse storage="se/kutyu03.ogg" buf="3" loop="true"]
[bgloop mov="mov_48_25.webm"  ti="2000"]
[stopse buf="0"]
[stopse buf="3"]
[movie storage="mov_48_26.webm" skip="true"]
[playse storage="rina/rn48_033.ogg" buf="0" loop="true"]
[bgloop mov="mov_48_27.webm"  ti="2000"]
[stopse buf="0"]
[movie storage="mov_48_28.webm" skip="true ]
[bg storage="black.png" time = 500]
[stop_bgmovie]
;温泉帰りフラグ
[eval exp="f.spa = 4"]
;莉菜ちゃん温泉エッチフラグ
[eval exp="f.spa_rina_h = 1"]
;莉菜ちゃん愛情UP
[rina_i]
;主人公精力減少
[eval exp="f.energy = f.energy - 30"]
;莉菜ちゃんエッチフラグ
[eval exp="f.rina_sex = true"]

[return]
;***********************************************************************************************************************
;静江さん女湯
*spa_sizue_h
[bgmovie storage="mov_57_4.webm" time="2000"]
#
Hmm ... Mugu ... and Shizue -san![p]
#静江
[playse storage="sizue/sz57_007.ogg" buf="0"]
Here!My brother, what are you sleeping![p]
#
Yes, I'm sorry![p]
#静江
[playse storage="sizue/sz57_008.ogg" buf="0"]
The night is about to come!I'm going to a private bath![p]
[stop_bgmovie time="1000"]
[stopse]
#
[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[movie storage="mov_57_5.webm" skip="true" ]
[menuwindows]
[fadeinbgm storage="bass2.ogg" time="2000" loop="true"]
[bgmovie storage="mov_57_6.webm" time="2000"]
#
It's a bath with Shizue -san[p]
[stop_bgmovie time="1000"]
[bgmovie storage="mov_57_7.webm" time="2000"]

#静江
[playse storage="sizue/sz57_009.ogg" buf="0"]
Your brother's body, your aunt will wash it neatly![p]
[stop_bgmovie time="1000"]
[bgmovie storage="mov_57_8.webm" time="2000"]
#
Shizue -san's boobs ...[p]
#静江
[playse storage="sizue/sz57_010.ogg" buf="0"]
copper?Your brother, your aunt's boobs feel good?[r]
I like my brother's boobs, I'll wash it with my boobs[p]
#
Shizue -san!Oh, uu![p]
[stop_bgmovie time="1000"]
[bgmovie storage="mov_57_9.webm" time="2000"]
#静江
[playse storage="sizue/sz57_012.ogg" buf="0"]
Your brother, feel good?[r]
My brother's Ochinchin is bikunbikun![p]
#
It feels good!Shizue -san ...[p]
#静江
[playse storage="sizue/sz57_013.ogg" buf="0"]
Your brother, it looks good!Ufufu, cute[r]
But no!Don't go yet!I have to feel comfortable with my aunt![p]
[stop_bgmovie time="1000"]
[bgmovie storage="mov_57_10.webm" time="2000"]
#静江
[playse storage="sizue/sz57_014.ogg" buf="0"]
Look, look at your brother!Aunt's here is like this!My brother's Ochinchin[r]
I want to be inserted and it's already a cog chogocho ... your brother, can I insert it?[p]
#
I ... let me insert it[r]
Let me insert it into Shizue's pussy![p]
[stop_bgmovie time="1000"]
[stopse]
#
[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[movie storage="mov_57_11.webm" skip="true" ]

[playse storage="se/kutyu02.ogg" buf="3" loop="true"]
[bgloop mov="mov_57_12.webm"  ti="2000"]
[playse storage="sizue/sz57_016.ogg" buf="0" loop="true"]
[playse storage="se/kutyu03.ogg" buf="3" loop="true"]
[bgloop mov="mov_57_14.webm"  ti="2000"]
[bgloop mov="mov_57_15.webm"  ti="2000"]
[stopse buf="0"]
[stopse buf="3"]
[movie storage="mov_57_16.webm" skip="true"]
[playse storage="sizue/sz57_017_1.ogg" buf="0" loop="true"]
[bgloop mov="mov_57_17.webm"  ti="2000"]
[stopse buf="0"]
[movie storage="mov_57_18.webm" skip="true ]
[bg storage="black.png" time = 500]
[stop_bgmovie]

;温泉帰りフラグ
[eval exp="f.spa = 4"]
;静江さん温泉エッチフラグ
[eval exp="f.spa_sizue_h = 1"]
;静江さん愛情UP
[sizue_i]
;主人公精力減少
[eval exp="f.energy = f.energy - 30"]
;静江さんエッチフラグ
[eval exp="f.sizue_sex = true"]

[return]
