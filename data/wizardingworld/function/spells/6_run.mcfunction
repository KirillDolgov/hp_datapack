
execute at @s[tag=accio] positioned ~ ~-1.5 ~ run tag @n[distance=..3,tag=!accio,type=!player,type=!item,type=!item_display,type=!block_display] add accied
execute at @s[tag=accio] positioned ~ ~ ~ run tag @n[distance=..3,tag=!accio,type=item] add accied
execute at @e[tag=accied] if entity @n[tag=accio,distance=..3] run summon minecraft:armor_stand ~ ~ ~ {Tags:["accioback","spell"],Invulnerable:1b,NoAI:1b,NoGravity:1b,Silent:1b,Invisible:1b}
execute as @e[tag=accioback] unless score @s id matches 1.. at @s store result score @s id run scoreboard players get @n[tag=accio,type=armor_stand] id
execute at @e[tag=accied] positioned ~ ~1.5 ~ run kill @n[tag=accio,distance=..3]
execute at @s[tag=accioback] run tp @n[tag=accied] ~ ~ ~
execute as @a[tag=accing] if score @s id = @n[tag=accioback] id at @s at @n[tag=accioback] run tp @n[tag=accioback,distance=..2] ~ ~ ~ facing entity @s
execute as @s[tag=accioback] at @s run tp @s ^ ^ ^0.5
execute as @s[tag=accioback] at @s if entity @p[tag=accing,distance=..1] run kill @s
execute as @a[tag=accing] at @s if entity @n[tag=accied,distance=..1] run tag @s remove accing