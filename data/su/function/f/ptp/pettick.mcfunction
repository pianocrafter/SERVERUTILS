data remove storage su:temp pettp
scoreboard players reset PETTEST suTest
execute at @e[type=#su:pets,nbt={Sitting:0b},distance=64..] if data entity @n[type=#su:pets] Owner unless data entity @s Leash run function su:f/ptp/pettest
execute as @s[tag=su.tpISowner] at @s run spreadplayers ~ ~ 3 3 true @e[tag=su.tptoowner]
execute as @e[tag=su.tptoowner] at @s if data entity @s Owner if entity @p[tag=su.tpISowner,distance=64..] run tag @s add su.inair
execute as @e[tag=su.tptoowner] at @s if data entity @s Owner if entity @p[tag=su.tpISowner,distance=64..] run execute at @p[tag=su.tpISowner] run tp @s ^ ^ ^-1
execute as @e[tag=su.inair] run effect give @s slow_falling 1
execute as @e[tag=su.inair] at @s run execute unless block ~ ~-1 ~ air run tag @s remove su.inair
execute as @e[type=#su:pets,tag=su.tptoowner] at @s run tag @s remove su.tptoowner
