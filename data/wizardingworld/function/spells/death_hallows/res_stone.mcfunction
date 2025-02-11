execute if items entity @s weapon.mainhand *[custom_data~{res_stone:true}] run tag @s add res_stone_owner_r
execute if items entity @s weapon.offhand *[custom_data~{res_stone:true}] run tag @s add res_stone_owner_l



execute if score @s res_stone_timer_r matches 1.. run scoreboard players remove @s res_stone_timer_r 1
execute if score @s res_stone_timer_l matches 1.. run scoreboard players remove @s res_stone_timer_l 1


execute if score @s res_stone_timer_r matches 0..62 if items entity @s weapon.offhand *[custom_data={"res_stone_cd":true}] run function wizardingworld:spells/death_hallows/fix_r_h
execute if score @s res_stone_timer_l matches 0..62 if items entity @s weapon.mainhand *[custom_data={"res_stone_cd":true}] run function wizardingworld:spells/death_hallows/fix_l_h



execute if score @s res_stone_timer_r matches 0..62 as @s[nbt=!{Inventory:[{components:{"minecraft:custom_data":{"res_stone_cd":true}}}]}] run scoreboard players reset @s res_stone_timer_r
execute if score @s res_stone_timer_l matches 0..62 as @s[nbt=!{Inventory:[{components:{"minecraft:custom_data":{"res_stone_cd":true}}}]}] run scoreboard players reset @s res_stone_timer_l



execute if score @s res_stone_timer_r matches 60..63 as @s[tag=res_stone_owner_r] run item replace entity @s weapon.mainhand with gold_nugget[custom_data={res_stone_cd:true},item_name='{"text":"Resurrection Stone"}',rarity="epic",custom_model_data=16]
execute if score @s res_stone_timer_l matches 60..63 as @s[tag=res_stone_owner_l] run item replace entity @s weapon.offhand with gold_nugget[custom_data={res_stone_cd:true},item_name='{"text":"Resurrection Stone"}',rarity="epic",custom_model_data=16]
execute if score @s res_stone_timer_r matches 56..59 as @s[tag=res_stone_owner_r] if items entity @s weapon.mainhand *[custom_data~{res_stone_cd:true}] run item modify entity @s weapon.mainhand wizardingworld:resurrection_stone/cooldown_15
execute if score @s res_stone_timer_l matches 56..59 as @s[tag=res_stone_owner_l] if items entity @s weapon.offhand *[custom_data~{res_stone_cd:true}] run item modify entity @s weapon.offhand wizardingworld:resurrection_stone/cooldown_15
execute if score @s res_stone_timer_r matches 52..55 as @s[tag=res_stone_owner_r] if items entity @s weapon.mainhand *[custom_data~{res_stone_cd:true}] run item modify entity @s weapon.mainhand wizardingworld:resurrection_stone/cooldown_14
execute if score @s res_stone_timer_l matches 52..55 as @s[tag=res_stone_owner_l] if items entity @s weapon.offhand *[custom_data~{res_stone_cd:true}] run item modify entity @s weapon.offhand wizardingworld:resurrection_stone/cooldown_14
execute if score @s res_stone_timer_r matches 48..51 as @s[tag=res_stone_owner_r] if items entity @s weapon.mainhand *[custom_data~{res_stone_cd:true}] run item modify entity @s weapon.mainhand wizardingworld:resurrection_stone/cooldown_13
execute if score @s res_stone_timer_l matches 48..51 as @s[tag=res_stone_owner_l] if items entity @s weapon.offhand *[custom_data~{res_stone_cd:true}] run item modify entity @s weapon.offhand wizardingworld:resurrection_stone/cooldown_13
execute if score @s res_stone_timer_r matches 44..47 as @s[tag=res_stone_owner_r] if items entity @s weapon.mainhand *[custom_data~{res_stone_cd:true}] run item modify entity @s weapon.mainhand wizardingworld:resurrection_stone/cooldown_12
execute if score @s res_stone_timer_l matches 44..47 as @s[tag=res_stone_owner_l] if items entity @s weapon.offhand *[custom_data~{res_stone_cd:true}] run item modify entity @s weapon.offhand wizardingworld:resurrection_stone/cooldown_12
execute if score @s res_stone_timer_r matches 40..43 as @s[tag=res_stone_owner_r] if items entity @s weapon.mainhand *[custom_data~{res_stone_cd:true}] run item modify entity @s weapon.mainhand wizardingworld:resurrection_stone/cooldown_11
execute if score @s res_stone_timer_l matches 40..43 as @s[tag=res_stone_owner_l] if items entity @s weapon.offhand *[custom_data~{res_stone_cd:true}] run item modify entity @s weapon.offhand wizardingworld:resurrection_stone/cooldown_11
execute if score @s res_stone_timer_r matches 36..39 as @s[tag=res_stone_owner_r] if items entity @s weapon.mainhand *[custom_data~{res_stone_cd:true}] run item modify entity @s weapon.mainhand wizardingworld:resurrection_stone/cooldown_10
execute if score @s res_stone_timer_l matches 36..39 as @s[tag=res_stone_owner_l] if items entity @s weapon.offhand *[custom_data~{res_stone_cd:true}] run item modify entity @s weapon.offhand wizardingworld:resurrection_stone/cooldown_10
execute if score @s res_stone_timer_r matches 32..35 as @s[tag=res_stone_owner_r] if items entity @s weapon.mainhand *[custom_data~{res_stone_cd:true}] run item modify entity @s weapon.mainhand wizardingworld:resurrection_stone/cooldown_9
execute if score @s res_stone_timer_l matches 32..35 as @s[tag=res_stone_owner_l] if items entity @s weapon.offhand *[custom_data~{res_stone_cd:true}] run item modify entity @s weapon.offhand wizardingworld:resurrection_stone/cooldown_9
execute if score @s res_stone_timer_r matches 28..31 as @s[tag=res_stone_owner_r] if items entity @s weapon.mainhand *[custom_data~{res_stone_cd:true}] run item modify entity @s weapon.mainhand wizardingworld:resurrection_stone/cooldown_8
execute if score @s res_stone_timer_l matches 28..31 as @s[tag=res_stone_owner_l] if items entity @s weapon.offhand *[custom_data~{res_stone_cd:true}] run item modify entity @s weapon.offhand wizardingworld:resurrection_stone/cooldown_8
execute if score @s res_stone_timer_r matches 24..27 as @s[tag=res_stone_owner_r] if items entity @s weapon.mainhand *[custom_data~{res_stone_cd:true}] run item modify entity @s weapon.mainhand wizardingworld:resurrection_stone/cooldown_7
execute if score @s res_stone_timer_l matches 24..27 as @s[tag=res_stone_owner_l] if items entity @s weapon.offhand *[custom_data~{res_stone_cd:true}] run item modify entity @s weapon.offhand wizardingworld:resurrection_stone/cooldown_7
execute if score @s res_stone_timer_r matches 20..23 as @s[tag=res_stone_owner_r] if items entity @s weapon.mainhand *[custom_data~{res_stone_cd:true}] run item modify entity @s weapon.mainhand wizardingworld:resurrection_stone/cooldown_6
execute if score @s res_stone_timer_l matches 20..23 as @s[tag=res_stone_owner_l] if items entity @s weapon.offhand *[custom_data~{res_stone_cd:true}] run item modify entity @s weapon.offhand wizardingworld:resurrection_stone/cooldown_6
execute if score @s res_stone_timer_r matches 16..19 as @s[tag=res_stone_owner_r] if items entity @s weapon.mainhand *[custom_data~{res_stone_cd:true}] run item modify entity @s weapon.mainhand wizardingworld:resurrection_stone/cooldown_5
execute if score @s res_stone_timer_l matches 16..19 as @s[tag=res_stone_owner_l] if items entity @s weapon.offhand *[custom_data~{res_stone_cd:true}] run item modify entity @s weapon.offhand wizardingworld:resurrection_stone/cooldown_5
execute if score @s res_stone_timer_r matches 12..15 as @s[tag=res_stone_owner_r] if items entity @s weapon.mainhand *[custom_data~{res_stone_cd:true}] run item modify entity @s weapon.mainhand wizardingworld:resurrection_stone/cooldown_4
execute if score @s res_stone_timer_l matches 12..15 as @s[tag=res_stone_owner_l] if items entity @s weapon.offhand *[custom_data~{res_stone_cd:true}] run item modify entity @s weapon.offhand wizardingworld:resurrection_stone/cooldown_4
execute if score @s res_stone_timer_r matches 8..11 as @s[tag=res_stone_owner_r] if items entity @s weapon.mainhand *[custom_data~{res_stone_cd:true}] run item modify entity @s weapon.mainhand wizardingworld:resurrection_stone/cooldown_3
execute if score @s res_stone_timer_l matches 8..11 as @s[tag=res_stone_owner_l] if items entity @s weapon.offhand *[custom_data~{res_stone_cd:true}] run item modify entity @s weapon.offhand wizardingworld:resurrection_stone/cooldown_3
execute if score @s res_stone_timer_r matches 4..7 as @s[tag=res_stone_owner_r] if items entity @s weapon.mainhand *[custom_data~{res_stone_cd:true}] run item modify entity @s weapon.mainhand wizardingworld:resurrection_stone/cooldown_2
execute if score @s res_stone_timer_l matches 4..7 as @s[tag=res_stone_owner_l] if items entity @s weapon.offhand *[custom_data~{res_stone_cd:true}] run item modify entity @s weapon.offhand wizardingworld:resurrection_stone/cooldown_2
execute if score @s res_stone_timer_r matches 0..3 as @s[tag=res_stone_owner_r] if items entity @s weapon.mainhand *[custom_data~{res_stone_cd:true}] run item modify entity @s weapon.mainhand wizardingworld:resurrection_stone/cooldown_1
execute if score @s res_stone_timer_l matches 0..3 as @s[tag=res_stone_owner_l] if items entity @s weapon.offhand *[custom_data~{res_stone_cd:true}] run item modify entity @s weapon.offhand wizardingworld:resurrection_stone/cooldown_1







execute unless score @s res_stone_timer_r matches 0.. as @s[tag=res_stone_owner_r] if items entity @s weapon.mainhand *[custom_data~{res_stone_cd:true}] run item replace entity @s weapon.mainhand with totem_of_undying[custom_data={res_stone:true},item_name='{"text":"Resurrection Stone"}',rarity="epic",custom_model_data=1]
execute unless score @s res_stone_timer_l matches 0.. as @s[tag=res_stone_owner_l] if items entity @s weapon.offhand *[custom_data~{res_stone_cd:true}] run item replace entity @s weapon.offhand with totem_of_undying[custom_data={res_stone:true},item_name='{"text":"Resurrection Stone"}',rarity="epic",custom_model_data=1]



execute if score @s res_stone_timer_r matches 0 as @s[tag=res_stone_owner_r] if items entity @s weapon.mainhand *[custom_data~{res_stone_cd:true}] run item replace entity @s weapon.mainhand with totem_of_undying[custom_data={res_stone:true},item_name='{"text":"Resurrection Stone"}',rarity="epic",custom_model_data=1]
execute if score @s res_stone_timer_l matches 0 as @s[tag=res_stone_owner_l] if items entity @s weapon.offhand *[custom_data~{res_stone_cd:true}] run item replace entity @s weapon.offhand with totem_of_undying[custom_data={res_stone:true},item_name='{"text":"Resurrection Stone"}',rarity="epic",custom_model_data=1]

execute if score @s res_stone_timer_r matches 0 run scoreboard players reset @s res_stone_timer_r
execute if score @s res_stone_timer_l matches 0 run scoreboard players reset @s res_stone_timer_l

execute as @a if score @s totem matches 1.. run scoreboard players set @s totem 0