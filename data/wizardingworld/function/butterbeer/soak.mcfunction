execute as @s unless score @s timer matches 0.. run scoreboard players set @s timer 200
execute at @s[scores={timer=134}] run fill ~ ~ ~ ~ ~ ~ minecraft:water_cauldron[level=2] replace minecraft:water_cauldron[level=3]
execute at @s[scores={timer=68}] run fill ~ ~ ~ ~ ~ ~ minecraft:water_cauldron[level=1] replace minecraft:water_cauldron[level=2]
execute at @s[scores={timer=0}] run fill ~ ~ ~ ~ ~ ~ minecraft:cauldron replace minecraft:water_cauldron[level=1]
execute as @s[scores={timer=0}] run data merge entity @s {Item:{id:"minecraft:wheat_seeds",components:{custom_data:{malt:true},item_name:'{"text":"Malt"}',custom_model_data:1}},Tags:["soak","malt"]}