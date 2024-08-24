scoreboard players add NAMEINDEX suTest 1
scoreboard players operation UUIDINDEX suTest = NAMEINDEX suTest
scoreboard players set UUIDINDEX sutTest 58
scoreboard players operation UUIDINDEX suTest += UUIDINDEX suTest
data remove storage su:temp nametemp.index
data remove storage su:temp nametemp.index2
execute store result storage su:temp nametemp.index int 1 run scoreboard players get NAMEINDEX suTest
execute store result storage su:temp nametemp.index2 int 1 run scoreboard players get UUIDINDEX suTest
scoreboard players reset NAMETEST suTest
scoreboard players reset UUIDINDEX suTest
execute unless score NAME suTest matches 200.. run function su:f/settings/perms/nameloop with storage su:temp nametemp