execute if score @s timer matches ..0 run kill @s
execute at @s run effect give @e[distance=..3,tag=leviosing] minecraft:levitation 1 0 true
execute at @s run effect give @e[distance=..3,tag=leviosing] minecraft:slowness 2 6 true
execute at @s run effect give @e[distance=..3,tag=leviosing] minecraft:slow_falling 2 0 true
execute at @s as @e[type=item,distance=..3] run data merge entity @s {Motion:[0.0,0.05,0.0],NoGravity:1b}