execute store result storage su:temp raycast.temp int 1 run scoreboard players get RAYCAST suTest
execute unless score RAYCAST suTest matches ..10 run data modify storage su:temp raycast.dnum set string storage su:temp raycast.temp 0 1
execute unless score RAYCAST suTest matches ..10 run data modify storage su:temp raycast.ddec set string storage su:temp raycast.temp 1
execute if score RAYCAST suTest matches ..10 run data modify storage su:temp raycast.dnum set value '0'
execute if score RAYCAST suTest matches ..10 run data modify storage su:temp raycast.ddec set string storage su:temp raycast.temp 0
function su:f/ws/raycastmove with storage su:temp raycast