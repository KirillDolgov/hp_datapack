execute store result entity @s Motion[0] double 0.002 run scoreboard players get @s motion_x
execute store result entity @s Motion[1] double 0.002 run scoreboard players get @s motion_y
execute store result entity @s Motion[2] double 0.002 run scoreboard players get @s motion_z
execute at @s[tag=!bombarda,tag=!confringo,tag=!bombardam,tag=!finite] unless block ^ ^ ^0.5 #non_solid run kill @s
execute store result score @s y run data get entity @s Pos[1] 1000
execute if score @s y matches 320000.. run kill @s
execute at @s[tag=lvl1] positioned ~ ~-1 ~ run tag @n[tag=!lvl1,distance=..1.5] add spell_lvl_1
execute at @s[tag=lvl2] positioned ~ ~-1 ~ run tag @n[tag=!lvl2,distance=..1.5] add spell_lvl_2
execute at @s[tag=lvl3] positioned ~ ~-1 ~ run tag @n[tag=!lvl3,distance=..1.5] add spell_lvl_3
execute at @s[tag=lvl4] positioned ~ ~-1 ~ run tag @n[tag=!lvl4,distance=..1.5] add spell_lvl_4
execute at @s[tag=lvl5] positioned ~ ~-1 ~ run tag @n[tag=!lvl5,distance=..1.5] add spell_lvl_5
execute at @s[tag=lvl6] positioned ~ ~-1 ~ run tag @n[tag=!lvl6,distance=..1.5] add spell_lvl_6
execute at @s[tag=lvl7] positioned ~ ~-1 ~ run tag @n[tag=!lvl7,distance=..1.5] add spell_lvl_7
execute at @s[tag=lvl8] positioned ~ ~-1 ~ run tag @n[tag=!lvl8,distance=..1.5] add spell_lvl_8
execute at @s[tag=lvl9] positioned ~ ~-1 ~ run tag @n[tag=!lvl9,distance=..1.5] add spell_lvl_9
execute at @s[tag=lvl10] positioned ~ ~-1 ~ run tag @n[tag=!lvl10,distance=..1.5] add spell_lvl_10







execute as @s[tag=stupefy] at @s run function wizardingworld:spells/0_run

execute as @s[tag=avada] at @s run function wizardingworld:spells/23_run

execute as @s[tag=leviosa] at @s run function wizardingworld:spells/2_run

execute as @s[tag=accio] at @s run function wizardingworld:spells/6_run
execute as @s[tag=accioback] at @s run function wizardingworld:spells/6_run

execute as @s[tag=immobulus] at @s run function wizardingworld:spells/7_run

execute as @s[tag=finite] at @s run function wizardingworld:spells/8_run


execute as @s[tag=incendio] at @s run function wizardingworld:spells/15_run
execute as @s[tag=bombarda] at @s run function wizardingworld:spells/16_run
execute as @s[tag=bombardam] at @s run function wizardingworld:spells/17_run



execute as @s[tag=expelliarmus] at @s run function wizardingworld:spells/4_run

execute as @s[tag=depulso] at @s run function wizardingworld:spells/5_run

execute as @s[tag=imperio] at @s run function wizardingworld:spells/22_run





tag @e[tag=spell_lvl_1] remove spell_lvl_1
tag @e[tag=spell_lvl_2] remove spell_lvl_2
tag @e[tag=spell_lvl_3] remove spell_lvl_3
tag @e[tag=spell_lvl_4] remove spell_lvl_4
tag @e[tag=spell_lvl_5] remove spell_lvl_5
tag @e[tag=spell_lvl_6] remove spell_lvl_6
tag @e[tag=spell_lvl_7] remove spell_lvl_7
tag @e[tag=spell_lvl_8] remove spell_lvl_8
tag @e[tag=spell_lvl_9] remove spell_lvl_9
tag @e[tag=spell_lvl_10] remove spell_lvl_10