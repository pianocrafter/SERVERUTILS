data remove storage su:temp ws

scoreboard players set ADDSUB suTest 30

scoreboard players operation WSY1 suTest = @s su.wsY
scoreboard players operation WSY2 suTest = @s su.wsY
scoreboard players operation WSX1 suTest = @s su.wsX
scoreboard players operation WSX2 suTest = @s su.wsX

scoreboard players operation WSY1 suTest -= ADDSUB suTest
scoreboard players operation WSY2 suTest += ADDSUB suTest
scoreboard players operation WSX1 suTest -= ADDSUB suTest
scoreboard players operation WSX2 suTest += ADDSUB suTest

execute if score WSX1 suTest matches ..-90 run scoreboard players set WSX1 suTest -90

#execute unless score WSY1 suTest matches -180..180 run function su:f/ws/cordsfix {name:"WSY1"}
#execute unless score WSY2 suTest matches -180..180 run function su:f/ws/cordsfix {name:"WSY2"}

execute store result storage su:temp ws.yr1 int 1 run scoreboard players get WSY1 suTest
execute store result storage su:temp ws.yr2 int 1 run scoreboard players get WSY2 suTest
execute store result storage su:temp ws.xr1 int 1 run scoreboard players get WSX1 suTest
execute store result storage su:temp ws.xr2 int 1 run scoreboard players get WSX2 suTest
data modify storage su:temp ws.wsname set from entity @s data.ws

execute if block ~ ~ ~ #minecraft:air run function su:f/ws/stopexploit with storage su:temp ws
function su:f/ws/removews with storage su:temp ws


scoreboard players reset ADDSUB suTest
scoreboard players reset WSY1 suTest
scoreboard players reset WSY2 suTest
scoreboard players reset WSX1 suTest
scoreboard players reset WSX2 suTest

data remove storage su:temp ws