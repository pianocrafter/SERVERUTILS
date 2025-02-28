
execute if entity @s[tag=glowmobGOAT] run tag @s add glowmobCheck
execute if entity @s[tag=glowmobGOAT] run tag @s remove glowmobGOAT
execute unless entity @s[tag=glowmobCheck] run tag @s add glowmobGOAT

scoreboard players set @s glowmobs 1
tag @s remove glowmobCheck

execute at @s run playsound minecraft:entity.goat.ambient neutral @s ~ ~ ~