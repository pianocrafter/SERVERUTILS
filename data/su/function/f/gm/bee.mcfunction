
execute if entity @s[tag=glowmobBEE] run tag @s add glowmobCheck
execute if entity @s[tag=glowmobBEE] run tag @s remove glowmobBEE
execute unless entity @s[tag=glowmobCheck] run tag @s add glowmobBEE

scoreboard players set @s glowmobs 1
tag @s remove glowmobCheck
