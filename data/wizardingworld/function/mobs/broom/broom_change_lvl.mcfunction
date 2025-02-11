execute if score @s broom_mana matches 47.. run scoreboard players set @s broom_mana 46
execute if score @s broom_mana matches ..-1 run scoreboard players set @s broom_mana 0

tag @s remove h_lvl_0
tag @s remove h_lvl_1
tag @s remove h_lvl_2
tag @s remove h_lvl_3
tag @s remove h_lvl_4
tag @s remove h_lvl_5
tag @s remove h_lvl_6
tag @s remove h_lvl_7
tag @s remove h_lvl_8
tag @s remove h_lvl_9
tag @s remove h_lvl_10
tag @s remove h_lvl_11
tag @s remove h_lvl_12
tag @s remove h_lvl_13
tag @s remove h_lvl_14
tag @s remove h_lvl_15
tag @s remove h_lvl_16
tag @s remove h_lvl_17
tag @s remove h_lvl_18
tag @s remove h_lvl_19
tag @s remove h_lvl_20
tag @s remove h_lvl_21
tag @s remove h_lvl_22
tag @s remove h_lvl_23
tag @s remove h_lvl_24
tag @s remove h_lvl_25
tag @s remove h_lvl_26
tag @s remove h_lvl_27
tag @s remove h_lvl_28
tag @s remove h_lvl_29
tag @s remove h_lvl_30
tag @s remove h_lvl_31
tag @s remove h_lvl_32
tag @s remove h_lvl_33
tag @s remove h_lvl_34
tag @s remove h_lvl_35
tag @s remove h_lvl_36
tag @s remove h_lvl_37
tag @s remove h_lvl_38
tag @s remove h_lvl_39
tag @s remove h_lvl_40
tag @s remove h_lvl_41
tag @s remove h_lvl_42
tag @s remove h_lvl_43
tag @s remove h_lvl_44
tag @s remove h_lvl_45
tag @s remove h_lvl_46

execute if score @s broom_mana matches 0 run tag @s add h_lvl_0
execute if score @s broom_mana matches 1 run tag @s add h_lvl_1
execute if score @s broom_mana matches 2 run tag @s add h_lvl_2
execute if score @s broom_mana matches 3 run tag @s add h_lvl_3
execute if score @s broom_mana matches 4 run tag @s add h_lvl_4
execute if score @s broom_mana matches 5 run tag @s add h_lvl_5
execute if score @s broom_mana matches 6 run tag @s add h_lvl_6
execute if score @s broom_mana matches 7 run tag @s add h_lvl_7
execute if score @s broom_mana matches 8 run tag @s add h_lvl_8
execute if score @s broom_mana matches 9 run tag @s add h_lvl_9
execute if score @s broom_mana matches 10 run tag @s add h_lvl_10
execute if score @s broom_mana matches 11 run tag @s add h_lvl_11
execute if score @s broom_mana matches 12 run tag @s add h_lvl_12
execute if score @s broom_mana matches 13 run tag @s add h_lvl_13
execute if score @s broom_mana matches 14 run tag @s add h_lvl_14
execute if score @s broom_mana matches 15 run tag @s add h_lvl_15
execute if score @s broom_mana matches 16 run tag @s add h_lvl_16
execute if score @s broom_mana matches 17 run tag @s add h_lvl_17
execute if score @s broom_mana matches 18 run tag @s add h_lvl_18
execute if score @s broom_mana matches 19 run tag @s add h_lvl_19
execute if score @s broom_mana matches 20 run tag @s add h_lvl_20
execute if score @s broom_mana matches 21 run tag @s add h_lvl_21
execute if score @s broom_mana matches 22 run tag @s add h_lvl_22
execute if score @s broom_mana matches 23 run tag @s add h_lvl_23
execute if score @s broom_mana matches 24 run tag @s add h_lvl_24
execute if score @s broom_mana matches 25 run tag @s add h_lvl_25
execute if score @s broom_mana matches 26 run tag @s add h_lvl_26
execute if score @s broom_mana matches 27 run tag @s add h_lvl_27
execute if score @s broom_mana matches 28 run tag @s add h_lvl_28
execute if score @s broom_mana matches 29 run tag @s add h_lvl_29
execute if score @s broom_mana matches 30 run tag @s add h_lvl_30
execute if score @s broom_mana matches 31 run tag @s add h_lvl_31
execute if score @s broom_mana matches 32 run tag @s add h_lvl_32
execute if score @s broom_mana matches 33 run tag @s add h_lvl_33
execute if score @s broom_mana matches 34 run tag @s add h_lvl_34
execute if score @s broom_mana matches 35 run tag @s add h_lvl_35
execute if score @s broom_mana matches 36 run tag @s add h_lvl_36
execute if score @s broom_mana matches 37 run tag @s add h_lvl_37
execute if score @s broom_mana matches 38 run tag @s add h_lvl_38
execute if score @s broom_mana matches 39 run tag @s add h_lvl_39
execute if score @s broom_mana matches 40 run tag @s add h_lvl_40
execute if score @s broom_mana matches 41 run tag @s add h_lvl_41
execute if score @s broom_mana matches 42 run tag @s add h_lvl_42
execute if score @s broom_mana matches 43 run tag @s add h_lvl_43
execute if score @s broom_mana matches 44 run tag @s add h_lvl_44
execute if score @s broom_mana matches 45 run tag @s add h_lvl_45
execute if score @s broom_mana matches 46 run tag @s add h_lvl_46



execute as @s[tag=h_lvl_0] unless items entity @s horse.saddle saddle[custom_model_data=0] run item replace entity @s horse.saddle with saddle[custom_data={ui_display:true},custom_model_data=47,hide_tooltip={}]
execute as @s[tag=h_lvl_1] unless items entity @s horse.saddle saddle[custom_model_data=1] run item replace entity @s horse.saddle with saddle[custom_data={ui_display:true},custom_model_data=1,hide_tooltip={}]
execute as @s[tag=h_lvl_2] unless items entity @s horse.saddle saddle[custom_model_data=2] run item replace entity @s horse.saddle with saddle[custom_data={ui_display:true},custom_model_data=2,hide_tooltip={}]
execute as @s[tag=h_lvl_3] unless items entity @s horse.saddle saddle[custom_model_data=3] run item replace entity @s horse.saddle with saddle[custom_data={ui_display:true},custom_model_data=3,hide_tooltip={}]
execute as @s[tag=h_lvl_4] unless items entity @s horse.saddle saddle[custom_model_data=4] run item replace entity @s horse.saddle with saddle[custom_data={ui_display:true},custom_model_data=4,hide_tooltip={}]
execute as @s[tag=h_lvl_5] unless items entity @s horse.saddle saddle[custom_model_data=5] run item replace entity @s horse.saddle with saddle[custom_data={ui_display:true},custom_model_data=5,hide_tooltip={}]
execute as @s[tag=h_lvl_6] unless items entity @s horse.saddle saddle[custom_model_data=6] run item replace entity @s horse.saddle with saddle[custom_data={ui_display:true},custom_model_data=6,hide_tooltip={}]
execute as @s[tag=h_lvl_7] unless items entity @s horse.saddle saddle[custom_model_data=7] run item replace entity @s horse.saddle with saddle[custom_data={ui_display:true},custom_model_data=7,hide_tooltip={}]
execute as @s[tag=h_lvl_8] unless items entity @s horse.saddle saddle[custom_model_data=8] run item replace entity @s horse.saddle with saddle[custom_data={ui_display:true},custom_model_data=8,hide_tooltip={}]
execute as @s[tag=h_lvl_9] unless items entity @s horse.saddle saddle[custom_model_data=9] run item replace entity @s horse.saddle with saddle[custom_data={ui_display:true},custom_model_data=9,hide_tooltip={}]
execute as @s[tag=h_lvl_10] unless items entity @s horse.saddle saddle[custom_model_data=10] run item replace entity @s horse.saddle with saddle[custom_data={ui_display:true},custom_model_data=10,hide_tooltip={}]
execute as @s[tag=h_lvl_11] unless items entity @s horse.saddle saddle[custom_model_data=11] run item replace entity @s horse.saddle with saddle[custom_data={ui_display:true},custom_model_data=11,hide_tooltip={}]
execute as @s[tag=h_lvl_12] unless items entity @s horse.saddle saddle[custom_model_data=12] run item replace entity @s horse.saddle with saddle[custom_data={ui_display:true},custom_model_data=12,hide_tooltip={}]
execute as @s[tag=h_lvl_13] unless items entity @s horse.saddle saddle[custom_model_data=13] run item replace entity @s horse.saddle with saddle[custom_data={ui_display:true},custom_model_data=13,hide_tooltip={}]
execute as @s[tag=h_lvl_14] unless items entity @s horse.saddle saddle[custom_model_data=14] run item replace entity @s horse.saddle with saddle[custom_data={ui_display:true},custom_model_data=14,hide_tooltip={}]
execute as @s[tag=h_lvl_15] unless items entity @s horse.saddle saddle[custom_model_data=15] run item replace entity @s horse.saddle with saddle[custom_data={ui_display:true},custom_model_data=15,hide_tooltip={}]
execute as @s[tag=h_lvl_16] unless items entity @s horse.saddle saddle[custom_model_data=16] run item replace entity @s horse.saddle with saddle[custom_data={ui_display:true},custom_model_data=16,hide_tooltip={}]
execute as @s[tag=h_lvl_17] unless items entity @s horse.saddle saddle[custom_model_data=17] run item replace entity @s horse.saddle with saddle[custom_data={ui_display:true},custom_model_data=17,hide_tooltip={}]
execute as @s[tag=h_lvl_18] unless items entity @s horse.saddle saddle[custom_model_data=18] run item replace entity @s horse.saddle with saddle[custom_data={ui_display:true},custom_model_data=18,hide_tooltip={}]
execute as @s[tag=h_lvl_19] unless items entity @s horse.saddle saddle[custom_model_data=19] run item replace entity @s horse.saddle with saddle[custom_data={ui_display:true},custom_model_data=19,hide_tooltip={}]
execute as @s[tag=h_lvl_20] unless items entity @s horse.saddle saddle[custom_model_data=20] run item replace entity @s horse.saddle with saddle[custom_data={ui_display:true},custom_model_data=20,hide_tooltip={}]
execute as @s[tag=h_lvl_21] unless items entity @s horse.saddle saddle[custom_model_data=21] run item replace entity @s horse.saddle with saddle[custom_data={ui_display:true},custom_model_data=21,hide_tooltip={}]
execute as @s[tag=h_lvl_22] unless items entity @s horse.saddle saddle[custom_model_data=22] run item replace entity @s horse.saddle with saddle[custom_data={ui_display:true},custom_model_data=22,hide_tooltip={}]
execute as @s[tag=h_lvl_23] unless items entity @s horse.saddle saddle[custom_model_data=23] run item replace entity @s horse.saddle with saddle[custom_data={ui_display:true},custom_model_data=23,hide_tooltip={}]
execute as @s[tag=h_lvl_24] unless items entity @s horse.saddle saddle[custom_model_data=24] run item replace entity @s horse.saddle with saddle[custom_data={ui_display:true},custom_model_data=24,hide_tooltip={}]
execute as @s[tag=h_lvl_25] unless items entity @s horse.saddle saddle[custom_model_data=25] run item replace entity @s horse.saddle with saddle[custom_data={ui_display:true},custom_model_data=25,hide_tooltip={}]
execute as @s[tag=h_lvl_26] unless items entity @s horse.saddle saddle[custom_model_data=26] run item replace entity @s horse.saddle with saddle[custom_data={ui_display:true},custom_model_data=26,hide_tooltip={}]
execute as @s[tag=h_lvl_27] unless items entity @s horse.saddle saddle[custom_model_data=27] run item replace entity @s horse.saddle with saddle[custom_data={ui_display:true},custom_model_data=27,hide_tooltip={}]
execute as @s[tag=h_lvl_28] unless items entity @s horse.saddle saddle[custom_model_data=28] run item replace entity @s horse.saddle with saddle[custom_data={ui_display:true},custom_model_data=28,hide_tooltip={}]
execute as @s[tag=h_lvl_29] unless items entity @s horse.saddle saddle[custom_model_data=29] run item replace entity @s horse.saddle with saddle[custom_data={ui_display:true},custom_model_data=29,hide_tooltip={}]
execute as @s[tag=h_lvl_30] unless items entity @s horse.saddle saddle[custom_model_data=30] run item replace entity @s horse.saddle with saddle[custom_data={ui_display:true},custom_model_data=30,hide_tooltip={}]
execute as @s[tag=h_lvl_31] unless items entity @s horse.saddle saddle[custom_model_data=31] run item replace entity @s horse.saddle with saddle[custom_data={ui_display:true},custom_model_data=31,hide_tooltip={}]
execute as @s[tag=h_lvl_32] unless items entity @s horse.saddle saddle[custom_model_data=32] run item replace entity @s horse.saddle with saddle[custom_data={ui_display:true},custom_model_data=32,hide_tooltip={}]
execute as @s[tag=h_lvl_33] unless items entity @s horse.saddle saddle[custom_model_data=33] run item replace entity @s horse.saddle with saddle[custom_data={ui_display:true},custom_model_data=33,hide_tooltip={}]
execute as @s[tag=h_lvl_34] unless items entity @s horse.saddle saddle[custom_model_data=34] run item replace entity @s horse.saddle with saddle[custom_data={ui_display:true},custom_model_data=34,hide_tooltip={}]
execute as @s[tag=h_lvl_35] unless items entity @s horse.saddle saddle[custom_model_data=35] run item replace entity @s horse.saddle with saddle[custom_data={ui_display:true},custom_model_data=35,hide_tooltip={}]
execute as @s[tag=h_lvl_36] unless items entity @s horse.saddle saddle[custom_model_data=36] run item replace entity @s horse.saddle with saddle[custom_data={ui_display:true},custom_model_data=36,hide_tooltip={}]
execute as @s[tag=h_lvl_37] unless items entity @s horse.saddle saddle[custom_model_data=37] run item replace entity @s horse.saddle with saddle[custom_data={ui_display:true},custom_model_data=37,hide_tooltip={}]
execute as @s[tag=h_lvl_38] unless items entity @s horse.saddle saddle[custom_model_data=38] run item replace entity @s horse.saddle with saddle[custom_data={ui_display:true},custom_model_data=38,hide_tooltip={}]
execute as @s[tag=h_lvl_39] unless items entity @s horse.saddle saddle[custom_model_data=39] run item replace entity @s horse.saddle with saddle[custom_data={ui_display:true},custom_model_data=39,hide_tooltip={}]
execute as @s[tag=h_lvl_40] unless items entity @s horse.saddle saddle[custom_model_data=40] run item replace entity @s horse.saddle with saddle[custom_data={ui_display:true},custom_model_data=40,hide_tooltip={}]
execute as @s[tag=h_lvl_41] unless items entity @s horse.saddle saddle[custom_model_data=41] run item replace entity @s horse.saddle with saddle[custom_data={ui_display:true},custom_model_data=41,hide_tooltip={}]
execute as @s[tag=h_lvl_42] unless items entity @s horse.saddle saddle[custom_model_data=42] run item replace entity @s horse.saddle with saddle[custom_data={ui_display:true},custom_model_data=42,hide_tooltip={}]
execute as @s[tag=h_lvl_43] unless items entity @s horse.saddle saddle[custom_model_data=43] run item replace entity @s horse.saddle with saddle[custom_data={ui_display:true},custom_model_data=43,hide_tooltip={}]
execute as @s[tag=h_lvl_44] unless items entity @s horse.saddle saddle[custom_model_data=44] run item replace entity @s horse.saddle with saddle[custom_data={ui_display:true},custom_model_data=44,hide_tooltip={}]
execute as @s[tag=h_lvl_45] unless items entity @s horse.saddle saddle[custom_model_data=45] run item replace entity @s horse.saddle with saddle[custom_data={ui_display:true},custom_model_data=45,hide_tooltip={}]
execute as @s[tag=h_lvl_46] unless items entity @s horse.saddle saddle[custom_model_data=46] run item replace entity @s horse.saddle with saddle[custom_data={ui_display:true},custom_model_data=46,hide_tooltip={}]


