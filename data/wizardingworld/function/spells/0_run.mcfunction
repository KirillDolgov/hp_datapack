execute at @s[tag=stupefy] positioned ~ ~-1 ~ unless entity @e[distance=..1,tag=!stupefy] at @s[tag=stupefy] run particle dust{color:[1.0,1.0,1.0],scale:3} ^ ^ ^1 0 0 0 0 1
execute at @s[tag=stupefy] positioned ~ ~-1 ~ unless entity @e[distance=..1,tag=!stupefy] at @s[tag=stupefy] run particle dust{color:[1.0,1.0,1.0],scale:3} ^ ^ ^0.5 0 0 0 0 1
execute at @s[tag=stupefy] positioned ~ ~-1 ~ unless entity @e[distance=..1,tag=!stupefy] at @s[tag=stupefy] run particle dust{color:[1.0,1.0,1.0],scale:3} ^ ^ ^ 0 0 0 0 1
execute at @s[tag=stupefy] positioned ~ ~-1 ~ unless entity @e[distance=..1,tag=!stupefy] at @s[tag=stupefy] run particle dust{color:[1.0,1.0,1.0],scale:3} ^ ^ ^1.5 0 0 0 0 1
execute at @s[tag=stupefy] positioned ~ ~-1 ~ run tag @n[tag=!stupefy,distance=..1.5,type=!item_display,type=!block_display] add stupefied
execute at @e[tag=stupefied] positioned ~ ~1 ~ run tag @n[tag=stupefy,distance=..1.5] add stupefy_remove
execute at @e[tag=stupefied,tag=spell_lvl_1] as @a if score @s id = @n[tag=stupefy] id run damage @n[tag=stupefied,tag=spell_lvl_1] 1 indirect_magic by @s
execute at @e[tag=stupefied,tag=spell_lvl_2] as @a if score @s id = @n[tag=stupefy] id run damage @n[tag=stupefied,tag=spell_lvl_2] 2 indirect_magic by @s
execute at @e[tag=stupefied,tag=spell_lvl_3] as @a if score @s id = @n[tag=stupefy] id run damage @n[tag=stupefied,tag=spell_lvl_3] 3 indirect_magic by @s
execute at @e[tag=stupefied,tag=spell_lvl_4] as @a if score @s id = @n[tag=stupefy] id run damage @n[tag=stupefied,tag=spell_lvl_4] 4 indirect_magic by @s
execute at @e[tag=stupefied,tag=spell_lvl_5] as @a if score @s id = @n[tag=stupefy] id run damage @n[tag=stupefied,tag=spell_lvl_5] 5 indirect_magic by @s
execute at @e[tag=stupefied,tag=spell_lvl_6] as @a if score @s id = @n[tag=stupefy] id run damage @n[tag=stupefied,tag=spell_lvl_6] 6 indirect_magic by @s
execute at @e[tag=stupefied,tag=spell_lvl_7] as @a if score @s id = @n[tag=stupefy] id run damage @n[tag=stupefied,tag=spell_lvl_7] 7 indirect_magic by @s
execute at @e[tag=stupefied,tag=spell_lvl_8] as @a if score @s id = @n[tag=stupefy] id run damage @n[tag=stupefied,tag=spell_lvl_8] 8 indirect_magic by @s
execute at @e[tag=stupefied,tag=spell_lvl_9] as @a if score @s id = @n[tag=stupefy] id run damage @n[tag=stupefied,tag=spell_lvl_9] 9 indirect_magic by @s
execute at @e[tag=stupefied,tag=spell_lvl_10] as @a if score @s id = @n[tag=stupefy] id run damage @n[tag=stupefied,tag=spell_lvl_10] 10 indirect_magic by @s

#execute as @e[tag=stupefied,tag=spell_lvl_1] at @s run damage @s 1 indirect_magic by @n[nbt={Inventory:[{components:{"minecraft:custom_data":{magic_wand:true}}}]},distance=1..]
#execute as @e[tag=stupefied,tag=spell_lvl_2] at @s run damage @s 2 indirect_magic by @n[nbt={Inventory:[{components:{"minecraft:custom_data":{magic_wand:true}}}]},distance=1..]
#execute as @e[tag=stupefied,tag=spell_lvl_3] at @s run damage @s 3 indirect_magic by @n[nbt={Inventory:[{components:{"minecraft:custom_data":{magic_wand:true}}}]},distance=1..]
#execute as @e[tag=stupefied,tag=spell_lvl_4] at @s run damage @s 4 indirect_magic by @n[nbt={Inventory:[{components:{"minecraft:custom_data":{magic_wand:true}}}]},distance=1..]
#execute as @e[tag=stupefied,tag=spell_lvl_5] at @s run damage @s 5 indirect_magic by @n[nbt={Inventory:[{components:{"minecraft:custom_data":{magic_wand:true}}}]},distance=1..]
#execute as @e[tag=stupefied,tag=spell_lvl_6] at @s run damage @s 6 indirect_magic by @n[nbt={Inventory:[{components:{"minecraft:custom_data":{magic_wand:true}}}]},distance=1..]
#execute as @e[tag=stupefied,tag=spell_lvl_7] at @s run damage @s 7 indirect_magic by @n[nbt={Inventory:[{components:{"minecraft:custom_data":{magic_wand:true}}}]},distance=1..]
#execute as @e[tag=stupefied,tag=spell_lvl_8] at @s run damage @s 8 indirect_magic by @n[nbt={Inventory:[{components:{"minecraft:custom_data":{magic_wand:true}}}]},distance=1..]
#execute as @e[tag=stupefied,tag=spell_lvl_9] at @s run damage @s 9 indirect_magic by @n[nbt={Inventory:[{components:{"minecraft:custom_data":{magic_wand:true}}}]},distance=1..]
#execute as @e[tag=stupefied,tag=spell_lvl_10] at @s run damage @s 10 indirect_magic by @n[nbt={Inventory:[{components:{"minecraft:custom_data":{magic_wand:true}}}]},distance=1..]
tag @e[tag=stupefied] remove stupefied
kill @s[tag=stupefy_remove]