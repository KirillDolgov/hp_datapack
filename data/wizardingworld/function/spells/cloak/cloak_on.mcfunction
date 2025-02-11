##execute in overworld positioned 0 -64 0 unless entity @n[tag=cloak,type=minecraft:armor_stand,distance=..1] run summon minecraft:armor_stand ~ ~ ~ {Silent:1b,Invisible:1b,NoAI:1b,NoGravity:1b,Tags:["cloak"],attributes:[{id:"generic.scale",base:0.0625}]}
scoreboard players operation @s armor += @s armor_head
scoreboard players operation @s armor += @s armor_chest
scoreboard players operation @s armor += @s armor_legs
scoreboard players operation @s armor += @s armor_feet

execute if score @s armor matches 1 run attribute @s generic.armor base set 1 
execute if score @s armor matches 2 run attribute @s generic.armor base set 2 
execute if score @s armor matches 3 run attribute @s generic.armor base set 3 
execute if score @s armor matches 4 run attribute @s generic.armor base set 4 
execute if score @s armor matches 5 run attribute @s generic.armor base set 5 
execute if score @s armor matches 6 run attribute @s generic.armor base set 6 
execute if score @s armor matches 7 run attribute @s generic.armor base set 7 
execute if score @s armor matches 8 run attribute @s generic.armor base set 8 
execute if score @s armor matches 9 run attribute @s generic.armor base set 9 
execute if score @s armor matches 10 run attribute @s generic.armor base set 10
execute if score @s armor matches 11 run attribute @s generic.armor base set 11
execute if score @s armor matches 12 run attribute @s generic.armor base set 12
execute if score @s armor matches 13 run attribute @s generic.armor base set 13
execute if score @s armor matches 14 run attribute @s generic.armor base set 14
execute if score @s armor matches 15 run attribute @s generic.armor base set 15
execute if score @s armor matches 16 run attribute @s generic.armor base set 16
execute if score @s armor matches 17 run attribute @s generic.armor base set 17
execute if score @s armor matches 18 run attribute @s generic.armor base set 18
execute if score @s armor matches 19 run attribute @s generic.armor base set 19
execute if score @s armor matches 20 run attribute @s generic.armor base set 20


scoreboard players set @s armor 0


execute in overworld positioned 0 -64 0 run data modify entity @n[tag=cloak,type=minecraft:armor_stand,distance=..1] ArmorItems[3] set from entity @s Inventory[{Slot:103b}]
execute in overworld positioned 0 -64 0 run data modify entity @n[tag=cloak,type=minecraft:armor_stand,distance=..1] ArmorItems[2] set from entity @s Inventory[{Slot:102b}]
execute in overworld positioned 0 -64 0 run data modify entity @n[tag=cloak,type=minecraft:armor_stand,distance=..1] ArmorItems[1] set from entity @s Inventory[{Slot:101b}]
execute in overworld positioned 0 -64 0 run data modify entity @n[tag=cloak,type=minecraft:armor_stand,distance=..1] ArmorItems[0] set from entity @s Inventory[{Slot:100b}]
execute if items entity @s weapon.mainhand *[custom_data~{invisibility_cloak:true},custom_model_data=11] run item replace entity @s weapon.mainhand with air
execute if items entity @s weapon.offhand *[custom_data~{invisibility_cloak:true},custom_model_data=11] run item replace entity @s weapon.offhand with air
item replace entity @s armor.head with warped_fungus_on_a_stick[custom_data={invisibility_cloak:true},item_name='{"text":"Invisibility Cloak"}',custom_model_data=11,rarity="epic"]
item replace entity @s armor.chest with air
item replace entity @s armor.legs with air
item replace entity @s armor.feet with air
tag @s add in_cloak