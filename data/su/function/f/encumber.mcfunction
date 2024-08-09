execute as @n[type=minecraft:item,distance=..0.1] if entity @s[tag=encumbered,tag=PlayerItem] run tag @s add nonPlayerItem
execute as @n[type=minecraft:item,distance=..0.1] if entity @s[tag=encumbered,tag=PlayerItem] run tag @s remove PlayerItem
tag @n[type=minecraft:item,distance=..0.1] remove encumbered
data modify storage serverutil:temp SavedItem set from entity @n[type=minecraft:item,distance=..0.1] Item.id
function su:f/encumbertest with storage serverutil:temp
data remove storage serverutil:temp SavedItem