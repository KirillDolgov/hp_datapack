execute at @s positioned ^ ^ ^1.2 run particle minecraft:lava ~ ~1 ~ 0.1 0.1 0.1 0.01 10
execute at @s positioned ^ ^ ^2 run particle minecraft:lava ~ ~1 ~ 0.2 0.2 0.2 0.01 20
execute at @s positioned ^ ^ ^3 run particle minecraft:lava ~ ~1 ~ 0.3 0.3 0.3 0.01 30
execute at @s run playsound minecraft:entity.blaze.shoot player @a ~ ~ ~ 0.5 0.5 0
execute at @s run playsound minecraft:block.campfire.crackle player @a ~ ~ ~ 10 0.5 0
execute at @s run playsound minecraft:block.fire.ambient player @a ~ ~ ~ 10 0.5 0
scoreboard players remove @s mana 64000
execute at @s run summon phantom ^ ^3 ^3 {Tags:["fiendfyre"],Size:10,CustomName:'[{"text":"Fiendfyre"}]',PersistenceRequired:1b,active_effects:[{id:regeneration,duration:24000,amplifier:11,show_particles:0b},{id:fire_resistance,duration:24000,show_particles:0b}]}
