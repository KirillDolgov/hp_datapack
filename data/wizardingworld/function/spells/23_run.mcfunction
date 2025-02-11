execute at @s[tag=avada] positioned ~ ~-1 ~ unless entity @e[distance=..1.5,tag=!avada] at @s[tag=avada] run particle dust{color:[0.0,1.0,0.0],scale:3} ^ ^ ^1 0 0 0 0 1
execute at @s[tag=avada] positioned ~ ~-1 ~ unless entity @e[distance=..1.5,tag=!avada] at @s[tag=avada] run particle dust{color:[0.0,1.0,0.0],scale:3} ^ ^ ^0.5 0 0 0 0 1
execute at @s[tag=avada] positioned ~ ~-1 ~ unless entity @e[distance=..1.5,tag=!avada] at @s[tag=avada] run particle dust{color:[0.0,1.0,0.0],scale:3} ^ ^ ^ 0 0 0 0 1
execute at @s[tag=avada] positioned ~ ~-1 ~ unless entity @e[distance=..1.5,tag=!avada] at @s[tag=avada] run particle dust{color:[0.0,1.0,0.0],scale:3} ^ ^ ^1.5 0 0 0 0 1
execute at @s[tag=avada] positioned ~ ~-1 ~ run tag @n[distance=..1.5,tag=!avada,tag=!fiendfyre,limit=1,type=!item_display,type=!block_display] add avada_killed
execute at @e[tag=avada_killed] positioned ~ ~1 ~ run tag @n[tag=avada,distance=..1.5] add remove_avada
execute at @e[tag=avada_killed] run playsound minecraft:entity.warden.death player @a ~ ~ ~ 0.5 0.5 0
execute at @e[tag=avada_killed] run playsound minecraft:entity.zombie_villager.cure player @a ~ ~ ~ 0.35 0.5 0
execute at @e[tag=avada_killed] run particle minecraft:dust{color:[0.0,1.0,0.0],scale:3} ~ ~1 ~ 0.5 0.5 0.5 2 10
##execute at @e[tag=avada_killed] run effect give @e[distance=..30] darkness 3 0 true
execute at @e[tag=avada_killed] as @a if score @s id = @n[tag=avada] id run damage @n[tag=avada_killed] 999999999 indirect_magic by @s
##execute as @e[tag=avada_killed,limit=1] at @s run damage @s 999999999 indirect_magic by @n[nbt={Inventory:[{components:{"minecraft:custom_data":{magic_wand:true}}}]},distance=1..]
kill @e[tag=avada,tag=remove_avada]
tag @e[tag=avada_killed] remove avada_killed