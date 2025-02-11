execute as @s[tag=drunk_1] if score @s timer matches 10801..12000 unless data entity @s {active_effects:[{id:"minecraft:poison"}]} run effect give @s minecraft:poison 60 0 true
execute as @s[tag=drunk_1] if score @s timer matches 9601..12000 unless data entity @s {active_effects:[{id:"minecraft:nausea"}]} run effect give @s nausea 120 0 true
execute as @s[tag=drunk_1] if score @s timer matches 6001..12000 unless data entity @s {active_effects:[{id:"minecraft:hunger"}]} run effect give @s hunger 300 0 true
execute as @s[tag=drunk_1] if score @s timer matches 6001..12000 unless data entity @s {active_effects:[{id:"minecraft:slowness"}]} run effect give @s slowness 300 0 true
execute as @s[tag=drunk_1] if score @s timer matches 6001..12000 unless data entity @s {active_effects:[{id:"minecraft:mining_fatigue"}]} run effect give @s mining_fatigue 300 0 true
execute as @s[tag=drunk_1] if score @s timer matches 6001..12000 unless data entity @s {active_effects:[{id:"minecraft:weakness"}]} run effect give @s weakness 300 0 true
execute as @s[tag=drunk_1] if score @s timer matches 1..12000 run attribute @s generic.max_health base set 16
execute as @s[tag=drunk_1] unless score @s timer matches 1.. run attribute @s generic.max_health base set 20
execute as @s[tag=drunk_1] unless score @s timer matches 1.. run tag @s remove drunk_1


execute as @s[tag=drunk_2] if score @s timer matches 10801..12000 unless data entity @s {active_effects:[{id:"minecraft:poison"}]} run effect give @s minecraft:poison 60 1 true
execute as @s[tag=drunk_2] if score @s timer matches 9601..12000 unless data entity @s {active_effects:[{id:"minecraft:nausea"}]} run effect give @s nausea 120 1 true
execute as @s[tag=drunk_2] if score @s timer matches 6001..12000 unless data entity @s {active_effects:[{id:"minecraft:hunger"}]} run effect give @s hunger 300 1 true
execute as @s[tag=drunk_2] if score @s timer matches 6001..12000 unless data entity @s {active_effects:[{id:"minecraft:slowness"}]} run effect give @s slowness 300 1 true
execute as @s[tag=drunk_2] if score @s timer matches 6001..12000 unless data entity @s {active_effects:[{id:"minecraft:mining_fatigue"}]} run effect give @s mining_fatigue 300 1 true
execute as @s[tag=drunk_2] if score @s timer matches 6001..12000 unless data entity @s {active_effects:[{id:"minecraft:weakness"}]} run effect give @s weakness 300 1 true
execute as @s[tag=drunk_2] if score @s timer matches 1..12000 run attribute @s generic.max_health base set 12
execute as @s[tag=drunk_2] unless score @s timer matches 1.. run attribute @s generic.max_health base set 20
execute as @s[tag=drunk_2] unless score @s timer matches 1.. run tag @s remove drunk_2


execute as @s[tag=drunk_3] if score @s timer matches 10801..12000 unless data entity @s {active_effects:[{id:"minecraft:poison"}]} run effect give @s minecraft:poison 60 2 true
execute as @s[tag=drunk_3] if score @s timer matches 9601..12000 unless data entity @s {active_effects:[{id:"minecraft:nausea"}]} run effect give @s nausea 120 2 true
execute as @s[tag=drunk_3] if score @s timer matches 6001..12000 unless data entity @s {active_effects:[{id:"minecraft:hunger"}]} run effect give @s hunger 300 2 true
execute as @s[tag=drunk_3] if score @s timer matches 6001..12000 unless data entity @s {active_effects:[{id:"minecraft:slowness"}]} run effect give @s slowness 300 2 true
execute as @s[tag=drunk_3] if score @s timer matches 6001..12000 unless data entity @s {active_effects:[{id:"minecraft:mining_fatigue"}]} run effect give @s mining_fatigue 300 2 true
execute as @s[tag=drunk_3] if score @s timer matches 6001..12000 unless data entity @s {active_effects:[{id:"minecraft:weakness"}]} run effect give @s weakness 300 2 true
execute as @s[tag=drunk_3] if score @s timer matches 1..12000 run attribute @s generic.max_health base set 8
execute as @s[tag=drunk_3] unless score @s timer matches 1.. run attribute @s generic.max_health base set 20
execute as @s[tag=drunk_3] unless score @s timer matches 1.. run tag @s remove drunk_3


execute as @s[tag=upped1] if score @s timer matches 12000 run scoreboard players remove @s magic_level 2
execute as @s[tag=upped1] if score @s timer matches 1 run scoreboard players add @s magic_level 1
execute as @s[tag=upped1] if score @s timer matches 1 run tag @s remove upped1
execute as @s[tag=upped2] if score @s timer matches 12000 run scoreboard players remove @s magic_level 4
execute as @s[tag=upped2] if score @s timer matches 1 run scoreboard players add @s magic_level 2
execute as @s[tag=upped2] if score @s timer matches 1 run tag @s remove upped2
execute as @s[tag=upped3] if score @s timer matches 12000 run scoreboard players remove @s magic_level 6
execute as @s[tag=upped3] if score @s timer matches 1 run scoreboard players add @s magic_level 3
execute as @s[tag=upped3] if score @s timer matches 1 run tag @s remove upped3


execute unless score @s timer matches 1.. run tag @s remove drunk