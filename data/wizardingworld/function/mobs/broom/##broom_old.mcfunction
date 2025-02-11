tag @s[nbt={Health:20.0f}] add unbroken
tag @s[tag=!unbroken] add broken
execute at @s[tag=broken] unless entity @p[distance=..1] run summon item ~ ~ ~ {Item:{components:{"minecraft:entity_data":{Tame:1b,Health:20b,Silent:1b,SaddleItem:{count:1b,id:"saddle"},attributes:[{id:"generic.movement_speed",base:0.6d},{id:"generic.max_health",base:20b},{id:"generic.safe_fall_distance",base:1024s},{id:"generic.fall_damage_multiplier",base:0b}],id:"zombie_horse",NoAI:1b,Tags:["broom"]},"custom_model_data":1,"max_stack_size":1,"custom_data":{broom:1b},"item_name":'{"text":"Broom"}'},count:1,id:"zombie_horse_spawn_egg"}}
execute as @s[tag=broken] at @s unless entity @p[distance=..1] run tp @s ~ ~-1000 ~
tag @s[tag=broken] remove broken
tag @s[tag=unbroken] remove unbroken


execute at @s if entity @p[tag=!broom,distance=..3,x_rotation=-90..-80] run effect give @s minecraft:levitation 1 45 true
execute at @s if entity @p[tag=!broom,distance=..3,x_rotation=-79..-45] run effect give @s minecraft:levitation 1 15 true
execute at @s if entity @p[tag=!broom,distance=..3,x_rotation=-44..-20] run effect give @s minecraft:levitation 1 10 true
execute at @s if entity @p[tag=!broom,distance=..3,x_rotation=-19..-15] run effect give @s minecraft:levitation 1 5 true


execute at @s run fill ~10 ~10 ~10 ~-10 ~-10 ~-10 air replace barrier
execute at @s if entity @p[tag=!broom,distance=..3,x_rotation=-15..30] run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 barrier replace air
execute at @s if entity @p[tag=!broom,distance=..3,x_rotation=-14..30] run effect clear @s minecraft:levitation


#execute at @s if score @p[tag=!broom,distance=..3] horse_move matches 1.. unless score @s timer matches 1.. run scoreboard players set @s timer 199
#execute at @s if score @s timer matches 199 run playsound item.elytra.flying ambient @p[distance=..3] ~ ~ ~ 0.25 1 0
#execute at @s if score @p[tag=!broom,distance=..3] horse_move matches 0 run stopsound @p[distance=..3] * item.elytra.flying
#execute at @s if score @p[tag=!broom,distance=..3] horse_move matches 0 if score @s timer matches 1.. run scoreboard players set @s timer 0
#execute at @s as @p[tag=!broom,distance=..3] if score @s horse_move matches 1.. run scoreboard players set @s horse_move 0


team join brooms @s