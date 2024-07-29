
execute if entity @s[tag=glowmobHORSE] run tag @s add glowmobCheck
execute if entity @s[tag=glowmobHORSE] run tag @s remove glowmobHORSE
execute unless entity @s[tag=glowmobCheck] run tag @s add glowmobHORSE

scoreboard players set @s glowmobs 1
tag @s remove glowmobCheck
