
execute if entity @s[tag=glowmobVINDI] run tag @s add glowmobCheck
execute if entity @s[tag=glowmobVINDI] run tag @s remove glowmobVINDI
execute unless entity @s[tag=glowmobCheck] run tag @s add glowmobVINDI

scoreboard players set @s glowmobs 100
tag @s remove glowmobCheck

execute at @s run playsound minecraft:entity.vindicator.ambient hostile @s ~ ~ ~