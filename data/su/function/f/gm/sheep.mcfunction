
execute if entity @s[tag=glowmobSHEEP] run tag @s add glowmobCheck
execute if entity @s[tag=glowmobSHEEP] run tag @s remove glowmobSHEEP
execute unless entity @s[tag=glowmobCheck] run tag @s add glowmobSHEEP

scoreboard players set @s glowmobs 100
tag @s remove glowmobCheck
