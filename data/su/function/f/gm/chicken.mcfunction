
execute if entity @s[tag=glowmobCHICKEN] run tag @s add glowmobCheck
execute if entity @s[tag=glowmobCHICKEN] run tag @s remove glowmobCHICKEN
execute unless entity @s[tag=glowmobCheck] run tag @s add glowmobCHICKEN

scoreboard players set @s glowmobs 1
tag @s remove glowmobCheck
