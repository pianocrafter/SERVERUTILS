
execute if entity @s[tag=glowmobCOW] run tag @s add glowmobCheck
execute if entity @s[tag=glowmobCOW] run tag @s remove glowmobCOW
execute unless entity @s[tag=glowmobCheck] run tag @s add glowmobCOW

scoreboard players set @s glowmobs 1
tag @s remove glowmobCheck

execute at @s run playsound minecraft:entity.cow.ambient neutral @s ~ ~ ~