tag @e[type=minecraft:experience_orb,tag=!suxp.processed,distance=0.001..2,sort=nearest,limit=1] add suxp.merge

scoreboard players operation @s suxp.xp += @e[type=minecraft:experience_orb,tag=suxp.merge] suxp.xp

execute store result entity @s Value double 1 run scoreboard players get @s suxp.xp

tag @e[type=minecraft:experience_orb,tag=suxp.merge] add suxp.processed

kill @e[type=minecraft:experience_orb,tag=suxp.merge]
