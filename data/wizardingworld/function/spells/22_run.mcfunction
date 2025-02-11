execute at @s[tag=imperio] positioned ~ ~-1 ~ unless entity @e[distance=..1.5,tag=!imperio] at @s[tag=imperio] run particle dust{color:[0.8,1.0,0.0],scale:3} ^ ^ ^1 0 0 0 0 1
execute at @s[tag=imperio] positioned ~ ~-1 ~ unless entity @e[distance=..1.5,tag=!imperio] at @s[tag=imperio] run particle dust{color:[0.8,1.0,0.0],scale:3} ^ ^ ^0.5 0 0 0 0 1
execute at @s[tag=imperio] positioned ~ ~-1 ~ unless entity @e[distance=..1.5,tag=!imperio] at @s[tag=imperio] run particle dust{color:[0.8,1.0,0.0],scale:3} ^ ^ ^ 0 0 0 0 1
execute at @s[tag=imperio] positioned ~ ~-1 ~ unless entity @e[distance=..1.5,tag=!imperio] at @s[tag=imperio] run particle dust{color:[0.8,1.0,0.0],scale:3} ^ ^ ^1.5 0 0 0 0 1
execute at @s[tag=imperio] positioned ~ ~-1 ~ run tag @n[distance=..1.5,tag=!imperio,tag=!fiendfyre,limit=1,type=!item_display,type=!block_display] add imperied
execute at @e[tag=imperied] positioned ~ ~1 ~ run tag @n[tag=imperio,distance=..1.5] add remove_imperio

execute at @s[tag=imperio] store result score @n[tag=imperied,type=!player] imperied run scoreboard players get @s id
execute at @s[tag=imperio] run scoreboard players set @n[tag=imperied,type=!player] imperio_timer 1200







tag @e[tag=imperied] remove imperied
kill @e[tag=imperio,tag=remove_imperio]