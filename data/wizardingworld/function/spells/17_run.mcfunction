execute at @s[tag=!explosion] unless block ^ ^ ^1 air run tag @s add explosion
execute at @s[tag=explosion,tag=lvl5] run summon creeper ^ ^ ^1 {CustomName:'{"text":"Bombarda"}',Fuse:0,ExplosionRadius:9,Invulnerable:1b,NoAI:1b,NoGravity:1b,Silent:1b}
execute at @s[tag=explosion,tag=lvl6] run summon creeper ^ ^ ^1 {CustomName:'{"text":"Bombarda"}',Fuse:0,ExplosionRadius:9,Invulnerable:1b,NoAI:1b,NoGravity:1b,Silent:1b}
execute at @s[tag=explosion,tag=lvl7] run summon creeper ^ ^ ^1 {CustomName:'{"text":"Bombarda"}',Fuse:0,ExplosionRadius:10,Invulnerable:1b,NoAI:1b,NoGravity:1b,Silent:1b}
execute at @s[tag=explosion,tag=lvl8] run summon creeper ^ ^ ^1 {CustomName:'{"text":"Bombarda"}',Fuse:0,ExplosionRadius:10,Invulnerable:1b,NoAI:1b,NoGravity:1b,Silent:1b}
execute at @s[tag=explosion,tag=lvl9] run summon creeper ^ ^ ^1 {CustomName:'{"text":"Bombarda"}',Fuse:0,ExplosionRadius:11,Invulnerable:1b,NoAI:1b,NoGravity:1b,Silent:1b}
execute at @s[tag=explosion,tag=lvl10] run summon creeper ^ ^ ^1 {CustomName:'{"text":"Bombarda"}',Fuse:0,ExplosionRadius:12,Invulnerable:1b,NoAI:1b,NoGravity:1b,Silent:1b}
kill @s[tag=explosion]