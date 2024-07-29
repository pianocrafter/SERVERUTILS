execute if block ~-0.5 ~-1 ~ air run setblock ~-0.5 ~-1 ~ chest[facing=south,type=right]{CustomName:'{"bold":true,"color":"dark_purple","italic":false,"text":"Slut Chest"}'}
execute if block ~0.5 ~-1 ~ air run setblock ~0.5 ~-1 ~ chest[facing=south,type=left]{CustomName:'{"bold":true,"color":"dark_purple","italic":false,"text":"Slut Chest"}'}
tag @e[type=minecraft:item,distance=..1.5,nbt={Item:{id:"minecraft:chest"}}] add nonPlayerItem
kill @e[type=minecraft:item,distance=..1.5,nbt={Item:{id:"minecraft:chest"}}]