
execute at @s[tag=expelliarmus] positioned ~ ~-1 ~ unless entity @e[distance=..1.5,tag=!expelliarmus] at @s[tag=expelliarmus] run particle dust{color:[1.0,0.0,0.0],scale:3} ^ ^ ^1 0 0 0 0 1
execute at @s[tag=expelliarmus] positioned ~ ~-1 ~ unless entity @e[distance=..1.5,tag=!expelliarmus] at @s[tag=expelliarmus] run particle dust{color:[1.0,0.0,0.0],scale:3} ^ ^ ^0.5 0 0 0 0 1
execute at @s[tag=expelliarmus] positioned ~ ~-1 ~ unless entity @e[distance=..1.5,tag=!expelliarmus] at @s[tag=expelliarmus] run particle dust{color:[1.0,0.0,0.0],scale:3} ^ ^ ^ 0 0 0 0 1
execute at @s[tag=expelliarmus] positioned ~ ~-1 ~ unless entity @e[distance=..1.5,tag=!expelliarmus] at @s[tag=expelliarmus] run particle dust{color:[1.0,0.0,0.0],scale:3} ^ ^ ^1.5 0 0 0 0 1
execute at @s[tag=expelliarmus] positioned ~ ~-1 ~ run tag @n[distance=..1.5,tag=!expelliarmus,type=!item_display,type=!block_display] add disarm
execute at @e[tag=disarm] positioned ~ ~1 ~ run tag @n[tag=expelliarmus,distance=..1.5] add expelliarmus_remove
execute as @n[tag=disarm,type=!player] at @s if data entity @s HandItems[0] run summon minecraft:item ^ ^2 ^2 {Item:{id:"minecraft:stone",count:1},Tags:["weapon"]}
execute as @p[tag=disarm] at @s if data entity @s SelectedItem run summon minecraft:item ^ ^2 ^2 {Item:{id:"minecraft:stone",count:1},Tags:["weapon"]}
execute at @n[tag=disarm,type=!player] run data modify entity @n[type=item,nbt={Item:{id:"minecraft:stone",count:1}},tag=weapon] Item set from entity @e[tag=disarm,sort=nearest,limit=1] HandItems[0]
execute at @p[tag=disarm] run data modify entity @n[type=item,nbt={Item:{id:"minecraft:stone",count:1}},tag=weapon] Item set from entity @a[tag=disarm,sort=nearest,limit=1] SelectedItem
item replace entity @n[tag=disarm] weapon.mainhand with air
tag @n[tag=disarm] remove disarm
kill @s[tag=expelliarmus_remove]