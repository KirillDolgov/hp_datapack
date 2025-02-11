execute if data entity @s {OnGround:0b} unless score @s fly_timer matches 1.. run scoreboard players set @s fly_timer 16


execute if score @s fly_timer matches 2 on passengers run data merge entity @s {item:{components:{"minecraft:custom_model_data":21}},transformation:{translation:[0.0,0.375,0.0],scale:[0.625,0.625,0.625]}}
execute if score @s fly_timer matches 4 on passengers run data merge entity @s {item:{components:{"minecraft:custom_model_data":22}},transformation:{translation:[0.0,0.375,0.0],scale:[0.625,0.625,0.625]}}
execute if score @s fly_timer matches 6 on passengers run data merge entity @s {item:{components:{"minecraft:custom_model_data":18}},transformation:{translation:[0.0,0.375,0.0],scale:[0.625,0.625,0.625]}}
execute if score @s fly_timer matches 8 on passengers run data merge entity @s {item:{components:{"minecraft:custom_model_data":19}},transformation:{translation:[0.0,0.375,0.0],scale:[0.625,0.625,0.625]}}
execute if score @s fly_timer matches 10 on passengers run data merge entity @s {item:{components:{"minecraft:custom_model_data":20}},transformation:{translation:[0.0,0.375,0.0],scale:[0.625,0.625,0.625]}}
execute if score @s fly_timer matches 12 on passengers run data merge entity @s {item:{components:{"minecraft:custom_model_data":19}},transformation:{translation:[0.0,0.375,0.0],scale:[0.625,0.625,0.625]}}
execute if score @s fly_timer matches 14 on passengers run data merge entity @s {item:{components:{"minecraft:custom_model_data":18}},transformation:{translation:[0.0,0.375,0.0],scale:[0.625,0.625,0.625]}}
execute if score @s fly_timer matches 16 on passengers run data merge entity @s {item:{components:{"minecraft:custom_model_data":22}},transformation:{translation:[0.0,0.375,0.0],scale:[0.625,0.625,0.625]}}


execute if data entity @s {OnGround:1b,Sitting:0b} unless score @s fly_timer matches 1.. on passengers run data merge entity @s {item:{components:{"minecraft:custom_model_data":23}},transformation:{translation:[0.0,-0.035,0.0],scale:[0.625,0.625,0.625]}}

execute if data entity @s {OnGround:1b,Sitting:1b} unless score @s fly_timer matches 1.. on passengers run data merge entity @s {item:{components:{"minecraft:custom_model_data":24}},transformation:{translation:[0.0,-0.035,0.0],scale:[0.625,0.625,0.625]}}

execute if score @s fly_timer matches 1.. run scoreboard players remove @s fly_timer 1