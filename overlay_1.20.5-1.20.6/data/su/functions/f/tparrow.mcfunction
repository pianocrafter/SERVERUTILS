execute if entity @s[type=minecraft:spectral_arrow] run give @p[distance=..128,scores={magnet=1}] minecraft:spectral_arrow
execute if data entity @s item.components{"minecraft:potion_contents":{}} at @s run summon item ~ ~ ~ {PickupDelay:0,Item:{id:"minecraft:tipped_arrow",count:1}}
execute if data entity @s item.components{"minecraft:potion_contents":{}} run data modify entity @e[type=item,limit=1,sort=nearest] Item.components set from entity @s item.components
execute if data entity @s item.components{"minecraft:potion_contents":{}} as @e[type=item,limit=1,sort=nearest] run tag @s add PlayerItem
execute unless data entity @s[type=arrow] item.components{"minecraft:potion_contents":{}} run give @p[distance=..128,scores={magnet=1}] minecraft:arrow
kill @s

scoreboard players remove @p[scores={magnet=1,su.bowtest=1..},tag=su.shotarrow] su.bowtest 1
scoreboard players remove @p[scores={magnet=1,su.crossbowtest=1..},tag=su.shotarrow] su.crossbowtest 1
execute as @p[distance=..128,scores={magnet=1},tag=su.shotarrow] unless score @s su.bowtest matches 1.. unless score @s su.crossbowtest matches 1.. run tag @s remove su.shotarrow