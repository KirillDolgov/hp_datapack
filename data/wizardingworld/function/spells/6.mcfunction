execute rotated as @s positioned 0.0 0.0 0.0 align xyz run summon minecraft:armor_stand ^ ^ ^1 {Invulnerable:1b,NoGravity:1b,Tags:["accio_aim"],Invisible:1b}
execute at @s run summon minecraft:armor_stand ~ ~ ~ {Tags:["accio","spell"],attributes:[{id:"generic.gravity",base:0}],Silent:1b,Invisible:1b,Invulnerable:1b,Small:1b}
execute at @s store result score @n[tag=accio,distance=..1] id run scoreboard players get @s id
execute at @s run tp @n[tag=accio,distance=..1] ~ ~1.5 ~ ~ ~
execute at @s positioned ~ ~1.5 ~ as @n[tag=accio,distance=..1] positioned 0 0 0 store result score @s motion_x run data get entity @e[tag=accio_aim,limit=1] Pos[0] 2000
execute at @s positioned ~ ~1.5 ~ as @n[tag=accio,distance=..1] positioned 0 0 0 store result score @s motion_y run data get entity @e[tag=accio_aim,limit=1] Pos[1] 2000
execute at @s positioned ~ ~1.5 ~ as @n[tag=accio,distance=..1] positioned 0 0 0 store result score @s motion_z run data get entity @e[tag=accio_aim,limit=1] Pos[2] 2000
execute at @s positioned ~ ~1.5 ~ as @n[tag=accio,distance=..1] run tp @s ^ ^ ^1.6
kill @e[tag=accio_aim]
scoreboard players remove @s mana 8000
execute at @s run playsound minecraft:entity.elder_guardian.death player @a ~ ~ ~ 0.35 2 0
tellraw @a[distance=..50] [{"text": "<"},{"selector": "@s"},{"text": "> "},{"text": "Accio!"}]
tag @s add accing