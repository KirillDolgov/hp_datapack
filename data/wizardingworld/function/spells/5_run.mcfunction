
execute at @s[tag=depulso] positioned ~ ~-1 ~ at @s[tag=depulso] run particle dust{color:[0.6,0.6,0.6],scale:3} ^ ^ ^1 0 0 0 0 1
execute at @s[tag=depulso] positioned ~ ~-1 ~ at @s[tag=depulso] run particle dust{color:[0.6,0.6,0.6],scale:3} ^ ^ ^0.5 0 0 0 0 1
execute at @s[tag=depulso] positioned ~ ~-1 ~ at @s[tag=depulso] run particle dust{color:[0.6,0.6,0.6],scale:3} ^ ^ ^ 0 0 0 0 1
execute at @s[tag=depulso] positioned ~ ~-1 ~ at @s[tag=depulso] run particle dust{color:[0.6,0.6,0.6],scale:3} ^ ^ ^1.5 0 0 0 0 1
execute at @s if block ~ ~-1 ~ #non_solid positioned ~ ~-1 ~ run tp @n[tag=!depulso,distance=..1.5,type=!item_display,type=!block_display] ~ ~ ~
execute if score @s timer matches ..1 run kill @s