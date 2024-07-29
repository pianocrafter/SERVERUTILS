
execute if entity @s[tag=glowmobENDERMAN] run tag @s add glowmobCheck
execute if entity @s[tag=glowmobENDERMAN] run tag @s remove glowmobENDERMAN
execute unless entity @s[tag=glowmobCheck] run tag @s add glowmobENDERMAN

scoreboard players set @s glowmobs 1
tag @s remove glowmobCheck
