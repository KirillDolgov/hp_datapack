execute at @s unless block ^ ^ ^0.5 #non_solid if entity @n[distance=..2.5,tag=!finite,type=!item_display,type=!block_display] run tag @n[distance=..2.5,tag=!finite,type=!item_display,type=!block_display] add finited
execute at @s unless block ^ ^ ^0.5 #non_solid unless entity @n[distance=..2.5,tag=!finite,type=!item_display,type=!block_display] run kill @s


execute at @s[tag=finite] positioned ~ ~-1 ~ unless entity @e[distance=..1.5,tag=!finite] at @s[tag=finite] run particle dust{color:[1.0,0.7,0.0],scale:3} ^ ^ ^1 0 0 0 0 1
execute at @s[tag=finite] positioned ~ ~-1 ~ unless entity @e[distance=..1.5,tag=!finite] at @s[tag=finite] run particle dust{color:[1.0,0.7,0.0],scale:3} ^ ^ ^0.5 0 0 0 0 1
execute at @s[tag=finite] positioned ~ ~-1 ~ unless entity @e[distance=..1.5,tag=!finite] at @s[tag=finite] run particle dust{color:[1.0,0.7,0.0],scale:3} ^ ^ ^ 0 0 0 0 1
execute at @s[tag=finite] positioned ~ ~-1 ~ unless entity @e[distance=..1.5,tag=!finite] at @s[tag=finite] run particle dust{color:[1.0,0.7,0.0],scale:3} ^ ^ ^1.5 0 0 0 0 1
execute at @s[tag=finite] positioned ~ ~-1 ~ run tag @n[distance=..1.5,tag=!finite,type=!item_display,type=!block_display] add finited
execute at @e[tag=finited] positioned ~ ~1 ~ run tag @n[tag=finite,distance=..3] add finite_remove
execute at @s[tag=finite] positioned ~ ~-1 ~ run effect clear @n[tag=finited]
tag @n[tag=finited] remove finited
kill @s[tag=finite_remove]