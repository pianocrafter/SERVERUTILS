
execute if entity @s[tag=glowmobPILLAGER] run tag @s add glowmobCheck
execute if entity @s[tag=glowmobPILLAGER] run tag @s remove glowmobPILLAGER
execute unless entity @s[tag=glowmobCheck] run tag @s add glowmobPILLAGER

scoreboard players set @s glowmobs 100
tag @s remove glowmobCheck
