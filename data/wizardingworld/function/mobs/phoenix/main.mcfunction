effect give @s invisibility 1 0 true
effect give @s fire_resistance 1 0 true
execute as @s[tag=!invisible_phoenix] unless data entity @s Passengers[{id:"minecraft:item_display"}] run function wizardingworld:mobs/phoenix/summon_display



execute on passengers store result entity @s Rotation[0] float 1 on vehicle run data get entity @s Rotation[0]

execute as @s[tag=!invisible_phoenix,tag=!baby] if data entity @s {HurtTime:0s} run function wizardingworld:mobs/phoenix/animation
execute as @s[tag=!invisible_phoenix,tag=!baby] unless data entity @s {HurtTime:0s} run function wizardingworld:mobs/phoenix/animation_hurt
execute as @s[tag=!invisible_phoenix,tag=baby] if data entity @s {HurtTime:0s} run function wizardingworld:mobs/phoenix/animation_baby
execute as @s[tag=!invisible_phoenix,tag=baby] unless data entity @s {HurtTime:0s} run function wizardingworld:mobs/phoenix/animation_hurt_baby


execute as @s[tag=!baby] unless data entity @s {attributes:[{id:"minecraft:generic.scale",base:1.5d}]} run attribute @s generic.scale base set 1.5
execute as @s[tag=baby] unless data entity @s {attributes:[{id:"minecraft:generic.scale",base:0.75d}]} run attribute @s generic.scale base set 0.75


execute on owner positioned ~ ~0.5 ~ if entity @s[distance=..1] positioned ~ ~0.5 ~ run tag @n[tag=phoenix] add no_shoulder
execute on owner if entity @s[distance=..1] run tag @n[tag=phoenix] add no_shoulder
execute on owner positioned ~ ~-0.5 ~ if entity @s[distance=..1] positioned ~ ~0.5 ~ run tag @n[tag=phoenix] add no_shoulder
execute on owner positioned ~ ~-1 ~ if entity @s[distance=..1] positioned ~ ~1 ~ run tag @n[tag=phoenix] add no_shoulder
execute on owner positioned ~ ~-1.5 ~ if entity @s[distance=..1] positioned ~ ~1.5 ~ run tag @n[tag=phoenix] add no_shoulder
##execute on owner unless entity @s[distance=..1.5] positioned ~ ~-0.5 ~ unless entity @s[distance=..1.5] positioned ~ ~-0.5 ~ unless entity @s[distance=..1.5] positioned ~ ~-0.5 ~ unless entity @s[distance=..1.5] positioned ~ ~1.5 ~ if data entity @n[tag=phoenix] {Sitting:1b} run summon silverfish ~ ~ ~ {DeathLootTable:"entities/phoenix"}
data merge entity @s[tag=no_shoulder] {Sitting:1b}
execute on owner positioned ~ ~0.5 ~ unless entity @s[distance=..1] positioned ~ ~-0.5 ~ unless entity @s[distance=..1] positioned ~ ~-0.5 ~ unless entity @s[distance=..1] positioned ~ ~-0.5 ~ unless entity @s[distance=..1] positioned ~ ~-0.5 ~ unless entity @s[distance=..1] positioned ~ ~1.5 ~ run data merge entity @n[tag=phoenix,tag=no_shoulder] {Sitting:0b}
execute on owner positioned ~ ~0.5 ~ unless entity @s[distance=..1] positioned ~ ~-0.5 ~ unless entity @s[distance=..1] positioned ~ ~-0.5 ~ unless entity @s[distance=..1] positioned ~ ~-0.5 ~ unless entity @s[distance=..1] positioned ~ ~-0.5 ~ unless entity @s[distance=..1] positioned ~ ~1.5 ~ run tag @n[tag=phoenix,tag=no_shoulder] remove no_shoulder


execute as @s[tag=baby] unless score @s phoenix_age_timer matches 1.. run scoreboard players set @s phoenix_age_timer 120000
execute as @s if score @s phoenix_age_timer matches 1.. run scoreboard players remove @s phoenix_age_timer 1
execute as @s if score @s phoenix_age_timer matches 1 run tag @s remove baby
execute as @s if score @s phoenix_age_timer matches 1 run scoreboard players reset @s phoenix_age_timer



execute store result score @s health run data get entity @s Health
execute if score @s health matches ..5 run tag @s add reborn
execute as @s[tag=reborn] run function wizardingworld:mobs/phoenix/reborn