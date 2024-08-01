kill @e[type=armor_stand,tag=su.spawn]
function su:f/spawn/center
execute at @s run fill ~8.5 -64 ~8.5 ~-8.5 -32 ~-8.5 minecraft:bedrock hollow
execute at @s run fill ~7.5 -63 ~7.5 ~-7.5 -63 ~-7.5 minecraft:glowstone
execute at @s run fill ~7.5 -62 ~7.5 ~-7.5 -62 ~-7.5 minecraft:white_stained_glass
execute at @s positioned ~-7.5 -61.0 ~-7.5 run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["su.spawn"]}
