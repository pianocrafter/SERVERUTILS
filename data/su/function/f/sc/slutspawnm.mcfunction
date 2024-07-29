summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,ShowArms:0b,Small:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["slutchest"]}
execute at @e[type=armor_stand,tag=slutchest,distance=1..] run function su:f/sc/slutflremove
execute if score SLUTSPAWN slutTest matches 1 run forceload remove 0 0 0 0
scoreboard players reset SLUTSPAWN slutTest
scoreboard players set @n[type=armor_stand,tag=slutchest] slutTest 0
execute store success score @s slutTestSpawn run forceload add ~ ~ ~ ~
setblock ~ ~ ~ chest[facing=south,type=right]{CustomName:'{"bold":true,"color":"dark_purple","italic":false,"text":"Slut Chest"}'}
setblock ~1 ~ ~ chest[facing=south,type=left]{CustomName:'{"bold":true,"color":"dark_purple","italic":false,"text":"Slut Chest"}'}
execute as @n[type=minecraft:armor_stand,tag=slutchest] at @s run tp @s ~0.5 ~1 ~


