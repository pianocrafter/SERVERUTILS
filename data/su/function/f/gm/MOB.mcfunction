
execute if entity @s[tag=glowmob] run tag @s add glowmobCheck
execute if entity @s[tag=glowmobMOB] run tag @s remove glowmobMOB
execute unless entity @s[tag=glowmobCheck] run tag @s add glowmobMOB

scoreboard players set @s glowmobs 1
tag @s remove glowmobCheck
