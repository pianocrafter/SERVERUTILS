data remove storage su:temp raycast
function su:f/ws/direction
data modify storage su:temp raycast.support set value 1b
execute positioned ~ ~1.6 ~ run function su:f/ws/raycast {workstation:"anvil"}