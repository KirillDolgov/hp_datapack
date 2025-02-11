execute rotated as @s positioned 0.0 0.0 0.0 align xyz run summon minecraft:armor_stand ^ ^ ^1 {Invulnerable:1b,NoGravity:1b,Tags:["avada_aim"],Invisible:1b}
execute at @s run summon minecraft:armor_stand ~ ~ ~ {Tags:["avada","spell","curse"],attributes:[{id:"generic.gravity",base:0}],Silent:1b,Invisible:1b,Invulnerable:1b,Small:1b}
execute at @s store result score @n[tag=avada,distance=..1] id run scoreboard players get @s id
execute at @s run tp @e[tag=avada,distance=..1,limit=1,sort=nearest] ~ ~1 ~ ~ ~
execute at @s positioned ~ ~1 ~ as @e[tag=avada,distance=..1,limit=1,sort=nearest] positioned 0 0 0 store result score @s motion_x run data get entity @e[tag=avada_aim,limit=1] Pos[0] 1000
execute at @s positioned ~ ~1 ~ as @e[tag=avada,distance=..1,limit=1,sort=nearest] positioned 0 0 0 store result score @s motion_y run data get entity @e[tag=avada_aim,limit=1] Pos[1] 1000
execute at @s positioned ~ ~1 ~ as @e[tag=avada,distance=..1,limit=1,sort=nearest] positioned 0 0 0 store result score @s motion_z run data get entity @e[tag=avada_aim,limit=1] Pos[2] 1000
execute at @s positioned ~ ~1 ~ as @e[tag=avada,distance=..1,limit=1,sort=nearest] run tp @s ^ ^ ^1.6
kill @e[tag=avada_aim]
scoreboard players remove @s mana 128000
execute at @s run playsound minecraft:block.beacon.deactivate player @a ~ ~ ~ 0.25 1 0
execute at @s run playsound minecraft:entity.elder_guardian.death player @a ~ ~ ~ 0.5 1.75 0
tellraw @a[distance=..50] [{"text": "<"},{"selector": "@s"},{"text": "> "},{"text": "Avada Kedavara!"}]