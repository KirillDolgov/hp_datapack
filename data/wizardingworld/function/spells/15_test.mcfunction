tellraw @a[distance=..50] [{"text": "<"},{"selector": "@s"},{"text": "> "},{"text": "Incendio!"}]
execute rotated as @s positioned 0.0 0.0 0.0 align xyz run summon minecraft:armor_stand ^ ^ ^1 {Invulnerable:1b,NoGravity:1b,Tags:["incendio_aim"],Invisible:1b}
execute at @s[scores={magic_level=1}] run summon minecraft:armor_stand ~ ~ ~ {Tags:["incendio","spell","lvl1"],attributes:[{id:"generic.gravity",base:0}],Silent:1b,Invisible:1b,Invulnerable:1b,Small:1b}
execute at @s[scores={magic_level=2}] run summon minecraft:armor_stand ~ ~ ~ {Tags:["incendio","spell","lvl2"],attributes:[{id:"generic.gravity",base:0}],Silent:1b,Invisible:1b,Invulnerable:1b,Small:1b}
execute at @s[scores={magic_level=3}] run summon minecraft:armor_stand ~ ~ ~ {Tags:["incendio","spell","lvl3"],attributes:[{id:"generic.gravity",base:0}],Silent:1b,Invisible:1b,Invulnerable:1b,Small:1b}
execute at @s[scores={magic_level=4}] run summon minecraft:armor_stand ~ ~ ~ {Tags:["incendio","spell","lvl4"],attributes:[{id:"generic.gravity",base:0}],Silent:1b,Invisible:1b,Invulnerable:1b,Small:1b}
execute at @s[scores={magic_level=5}] run summon minecraft:armor_stand ~ ~ ~ {Tags:["incendio","spell","lvl5"],attributes:[{id:"generic.gravity",base:0}],Silent:1b,Invisible:1b,Invulnerable:1b,Small:1b}
execute at @s[scores={magic_level=6}] run summon minecraft:armor_stand ~ ~ ~ {Tags:["incendio","spell","lvl6"],attributes:[{id:"generic.gravity",base:0}],Silent:1b,Invisible:1b,Invulnerable:1b,Small:1b}
execute at @s[scores={magic_level=7}] run summon minecraft:armor_stand ~ ~ ~ {Tags:["incendio","spell","lvl7"],attributes:[{id:"generic.gravity",base:0}],Silent:1b,Invisible:1b,Invulnerable:1b,Small:1b}
execute at @s[scores={magic_level=8}] run summon minecraft:armor_stand ~ ~ ~ {Tags:["incendio","spell","lvl8"],attributes:[{id:"generic.gravity",base:0}],Silent:1b,Invisible:1b,Invulnerable:1b,Small:1b}
execute at @s[scores={magic_level=9}] run summon minecraft:armor_stand ~ ~ ~ {Tags:["incendio","spell","lvl9"],attributes:[{id:"generic.gravity",base:0}],Silent:1b,Invisible:1b,Invulnerable:1b,Small:1b}
execute at @s[scores={magic_level=10}] run summon minecraft:armor_stand ~ ~ ~ {Tags:["incendio","spell","lvl10"],attributes:[{id:"generic.gravity",base:0}],Silent:1b,Invisible:1b,Invulnerable:1b,Small:1b}
execute at @s store result score @n[tag=incendio,distance=..1] id run scoreboard players get @s id

##execute at @s[scores={magic_level=1}] run scoreboard players set @n[tag=incendio,distance=..1] incendio_timer 2

execute at @s run playsound minecraft:entity.blaze.shoot player @a ~ ~ ~ 0.5 0.75 0
execute at @s run playsound minecraft:block.campfire.crackle player @a ~ ~ ~ 10 0.75 0
execute at @s run playsound minecraft:block.fire.ambient player @a ~ ~ ~ 10 0.75 0


execute at @s run tp @e[tag=incendio,distance=..1,limit=1,sort=nearest] ~ ~1.5 ~ ~ ~
execute at @s positioned ~ ~1.5 ~ as @e[tag=incendio,distance=..1,limit=1,sort=nearest] positioned 0 0 0 store result score @s motion_x run data get entity @e[tag=incendio_aim,limit=1] Pos[0] 125
execute at @s positioned ~ ~1.5 ~ as @e[tag=incendio,distance=..1,limit=1,sort=nearest] positioned 0 0 0 store result score @s motion_y run data get entity @e[tag=incendio_aim,limit=1] Pos[1] 125
execute at @s positioned ~ ~1.5 ~ as @e[tag=incendio,distance=..1,limit=1,sort=nearest] positioned 0 0 0 store result score @s motion_z run data get entity @e[tag=incendio_aim,limit=1] Pos[2] 125
execute at @s positioned ~ ~1.5 ~ as @e[tag=incendio,distance=..1,limit=1,sort=nearest] run tp @s ^ ^ ^1.6
kill @e[tag=incendio_aim]













scoreboard players remove @s[scores={magic_level=1}] mana 2000
scoreboard players remove @s[scores={magic_level=2}] mana 4000
scoreboard players remove @s[scores={magic_level=3}] mana 6000
scoreboard players remove @s[scores={magic_level=4}] mana 8000
scoreboard players remove @s[scores={magic_level=5}] mana 10000
scoreboard players remove @s[scores={magic_level=6}] mana 12000
scoreboard players remove @s[scores={magic_level=7}] mana 14000
scoreboard players remove @s[scores={magic_level=8}] mana 16000
scoreboard players remove @s[scores={magic_level=9}] mana 18000
scoreboard players remove @s[scores={magic_level=10}] mana 20000