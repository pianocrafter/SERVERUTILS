
execute if entity @s[tag=glowmobELDER] run tag @s add glowmobCheck
execute if entity @s[tag=glowmobELDER] run tag @s remove glowmobELDER
execute unless entity @s[tag=glowmobCheck] run tag @s add glowmobELDER

scoreboard players set @s glowmobs 1
tag @s remove glowmobCheck

execute at @s run playsound minecraft:entity.elder_guardian.ambient_land hostile @s ~ ~ ~