
execute if entity @s[tag=glowmobWITHERSKEL] run tag @s add glowmobCheck
execute if entity @s[tag=glowmobWITHERSKEL] run tag @s remove glowmobWITHERSKEL
execute unless entity @s[tag=glowmobCheck] run tag @s add glowmobWITHERSKEL

scoreboard players set @s glowmobs 100
tag @s remove glowmobCheck

execute at @s run playsound minecraft:entity.wither_skeleton.ambient hostile @s ~ ~ ~