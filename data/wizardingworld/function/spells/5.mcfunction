execute rotated as @s positioned 0.0 0.0 0.0 align xyz run summon minecraft:armor_stand ^ ^ ^1 {Invulnerable:1b,NoGravity:1b,Tags:["depulso_aim"],Invisible:1b}
execute at @s run summon minecraft:armor_stand ~ ~ ~ {Tags:["depulso","spell"],attributes:[{id:"generic.gravity",base:0}],Silent:1b,Invisible:1b,Invulnerable:1b,Small:1b}
execute at @s run scoreboard players set @n[tag=depulso] timer 50
execute at @s run tp @n[tag=depulso,distance=..1] ~ ~1 ~ ~ ~
execute at @s positioned ~ ~1 ~ as @n[tag=depulso,distance=..1] positioned 0 0 0 store result score @s motion_x run data get entity @n[tag=depulso_aim] Pos[0] 500
execute at @s positioned ~ ~1 ~ as @n[tag=depulso,distance=..1] positioned 0 0 0 store result score @s motion_y run data get entity @n[tag=depulso_aim] Pos[1] 500
execute at @s positioned ~ ~1 ~ as @n[tag=depulso,distance=..1] positioned 0 0 0 store result score @s motion_z run data get entity @n[tag=depulso_aim] Pos[2] 500
execute at @s positioned ~ ~1 ~ as @n[tag=depulso,distance=..1] run tp @s ^ ^ ^1.6
kill @e[tag=depulso_aim]
scoreboard players remove @s mana 8000
execute at @s run playsound minecraft:entity.elder_guardian.death player @a ~ ~ ~ 0.35 2 0
tellraw @a[distance=..50] [{"text": "<"},{"selector": "@s"},{"text": "> "},{"text": "Depulso!"}]