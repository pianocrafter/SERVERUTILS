schedule function su:u10sec 10s replace
gamerule sendCommandFeedback true



execute if entity @s[tag=su.mansion] if data storage su:structures s.mansion run data remove storage su:structures s.mansion
execute if entity @s[tag=su.mansion] run data modify storage su:structures stemp.temp set string storage su:structures stemp.mansion 310
execute if entity @s[tag=su.mansion] if data storage su:structures stemp.mansion run data modify storage su:structures s.mansion.code set value 'minecraft:mansion'
execute if entity @s[tag=su.mansion] at @s store result storage su:structures stemp.distance int 1 run locate structure minecraft:mansion

execute if entity @s[tag=su.monument] if data storage su:structures s.monument run data remove storage su:structures s.monument
execute if entity @s[tag=su.monument] run data modify storage su:structures stemp.temp set string storage su:structures stemp.monument 310
execute if entity @s[tag=su.monument] if data storage su:structures stemp.monument run data modify storage su:structures s.monument.code set value 'minecraft:monument'
execute if entity @s[tag=su.monument] at @s store result storage su:structures stemp.distance int 1 run locate structure minecraft:monument

execute if entity @s[tag=su.fortress] if data storage su:structures s.fortress run data remove storage su:structures s.fortress
execute if entity @s[tag=su.fortress] run data modify storage su:structures stemp.temp set string storage su:structures stemp.fortress 310
execute if entity @s[tag=su.fortress] if data storage su:structures stemp.fortress run data modify storage su:structures s.fortress.code set value 'minecraft:fortress'
execute if entity @s[tag=su.fortress] at @s store result storage su:structures stemp.distance int 1 run locate structure minecraft:fortress

execute if entity @s[tag=su.remnant] if data storage su:structures s.remnant run data remove storage su:structures s.remnant
execute if entity @s[tag=su.remnant] run data modify storage su:structures stemp.temp set string storage su:structures stemp.remnant 310
execute if entity @s[tag=su.remnant] if data storage su:structures stemp.remnant run data modify storage su:structures s.remnant.code set value 'minecraft:bastion_remnant'
execute if entity @s[tag=su.remnant] at @s store result storage su:structures stemp.distance int 1 run locate structure minecraft:bastion_remnant

execute if entity @s[tag=su.trail] if data storage su:structures s.trail run data remove storage su:structures s.trail
execute if entity @s[tag=su.trail] run data modify storage su:structures stemp.temp set string storage su:structures stemp.trail 310
execute if entity @s[tag=su.trail] if data storage su:structures stemp.trail run data modify storage su:structures s.trail.code set value 'minecraft:trail_ruins'
execute if entity @s[tag=su.trail] at @s store result storage su:structures stemp.distance int 1 run locate structure minecraft:trail_ruins

execute if entity @s[tag=su.dtemple] if data storage su:structures s.dtemple run data remove storage su:structures s.dtemple
execute if entity @s[tag=su.dtemple] run data modify storage su:structures stemp.temp set string storage su:structures stemp.dtemple 310
execute if entity @s[tag=su.dtemple] if data storage su:structures stemp.dtemple run data modify storage su:structures s.dtemple.code set value 'minecraft:desert_pyramid'
execute if entity @s[tag=su.dtemple] at @s store result storage su:structures stemp.distance int 1 run locate structure minecraft:desert_pyramid

execute if entity @s[tag=su.jtemple] if data storage su:structures s.jtemple run data remove storage su:structures s.jtemple
execute if entity @s[tag=su.jtemple] run data modify storage su:structures stemp.temp set string storage su:structures stemp.jtemple 310
execute if entity @s[tag=su.jtemple] if data storage su:structures stemp.jtemple run data modify storage su:structures s.jtemple.code set value 'minecraft:jungle_pyramid'
execute if entity @s[tag=su.jtemple] at @s store result storage su:structures stemp.distance int 1 run locate structure minecraft:jungle_pyramid

execute if entity @s[tag=su.acity] if data storage su:structures s.acity run data remove storage su:structures s.acity
execute if entity @s[tag=su.acity] run data modify storage su:structures stemp.temp set string storage su:structures stemp.acity 310
execute if entity @s[tag=su.acity] if data storage su:structures stemp.acity run data modify storage su:structures s.acity.code set value 'minecraft:ancient_city'
execute if entity @s[tag=su.acity] at @s store result storage su:structures stemp.distance int 1 run locate structure minecraft:ancient_city

execute if entity @s[tag=su.outpost] if data storage su:structures s.outpost run data remove storage su:structures s.outpost
execute if entity @s[tag=su.outpost] run data modify storage su:structures stemp.temp set string storage su:structures stemp.outpost 310
execute if entity @s[tag=su.outpost] if data storage su:structures stemp.outpost run data modify storage su:structures s.outpost.code set value 'minecraft:pillager_outpost'
execute if entity @s[tag=su.outpost] at @s store result storage su:structures stemp.distance int 1 run locate structure minecraft:pillager_outpost

execute if entity @s[tag=su.pvillage] if data storage su:structures s.pvillage run data remove storage su:structures s.pvillage
execute if entity @s[tag=su.pvillage] run data modify storage su:structures stemp.temp set string storage su:structures stemp.pvillage 310
execute if entity @s[tag=su.pvillage] if data storage su:structures stemp.pvillage run data modify storage su:structures s.pvillage.code set value 'minecraft:village_plains'
execute if entity @s[tag=su.pvillage] at @s store result storage su:structures stemp.distance int 1 run locate structure minecraft:village_plains

execute if entity @s[tag=su.dvillage] if data storage su:structures s.dvillage run data remove storage su:structures s.dvillage
execute if entity @s[tag=su.dvillage] run data modify storage su:structures stemp.temp set string storage su:structures stemp.dvillage 310
execute if entity @s[tag=su.dvillage] if data storage su:structures stemp.dvillage run data modify storage su:structures s.dvillage.code set value 'minecraft:village_desert'
execute if entity @s[tag=su.dvillage] at @s store result storage su:structures stemp.distance int 1 run locate structure minecraft:village_desert

execute if entity @s[tag=su.svillage] if data storage su:structures s.svillage run data remove storage su:structures s.svillage
execute if entity @s[tag=su.svillage] run data modify storage su:structures stemp.temp set string storage su:structures stemp.svillage 310
execute if entity @s[tag=su.svillage] if data storage su:structures stemp.svillage run data modify storage su:structures s.svillage.code set value 'minecraft:village_savanna'
execute if entity @s[tag=su.svillage] at @s store result storage su:structures stemp.distance int 1 run locate structure minecraft:village_savanna

execute if entity @s[tag=su.snvillage] if data storage su:structures s.snvillage run data remove storage su:structures s.snvillage
execute if entity @s[tag=su.snvillage] run data modify storage su:structures stemp.temp set string storage su:structures stemp.snvillage 310
execute if entity @s[tag=su.snvillage] if data storage su:structures stemp.snvillage run data modify storage su:structures s.snvillage.code set value 'minecraft:village_snowy'
execute if entity @s[tag=su.snvillage] at @s store result storage su:structures stemp.distance int 1 run locate structure minecraft:village_snowy

execute if entity @s[tag=su.tvillage] if data storage su:structures s.tvillage run data remove storage su:structures s.tvillage
execute if entity @s[tag=su.tvillage] run data modify storage su:structures stemp.temp set string storage su:structures stemp.tvillage 310
execute if entity @s[tag=su.tvillage] if data storage su:structures stemp.tvillage run data modify storage su:structures s.tvillage.code set value 'minecraft:village_taiga'
execute if entity @s[tag=su.tvillage] at @s store result storage su:structures stemp.distance int 1 run locate structure minecraft:village_taiga

execute if entity @s[tag=su.ecity] if data storage su:structures s.ecity run data remove storage su:structures s.ecity
execute if entity @s[tag=su.ecity] run data modify storage su:structures stemp.temp set string storage su:structures stemp.ecity 310
execute if entity @s[tag=su.ecity] if data storage su:structures stemp.ecity run data modify storage su:structures s.ecity.code set value 'minecraft:end_city'
execute if entity @s[tag=su.ecity] at @s store result storage su:structures stemp.distance int 1 run locate structure minecraft:end_city


execute if data storage su:structures stemp.temp run function su:f/lc/locateprocess

function su:f/lc/output

execute if data storage su:structures stemp.temp run function su:f/lc/locateclear

execute if entity @s[tag=su.mansion] run tag @s remove su.mansion
execute if entity @s[tag=su.monument] run tag @s remove su.monument
execute if entity @s[tag=su.fortress] run tag @s remove su.fortress
execute if entity @s[tag=su.remnant] run tag @s remove su.remnant
execute if entity @s[tag=su.trail] run tag @s remove su.trail
execute if entity @s[tag=su.dtemple] run tag @s remove su.dtemple
execute if entity @s[tag=su.jtemple] run tag @s remove su.jtemple
execute if entity @s[tag=su.acity] run tag @s remove su.acity
execute if entity @s[tag=su.outpost] run tag @s remove su.outpost
execute if entity @s[tag=su.pvillage] run tag @s remove su.pvillage
execute if entity @s[tag=su.dvillage] run tag @s remove su.dvillage
execute if entity @s[tag=su.svillage] run tag @s remove su.svillage
execute if entity @s[tag=su.snvillage] run tag @s remove su.snvillage
execute if entity @s[tag=su.tvillage] run tag @s remove su.tvillage
execute if entity @s[tag=su.ecity] run tag @s remove su.ecity
tag @s remove su.locate

gamerule sendCommandFeedback false



