
execute if entity @s[tag=glowmobEVOKER] run tag @s add glowmobCheck
execute if entity @s[tag=glowmobEVOKER] run tag @s remove glowmobEVOKER
execute unless entity @s[tag=glowmobCheck] run tag @s add glowmobEVOKER

scoreboard players set @s glowmobs 1
tag @s remove glowmobCheck
