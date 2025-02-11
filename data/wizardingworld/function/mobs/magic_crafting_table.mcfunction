##execute at @s positioned ~ ~0.5 ~ unless entity @n[type=chest_minecart,tag=magic_crafting_table,distance=..0.1] run summon chest_minecart ~ ~ ~ {Invulnerable:1b,Silent:1b,NoGravity:1b,Tags:["invisible_minecart","magic_crafting_table"],DisplayState:{Name:"minecraft:air"},CustomDisplayTile:1b,Items:[{Slot:26,id:"barrier",count:1,components:{custom_model_data:2,hide_tooltip:{},custom_data:{ui_display:true}}}]}
execute at @s positioned ~ ~0.5 ~ unless entity @n[type=chest_minecart,tag=magic_crafting_table,distance=..0.1] run summon chest_minecart ~ ~ ~ {Invulnerable:1b,Silent:1b,NoGravity:1b,Tags:["invisible_minecart","magic_crafting_table"],DisplayState:{Name:"minecraft:air"},CustomDisplayTile:1b}
##execute at @s positioned ~ ~-2.2 ~ unless entity @n[type=armor_stand,tag=magic_crafting_table,distance=..0.1] run summon armor_stand ~ ~ ~ {Invulnerable:1b,Silent:1b,NoGravity:1b,Tags:["magic_crafting_table"],DisabledSlots:2096896,ArmorItems:[{},{},{},{id:"minecraft:shulker_spawn_egg",components:{"custom_model_data":1}}],Invisible:1b,attributes:[{id:"generic.scale",base:1.6}]}
execute at @s unless entity @n[type=item_display,tag=magic_crafting_table,distance=..0.1] run summon item_display ~ ~ ~ {Tags:["magic_crafting_table"],item:{id:"minecraft:shulker_spawn_egg",components:{custom_model_data:1}},item_display:"fixed",transformation:{left_rotation:[0.0,0.0,0.0,1.0],right_rotation:[0.0,0.0,0.0,1.0],scale:[2.0,2.0,2.0],translation:[0.0,0.5,0.0]}}
tag @s[nbt={Health:30.0f}] add unbroken
tag @s[tag=!unbroken] add broken
execute at @s[tag=broken] run summon item ~ ~ ~ {Item:{id:"shulker_spawn_egg",count:1,components:{"minecraft:entity_data":{NoGravity:1b,"active_effects":[{id:"invisibility",duration:-1b,show_particles:0b}],Health:30b,Silent:1b,attributes:[{id:"generic.max_health",base:30b}],id:"shulker",NoAI:1b,Tags:["magic_crafting_table"]},"custom_model_data":1,"minecraft:item_name":'{"text": "Magic Crafting Table"}',"custom_data":{"magic_crafting_table":1b}}}}
execute as @s[tag=broken] at @s run tp @s ~ ~-1000 ~
tag @s[tag=broken] remove broken
tag @s[tag=unbroken] remove unbroken
execute as @e[tag=magic_crafting_table,type=chest_minecart] at @s positioned ~ ~-0.5 ~ unless entity @n[tag=magic_crafting_table,type=shulker,distance=..0.1] run tp @s ~ ~-1000 ~
##execute as @e[tag=magic_crafting_table,type=armor_stand] at @s positioned ~ ~2.2 ~ unless entity @n[tag=magic_crafting_table,type=shulker,distance=..0.1] run tp @s ~ ~-1000 ~
execute as @e[tag=magic_crafting_table,type=item_display] at @s unless entity @n[tag=magic_crafting_table,type=shulker,distance=..0.1] run tp @s ~ ~-1000 ~
team join unpush @e[tag=magic_crafting_table,type=chest_minecart]

