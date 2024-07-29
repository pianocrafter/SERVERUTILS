
execute if entity @s[tag=glowmobSHULKER] run tag @s add glowmobCheck
execute if entity @s[tag=glowmobSHULKER] run tag @s remove glowmobSHULKER
execute unless entity @s[tag=glowmobCheck] run tag @s add glowmobSHULKER

scoreboard players set @s glowmobs 100
tag @s remove glowmobCheck
