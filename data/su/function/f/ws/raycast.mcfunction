$data modify storage su:temp raycast.ws set value '$(workstation)'
tag @s add su.ws
scoreboard players set RAYCAST suTest 0
execute store result storage su:temp raycast.temp int 1 run scoreboard players get RAYCAST suTest
function su:f/ws/raycaststart with storage su:temp raycast
function su:f/ws/placestation with storage su:temp raycast
scoreboard players reset RAYCAST suTest
#data remove storage su:temp raycast