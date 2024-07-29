execute positioned ^ ^-1 ^-1 run summon item ~ ~1 ~ {PickupDelay:1200,Tags:["cloneblockcopy"],Item:{id:"minecraft:knowledge_book",Count:1b}}
execute positioned ^ ^-1 ^-1 positioned ~ ~1 ~ run data modify entity @e[type=item,distance=..0.5,tag=cloneblockcopy,sort=nearest,limit=1] Item set from entity @s SelectedItem
execute positioned ^ ^-1 ^-1 positioned ~ ~1 ~ run data modify entity @e[type=item,distance=..0.5,tag=cloneblockcopy,sort=nearest,limit=1] Item.count set value 1b
execute if entity @e[type=minecraft:item,distance=..4,tag=!cloneblockcopy] run kill @e[type=item,tag=cloneblockcopy,distance=..8]
execute positioned ^ ^-1 ^-1 positioned ~ ~1 ~ run data modify entity @e[type=item,distance=..0.5,tag=cloneblockcopy,sort=nearest,limit=1] PickupDelay set value 0s
execute as @e[type=item,distance=..0.5,tag=cloneblockcopy,sort=nearest,limit=1] positioned ^ ^-1 ^-1 run tp @s ~ ~ ~

advancement revoke @s only su:cloneblock