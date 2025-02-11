execute as @s[advancements={wizardingworld:magic/root=true}] unless score @s magic_level matches 1.. unless score @s timer matches 1.. run scoreboard players set @s magic_level 1

execute as @e[type=item] at @s if data entity @s {Item:{id:"minecraft:feather"}} if entity @n[tag=leviosa_base,distance=..2] as @a if score @s id = @n[tag=leviosa_base,distance=..5] id run advancement grant @s only wizardingworld:magic/leviosa
execute as @s[advancements={wizardingworld:magic/leviosa=true}] unless score @s magic_level matches 2.. unless score @s timer matches 1.. run scoreboard players set @s magic_level 2

execute as @s[advancements={wizardingworld:magic/dada=true}] unless score @s magic_level matches 3.. unless score @s timer matches 1.. run scoreboard players set @s magic_level 3

execute as @s[advancements={wizardingworld:magic/4=true}] unless score @s magic_level matches 4.. unless score @s timer matches 1.. run scoreboard players set @s magic_level 4

execute as @s[advancements={wizardingworld:magic/broom=true}] unless score @s magic_level matches 5.. unless score @s timer matches 1.. run scoreboard players set @s magic_level 5

execute as @s[advancements={wizardingworld:magic/6=true}] unless score @s magic_level matches 6.. unless score @s timer matches 1.. run scoreboard players set @s magic_level 6

execute as @s[advancements={wizardingworld:magic/7=true}] unless score @s magic_level matches 7.. unless score @s timer matches 1.. run scoreboard players set @s magic_level 7

execute as @s[advancements={wizardingworld:magic/8=true}] unless score @s magic_level matches 8.. unless score @s timer matches 1.. run scoreboard players set @s magic_level 8

execute as @s[advancements={wizardingworld:magic/9=true}] unless score @s magic_level matches 9.. unless score @s timer matches 1.. run scoreboard players set @s magic_level 9




execute as @s[nbt={Inventory:[{components:{"minecraft:custom_data":{magic_wand:true},"minecraft:custom_model_data":9}}]}] unless score @s magic_level matches 10.. run scoreboard players set @s magic_level 10
execute as @s[nbt=!{Inventory:[{components:{"minecraft:custom_data":{magic_wand:true},"minecraft:custom_model_data":9}}]}] if score @s magic_level matches 10.. run scoreboard players set @s magic_level 0



