
execute at @s[tag=leviosa] positioned ~ ~-1 ~ run tag @n[tag=!leviosa,tag=!leviosa_base,distance=..1.5,type=!item_display,type=!block_display] add leviosed
execute at @e[tag=leviosed,tag=spell_lvl_1] run summon armor_stand ~ ~ ~ {Tags:["leviosa_base","lvl1"],Invisible:1b,Invulnerable:1b,Silent:1b,NoGravity:1b,NoAI:1b}
execute as @e[tag=leviosa_base,tag=lvl1] unless score @s timer matches 0.. run scoreboard players set @s timer 60
execute at @e[tag=leviosed,tag=spell_lvl_2] run summon armor_stand ~ ~ ~ {Tags:["leviosa_base","lvl2"],Invisible:1b,Invulnerable:1b,Silent:1b,NoGravity:1b,NoAI:1b}
execute as @e[tag=leviosa_base,tag=lvl2] unless score @s timer matches 0.. run scoreboard players set @s timer 80
execute at @e[tag=leviosed,tag=spell_lvl_3] run summon armor_stand ~ ~ ~ {Tags:["leviosa_base","lvl3"],Invisible:1b,Invulnerable:1b,Silent:1b,NoGravity:1b,NoAI:1b}
execute as @e[tag=leviosa_base,tag=lvl3] unless score @s timer matches 0.. run scoreboard players set @s timer 100
execute at @e[tag=leviosed,tag=spell_lvl_4] run summon armor_stand ~ ~ ~ {Tags:["leviosa_base","lvl4"],Invisible:1b,Invulnerable:1b,Silent:1b,NoGravity:1b,NoAI:1b}
execute as @e[tag=leviosa_base,tag=lvl4] unless score @s timer matches 0.. run scoreboard players set @s timer 120
execute at @e[tag=leviosed,tag=spell_lvl_5] run summon armor_stand ~ ~ ~ {Tags:["leviosa_base","lvl5"],Invisible:1b,Invulnerable:1b,Silent:1b,NoGravity:1b,NoAI:1b}
execute as @e[tag=leviosa_base,tag=lvl5] unless score @s timer matches 0.. run scoreboard players set @s timer 140
execute at @e[tag=leviosed,tag=spell_lvl_6] run summon armor_stand ~ ~ ~ {Tags:["leviosa_base","lvl6"],Invisible:1b,Invulnerable:1b,Silent:1b,NoGravity:1b,NoAI:1b}
execute as @e[tag=leviosa_base,tag=lvl6] unless score @s timer matches 0.. run scoreboard players set @s timer 160
execute at @e[tag=leviosed,tag=spell_lvl_7] run summon armor_stand ~ ~ ~ {Tags:["leviosa_base","lvl7"],Invisible:1b,Invulnerable:1b,Silent:1b,NoGravity:1b,NoAI:1b}
execute as @e[tag=leviosa_base,tag=lvl7] unless score @s timer matches 0.. run scoreboard players set @s timer 180
execute at @e[tag=leviosed,tag=spell_lvl_8] run summon armor_stand ~ ~ ~ {Tags:["leviosa_base","lvl8"],Invisible:1b,Invulnerable:1b,Silent:1b,NoGravity:1b,NoAI:1b}
execute as @e[tag=leviosa_base,tag=lvl8] unless score @s timer matches 0.. run scoreboard players set @s timer 200
execute at @e[tag=leviosed,tag=spell_lvl_9] run summon armor_stand ~ ~ ~ {Tags:["leviosa_base","lvl9"],Invisible:1b,Invulnerable:1b,Silent:1b,NoGravity:1b,NoAI:1b}
execute as @e[tag=leviosa_base,tag=lvl9] unless score @s timer matches 0.. run scoreboard players set @s timer 220
execute at @e[tag=leviosed,tag=spell_lvl_10] run summon armor_stand ~ ~ ~ {Tags:["leviosa_base","lvl10"],Invisible:1b,Invulnerable:1b,Silent:1b,NoGravity:1b,NoAI:1b}
execute as @e[tag=leviosa_base,tag=lvl10] unless score @s timer matches 0.. run scoreboard players set @s timer 240
execute as @e[tag=leviosa_base] at @s unless score @s id matches 1.. store result score @s id run scoreboard players get @n[tag=leviosa] id
execute at @e[tag=leviosed] positioned ~ ~1 ~ run kill @n[tag=leviosa,distance=..1.5]
tag @e[tag=leviosed] add leviosing
tag @e[tag=leviosed] remove leviosed
