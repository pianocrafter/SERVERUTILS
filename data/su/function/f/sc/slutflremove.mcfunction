kill @n[type=minecraft:armor_stand,tag=slutchest,distance=..1]
fill ~-0.5 ~-1 ~ ~0.5 ~-1 ~ air replace minecraft:chest
execute if score @s slutTestSpawn matches 1 run forceload remove ~ ~ ~ ~