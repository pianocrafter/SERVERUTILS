scoreboard players set WSMOD suTest 180

$scoreboard players operation WSTEMP suTest = $(name) suTest
$scoreboard players operation WSTEMP2 suTest = $(name) suTest
scoreboard players operation WSTEMP2 suTest %= WSMOD suTest
scoreboard players operation WSTEMP2 suTest -= WSMOD suTest
$execute if score WSTEMP suTest matches ..-181 run scoreboard players set $(name) suTest 180
$execute if score WSTEMP suTest matches 181.. run scoreboard players set $(name) suTest -180
$execute if score WSTEMP suTest matches ..-181 run scoreboard players operation $(name) suTest -= WSTEMP2 suTest
$execute if score WSTEMP suTest matches 181.. run scoreboard players operation $(name) suTest += WSTEMP2 suTest

scoreboard players reset WSMOD suTest
scoreboard players reset WSTEMP suTest
scoreboard players reset WSTEMP2 suTest