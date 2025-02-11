execute as @s if score @s freeze_timer matches 1.. run scoreboard players remove @s freeze_timer 1



execute as @s[type=!player] if score @s freeze_timer matches 1.. run effect give @s slowness 1 255 true
execute as @s[type=player] if score @s freeze_timer matches 1.. run attribute @s generic.movement_speed base set 0
execute as @s[type=player] if score @s freeze_timer matches 1.. run attribute @s generic.jump_strength base set 0


execute as @s[type=!player] if score @s freeze_timer matches 0 run effect clear @s slowness
execute as @s[type=player] if score @s freeze_timer matches 0 run attribute @s generic.movement_speed base set 0.1
execute as @s[type=player] if score @s freeze_timer matches 0 run attribute @s generic.jump_strength base set 0.41999998688697815

execute as @s if score @s freeze_timer matches 0 run scoreboard players reset @s freeze_timer