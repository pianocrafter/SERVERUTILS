data remove storage su:temp raycast
data modify storage su:temp raycast.dir set value '[]'
execute positioned ~ ~1.6 ~ run function su:f/ws/raycast {workstation:"cartography_table"}