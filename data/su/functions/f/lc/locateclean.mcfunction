data modify storage su:structures stemp.temp set string storage su:structures stemp.temp 1
data modify storage su:structures stemp.test2 set value '/tp @s '
data modify storage su:structures stemp.test set string storage su:structures stemp.temp 0 7
execute store success score TPTEST suTest run data modify storage su:structures stemp.test2 set from storage su:structures stemp.test
execute unless score TPTEST suTest matches 0 run function su:f/lc/locateclean
scoreboard players reset TPTEST suTest