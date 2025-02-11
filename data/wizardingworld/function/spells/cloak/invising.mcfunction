#execute at @s positioned ~ -64 ~ run tp @n[tag=cloak,distance=..3] ~ ~ ~
effect give @s invisibility infinite 0 true


execute if items entity @s armor.chest * run item replace entity @s player.cursor from entity @s armor.chest
execute if items entity @s armor.legs * run item replace entity @s player.cursor from entity @s armor.legs
execute if items entity @s armor.feet * run item replace entity @s player.cursor from entity @s armor.feet

item replace entity @s armor.chest with air
item replace entity @s armor.legs with air
item replace entity @s armor.feet with air


execute unless items entity @s armor.head *[custom_data={invisibility_cloak:true}] run item replace entity @s player.crafting.0 from entity @s armor.head
execute unless items entity @s armor.head *[custom_data={invisibility_cloak:true}] run function wizardingworld:spells/cloak/cloak_off