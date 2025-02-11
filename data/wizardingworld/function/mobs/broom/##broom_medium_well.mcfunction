tag @s[nbt={Health:20.0f}] add unbroken
#execute at @s positioned ~ ~0.71875 ~ as @p[distance=..3] on vehicle run tag @s add unbroken
tag @s[tag=!unbroken] add broken
execute at @s[tag=broken] on passengers run ride @s dismount
execute at @s[tag=broken] run summon item ~ ~ ~ {Item:{components:{"minecraft:entity_data":{Tame:1b,Health:20b,Silent:1b,SaddleItem:{components:{custom_model_data:1b,hide_tooltip: {},custom_data:{ui_display:1b}},count:1b,id:"saddle"},attributes:[{id:"generic.movement_speed",base:0.6d},{id:"generic.max_health",base:20b},{id:"generic.safe_fall_distance",base:1024s},{id:"generic.fall_damage_multiplier",base:0b},{id:"generic.gravity",base:0b}],id:"zombie_horse",NoAI:1b,Tags:["broom"]},"custom_model_data":1,"max_stack_size":1,"custom_data":{broom:1b},"item_name":'{"text":"Broom"}'},count:1,id:"zombie_horse_spawn_egg"}}
execute at @s[tag=broken] run tp @s ~ ~-1000 ~
tag @s[tag=broken] remove broken
tag @s[tag=unbroken] remove unbroken


execute at @s if data entity @s {OnGround:0b} run attribute @s generic.movement_speed base set 1.8
#execute at @s if entity @p[tag=!broom,distance=..3,x_rotation=-90..34] run attribute @s generic.movement_speed base set 1.8
execute at @s if data entity @s {OnGround:1b} run attribute @s generic.movement_speed base set 0.6







#execute at @s if entity @p[tag=!broom,distance=..3,x_rotation=-90..-80] run attribute @s generic.gravity base set -0.32
#execute at @s if entity @p[tag=!broom,distance=..3,x_rotation=-79..-45] run attribute @s generic.gravity base set -0.16
##execute at @s if entity @p[tag=!broom,distance=..3,x_rotation=-90..-15] run attribute @s generic.gravity base set -0.08
#execute at @s if entity @p[tag=!broom,distance=..3,x_rotation=-19..-15] run attribute @s generic.gravity base set -0.04

##execute at @s if entity @p[tag=!broom,distance=..3,x_rotation=-14..34] if data entity @s {OnGround:0b} run attribute @s generic.gravity base set 0
##execute at @s if entity @p[tag=!broom,distance=..3,x_rotation=-14..34] if data entity @s {OnGround:1b} run attribute @s generic.gravity base set 0.08
#execute at @s if entity @p[tag=!broom,distance=..3,x_rotation=-14..29] run data modify entity @s Motion[1] set value 0

#execute at @s if entity @p[tag=!broom,distance=..3,x_rotation=30..44] run attribute @s generic.gravity base set 0.04
##execute at @s if entity @p[tag=!broom,distance=..3,x_rotation=35..90] run attribute @s generic.gravity base set 0.08
#execute at @s if entity @p[tag=!broom,distance=..3,x_rotation=80..90] run attribute @s generic.gravity base set 0.16


#execute at @s if entity @p[tag=!broom,distance=..3,nbt={SelectedItemSlot:0}] run attribute @s generic.gravity base set -0.32
#execute at @s if entity @p[tag=!broom,distance=..3,nbt={SelectedItemSlot:1}] run attribute @s generic.gravity base set -0.16
#execute at @s if entity @p[tag=!broom,distance=..3,nbt={SelectedItemSlot:2}] run attribute @s generic.gravity base set -0.08
#execute at @s if entity @p[tag=!broom,distance=..3,nbt={SelectedItemSlot:3}] run attribute @s generic.gravity base set -0.04
#execute at @s if entity @p[tag=!broom,distance=..3,nbt={SelectedItemSlot:4}] run attribute @s generic.gravity base set 0
#execute at @s if entity @p[tag=!broom,distance=..3,nbt={SelectedItemSlot:5}] run attribute @s generic.gravity base set 0.04
#execute at @s if entity @p[tag=!broom,distance=..3,nbt={SelectedItemSlot:6}] run attribute @s generic.gravity base set 0.08
#execute at @s if entity @p[tag=!broom,distance=..3,nbt={SelectedItemSlot:7}] run attribute @s generic.gravity base set 0.16
#execute at @s if entity @p[tag=!broom,distance=..3,nbt={SelectedItemSlot:8}] run attribute @s generic.gravity base set 0.32
execute on passengers if entity @s[x_rotation=-90..-15] on vehicle run attribute @s generic.gravity base set -0.08
execute on passengers if entity @s[x_rotation=-14..34] on vehicle if data entity @s {OnGround:0b} run attribute @s generic.gravity base set 0
execute on passengers if entity @s[x_rotation=-14..34] on vehicle if data entity @s {OnGround:0b} run attribute @s generic.gravity base set 0.08
execute on passengers if entity @s[x_rotation=35..90] on vehicle run attribute @s generic.gravity base set 0.08



execute at @s unless entity @p[tag=!broom,distance=..3,x_rotation=-90..90] run attribute @s generic.gravity base set 0

execute unless items entity @s horse.saddle saddle run item replace entity @s horse.saddle with saddle[custom_data={ui_display:true},custom_model_data=1,hide_tooltip={}]

execute as @s[team=!brooms] run team join brooms @s

#execute at @s run fill ~10 ~10 ~10 ~-10 ~-10 ~-10 air replace barrier
#execute at @s if entity @p[tag=!broom,distance=..3,x_rotation=-15..30] run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 barrier replace air
#execute at @s if entity @p[tag=!broom,distance=..3,x_rotation=-14..30] run effect clear @s minecraft:levitation


#execute at @s if score @p[tag=!broom,distance=..3] horse_move matches 10.. unless score @s timer matches 1.. run scoreboard players set @s timer 199
#execute at @s if score @s timer matches 199 run playsound item.elytra.flying ambient @p[distance=..3] ~ ~ ~ 0.25 1 0
#execute at @s if score @p[tag=!broom,distance=..3] horse_move matches ..9 run stopsound @p[distance=..3] * item.elytra.flying
#execute at @s if score @p[tag=!broom,distance=..3] horse_move matches ..9 if score @s timer matches 1.. run scoreboard players set @s timer 0
#execute at @s as @p[tag=!broom,distance=..3] if score @s horse_move matches 1.. run scoreboard players set @s horse_move 0


