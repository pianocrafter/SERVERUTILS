tag @e[sort=nearest,type=item,limit=1] add slutCopyTemp
data modify storage serverutil:temp slutItemTag set from entity @e[type=item,limit=1,sort=nearest,tag=slutCopyTemp] Item.tag
data modify storage serverutil:temp slutItemId set from entity @e[type=item,limit=1,sort=nearest,tag=slutCopyTemp] Item.id
execute store result storage serverutil:temp slutItemCount int 1 run data get entity @e[type=item,limit=1,sort=nearest,tag=slutCopyTemp] Item.Count
execute unless data storage serverutil:temp slutItemTag run data modify storage serverutil:temp slutItemTag set value ""

execute if score @s slutTest matches 0..26 store result storage serverutil:temp slutSlot int 1 run scoreboard players get @s slutTest
execute if score @s slutTest matches 0..26 at @s positioned ~-0.5 ~-1 ~ run function su:f/sc/slutcopy with storage serverutil:temp

execute if score @s slutTest matches 27..53 run scoreboard players operation SLUTTEMP slutTest = @s slutTest
execute if score @s slutTest matches 27..53 run scoreboard players operation SLUTTEMP slutTest -= SLUTSUB slutTest
execute if score @s slutTest matches 27..53 store result storage serverutil:temp slutSlot int 1 run scoreboard players get SLUTTEMP slutTest
execute if score @s slutTest matches 27..53 at @s positioned ~0.5 ~-1 ~ run function su:f/sc/slutcopy with storage serverutil:temp

execute if score @s slutTest matches 54..80 run scoreboard players operation SLUTTEMP slutTest = @s slutTest
execute if score @s slutTest matches 54..80 run scoreboard players operation SLUTTEMP slutTest -= SLUTSUB slutTest
execute if score @s slutTest matches 54..80 run scoreboard players operation SLUTTEMP slutTest -= SLUTSUB slutTest
execute if score @s slutTest matches 54..80 store result storage serverutil:temp slutSlot int 1 run scoreboard players get SLUTTEMP slutTest
execute if score @s slutTest matches 54..80 at @s positioned ~-0.5 ~-2 ~ run function su:f/sc/slutcopy with storage serverutil:temp

execute if score @s slutTest matches 81..106 run scoreboard players operation SLUTTEMP slutTest = @s slutTest
execute if score @s slutTest matches 81..106 run scoreboard players operation SLUTTEMP slutTest -= SLUTSUB slutTest
execute if score @s slutTest matches 81..106 run scoreboard players operation SLUTTEMP slutTest -= SLUTSUB slutTest
execute if score @s slutTest matches 81..106 run scoreboard players operation SLUTTEMP slutTest -= SLUTSUB slutTest
execute if score @s slutTest matches 81..106 store result storage serverutil:temp slutSlot int 1 run scoreboard players get SLUTTEMP slutTest
execute if score @s slutTest matches 81..106 at @s positioned ~0.5 ~-2 ~ run function su:f/sc/slutcopy with storage serverutil:temp

execute at @s if block ~0.5 ~-2 ~ chest run scoreboard players add @s[scores={slutTest=81..106}] slutTest 1
execute at @s if block ~-0.5 ~-2 ~ chest run scoreboard players add @s[scores={slutTest=54..80}] slutTest 1
scoreboard players add @s[scores={slutTest=0..53}] slutTest 1
execute at @s unless block ~-0.5 ~-2 ~ chest run scoreboard players set @s[scores={slutTest=54..}] slutTest 0
execute at @s unless block ~0.5 ~-2 ~ chest run scoreboard players set @s[scores={slutTest=81..}] slutTest 0
scoreboard players set @s[scores={slutTest=107..}] slutTest 0


data remove storage serverutil:temp slutSlot
data remove storage serverutil:temp slutItemTag
data remove storage serverutil:temp slutItemId
data remove storage serverutil:temp slutItemCount