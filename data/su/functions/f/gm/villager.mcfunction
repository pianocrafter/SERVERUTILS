
execute if entity @s[tag=glowmobVILLAGER] run tag @s add glowmobCheck
execute if entity @s[tag=glowmobVILLAGER] run tag @s remove glowmobVILLAGER
execute unless entity @s[tag=glowmobCheck] run tag @s add glowmobVILLAGER

scoreboard players set @s glowmobs 100
tag @s remove glowmobCheck

execute at @s run playsound minecraft:entity.villager.ambient neutral @s ~ ~ ~