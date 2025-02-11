tag @s add drunk_3
tag @s add drunk
attribute @s generic.max_health base set 32
effect give @s saturation 12000 2 true
effect give @s speed 600 2 true
effect give @s jump_boost 600 2 true
effect give @s haste 600 2 true
effect give @s strength 600 2 true
execute if score @s magic_level matches 9 run tag @s add upped1
execute if score @s magic_level matches 9 run scoreboard players add @s magic_level 1
execute if score @s magic_level matches 8 run tag @s add upped2
execute if score @s magic_level matches 8 run scoreboard players add @s magic_level 2
execute if score @s magic_level matches ..7 run tag @s add upped3
execute if score @s magic_level matches ..7 run scoreboard players add @s magic_level 3
scoreboard players add @s mana 200000
scoreboard players set @s timer 24000