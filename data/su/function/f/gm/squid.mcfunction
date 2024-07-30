
execute if entity @s[tag=glowmobSQUID] run tag @s add glowmobCheck
execute if entity @s[tag=glowmobSQUID] run tag @s remove glowmobSQUID
execute unless entity @s[tag=glowmobCheck] run tag @s add glowmobSQUID

scoreboard players set @s glowmobs 100
tag @s remove glowmobCheck

execute at @s run playsound minecraft:entity.squid.ambient neutral @s ~ ~ ~