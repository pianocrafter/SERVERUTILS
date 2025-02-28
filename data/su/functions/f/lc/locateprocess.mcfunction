function su:f/lc/locateclean
data modify storage su:structures stemp.temp set string storage su:structures stemp.temp 7
data modify storage su:structures stemp.test set from storage su:structures stemp.temp
function su:f/lc/cleanfind
function su:f/lc/locateclean2 with storage su:structures stemp
data modify storage su:structures stemp.test set from storage su:structures stemp.temp
function su:f/lc/cleanfind2
scoreboard players set SUINDEXADD suTest 3
scoreboard players operation SUINDEX2 suTest = SUINDEX suTest
scoreboard players operation SUINDEX2 suTest += SUINDEXADD suTest
execute store result storage su:structures stemp.index3 int 1 run scoreboard players get SUINDEX2 suTest
function su:f/lc/locateclean3 with storage su:structures stemp
function su:f/lc/locatecopy
