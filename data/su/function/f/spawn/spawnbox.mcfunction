kill @e[type=armor_stand,tag=su.spawn]
function su:f/spawn/center
execute at @s run fill ~8.5 -64 ~8.5 ~-8.5 -32 ~-8.5 minecraft:bedrock hollow
execute at @s run fill ~7.5 -63 ~7.5 ~-7.5 -63 ~-7.5 minecraft:glowstone
execute at @s run fill ~7.5 -62 ~7.5 ~-7.5 -62 ~-7.5 minecraft:white_stained_glass
execute at @s positioned ~-7.5 -61.0 ~-7.5 run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["su.spawn"]}
execute at @s run setblock ~5.5 -61 ~-7.5 minecraft:structure_block{powered:0b,name:"su:s1",mode:"LOAD"}
execute at @s run setblock ~5.5 -60 ~-7.5 minecraft:redstone_block
execute at @s run setblock ~5.5 -61 ~5.5 minecraft:structure_block{powered:0b,name:"su:vs1",mode:"LOAD"}
execute at @s run setblock ~5.5 -60 ~5.5 minecraft:redstone_block
execute at @s run setblock ~-7.5 -61 ~-7.5 minecraft:structure_block{posY:-1,powered:0b,name:"su:clonezone",mode:"LOAD"}
execute at @s run setblock ~-7.5 -60 ~-7.5 minecraft:redstone_block
execute at @s run setblock ~-7.5 -61 ~2.5 minecraft:structure_block{posY:-1,powered:0b,name:"su:adminzone",mode:"LOAD"}
execute at @s run setblock ~-7.5 -60 ~2.5 minecraft:redstone_block