execute if data entity @s {SelectedItemSlot:0} as @e[tag=0_point] if score @s id = @p id run tp @s ~ ~-1000 ~
execute if data entity @s {SelectedItemSlot:1} as @e[tag=1_point] if score @s id = @p id run tp @s ~ ~-1000 ~
execute if data entity @s {SelectedItemSlot:2} as @e[tag=2_point] if score @s id = @p id run tp @s ~ ~-1000 ~
execute if data entity @s {SelectedItemSlot:3} as @e[tag=3_point] if score @s id = @p id run tp @s ~ ~-1000 ~
execute if data entity @s {SelectedItemSlot:4} as @e[tag=4_point] if score @s id = @p id run tp @s ~ ~-1000 ~
execute if data entity @s {SelectedItemSlot:5} as @e[tag=5_point] if score @s id = @p id run tp @s ~ ~-1000 ~
execute if data entity @s {SelectedItemSlot:6} as @e[tag=6_point] if score @s id = @p id run tp @s ~ ~-1000 ~
execute if data entity @s {SelectedItemSlot:7} as @e[tag=7_point] if score @s id = @p id run tp @s ~ ~-1000 ~
execute if data entity @s {SelectedItemSlot:8} as @e[tag=8_point] if score @s id = @p id run tp @s ~ ~-1000 ~


execute if data entity @s {SelectedItemSlot:0} as @e[tag=0_point] if score @s id = @p id at @s run forceload remove ~ ~
execute if data entity @s {SelectedItemSlot:1} as @e[tag=1_point] if score @s id = @p id at @s run forceload remove ~ ~
execute if data entity @s {SelectedItemSlot:2} as @e[tag=2_point] if score @s id = @p id at @s run forceload remove ~ ~
execute if data entity @s {SelectedItemSlot:3} as @e[tag=3_point] if score @s id = @p id at @s run forceload remove ~ ~
execute if data entity @s {SelectedItemSlot:4} as @e[tag=4_point] if score @s id = @p id at @s run forceload remove ~ ~
execute if data entity @s {SelectedItemSlot:5} as @e[tag=5_point] if score @s id = @p id at @s run forceload remove ~ ~
execute if data entity @s {SelectedItemSlot:6} as @e[tag=6_point] if score @s id = @p id at @s run forceload remove ~ ~
execute if data entity @s {SelectedItemSlot:7} as @e[tag=7_point] if score @s id = @p id at @s run forceload remove ~ ~
execute if data entity @s {SelectedItemSlot:8} as @e[tag=8_point] if score @s id = @p id at @s run forceload remove ~ ~


execute if data entity @s {SelectedItemSlot:0} run summon armor_stand ~ ~ ~ {Tags:["point","0_point"],attributes:[{id:"generic.scale",base:0.0625}],Invisible:1b,Invulnerable:1b,Silent:1b,Small:1b,NoAI:1b,NoGravity:1b}
execute if data entity @s {SelectedItemSlot:1} run summon armor_stand ~ ~ ~ {Tags:["point","1_point"],attributes:[{id:"generic.scale",base:0.0625}],Invisible:1b,Invulnerable:1b,Silent:1b,Small:1b,NoAI:1b,NoGravity:1b}
execute if data entity @s {SelectedItemSlot:2} run summon armor_stand ~ ~ ~ {Tags:["point","2_point"],attributes:[{id:"generic.scale",base:0.0625}],Invisible:1b,Invulnerable:1b,Silent:1b,Small:1b,NoAI:1b,NoGravity:1b}
execute if data entity @s {SelectedItemSlot:3} run summon armor_stand ~ ~ ~ {Tags:["point","3_point"],attributes:[{id:"generic.scale",base:0.0625}],Invisible:1b,Invulnerable:1b,Silent:1b,Small:1b,NoAI:1b,NoGravity:1b}
execute if data entity @s {SelectedItemSlot:4} run summon armor_stand ~ ~ ~ {Tags:["point","4_point"],attributes:[{id:"generic.scale",base:0.0625}],Invisible:1b,Invulnerable:1b,Silent:1b,Small:1b,NoAI:1b,NoGravity:1b}
execute if data entity @s {SelectedItemSlot:5} run summon armor_stand ~ ~ ~ {Tags:["point","5_point"],attributes:[{id:"generic.scale",base:0.0625}],Invisible:1b,Invulnerable:1b,Silent:1b,Small:1b,NoAI:1b,NoGravity:1b}
execute if data entity @s {SelectedItemSlot:6} run summon armor_stand ~ ~ ~ {Tags:["point","6_point"],attributes:[{id:"generic.scale",base:0.0625}],Invisible:1b,Invulnerable:1b,Silent:1b,Small:1b,NoAI:1b,NoGravity:1b}
execute if data entity @s {SelectedItemSlot:7} run summon armor_stand ~ ~ ~ {Tags:["point","7_point"],attributes:[{id:"generic.scale",base:0.0625}],Invisible:1b,Invulnerable:1b,Silent:1b,Small:1b,NoAI:1b,NoGravity:1b}
execute if data entity @s {SelectedItemSlot:8} run summon armor_stand ~ ~ ~ {Tags:["point","8_point"],attributes:[{id:"generic.scale",base:0.0625}],Invisible:1b,Invulnerable:1b,Silent:1b,Small:1b,NoAI:1b,NoGravity:1b}

forceload add ~ ~

execute at @s positioned ~ ~ ~ store result score @n[tag=point] id run scoreboard players get @s id

execute at @s run playsound minecraft:entity.wither.shoot player @a ~ ~ ~ 0.2 0.5 0