tellraw @a[distance=..50] [{"text": "<"},{"selector": "@s"},{"text": "> "},{"text": "Confringo!"}]
execute rotated as @s positioned 0.0 0.0 0.0 align xyz run summon armor_stand ^ ^ ^1 {Invulnerable:1b,NoGravity:1b,Tags:["confringo_aim"],Invisible:1b}
execute at @s run summon fireball ~ ~ ~ {Tags:["confringo","spell"],ExplosionPower:1}
execute at @s store result score @n[tag=confringo,distance=..1] id run scoreboard players get @s id
execute at @s run tp @e[tag=confringo,distance=..1,limit=1,sort=nearest] ~ ~1.5 ~ ~ ~
execute at @s positioned ~ ~1.5 ~ as @e[tag=confringo,distance=..1,limit=1,sort=nearest] positioned 0 0 0 store result score @s motion_x run data get entity @e[tag=confringo_aim,limit=1] Pos[0] 1000
execute at @s positioned ~ ~1.5 ~ as @e[tag=confringo,distance=..1,limit=1,sort=nearest] positioned 0 0 0 store result score @s motion_y run data get entity @e[tag=confringo_aim,limit=1] Pos[1] 1000
execute at @s positioned ~ ~1.5 ~ as @e[tag=confringo,distance=..1,limit=1,sort=nearest] positioned 0 0 0 store result score @s motion_z run data get entity @e[tag=confringo_aim,limit=1] Pos[2] 1000
execute at @s positioned ~ ~1.5 ~ as @e[tag=confringo,distance=..1,limit=1,sort=nearest] run tp @s ^ ^ ^1.6
kill @e[tag=confringo_aim]
execute at @s run playsound entity.blaze.shoot player @a ~ ~ ~ 0.5 1 0












scoreboard players remove @s mana 8000