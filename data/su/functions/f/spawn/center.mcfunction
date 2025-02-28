data remove storage su:temp spawncenter
scoreboard players set SPAWNMOD suTest 16
scoreboard players set SPAWNDIV suTest 10000
scoreboard players set SPAWNADD suTest 8


execute store result score SPAWNX suTest run data get entity @s Pos[0] 1
execute store result score SPAWNZ suTest run data get entity @s Pos[2] 1
scoreboard players operation SPAWNXSUB suTest = SPAWNX suTest
scoreboard players operation SPAWNZSUB suTest = SPAWNZ suTest
scoreboard players operation SPAWNXSUB suTest %= SPAWNMOD suTest
scoreboard players operation SPAWNZSUB suTest %= SPAWNMOD suTest
scoreboard players operation SPAWNX suTest -= SPAWNXSUB suTest
scoreboard players operation SPAWNZ suTest -= SPAWNZSUB suTest
scoreboard players operation SPAWNX suTest += SPAWNADD suTest
scoreboard players operation SPAWNZ suTest += SPAWNADD suTest
execute store result storage su:temp spawncenter.x int 1 run scoreboard players get SPAWNX suTest 
execute store result storage su:temp spawncenter.z int 1 run scoreboard players get SPAWNZ suTest 


scoreboard players reset SPAWNX suTest
scoreboard players reset SPAWNZ suTest
scoreboard players reset SPAWNMOD suTest
scoreboard players reset SPAWNDIV suTest
scoreboard players reset SPAWNADD suTest
scoreboard players reset SPAWNXSUB suTest
scoreboard players reset SPAWNZSUB suTest
function su:f/spawn/centertp with storage su:temp spawncenter
data remove storage su:temp spawncenter