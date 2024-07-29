
execute if entity @s[tag=glowmobPIG] run tag @s add glowmobCheck
execute if entity @s[tag=glowmobPIG] run tag @s remove glowmobPIG
execute unless entity @s[tag=glowmobCheck] run tag @s add glowmobPIG

scoreboard players set @s glowmobs 1
tag @s remove glowmobCheck
