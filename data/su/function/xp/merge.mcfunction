tag @e[type=minecraft:experience_orb,tag=!ketsu.processed,distance=0.001..2,sort=nearest,limit=1] add ketsu.merge

scoreboard players operation @s ketsu.xp += @e[type=minecraft:experience_orb,tag=ketsu.merge] ketsu.xp

execute store result entity @s Value double 1 run scoreboard players get @s ketsu.xp

tag @e[type=minecraft:experience_orb,tag=ketsu.merge] add ketsu.processed

kill @e[type=minecraft:experience_orb,tag=ketsu.merge]
