execute at @s[tag=immobulus] positioned ~ ~-1 ~ unless entity @e[distance=..1,tag=!immobulus] at @s[tag=immobulus] run particle dust{color:[0.5,0.5,1.0],scale:3} ^ ^ ^1 0 0 0 0 1
execute at @s[tag=immobulus] positioned ~ ~-1 ~ unless entity @e[distance=..1,tag=!immobulus] at @s[tag=immobulus] run particle dust{color:[0.5,0.5,1.0],scale:3} ^ ^ ^0.5 0 0 0 0 1
execute at @s[tag=immobulus] positioned ~ ~-1 ~ unless entity @e[distance=..1,tag=!immobulus] at @s[tag=immobulus] run particle dust{color:[0.5,0.5,1.0],scale:3} ^ ^ ^ 0 0 0 0 1
execute at @s[tag=immobulus] positioned ~ ~-1 ~ unless entity @e[distance=..1,tag=!immobulus] at @s[tag=immobulus] run particle dust{color:[0.5,0.5,1.0],scale:3} ^ ^ ^1.5 0 0 0 0 1
execute at @s[tag=immobulus] positioned ~ ~-1 ~ run tag @n[tag=!immobulus,distance=..1.5,type=!item_display,type=!block_display] add freezed
execute at @e[tag=freezed] positioned ~ ~1 ~ run tag @n[tag=immobulus,distance=..1.5] add immobulus_remove

execute at @e[tag=freezed] run playsound minecraft:block.note_block.chime player @a ~ ~ ~ 0.5 0.5 0
execute at @e[tag=freezed] run playsound minecraft:block.note_block.chime player @a ~ ~ ~ 0.5 0.5946 0
execute at @e[tag=freezed] run playsound minecraft:block.note_block.chime player @a ~ ~ ~ 0.5 0.7492 0
execute at @e[tag=freezed] run playsound minecraft:block.note_block.chime player @a ~ ~ ~ 0.5 0.8909 0


execute as @e[tag=freezed,tag=spell_lvl_1] run scoreboard players set @s freeze_timer 20
execute as @e[tag=freezed,tag=spell_lvl_2] run scoreboard players set @s freeze_timer 40
execute as @e[tag=freezed,tag=spell_lvl_3] run scoreboard players set @s freeze_timer 60
execute as @e[tag=freezed,tag=spell_lvl_4] run scoreboard players set @s freeze_timer 80
execute as @e[tag=freezed,tag=spell_lvl_5] run scoreboard players set @s freeze_timer 100
execute as @e[tag=freezed,tag=spell_lvl_6] run scoreboard players set @s freeze_timer 120
execute as @e[tag=freezed,tag=spell_lvl_7] run scoreboard players set @s freeze_timer 140
execute as @e[tag=freezed,tag=spell_lvl_8] run scoreboard players set @s freeze_timer 160
execute as @e[tag=freezed,tag=spell_lvl_9] run scoreboard players set @s freeze_timer 180
execute as @e[tag=freezed,tag=spell_lvl_10] run scoreboard players set @s freeze_timer 200 



kill @s[tag=immobulus_remove]
tag @e[tag=freezed] remove freezed