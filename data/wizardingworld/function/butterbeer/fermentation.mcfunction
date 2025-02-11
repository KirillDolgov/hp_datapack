execute at @s[tag=!fermenting] run kill @n[type=item,nbt={Item:{id:"minecraft:bone_meal",count:16,components:{"minecraft:custom_data":{crushed_malt:1b}}}}]
execute at @s[tag=!fermenting] run fill ~ ~ ~ ~ ~ ~ minecraft:cauldron replace minecraft:water_cauldron
execute at @s[tag=!fermenting] align xyz run summon block_display ~ ~ ~ {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[0.75f,0.6875f,0.75f],translation:[0.125f,0.25f,0.125f]},block_state:{Name:"minecraft:mangrove_roots"},Tags:["wort","foam"]}
execute at @s[tag=!fermenting] align xyz run summon block_display ~ ~ ~ {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[0.75f,0.6874f,0.75f],translation:[0.125f,0.25f,0.125f]},block_state:{Name:"minecraft:brown_terracotta"},Tags:["wort"]}
scoreboard players set @e[type=minecraft:armor_stand,tag=wort,tag=!fermenting] fermenting 24000
tag @s[type=minecraft:armor_stand,tag=wort,tag=!fermenting] add fermenting


execute as @s[tag=fermenting] at @s unless block ~ ~1 ~ air unless block ~ ~-1 ~ minecraft:campfire[lit=true] if score @s fermenting matches 1..24000 run scoreboard players remove @s fermenting 1
execute as @s[tag=fermenting] at @s if score @s fermenting matches 0 at @s run kill @e[tag=foam,distance=..1]
execute as @s[tag=fermenting] at @s if score @s fermenting matches 0 at @s align xyz positioned ~0.5 ~ ~0.5 unless entity @n[tag=click_wort,distance=..1] run summon interaction ~ ~ ~ {Tags:["click_wort"]}
execute as @n[tag=click_wort] unless score @s click_wort matches -1.. run scoreboard players set @s click_wort 3

execute as @n[tag=click_wort] if score @s click_wort matches 1 on target if items entity @s weapon glass_bottle run clear @s glass_bottle 1
execute as @n[tag=click_wort] if score @s click_wort matches 1 on target if items entity @s weapon glass_bottle run give @s potion[potion_contents={custom_color:10518803},custom_name='{"text":"Wort Bottle","italic":false}',custom_data={wort_bottle:true},hide_additional_tooltip={},max_stack_size=16]
execute as @n[tag=click_wort] if score @s click_wort matches 1 if data entity @s interaction at @s run playsound minecraft:item.bottle.fill block @a
execute as @n[tag=click_wort] if score @s click_wort matches 1 if data entity @s interaction at @s run kill @n[type=block_display,tag=wort]

execute as @n[tag=click_wort] if score @s click_wort matches 2 on target if items entity @s weapon glass_bottle run clear @s glass_bottle 1
execute as @n[tag=click_wort] if score @s click_wort matches 2 on target if items entity @s weapon glass_bottle run give @s potion[potion_contents={custom_color:10518803},custom_name='{"text":"Wort Bottle","italic":false}',custom_data={wort_bottle:true},hide_additional_tooltip={},max_stack_size=16]
execute as @n[tag=click_wort] if score @s click_wort matches 2 if data entity @s interaction at @s run playsound minecraft:item.bottle.fill block @a
execute as @n[tag=click_wort] if score @s click_wort matches 2 if data entity @s interaction at @s run data merge entity @n[type=block_display,tag=wort] {transformation:{scale:[0.75f,0.2291f,0.75f]}}

execute as @n[tag=click_wort] if score @s click_wort matches 3 on target if items entity @s weapon glass_bottle run clear @s glass_bottle 1
execute as @n[tag=click_wort] if score @s click_wort matches 3 on target if items entity @s weapon glass_bottle run give @s potion[potion_contents={custom_color:10518803},custom_name='{"text":"Wort Bottle","italic":false}',custom_data={wort_bottle:true},hide_additional_tooltip={},max_stack_size=16]
execute as @n[tag=click_wort] if score @s click_wort matches 3 if data entity @s interaction at @s run playsound minecraft:item.bottle.fill block @a
execute as @n[tag=click_wort] if score @s click_wort matches 3 if data entity @s interaction at @s run data merge entity @n[type=block_display,tag=wort] {transformation:{scale:[0.75f,0.4583f,0.75f]}}

execute as @n[tag=click_wort] if score @s click_wort matches 1 if data entity @s interaction run scoreboard players remove @s click_wort 1
execute as @n[tag=click_wort] if score @s click_wort matches 2 if data entity @s interaction run scoreboard players remove @s click_wort 1
execute as @n[tag=click_wort] if score @s click_wort matches 3 if data entity @s interaction run scoreboard players remove @s click_wort 1
execute as @n[tag=click_wort] if data entity @s interaction run data remove entity @s interaction


execute at @s if score @s fermenting matches 0 at @s align xyz as @n[tag=click_wort] if score @s click_wort matches 0 run kill @s
execute at @s if score @s fermenting matches 0 at @s align xyz unless entity @n[tag=click_wort,distance=..1] run kill @s


execute at @s unless block ~ ~ ~ cauldron run kill @e[tag=wort,distance=..1]