data modify storage su:temp pname set string storage su:temp nametemp.temp 
$data modify storage su:temp nameoutput set string storage su:temp pname 0 $(index)
$data modify storage su:temp uuidoutput set string storage su:temp pname $(index2)
data modify storage su:temp uuidoutput set string storage su:temp uuidoutput 0 46
scoreboard players reset NAMETEST suTest
scoreboard players reset UUIDINDEX suTest
data remove storage su:temp nametemp.index
data remove storage su:temp nametemp.index2
data remove storage su:temp nametemp