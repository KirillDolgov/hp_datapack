execute if score @s sneak matches 1.. if score @s rotation_timer matches -1000 if score @s magic_level matches 7 if score @s apparition matches 24000.. run scoreboard players set @s rotation_timer 20
execute if score @s sneak matches 1.. if score @s rotation_timer matches -1000 if score @s magic_level matches 8 if score @s apparition matches 12000.. run scoreboard players set @s rotation_timer 20
execute if score @s sneak matches 1.. if score @s rotation_timer matches -1000 if score @s magic_level matches 9 if score @s apparition matches 8000.. run scoreboard players set @s rotation_timer 20
execute if score @s sneak matches 1.. if score @s rotation_timer matches -1000 if score @s magic_level matches 10 if score @s apparition matches 6000.. run scoreboard players set @s rotation_timer 20


execute unless score @s sneak matches 1.. run scoreboard players set @s rotation_timer -999

execute as @s store result score @s rotation run data get entity @s Rotation[0]
scoreboard players add @s rotation 200
execute if score @s rotation_timer matches 20 run scoreboard players operation @s rotation_lc_in = @s rotation
execute if score @s rotation_timer matches 20 run scoreboard players remove @s rotation_lc_in 20
execute if score @s rotation_timer matches 20 run scoreboard players operation @s rotation_rc_in = @s rotation
execute if score @s rotation_timer matches 20 run scoreboard players add @s rotation_rc_in 20

execute if score @s rotation_timer matches 20 run scoreboard players operation @s rotation_op = @s rotation
execute if score @s rotation_timer matches 20 if score @s rotation matches 200.. run scoreboard players remove @s rotation_op 180
execute if score @s rotation_timer matches 20 if score @s rotation matches ..199 run scoreboard players add @s rotation_op 180
execute if score @s rotation_timer matches 20 run scoreboard players operation @s rotation_lc_out = @s rotation_op
execute if score @s rotation_timer matches 20 run scoreboard players remove @s rotation_lc_out 20
execute if score @s rotation_timer matches 20 run scoreboard players operation @s rotation_rc_out = @s rotation_op
execute if score @s rotation_timer matches 20 run scoreboard players add @s rotation_rc_out 20





execute as @s[tag=!in_sector] if score @s rotation_timer matches 1.. if score @s rotation >= @s rotation_lc_out if score @s rotation <= @s rotation_rc_out run tag @s add out_sector

execute as @s[tag=out_sector] if score @s rotation_timer matches 1.. if score @s rotation >= @s rotation_lc_in if score @s rotation <= @s rotation_rc_in run tag @s add in_sector

execute as @s[tag=in_sector] run scoreboard players reset @s rotation_rc_in
execute as @s[tag=in_sector] run scoreboard players reset @s rotation_lc_in
execute as @s[tag=in_sector] run scoreboard players reset @s rotation_rc_out
execute as @s[tag=in_sector] run scoreboard players reset @s rotation_lc_out


execute as @s[tag=in_sector] at @s run playsound item.chorus_fruit.teleport
execute as @s[tag=in_sector,nbt={SelectedItemSlot:0}] if score @s rotation_timer matches 1.. as @e[tag=0_point] if score @s id = @p[tag=in_sector,nbt={SelectedItemSlot:0}] id run tp @p[tag=in_sector,nbt={SelectedItemSlot:0}] @s
execute as @s[tag=in_sector,nbt={SelectedItemSlot:1}] if score @s rotation_timer matches 1.. as @e[tag=1_point] if score @s id = @p[tag=in_sector,nbt={SelectedItemSlot:1}] id run tp @p[tag=in_sector,nbt={SelectedItemSlot:1}] @s
execute as @s[tag=in_sector,nbt={SelectedItemSlot:2}] if score @s rotation_timer matches 1.. as @e[tag=2_point] if score @s id = @p[tag=in_sector,nbt={SelectedItemSlot:2}] id run tp @p[tag=in_sector,nbt={SelectedItemSlot:2}] @s
execute as @s[tag=in_sector,nbt={SelectedItemSlot:3}] if score @s rotation_timer matches 1.. as @e[tag=3_point] if score @s id = @p[tag=in_sector,nbt={SelectedItemSlot:3}] id run tp @p[tag=in_sector,nbt={SelectedItemSlot:3}] @s
execute as @s[tag=in_sector,nbt={SelectedItemSlot:4}] if score @s rotation_timer matches 1.. as @e[tag=4_point] if score @s id = @p[tag=in_sector,nbt={SelectedItemSlot:4}] id run tp @p[tag=in_sector,nbt={SelectedItemSlot:4}] @s
execute as @s[tag=in_sector,nbt={SelectedItemSlot:5}] if score @s rotation_timer matches 1.. as @e[tag=5_point] if score @s id = @p[tag=in_sector,nbt={SelectedItemSlot:5}] id run tp @p[tag=in_sector,nbt={SelectedItemSlot:5}] @s
execute as @s[tag=in_sector,nbt={SelectedItemSlot:6}] if score @s rotation_timer matches 1.. as @e[tag=6_point] if score @s id = @p[tag=in_sector,nbt={SelectedItemSlot:6}] id run tp @p[tag=in_sector,nbt={SelectedItemSlot:6}] @s
execute as @s[tag=in_sector,nbt={SelectedItemSlot:7}] if score @s rotation_timer matches 1.. as @e[tag=7_point] if score @s id = @p[tag=in_sector,nbt={SelectedItemSlot:7}] id run tp @p[tag=in_sector,nbt={SelectedItemSlot:7}] @s
execute as @s[tag=in_sector,nbt={SelectedItemSlot:8}] if score @s rotation_timer matches 1.. as @e[tag=8_point] if score @s id = @p[tag=in_sector,nbt={SelectedItemSlot:8}] id run tp @p[tag=in_sector,nbt={SelectedItemSlot:8}] @s
execute as @s[tag=in_sector] if score @s magic_level matches 7 run scoreboard players remove @s apparition 24000
execute as @s[tag=in_sector] if score @s magic_level matches 8 run scoreboard players remove @s apparition 12000
execute as @s[tag=in_sector] if score @s magic_level matches 9 run scoreboard players remove @s apparition 8000
execute as @s[tag=in_sector] if score @s magic_level matches 10 run scoreboard players remove @s apparition 6000
execute as @s[tag=in_sector] at @s run playsound item.chorus_fruit.teleport




execute as @s[tag=in_sector] run tag @s remove in_sector
execute unless score @s rotation_timer matches 1.. run tag @s remove out_sector
execute unless score @s rotation_timer matches 1.. run scoreboard players reset @s rotation_rc_in
execute unless score @s rotation_timer matches 1.. run scoreboard players reset @s rotation_lc_in
execute unless score @s rotation_timer matches 1.. run scoreboard players reset @s rotation_rc_out
execute unless score @s rotation_timer matches 1.. run scoreboard players reset @s rotation_lc_out


execute unless score @s rotation_timer matches -1000 run scoreboard players remove @s rotation_timer 1