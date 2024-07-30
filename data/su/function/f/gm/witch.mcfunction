
execute if entity @s[tag=glowmobWITCH] run tag @s add glowmobCheck
execute if entity @s[tag=glowmobWITCH] run tag @s remove glowmobWITCH
execute unless entity @s[tag=glowmobCheck] run tag @s add glowmobWITCH

scoreboard players set @s glowmobs 100
tag @s remove glowmobCheck

execute at @s run playsound minecraft:entity.witch.ambient hostile @s ~ ~ ~