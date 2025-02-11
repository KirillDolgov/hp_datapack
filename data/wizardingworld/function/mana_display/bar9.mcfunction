execute if score @s magic_level matches 1 run bossbar set mana9 max 2000
execute if score @s magic_level matches 2 run bossbar set mana9 max 8000
execute if score @s magic_level matches 3 run bossbar set mana9 max 18000
execute if score @s magic_level matches 4 run bossbar set mana9 max 32000
execute if score @s magic_level matches 5 run bossbar set mana9 max 50000
execute if score @s magic_level matches 6 run bossbar set mana9 max 72000
execute if score @s magic_level matches 7 run bossbar set mana9 max 98000
execute if score @s magic_level matches 8 run bossbar set mana9 max 128000
execute if score @s magic_level matches 9 run bossbar set mana9 max 162000
execute if score @s magic_level matches 10 run bossbar set mana9 max 200000

bossbar set mana9 players @s
bossbar set mana9 visible true
execute store result bossbar mana9 value run scoreboard players get @s mana