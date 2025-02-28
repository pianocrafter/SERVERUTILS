
execute if entity @s[tag=glowmobDONKEY] run tag @s add glowmobCheck
execute if entity @s[tag=glowmobDONKEY] run tag @s remove glowmobDONKEY
execute unless entity @s[tag=glowmobCheck] run tag @s add glowmobDONKEY

scoreboard players set @s glowmobs 1
tag @s remove glowmobCheck

execute at @s run playsound minecraft:entity.donkey.ambient neutral @s ~ ~ ~
