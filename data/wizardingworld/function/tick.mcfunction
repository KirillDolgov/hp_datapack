## Видимые вагонетки
execute as @e[type=#minecarts,tag=!invisible_minecart] run function wizardingworld:menu/visible_minecarts

## Менюшка выбора заклинаний
#execute as @e[tag=menu] at @s run function wizardingworld:menu/choosing
#execute as @a if items entity @s weapon.mainhand *[custom_data~{magic_wand:true}] at @s positioned ~ ~1 ~ unless entity @n[tag=menu,distance=..0.3] if score @s sneak matches 1.. run function wizardingworld:menu/open

## Менюшка заклинаний
execute as @a if score @s sneak matches 1.. if items entity @s weapon.mainhand warped_fungus_on_a_stick[custom_data~{magic_wand:true}] run item modify entity @s weapon.mainhand wizardingworld:resurrection_stone/open_menu
execute as @a unless score @s sneak matches 1.. if items entity @s weapon.mainhand written_book[custom_data~{magic_wand:true}] run item modify entity @s weapon.mainhand wizardingworld:resurrection_stone/close_mune
execute as @a run scoreboard players enable @s choosen_spell


## Протего
execute as @a at @s if items entity @s weapon.offhand *[custom_data~{magic_wand:true}] run function wizardingworld:spells/protego
execute as @a[tag=use_protego] unless items entity @s weapon.offhand *[custom_data~{magic_wand:true}] run tag @s remove use_protego
execute as @a[tag=!use_protego] unless score @s freeze_timer matches 1.. run attribute @s generic.movement_speed base set 0.1
execute as @a[tag=!use_protego] unless score @s freeze_timer matches 1.. run attribute @s generic.jump_strength base set 0.41999998688697815
##execute as @e[tag=protego] at @s positioned ~1.1 ~ ~1.1 unless entity @a[tag=use_protego,distance=..0.1] run kill @s
execute as @e[tag=protego] at @s unless entity @a[tag=use_protego,distance=..0.1] run kill @s
execute as @e[tag=protego_display] at @s positioned ~ ~-2 ~ unless entity @a[tag=use_protego,distance=..0.1] run kill @s



## Выдача айди игрокам
execute store result score c_count count if entity @a
execute if score old_count count > c_count count run function wizardingworld:mana_display/id_reset
execute as @a if score @s leave matches 1.. run function wizardingworld:mana_display/id_reset
execute if score old_count count < c_count count store result score old_count count run scoreboard players get c_count count
execute as @a unless score @s id matches 1.. store result score @s id run scoreboard players add next_id id 1

## Боссбары
function wizardingworld:mana_display/bossbars

## Детект клика волшебной палочкой
execute as @a at @s if items entity @s weapon.mainhand *[custom_data~{magic_wand:true}] if score @s click matches 1.. if score @s sneak matches 0 run function wizardingworld:spells/spell



## Работа заклинаний
execute as @e[tag=spell] run function wizardingworld:spells/work

## Мана
execute as @a if score @s magic_level matches 1..10 run function wizardingworld:mana_display/mana_work

## Люмос
execute as @a if items entity @s weapon blaze_rod[minecraft:custom_data~{magic_wand:true}] at @s run function wizardingworld:spells/1_run

## Левиоса
execute as @e[tag=leviosa_base] run function wizardingworld:spells/leviosa_base
execute as @e[type=item] at @s unless entity @n[tag=leviosa_base,distance=..5] run data merge entity @s {NoGravity:0b}
execute as @e[tag=leviosing] at @s unless entity @n[tag=leviosa_base,distance=..5] run tag @s remove leviosing

## Акцио
execute as @e[tag=accied] at @s unless entity @n[tag=accioback,distance=..2] run tag @s remove accied
execute as @a[tag=accing] unless items entity @s weapon *[custom_data~{magic_wand:true}] run tag @s remove accing
execute as @e[tag=accioback] at @s unless entity @a[tag=accing] run kill @s


## Ревелио сундуки
execute as @e[tag=chest] unless score @s timer matches 1.. at @s run tp @s ~ ~-1000 ~


## Сливочное пиво
execute as @e if data entity @s {active_effects:[{id:"minecraft:unluck",duration:1,show_particles:0b,show_icon:0b,amplifier:1b}]} run function wizardingworld:butterbeer/1
execute as @e if data entity @s {active_effects:[{id:"minecraft:unluck",duration:1,show_particles:0b,show_icon:0b,amplifier:2b}]} run function wizardingworld:butterbeer/2
execute as @e if data entity @s {active_effects:[{id:"minecraft:unluck",duration:1,show_particles:0b,show_icon:0b,amplifier:3b}]} run function wizardingworld:butterbeer/3
execute as @e[tag=drunk] run function wizardingworld:butterbeer/drunk
execute as @e[type=minecraft:item,tag=!fermented,nbt={Item:{id:"minecraft:wheat_seeds"}}] at @s if block ~ ~ ~ minecraft:water_cauldron[level=3] run tag @s add soak
execute as @e[type=minecraft:item,tag=soak,nbt={Item:{id:"minecraft:wheat_seeds"}}] run function wizardingworld:butterbeer/soak
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:wheat_seeds",components:{"minecraft:custom_data":{malt:1b}}}}] at @s if block ~ ~ ~ minecraft:piston_head run data merge entity @s {Tags:["crushed_malt"],Item:{id:"bone_meal",components:{"minecraft:custom_data":{crushed_malt:true},"minecraft:item_name":'{"text":"Crushed Malt"}',custom_model_data:2}}}
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:bone_meal",count:16,components:{"minecraft:custom_data":{crushed_malt:1b}}}}] at @s if block ~ ~ ~ minecraft:water_cauldron[level=3] if block ~ ~-1 ~ minecraft:campfire[lit=true] unless entity @n[tag=wort,distance=..1] run summon minecraft:armor_stand ~ ~ ~ {Tags:["wort"],Invisible:1b,Small:1b,Silent:1b,Invulnerable:1b,DisabledSlots:4144959,attributes:[{id:"generic.scale",base:0.0625f}]}
execute as @e[tag=wort,type=armor_stand] run function wizardingworld:butterbeer/fermentation



## Уровни магии 
execute as @a[advancements={wizardingworld:magic/root=true}] run function wizardingworld:mana_display/magic_levels



## Метла
execute as @e[tag=broom] run function wizardingworld:mobs/broom/broom
##execute at @e[type=item,nbt={Item:{id:"minecraft:zombie_horse_spawn_egg",components:{"minecraft:custom_data":{broom:true}}}}] run fill ~10 ~10 ~10 ~-10 ~-10 ~-10 air replace barrier
execute as @e[type=shulker_bullet] at @s run function wizardingworld:mobs/bullet



## Волшебный верстак
execute as @e[tag=magic_crafting_table,type=shulker] run function wizardingworld:mobs/magic_crafting_table
execute as @e[tag=magic_crafting_table,type=chest_minecart] run function wizardingworld:mobs/magic_crafting_table_work




## Мантия невидимка
execute as @a[tag=!in_cloak] if items entity @s weapon.* *[custom_data~{invisibility_cloak:true},custom_model_data=11] if score @s click matches 1.. run function wizardingworld:spells/cloak/cloak_on
execute as @a[tag=in_cloak] run function wizardingworld:spells/cloak/invising
execute as @a run function wizardingworld:spells/cloak/armor





## Камень возрождения
execute as @a if items entity @s weapon.* *[custom_data~{res_stone:true}] run function wizardingworld:spells/death_hallows/res_stone
execute as @a if items entity @s weapon.* *[custom_data~{res_stone_cd:true}] run function wizardingworld:spells/death_hallows/res_stone
execute as @a if score @s res_stone_timer_r matches 0.. run function wizardingworld:spells/death_hallows/res_stone
execute as @a if score @s res_stone_timer_l matches 0.. run function wizardingworld:spells/death_hallows/res_stone

execute as @a[tag=res_stone_owner_r] if score @s totem matches 1.. run scoreboard players set @s res_stone_timer_r 64
execute as @a[tag=res_stone_owner_l] if score @s totem matches 1.. run scoreboard players set @s res_stone_timer_l 64

execute as @a[tag=res_stone_owner_r] unless items entity @s weapon.mainhand *[custom_data~{res_stone:true}] unless score @s res_stone_timer_r matches 0.. run tag @s remove res_stone_owner_r
execute as @a[tag=res_stone_owner_l] unless items entity @s weapon.offhand *[custom_data~{res_stone:true}] unless score @s res_stone_timer_l matches 0.. run tag @s remove res_stone_owner_l

execute as @a unless score @s res_stone_timer_r matches 0.. if items entity @s weapon.mainhand *[custom_data~{res_stone_cd:true}] run item replace entity @s weapon.mainhand with totem_of_undying[custom_data={res_stone:true},item_name='{"text":"Resurrection Stone"}',rarity="epic",custom_model_data=1]
execute as @a unless score @s res_stone_timer_l matches 0.. if items entity @s weapon.offhand *[custom_data~{res_stone_cd:true}] run item replace entity @s weapon.offhand with totem_of_undying[custom_data={res_stone:true},item_name='{"text":"Resurrection Stone"}',rarity="epic",custom_model_data=1]

execute as @e[type=item] if data entity @s {Item:{components:{"minecraft:custom_data":{"res_stone_cd":true}}}} run data merge entity @s {Item:{components:{"minecraft:custom_model_data":1,"minecraft:item_name":'"Ressurection Stone"',"minecraft:rarity":"epic","minecraft:custom_data":{"res_stone":true,"res_stone_cd":false}},id:"minecraft:totem_of_undying"}}





## Дары смерти. Счётчик
execute as @e[type=item,nbt={Item:{id:"minecraft:nether_star"}}] unless score @s wither_count matches 1.. store result score @s wither_count run scoreboard players add wither_counter wither_count 1
execute as @e[type=item,nbt={Item:{id:"minecraft:nether_star"}}] if score @s wither_count matches 1 run data merge entity @s {Item:{id:"warped_fungus_on_a_stick",components:{"custom_data":{magic_wand:true},"item_name":'{"text":"Elder Wand"}',"rarity":"epic","custom_model_data":9,"unbreakable":{show_in_tooltip:false}}}}
execute as @e[type=item,nbt={Item:{id:"minecraft:nether_star"}}] if score @s wither_count matches 2 run data merge entity @s {Item:{id:"totem_of_undying",components:{"custom_data":{res_stone:true},"item_name":'{"text":"Resurrection Stone"}',"rarity":"epic","custom_model_data":1}}}
execute as @e[type=item,nbt={Item:{id:"minecraft:nether_star"}}] if score @s wither_count matches 3 run data merge entity @s {Item:{id:"warped_fungus_on_a_stick",components:{"custom_data":{invisibility_cloak:true},"item_name":'{"text":"Invisibility Cloak"}',"rarity":"epic","custom_model_data":11}}}

## Империо
execute as @e if score @s imperied matches 1.. at @s run function wizardingworld:spells/imperio

## Иммобулус
execute as @e if score @s freeze_timer matches 1.. at @s run function wizardingworld:spells/freeze

## Фиендфуер
execute as @e[tag=fiendfyre] at @s run function wizardingworld:spells/20_run

## Феникс
execute as @e[tag=phoenix] at @s run function wizardingworld:mobs/phoenix/main
execute as @e[tag=phoenix_display] on vehicle if data entity @s[tag=phoenix] {DeathTime:0s} on passengers run tag @s[tag=phoenix_display] add p_d_not_kill
execute as @e[tag=phoenix_display,tag=!p_d_not_kill] run kill @s
execute as @e[tag=phoenix_display,tag=p_d_not_kill] run tag @s remove p_d_not_kill


##Убийство дисплейных айтемов
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{ui_display:true}}}}]
clear @a *[custom_data={ui_display:true}]


## Честь
execute as @a if score @s damage matches 1.. run function wizardingworld:mobs/phoenix/honor




## Трансгрессия альфа
execute as @a at @s run function wizardingworld:spells/apparition





## Ресет счетчиков
execute as @e if score @s timer matches 1.. run scoreboard players remove @s timer 1
execute as @e if score @s imperio_timer matches 1.. run scoreboard players remove @s imperio_timer 1
execute as @a if score @s leave matches 1.. run scoreboard players set @s leave 0
execute as @a if score @s click matches 1.. run scoreboard players set @s click 0
execute as @a if score @s sneak matches 1.. run scoreboard players set @s sneak 0
execute as @a if score @s damage matches 1.. run scoreboard players set @s damage 0
execute as @a if score @s magic_level matches 7..10 unless score @s apparition matches 24000.. run scoreboard players add @s apparition 1





