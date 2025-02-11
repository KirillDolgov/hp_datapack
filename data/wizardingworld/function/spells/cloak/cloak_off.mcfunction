attribute @s generic.armor base set 0
execute at @s positioned 0 -64 0 run item replace entity @s armor.head from entity @n[tag=cloak,distance=..3] armor.head
execute at @s positioned 0 -64 0 run item replace entity @s armor.chest from entity @n[tag=cloak,distance=..3] armor.chest
execute at @s positioned 0 -64 0 run item replace entity @s armor.legs from entity @n[tag=cloak,distance=..3] armor.legs
execute at @s positioned 0 -64 0 run item replace entity @s armor.feet from entity @n[tag=cloak,distance=..3] armor.feet
##execute at @s positioned 0 -64 0 run kill @n[tag=cloak,distance=..3]
execute positioned 0 -64 0 run item replace entity @n[tag=cloak,distance=..3] armor.head with air
execute positioned 0 -64 0 run item replace entity @n[tag=cloak,distance=..3] armor.chest with air
execute positioned 0 -64 0 run item replace entity @n[tag=cloak,distance=..3] armor.legs with air
execute positioned 0 -64 0 run item replace entity @n[tag=cloak,distance=..3] armor.feet with air
effect clear @s invisibility
tag @s remove in_cloak