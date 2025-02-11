execute unless score @s reborn_timer matches 1.. run scoreboard players set @s reborn_timer 600
execute if score @s reborn_timer matches 1.. run scoreboard players remove @s reborn_timer 1



#execute if score @s reborn_timer matches 599 run data merge entity @s {NoAI:1b}
execute if score @s reborn_timer matches 599 run effect give @s resistance 18 3 true

execute if score @s reborn_timer matches 599 run attribute @s generic.flying_speed base set 0
execute if score @s reborn_timer matches 599 run attribute @s generic.movement_speed base set 0.0
execute if score @s reborn_timer matches 599 positioned over motion_blocking align xyz run summon item_display ~0.5 ~ ~0.5 {item:{id:debug_stick,components:{enchantment_glint_override:false,custom_model_data:17}},transformation:{left_rotation:[0.0,0.0,0.0,1.0],right_rotation:[0.0,0.0,0.0,1.0],scale:[0.0,0.0,0.0],translation:[0.0,0.5,0.0]},Tags:["ash"]}
execute unless entity @n[tag=ash,distance=..1] facing entity @n[tag=ash] feet run tp @s ^ ^ ^0.25
execute if entity @n[tag=ash,distance=0.01..1] at @n[tag=ash,distance=0.01..1] run tp @s ~ ~ ~
#execute if entity @n[tag=ash,distance=..1] run data merge entity @s {NoAI:1b}




execute if score @s reborn_timer matches 399 run playsound wizarding_world:phoenix.reborn player @a ~ ~ ~ 1 1 0
execute if score @s[tag=baby] reborn_timer matches 349..399 run particle lava ~ ~0.325 ~ 0.05 0.05 0.05 0 2
execute if score @s[tag=!baby] reborn_timer matches 349..399 run particle lava ~ ~0.75 ~ 0.05 0.05 0.05 0 2
execute if score @s reborn_timer matches 349 run fill ~ ~ ~ ~ ~ ~ fire replace #non_solid
execute if score @s reborn_timer matches 319 run tag @s add invisible_phoenix
execute if score @s reborn_timer matches 319 on passengers run kill @s
execute if score @s reborn_timer matches 319 as @n[tag=ash] run data merge entity @s {transformation:{scale:[1.0,1.0,1.0]}}
execute if score @s reborn_timer matches 249 run fill ~ ~ ~ ~ ~ ~ air replace fire
execute if score @s reborn_timer matches 249 run effect give @s regeneration 3 255 true
execute if score @s reborn_timer matches 249 run data merge entity @s {Fire:-1s}


execute if score @s reborn_timer matches 0..249 run particle smoke ~ ~ ~ 0.1 0.1 0.1 0 3


execute if score @s reborn_timer matches 33..99 run function wizardingworld:mobs/phoenix/shamble_sound
execute if score @s reborn_timer matches 66..99 at @n[tag=ash] run particle ash ~ ~ ~ 0.125 0.125 0.125 0 500
execute if score @s reborn_timer matches 33..65 at @n[tag=ash] run particle ash ~ ~ ~ 0.175 0.175 0.175 0 500
execute if score @s reborn_timer matches 33 run tag @s add baby
execute if score @s reborn_timer matches 33 run tag @s remove invisible_phoenix
execute if score @s reborn_timer matches 0..32 at @n[tag=ash] run particle ash ~ ~ ~ 0.25 0.25 0.25 0 500



execute if score @s reborn_timer matches 0 run kill @n[tag=ash]


#execute if score @s reborn_timer matches 0 run data merge entity @s {NoAI:0b}
execute if score @s reborn_timer matches 0 run attribute @s generic.flying_speed base set 20
execute if score @s reborn_timer matches 0 run attribute @s minecraft:generic.movement_speed base set 0.6
execute if score @s reborn_timer matches 0 run tag @s remove reborn
execute if score @s reborn_timer matches 0 run scoreboard players reset @s reborn_timer
