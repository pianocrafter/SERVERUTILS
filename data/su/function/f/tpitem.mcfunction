execute unless entity @s[tag=flame] unless entity @s[tag=NOTP] run data modify entity @s PickupDelay set value 0
execute positioned as @s run tp @s @p[scores={itemTest=1..},distance=..128]
execute unless entity @a[distance=..5,scores={itemTest=1..}] unless entity @s[tag=flame] unless entity @s[tag=NOTP] run tp @s @p[distance=..128]
tag @s remove PlayerItem