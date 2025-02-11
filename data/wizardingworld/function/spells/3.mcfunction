execute at @s run effect clear @e[distance=1..25,tag=!chest,tag=!magic_crafting_table] minecraft:invisibility
tellraw @a[distance=..50] [{"text": "<"},{"selector": "@s"},{"text": "> "},{"text": "Revelio!"}]
execute at @s run effect give @e[distance=1..25,tag=!magic_crafting_table] minecraft:glowing 10 0 true
execute at @s run playsound minecraft:entity.wither.shoot player @a ~ ~ ~ 0.2 0.5 0
scoreboard players remove @s mana 2000
function wizardingworld:spells/revelio