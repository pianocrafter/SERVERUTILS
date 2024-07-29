execute if entity @s[type=minecraft:spectral_arrow] run give @p[distance=..128,scores={magnet=1}] minecraft:spectral_arrow
execute if data entity @s item.components{"minecraft:potion_contents":{}} at @s run summon item ~ ~ ~ {PickupDelay:0,Item:{id:"minecraft:tipped_arrow",count:1}}
execute if data entity @s item.components{"minecraft:potion_contents":{}} run data modify entity @e[type=item,limit=1,sort=nearest] Item.components set from entity @s item.components
execute if data entity @s item.components{"minecraft:potion_contents":{}} as @e[type=item,limit=1,sort=nearest] run tag @s add PlayerItem
#execute unless data entity @s[type=arrow] item.components{"minecraft:potion_contents":{}} run give @p[distance=..128,scores={magnet=1}] minecraft:arrow
kill @s