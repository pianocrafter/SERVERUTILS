
execute if entity @s[tag=glowmobDROWNED] run tag @s add glowmobCheck
execute if entity @s[tag=glowmobDROWNED] run tag @s remove glowmobDROWNED
execute unless entity @s[tag=glowmobCheck] run tag @s add glowmobDROWNED

scoreboard players set @s glowmobs 1
tag @s remove glowmobCheck

execute at @s run playsound minecraft:entity.drowned.ambient hostile @s ~ ~ ~