execute unless data entity @s {Health:20.0f} run function wizardingworld:mobs/broom/broom_die

execute unless score @s broom_mana matches -1.. run function wizardingworld:mobs/broom/broom_born


execute as @s[tag=!h_lvl_0] at @s if data entity @s {OnGround:0b} run attribute @s generic.movement_speed base set 1.4
execute as @s[tag=!h_lvl_0] at @s if data entity @s {OnGround:1b} run attribute @s generic.movement_speed base set 0.6
execute as @s[tag=h_lvl_0] run attribute @s generic.movement_speed base set 0



execute as @s[tag=!h_lvl_0] on passengers if entity @s[x_rotation=-90..-15] on vehicle run attribute @s generic.gravity base set -0.08
execute as @s[tag=!h_lvl_0] on passengers if entity @s[x_rotation=-14..34] on vehicle if data entity @s {OnGround:0b} run attribute @s generic.gravity base set 0
execute as @s[tag=!h_lvl_0] on passengers if entity @s[x_rotation=-14..34] on vehicle if data entity @s {OnGround:1b} run attribute @s generic.gravity base set 0.08
execute as @s[tag=!h_lvl_0] on passengers if entity @s[x_rotation=35..90] on vehicle run attribute @s generic.gravity base set 0.08
execute as @s[tag=h_lvl_0] run attribute @s generic.gravity base set 0



execute on passengers if entity @s on vehicle run tag @s add rided
attribute @s[tag=!rided] generic.gravity base set 0
execute at @s[tag=rided] if data entity @n[type=item,distance=..1] {Item:{components:{"minecraft:potion_contents":{custom_effects:[{duration:200,show_icon:1b,id:"minecraft:levitation"}],custom_color:16777215}},count:1,id:"minecraft:potion"}} run scoreboard players add @s broom_mana 16
execute at @s[tag=rided] if data entity @n[type=item,distance=..1] {Item:{components:{"minecraft:potion_contents":{custom_effects:[{duration:200,show_icon:1b,id:"minecraft:levitation"}],custom_color:16777215}},count:1,id:"minecraft:potion"}} run function wizardingworld:mobs/broom/broom_change_lvl
execute at @s[tag=rided] as @n[type=item,distance=..1] if data entity @s {Item:{components:{"minecraft:potion_contents":{custom_effects:[{duration:200,show_icon:1b,id:"minecraft:levitation"}],custom_color:16777215}},count:1,id:"minecraft:potion"}} run kill @s
tag @s[tag=rided] remove rided



execute on passengers if score @s horse_move matches 150000.. on vehicle run function wizardingworld:mobs/broom/broom_remove_one_mana


execute unless items entity @s horse.saddle saddle run function wizardingworld:mobs/broom/broom_change_lvl



execute if score @s broom_mana matches ..-1 run function wizardingworld:mobs/broom/broom_change_lvl
execute if score @s broom_mana matches 47.. run function wizardingworld:mobs/broom/broom_change_lvl
execute as @s[team=!brooms] run team join brooms @s


