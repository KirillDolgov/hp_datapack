team add unpush
team modify unpush collisionRule never
team add brooms
function wizardingworld:spells/create_imperio_teams

title @a times 0.25s 0.5s 0.25s
gamerule commandBlockOutput false
gamerule sendCommandFeedback false

scoreboard objectives add motion_x dummy
scoreboard objectives add motion_y dummy
scoreboard objectives add motion_z dummy
scoreboard objectives add y dummy

scoreboard objectives add wither_count dummy


scoreboard objectives add id dummy
scoreboard objectives add count dummy
scoreboard objectives add leave minecraft.custom:minecraft.leave_game
scoreboard players set old_count count 0
function wizardingworld:mana_display/id_reset



scoreboard objectives add click minecraft.used:minecraft.warped_fungus_on_a_stick
scoreboard objectives add sneak minecraft.custom:minecraft.sneak_time
scoreboard objectives add choosen_spell trigger
scoreboard objectives add mana dummy
scoreboard objectives add magic_level dummy
scoreboard objectives add totem minecraft.used:minecraft.totem_of_undying
scoreboard objectives add horse_move minecraft.custom:minecraft.horse_one_cm
scoreboard objectives add fermenting dummy
scoreboard objectives add broom_mana dummy
scoreboard objectives add click_wort dummy
scoreboard objectives add imperied dummy

scoreboard objectives add honor dummy
scoreboard objectives add damage minecraft.custom:minecraft.damage_dealt
scoreboard objectives add health dummy




scoreboard objectives add res_stone_timer_r dummy
scoreboard objectives add res_stone_timer_l dummy
scoreboard objectives add reborn_timer dummy
scoreboard objectives add timer dummy
scoreboard objectives add imperio_timer dummy
scoreboard objectives add fly_timer dummy
scoreboard objectives add freeze_timer dummy
scoreboard objectives add incendio_timer dummy


scoreboard objectives add armor_head dummy
scoreboard objectives add armor_chest dummy
scoreboard objectives add armor_legs dummy
scoreboard objectives add armor_feet dummy
scoreboard objectives add armor dummy


scoreboard objectives add rotation dummy
scoreboard objectives add rotation_lc_in dummy
scoreboard objectives add rotation_rc_in dummy
scoreboard objectives add rotation_op dummy
scoreboard objectives add rotation_lc_out dummy
scoreboard objectives add rotation_rc_out dummy
scoreboard objectives add rotation_timer dummy
scoreboard objectives add apparition dummy


setworldspawn 0 0 0
execute in overworld positioned 0 -64 0 unless entity @n[tag=cloak,type=minecraft:armor_stand,distance=..1] run summon minecraft:armor_stand ~ ~ ~ {ShowArms:1b,Silent:1b,Invisible:1b,NoAI:1b,NoGravity:1b,Tags:["cloak"],attributes:[{id:"generic.scale",base:0.0625}]}