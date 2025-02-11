team join unpush @s
execute positioned ~ ~-1 ~ unless items entity @p[distance=..0.3] weapon.* *[custom_data~{magic_wand:true}] run tp @s ~ ~-1000 ~
execute positioned ~ ~-1 ~ unless entity @p[distance=..0.3] run tp @s ~ ~-1000 ~
execute positioned ~ ~-1 ~ as @p[distance=..0.3] at @s if score @s sneak matches 1.. if items entity @s weapon.* *[custom_data~{magic_wand:true}] positioned ~ ~1 ~ run tp @n[distance=..3,tag=menu] ~ ~ ~




execute unless entity @s[nbt={Items:[{Slot:0b}]}] run scoreboard players set @p choosen_spell 0
execute unless entity @s[nbt={Items:[{Slot:0b}]}] run tp @s ~ ~-1000 ~

execute unless entity @s[nbt={Items:[{Slot:1b}]}] run scoreboard players set @p choosen_spell 1
execute unless entity @s[nbt={Items:[{Slot:1b}]}] run tp @s ~ ~-1000 ~

execute unless entity @s[nbt={Items:[{Slot:2b}]}] run scoreboard players set @p choosen_spell 2
execute unless entity @s[nbt={Items:[{Slot:2b}]}] run tp @s ~ ~-1000 ~

execute unless entity @s[nbt={Items:[{Slot:3b}]}] run scoreboard players set @p choosen_spell 3
execute unless entity @s[nbt={Items:[{Slot:3b}]}] run tp @s ~ ~-1000 ~

execute unless entity @s[nbt={Items:[{Slot:4b}]}] run scoreboard players set @p choosen_spell 4
execute unless entity @s[nbt={Items:[{Slot:4b}]}] run tp @s ~ ~-1000 ~

execute unless entity @s[nbt={Items:[{Slot:5b}]}] run scoreboard players set @p choosen_spell 5
execute unless entity @s[nbt={Items:[{Slot:5b}]}] run tp @s ~ ~-1000 ~

execute unless entity @s[nbt={Items:[{Slot:6b}]}] run scoreboard players set @p choosen_spell 6
execute unless entity @s[nbt={Items:[{Slot:6b}]}] run tp @s ~ ~-1000 ~

execute unless entity @s[nbt={Items:[{Slot:7b}]}] run scoreboard players set @p choosen_spell 7
execute unless entity @s[nbt={Items:[{Slot:7b}]}] run tp @s ~ ~-1000 ~

execute unless entity @s[nbt={Items:[{Slot:8b}]}] run scoreboard players set @p choosen_spell 8
execute unless entity @s[nbt={Items:[{Slot:8b}]}] run tp @s ~ ~-1000 ~

execute unless entity @s[nbt={Items:[{Slot:9b}]}] run scoreboard players set @p choosen_spell 9
execute unless entity @s[nbt={Items:[{Slot:9b}]}] run tp @s ~ ~-1000 ~

execute unless entity @s[nbt={Items:[{Slot:10b}]}] run scoreboard players set @p choosen_spell 10
execute unless entity @s[nbt={Items:[{Slot:10b}]}] run tp @s ~ ~-1000 ~

execute unless entity @s[nbt={Items:[{Slot:11b}]}] run scoreboard players set @p choosen_spell 11
execute unless entity @s[nbt={Items:[{Slot:11b}]}] run tp @s ~ ~-1000 ~

execute unless entity @s[nbt={Items:[{Slot:12b}]}] run scoreboard players set @p choosen_spell 12
execute unless entity @s[nbt={Items:[{Slot:12b}]}] run tp @s ~ ~-1000 ~

execute unless entity @s[nbt={Items:[{Slot:13b}]}] run scoreboard players set @p choosen_spell 13
execute unless entity @s[nbt={Items:[{Slot:13b}]}] run tp @s ~ ~-1000 ~

execute unless entity @s[nbt={Items:[{Slot:14b}]}] run scoreboard players set @p choosen_spell 14
execute unless entity @s[nbt={Items:[{Slot:14b}]}] run tp @s ~ ~-1000 ~

execute unless entity @s[nbt={Items:[{Slot:15b}]}] run scoreboard players set @p choosen_spell 15
execute unless entity @s[nbt={Items:[{Slot:15b}]}] run tp @s ~ ~-1000 ~

execute unless entity @s[nbt={Items:[{Slot:16b}]}] run scoreboard players set @p choosen_spell 16
execute unless entity @s[nbt={Items:[{Slot:16b}]}] run tp @s ~ ~-1000 ~

execute unless entity @s[nbt={Items:[{Slot:17b}]}] run scoreboard players set @p choosen_spell 17
execute unless entity @s[nbt={Items:[{Slot:17b}]}] run tp @s ~ ~-1000 ~

execute unless entity @s[nbt={Items:[{Slot:18b}]}] run scoreboard players set @p choosen_spell 18
execute unless entity @s[nbt={Items:[{Slot:18b}]}] run tp @s ~ ~-1000 ~

execute unless entity @s[nbt={Items:[{Slot:19b}]}] run scoreboard players set @p choosen_spell 19
execute unless entity @s[nbt={Items:[{Slot:19b}]}] run tp @s ~ ~-1000 ~

execute unless entity @s[nbt={Items:[{Slot:20b}]}] run scoreboard players set @p choosen_spell 20
execute unless entity @s[nbt={Items:[{Slot:20b}]}] run tp @s ~ ~-1000 ~

execute unless entity @s[nbt={Items:[{Slot:21b}]}] run scoreboard players set @p choosen_spell 21
execute unless entity @s[nbt={Items:[{Slot:21b}]}] run tp @s ~ ~-1000 ~

execute unless entity @s[nbt={Items:[{Slot:22b}]}] run scoreboard players set @p choosen_spell 22
execute unless entity @s[nbt={Items:[{Slot:22b}]}] run tp @s ~ ~-1000 ~

execute unless entity @s[nbt={Items:[{Slot:23b}]}] run scoreboard players set @p choosen_spell 23
execute unless entity @s[nbt={Items:[{Slot:23b}]}] run tp @s ~ ~-1000 ~

#execute unless entity @s[nbt={Items:[{Slot:24b}]}] run scoreboard players set @p choosen_spell 24
#execute unless entity @s[nbt={Items:[{Slot:24b}]}] run tp @s ~ ~-1000 ~

#execute unless entity @s[nbt={Items:[{Slot:25b}]}] run scoreboard players set @p choosen_spell 25
#execute unless entity @s[nbt={Items:[{Slot:25b}]}] run tp @s ~ ~-1000 ~

#execute unless entity @s[nbt={Items:[{Slot:26b}]}] run scoreboard players set @p choosen_spell 26
execute unless entity @s[nbt={Items:[{Slot:26b}]}] run tp @s ~ ~-1000 ~
