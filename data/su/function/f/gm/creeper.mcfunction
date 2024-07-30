
execute if entity @s[tag=glowmobCREEPER] run tag @s add glowmobCheck
execute if entity @s[tag=glowmobCREEPER] run tag @s remove glowmobCREEPER
execute unless entity @s[tag=glowmobCheck] run tag @s add glowmobCREEPER

scoreboard players set @s glowmobs 1
tag @s remove glowmobCheck

execute at @s run playsound minecraft:entity.creeper.hurt hostile @s ~ ~ ~