tag @s add drunk_1
tag @s add drunk
attribute @s generic.max_health base set 24
effect give @s saturation 12000 0 true
effect give @s speed 600 0 true
effect give @s jump_boost 600 0 true
effect give @s haste 600 0 true
effect give @s strength 600 0 true
execute if score @s magic_level matches ..9 run tag @s add upped1
execute if score @s magic_level matches ..9 run scoreboard players add @s magic_level 1
scoreboard players add @s mana 200000
scoreboard players set @s timer 24000