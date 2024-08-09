data remove storage su:temp pettp
scoreboard players reset PETTEST suTest
data modify storage su:temp pettp.UUID set from entity @s UUID
execute store success score PETTEST suTest run data modify storage su:temp pettp.UUID set from entity @n[nbt={Sitting:0b},distance=..1] Owner
execute if score PETTEST suTest matches 0 run tag @n[nbt={Sitting:0b},distance=..1] add su.tptoowner
execute if score PETTEST suTest matches 0 run tag @s add su.tpISowner
