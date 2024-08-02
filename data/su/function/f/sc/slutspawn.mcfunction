tp @p 0 400 0
summon armor_stand 0 400 0 {NoGravity:1b,Invulnerable:1b,ShowArms:0b,Small:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["slutchest"]}
execute positioned 0 400 0 run scoreboard players set @n[type=armor_stand,tag=slutchest] slutTest 0
execute positioned 0 400 0 as @n[type=armor_stand,tag=slutchest] run function su:f/sc/tpsearch
execute positioned 0 ~ 0 as @n[type=minecraft:armor_stand,tag=slutchest] run tp @p @s
execute positioned 0 ~ 0 at @n[type=minecraft:armor_stand,tag=slutchest] run spreadplayers 0 0 5 10 false @p
execute positioned 0 ~ 0 at @n[type=minecraft:armor_stand,tag=slutchest] store success score SLUTSPAWN slutTest run forceload add ~ ~ ~ ~
execute positioned 0 ~ 0 at @n[type=minecraft:armor_stand,tag=slutchest] run setblock ~ ~ ~ chest[facing=south,type=right]{CustomName:'{"bold":true,"color":"dark_purple","italic":false,"text":"Item Overflow"}'}
execute positioned 0 ~ 0 at @n[type=minecraft:armor_stand,tag=slutchest] run setblock ~1 ~ ~ chest[facing=south,type=left]{CustomName:'{"bold":true,"color":"dark_purple","italic":false,"text":"Item Overflow"}'}
execute positioned 0 ~ 0 as @n[type=minecraft:armor_stand,tag=slutchest] at @s run tp @s ~0.5 ~1 ~

#execute unless score SLUTSPAWN slutTest matches 0 run forceload remove 0 0 0 0 
