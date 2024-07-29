
execute if entity @s[tag=glowmobGHAST] run tag @s add glowmobCheck
execute if entity @s[tag=glowmobGHAST] run tag @s remove glowmobGHAST
execute unless entity @s[tag=glowmobCheck] run tag @s add glowmobGHAST

scoreboard players set @s glowmobs 1
tag @s remove glowmobCheck
