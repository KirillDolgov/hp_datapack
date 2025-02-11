tellraw @a[distance=..50] [{"text": "<"},{"selector": "@s"},{"text": "> "},{"text": "Incendio!"}]


execute at @s run playsound minecraft:entity.blaze.shoot player @a ~ ~ ~ 0.5 0.75 0
execute at @s run playsound minecraft:block.campfire.crackle player @a ~ ~ ~ 10 0.75 0
execute at @s run playsound minecraft:block.fire.ambient player @a ~ ~ ~ 10 0.75 0

execute if score @s magic_level matches 1.. positioned ^ ^1 ^1 run particle flame ~ ~ ~ 0 0 0 0 1
execute if score @s magic_level matches 2.. positioned ^ ^1 ^1.5 run particle flame ~ ~ ~ 0.1 0.1 0.1 0 2
execute if score @s magic_level matches 3.. positioned ^ ^1 ^2.5 run particle flame ~ ~ ~ 0.2 0.2 0.2 0 3
execute if score @s magic_level matches 4.. positioned ^ ^1 ^3 run particle flame ~ ~ ~ 0.3 0.3 0.3 0 4
execute if score @s magic_level matches 5.. positioned ^ ^1 ^3.5 run particle flame ~ ~ ~ 0.4 0.4 0.4 0 5
execute if score @s magic_level matches 6.. positioned ^ ^1 ^4 run particle flame ~ ~ ~ 0.5 0.5 0.5 0 6
execute if score @s magic_level matches 7.. positioned ^ ^1 ^4.5 run particle flame ~ ~ ~ 0.6 0.6 0.6 0 7
execute if score @s magic_level matches 8.. positioned ^ ^1 ^5 run particle flame ~ ~ ~ 0.7 0.7 0.7 0 8
execute if score @s magic_level matches 9.. positioned ^ ^1 ^5.5 run particle flame ~ ~ ~ 0.8 0.8 0.8 0 9
execute if score @s magic_level matches 10.. positioned ^ ^1 ^6 run particle flame ~ ~ ~ 0.9 0.9 0.9 0 10







scoreboard players remove @s[scores={magic_level=1}] mana 2000
scoreboard players remove @s[scores={magic_level=2}] mana 4000
scoreboard players remove @s[scores={magic_level=3}] mana 6000
scoreboard players remove @s[scores={magic_level=4}] mana 8000
scoreboard players remove @s[scores={magic_level=5}] mana 10000
scoreboard players remove @s[scores={magic_level=6}] mana 12000
scoreboard players remove @s[scores={magic_level=7}] mana 14000
scoreboard players remove @s[scores={magic_level=8}] mana 16000
scoreboard players remove @s[scores={magic_level=9}] mana 18000
scoreboard players remove @s[scores={magic_level=10}] mana 20000