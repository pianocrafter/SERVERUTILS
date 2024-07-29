
execute if entity @s[tag=glowmobGSQUID] run tag @s add glowmobCheck
execute if entity @s[tag=glowmobGSQUID] run tag @s remove glowmobGSQUID
execute unless entity @s[tag=glowmobCheck] run tag @s add glowmobGSQUID

scoreboard players set @s glowmobs 100
tag @s remove glowmobCheck
