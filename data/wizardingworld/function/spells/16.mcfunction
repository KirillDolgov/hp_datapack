tellraw @a[distance=..50] [{"text": "<"},{"selector": "@s"},{"text": "> "},{"text": "Bombarda!"}]
execute rotated as @s positioned 0.0 0.0 0.0 align xyz run summon minecraft:armor_stand ^ ^ ^1 {Invulnerable:1b,NoGravity:1b,Tags:["bombarda_aim"],Invisible:1b}
execute at @s[scores={magic_level=1}] run summon minecraft:armor_stand ~ ~ ~ {Tags:["bombarda","spell","lvl1"],attributes:[{id:"generic.gravity",base:0}],Silent:1b,Invisible:1b,Invulnerable:1b,Small:1b}
execute at @s[scores={magic_level=2}] run summon minecraft:armor_stand ~ ~ ~ {Tags:["bombarda","spell","lvl2"],attributes:[{id:"generic.gravity",base:0}],Silent:1b,Invisible:1b,Invulnerable:1b,Small:1b}
execute at @s[scores={magic_level=3}] run summon minecraft:armor_stand ~ ~ ~ {Tags:["bombarda","spell","lvl3"],attributes:[{id:"generic.gravity",base:0}],Silent:1b,Invisible:1b,Invulnerable:1b,Small:1b}
execute at @s[scores={magic_level=4}] run summon minecraft:armor_stand ~ ~ ~ {Tags:["bombarda","spell","lvl4"],attributes:[{id:"generic.gravity",base:0}],Silent:1b,Invisible:1b,Invulnerable:1b,Small:1b}
execute at @s[scores={magic_level=5}] run summon minecraft:armor_stand ~ ~ ~ {Tags:["bombarda","spell","lvl5"],attributes:[{id:"generic.gravity",base:0}],Silent:1b,Invisible:1b,Invulnerable:1b,Small:1b}
execute at @s[scores={magic_level=6}] run summon minecraft:armor_stand ~ ~ ~ {Tags:["bombarda","spell","lvl6"],attributes:[{id:"generic.gravity",base:0}],Silent:1b,Invisible:1b,Invulnerable:1b,Small:1b}
execute at @s[scores={magic_level=7}] run summon minecraft:armor_stand ~ ~ ~ {Tags:["bombarda","spell","lvl7"],attributes:[{id:"generic.gravity",base:0}],Silent:1b,Invisible:1b,Invulnerable:1b,Small:1b}
execute at @s[scores={magic_level=8}] run summon minecraft:armor_stand ~ ~ ~ {Tags:["bombarda","spell","lvl8"],attributes:[{id:"generic.gravity",base:0}],Silent:1b,Invisible:1b,Invulnerable:1b,Small:1b}
execute at @s[scores={magic_level=9}] run summon minecraft:armor_stand ~ ~ ~ {Tags:["bombarda","spell","lvl9"],attributes:[{id:"generic.gravity",base:0}],Silent:1b,Invisible:1b,Invulnerable:1b,Small:1b}
execute at @s[scores={magic_level=10}] run summon minecraft:armor_stand ~ ~ ~ {Tags:["bombarda","spell","lvl10"],attributes:[{id:"generic.gravity",base:0}],Silent:1b,Invisible:1b,Invulnerable:1b,Small:1b}
execute at @s store result score @n[tag=bombarda,distance=..1] id run scoreboard players get @s id
execute at @s run tp @e[tag=bombarda,distance=..1,limit=1,sort=nearest] ~ ~1.5 ~ ~ ~
execute at @s positioned ~ ~1.5 ~ as @e[tag=bombarda,distance=..1,limit=1,sort=nearest] positioned 0 0 0 store result score @s motion_x run data get entity @e[tag=bombarda_aim,limit=1] Pos[0] 2000
execute at @s positioned ~ ~1.5 ~ as @e[tag=bombarda,distance=..1,limit=1,sort=nearest] positioned 0 0 0 store result score @s motion_y run data get entity @e[tag=bombarda_aim,limit=1] Pos[1] 2000
execute at @s positioned ~ ~1.5 ~ as @e[tag=bombarda,distance=..1,limit=1,sort=nearest] positioned 0 0 0 store result score @s motion_z run data get entity @e[tag=bombarda_aim,limit=1] Pos[2] 2000
execute at @s positioned ~ ~1.5 ~ as @e[tag=bombarda,distance=..1,limit=1,sort=nearest] run tp @s ^ ^ ^1.6
kill @e[tag=bombarda_aim]













scoreboard players remove @s[scores={magic_level=1}] mana 2000
scoreboard players remove @s[scores={magic_level=2}] mana 6400
scoreboard players remove @s[scores={magic_level=3}] mana 6400
scoreboard players remove @s[scores={magic_level=4}] mana 6400
scoreboard players remove @s[scores={magic_level=5}] mana 10000
scoreboard players remove @s[scores={magic_level=6}] mana 10000
scoreboard players remove @s[scores={magic_level=7}] mana 10000
scoreboard players remove @s[scores={magic_level=8}] mana 20000
scoreboard players remove @s[scores={magic_level=9}] mana 20000
scoreboard players remove @s[scores={magic_level=10}] mana 20000