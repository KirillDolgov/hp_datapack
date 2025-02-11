execute if data entity @s {OnGround:0b} unless score @s fly_timer matches 1.. run scoreboard players set @s fly_timer 16


execute if score @s fly_timer matches 2 on passengers run data merge entity @s {item:{components:{"minecraft:custom_model_data":5}},transformation:{translation:[0.0,0.75,0.0],scale:[1.25,1.25,1.25]}}
execute if score @s fly_timer matches 4 on passengers run data merge entity @s {item:{components:{"minecraft:custom_model_data":6}},transformation:{translation:[0.0,0.75,0.0],scale:[1.25,1.25,1.25]}}
execute if score @s fly_timer matches 6 on passengers run data merge entity @s {item:{components:{"minecraft:custom_model_data":2}},transformation:{translation:[0.0,0.75,0.0],scale:[1.25,1.25,1.25]}}
execute if score @s fly_timer matches 8 on passengers run data merge entity @s {item:{components:{"minecraft:custom_model_data":3}},transformation:{translation:[0.0,0.75,0.0],scale:[1.25,1.25,1.25]}}
execute if score @s fly_timer matches 10 on passengers run data merge entity @s {item:{components:{"minecraft:custom_model_data":4}},transformation:{translation:[0.0,0.75,0.0],scale:[1.25,1.25,1.25]}}
execute if score @s fly_timer matches 12 on passengers run data merge entity @s {item:{components:{"minecraft:custom_model_data":3}},transformation:{translation:[0.0,0.75,0.0],scale:[1.25,1.25,1.25]}}
execute if score @s fly_timer matches 14 on passengers run data merge entity @s {item:{components:{"minecraft:custom_model_data":2}},transformation:{translation:[0.0,0.75,0.0],scale:[1.25,1.25,1.25]}}
execute if score @s fly_timer matches 16 on passengers run data merge entity @s {item:{components:{"minecraft:custom_model_data":6}},transformation:{translation:[0.0,0.75,0.0],scale:[1.25,1.25,1.25]}}


execute if data entity @s {OnGround:1b,Sitting:0b} unless score @s fly_timer matches 1.. on passengers run data merge entity @s {item:{components:{"minecraft:custom_model_data":7}},transformation:{translation:[0.0,-0.07,0.0],scale:[1.25,1.25,1.25]}}

execute if data entity @s {OnGround:1b,Sitting:1b} unless score @s fly_timer matches 1.. on passengers run data merge entity @s {item:{components:{"minecraft:custom_model_data":8}},transformation:{translation:[0.0,-0.07,0.0],scale:[1.25,1.25,1.25]}}

execute if score @s fly_timer matches 1.. run scoreboard players remove @s fly_timer 1