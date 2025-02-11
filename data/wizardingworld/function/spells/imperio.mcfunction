execute if score @s imperied matches 1 if score @s imperio_timer matches 1200 run team join imperio_1 @s
execute if score @s imperied matches 2 if score @s imperio_timer matches 1200 run team join imperio_2 @s
execute if score @s imperied matches 3 if score @s imperio_timer matches 1200 run team join imperio_3 @s
execute if score @s imperied matches 4 if score @s imperio_timer matches 1200 run team join imperio_4 @s
execute if score @s imperied matches 5 if score @s imperio_timer matches 1200 run team join imperio_5 @s
execute if score @s imperied matches 6 if score @s imperio_timer matches 1200 run team join imperio_6 @s
execute if score @s imperied matches 7 if score @s imperio_timer matches 1200 run team join imperio_7 @s
execute if score @s imperied matches 8 if score @s imperio_timer matches 1200 run team join imperio_8 @s
execute if score @s imperied matches 9 if score @s imperio_timer matches 1200 run team join imperio_9 @s
execute if score @s imperied matches 10 if score @s imperio_timer matches 1200 run team join imperio_10 @s


particle entity_effect{color:[0.65,1.0,0.0,1.0]} ~ ~ ~ 0.2 1 0.2 10 2
execute if score @s imperio_timer matches 1200 run effect give @s speed 60 0 true
execute if score @s imperio_timer matches 1200 run effect give @s strength 60 0 true
execute if score @s imperio_timer matches 1200 run effect give @s regeneration 60 0 true




execute if score @s imperied matches 1 as @p[team=imperio_1] if data entity @s {HurtTime:8s} on attacker run damage @n[team=imperio_1,type=!player] 0.0 arrow by @s
execute if score @s imperied matches 2 as @p[team=imperio_2] if data entity @s {HurtTime:8s} on attacker run damage @n[team=imperio_2,type=!player] 0.0 arrow by @s
execute if score @s imperied matches 3 as @p[team=imperio_3] if data entity @s {HurtTime:8s} on attacker run damage @n[team=imperio_3,type=!player] 0.0 arrow by @s
execute if score @s imperied matches 4 as @p[team=imperio_4] if data entity @s {HurtTime:8s} on attacker run damage @n[team=imperio_4,type=!player] 0.0 arrow by @s
execute if score @s imperied matches 5 as @p[team=imperio_5] if data entity @s {HurtTime:8s} on attacker run damage @n[team=imperio_5,type=!player] 0.0 arrow by @s
execute if score @s imperied matches 6 as @p[team=imperio_6] if data entity @s {HurtTime:8s} on attacker run damage @n[team=imperio_6,type=!player] 0.0 arrow by @s
execute if score @s imperied matches 7 as @p[team=imperio_7] if data entity @s {HurtTime:8s} on attacker run damage @n[team=imperio_7,type=!player] 0.0 arrow by @s
execute if score @s imperied matches 8 as @p[team=imperio_8] if data entity @s {HurtTime:8s} on attacker run damage @n[team=imperio_8,type=!player] 0.0 arrow by @s
execute if score @s imperied matches 9 as @p[team=imperio_9] if data entity @s {HurtTime:8s} on attacker run damage @n[team=imperio_9,type=!player] 0.0 arrow by @s
execute if score @s imperied matches 10 as @p[team=imperio_10] if data entity @s {HurtTime:8s} on attacker run damage @n[team=imperio_10,type=!player] 0.0 arrow by @s


























execute if score @s imperied matches 1 if score @s imperio_timer matches ..1 run team leave @s
execute if score @s imperied matches 2 if score @s imperio_timer matches ..1 run team leave @s
execute if score @s imperied matches 3 if score @s imperio_timer matches ..1 run team leave @s
execute if score @s imperied matches 4 if score @s imperio_timer matches ..1 run team leave @s
execute if score @s imperied matches 5 if score @s imperio_timer matches ..1 run team leave @s
execute if score @s imperied matches 6 if score @s imperio_timer matches ..1 run team leave @s
execute if score @s imperied matches 7 if score @s imperio_timer matches ..1 run team leave @s
execute if score @s imperied matches 8 if score @s imperio_timer matches ..1 run team leave @s
execute if score @s imperied matches 9 if score @s imperio_timer matches ..1 run team leave @s
execute if score @s imperied matches 10 if score @s imperio_timer matches ..1 run team leave @s



execute if score @s imperio_timer matches ..1 run scoreboard players reset @s imperied