data modify storage su:structures stemp.test set string storage su:structures stemp.test 1
scoreboard players add SUINDEX suTest 1
data modify storage su:structures stemp.test2 set string storage su:structures stemp.test 0 3
data modify storage su:structures stemp.test3 set value ' ~ '
execute store success score SENDTEST suTest run data modify storage su:structures stemp.test3 set from storage su:structures stemp.test2
execute unless score SENDTEST suTest matches 0 run function su:f/lc/cleanfind2
scoreboard players reset SENDTEST suTest
execute store result storage su:structures stemp.index2 int 1 run scoreboard players get SUINDEX suTest