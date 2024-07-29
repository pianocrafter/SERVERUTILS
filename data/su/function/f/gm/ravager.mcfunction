
execute if entity @s[tag=glowmobRAVAGER] run tag @s add glowmobCheck
execute if entity @s[tag=glowmobRAVAGER] run tag @s remove glowmobRAVAGER
execute unless entity @s[tag=glowmobCheck] run tag @s add glowmobRAVAGER

scoreboard players set @s glowmobs 100
tag @s remove glowmobCheck
