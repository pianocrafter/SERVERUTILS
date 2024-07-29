data remove storage su:temp raycast
data modify storage su:temp raycast.dir set value '[]'
data modify storage su:temp raycast.enchant set value 1b
execute positioned ~ ~1.7 ~ run function su:f/ws/raycast {workstation:"enchanting_table"}