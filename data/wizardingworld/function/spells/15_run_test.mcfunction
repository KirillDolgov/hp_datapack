#execute at @s[tag=incendio] positioned ~ ~-1 ~ unless entity @e[distance=..1,tag=!incendio] at @s[tag=incendio] run particle dust{color:[1.0,1.0,1.0],scale:3} ^ ^ ^1 0 0 0 0 1
#execute at @s[tag=incendio] positioned ~ ~-1 ~ unless entity @e[distance=..1,tag=!incendio] at @s[tag=incendio] run particle dust{color:[1.0,1.0,1.0],scale:3} ^ ^ ^0.5 0 0 0 0 1
#execute at @s[tag=incendio] positioned ~ ~-1 ~ unless entity @e[distance=..1,tag=!incendio] at @s[tag=incendio] run particle dust{color:[1.0,1.0,1.0],scale:3} ^ ^ ^ 0 0 0 0 1
#execute at @s[tag=incendio] positioned ~ ~-1 ~ unless entity @e[distance=..1,tag=!incendio] at @s[tag=incendio] run particle dust{color:[1.0,1.0,1.0],scale:3} ^ ^ ^1.5 0 0 0 0 1

execute unless score @s incendio_timer matches 0.. run scoreboard players set @s incendio_timer 0

execute as @s[tag=lvl1] if score @s incendio_timer matches 2 run kill @s
execute as @s[tag=lvl2] if score @s incendio_timer matches 4 run kill @s
execute as @s[tag=lvl3] if score @s incendio_timer matches 6 run kill @s
execute as @s[tag=lvl4] if score @s incendio_timer matches 8 run kill @s
execute as @s[tag=lvl5] if score @s incendio_timer matches 10 run kill @s
execute as @s[tag=lvl6] if score @s incendio_timer matches 12 run kill @s
execute as @s[tag=lvl7] if score @s incendio_timer matches 14 run kill @s
execute as @s[tag=lvl8] if score @s incendio_timer matches 16 run kill @s
execute as @s[tag=lvl9] if score @s incendio_timer matches 18 run kill @s
execute as @s[tag=lvl10] if score @s incendio_timer matches 20 run kill @s


function wizardingworld:spells/15_animation

scoreboard players add @s incendio_timer 1


execute at @s[tag=incendio] positioned ~ ~-1 ~ run tag @n[tag=!incendio,distance=..1.5,type=!item_display,type=!block_display] add flamed
execute at @e[tag=flamed] positioned ~ ~1 ~ run tag @n[tag=incendio,distance=..1.5] add incendio_remove
execute at @e[tag=flamed,tag=spell_lvl_1] as @a if score @s id = @n[tag=incendio] id run damage @n[tag=flamed,tag=spell_lvl_1] 3 in_fire by @s
execute at @e[tag=flamed,tag=spell_lvl_2] as @a if score @s id = @n[tag=incendio] id run damage @n[tag=flamed,tag=spell_lvl_2] 6 in_fire by @s
execute at @e[tag=flamed,tag=spell_lvl_3] as @a if score @s id = @n[tag=incendio] id run damage @n[tag=flamed,tag=spell_lvl_3] 9 in_fire by @s
execute at @e[tag=flamed,tag=spell_lvl_4] as @a if score @s id = @n[tag=incendio] id run damage @n[tag=flamed,tag=spell_lvl_4] 12 in_fire by @s
execute at @e[tag=flamed,tag=spell_lvl_5] as @a if score @s id = @n[tag=incendio] id run damage @n[tag=flamed,tag=spell_lvl_5] 15 in_fire by @s
execute at @e[tag=flamed,tag=spell_lvl_6] as @a if score @s id = @n[tag=incendio] id run damage @n[tag=flamed,tag=spell_lvl_6] 18 in_fire by @s
execute at @e[tag=flamed,tag=spell_lvl_7] as @a if score @s id = @n[tag=incendio] id run damage @n[tag=flamed,tag=spell_lvl_7] 21 in_fire by @s
execute at @e[tag=flamed,tag=spell_lvl_8] as @a if score @s id = @n[tag=incendio] id run damage @n[tag=flamed,tag=spell_lvl_8] 24 in_fire by @s
execute at @e[tag=flamed,tag=spell_lvl_9] as @a if score @s id = @n[tag=incendio] id run damage @n[tag=flamed,tag=spell_lvl_9] 27 in_fire by @s
execute at @e[tag=flamed,tag=spell_lvl_10] as @a if score @s id = @n[tag=incendio] id run damage @n[tag=flamed,tag=spell_lvl_10] 30 in_fire by @s

execute as @n[tag=flamed,tag=spell_lvl_1] run data merge entity @s {Fire:110s}
execute as @n[tag=flamed,tag=spell_lvl_2] run data merge entity @s {Fire:120s}
execute as @n[tag=flamed,tag=spell_lvl_3] run data merge entity @s {Fire:130s}
execute as @n[tag=flamed,tag=spell_lvl_4] run data merge entity @s {Fire:140s}
execute as @n[tag=flamed,tag=spell_lvl_5] run data merge entity @s {Fire:150s}
execute as @n[tag=flamed,tag=spell_lvl_6] run data merge entity @s {Fire:160s}
execute as @n[tag=flamed,tag=spell_lvl_7] run data merge entity @s {Fire:170s}
execute as @n[tag=flamed,tag=spell_lvl_8] run data merge entity @s {Fire:180s}
execute as @n[tag=flamed,tag=spell_lvl_9] run data merge entity @s {Fire:190s}
execute as @n[tag=flamed,tag=spell_lvl_10] run data merge entity @s {Fire:200s}


tag @e[tag=flamed] remove flamed


