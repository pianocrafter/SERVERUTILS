execute as @e[type=#minecraft:arrows,tag=!playerarrow,distance=..128] unless entity @s[tag=skelarrow] at @s as @e[type=!#minecraft:arrows,limit=1,sort=nearest] if entity @s[type=minecraft:skeleton] run tag @e[type=#minecraft:arrows,sort=nearest,limit=1] add skelarrow
execute as @e[type=#minecraft:arrows,tag=!playerarrow,distance=..128] unless entity @s[tag=skelarrow] at @s as @e[type=!#minecraft:arrows,limit=1,sort=nearest] if entity @s[type=minecraft:stray] run tag @e[type=#minecraft:arrows,sort=nearest,limit=1] add skelarrow
execute as @e[type=#minecraft:arrows,tag=!skelarrow,distance=..128] at @s as @e[type=!#minecraft:arrows,limit=1,sort=nearest] if entity @s[type=minecraft:player] if predicate su:checkranged run tag @e[type=#minecraft:arrows,sort=nearest,limit=1] add playerarrow

execute as @e[type=minecraft:trident,tag=!playerarrow,distance=..128] unless entity @s[tag=skelarrow] at @s as @e[type=!trident,limit=1,sort=nearest] if entity @s[type=minecraft:drowned] run tag @e[type=trident,sort=nearest,limit=1] add skelarrow
execute as @e[type=minecraft:trident,tag=!skelarrow,distance=..128] at @s as @e[type=!trident,limit=1,sort=nearest] if entity @s[type=minecraft:player] unless data entity @s SelectedItem run tag @e[type=trident,sort=nearest,limit=1] add playerarrow
execute as @e[type=minecraft:trident,tag=!skelarrow,distance=..128] at @s as @e[type=!trident,limit=1,sort=nearest] if entity @s[type=minecraft:player] if predicate su:checkranged run tag @e[type=trident,sort=nearest,limit=1] add playerarrow

execute as @e[type=#minecraft:arrows,tag=playerarrow,distance=..128] at @s run function su:f/rangekill
execute as @e[type=minecraft:trident,tag=playerarrow,distance=..128] at @s run function su:f/rangekill

execute as @e[type=minecraft:area_effect_cloud,tag=playerKillTest,distance=..128] at @s run tag @e[type=item,tag=!nonPlayerItem,distance=..5] add PlayerItem
execute as @e[type=minecraft:area_effect_cloud,tag=playerKillTest,distance=..128] at @s run tag @e[type=experience_orb,tag=!nonPlayerItem,distance=..5] add PlayerItem

scoreboard players remove @e[type=!#su:itemexlude,scores={itemKillTime=1..}] itemKillTime 1
scoreboard players reset @e[type=!#su:itemexlude,scores={itemKillTime=..0}] itemKillTime

execute if entity @s[nbt={SelectedItem:{components:{"minecraft:enchantments":{levels:{"minecraft:infinity":1}}}}}] run scoreboard players set @s infinityBan 200
execute unless entity @s[gamemode=creative] unless entity @s[scores={infinityBan=1..}] as @e[type=#minecraft:arrows,tag=playerarrow,nbt={life:20s},distance=..128] at @s run function su:f/tparrow
execute unless entity @s[gamemode=creative] if entity @s[scores={infinityBan=1..}] as @e[type=#minecraft:arrows,tag=playerarrow,nbt={life:20s},distance=..128] at @s run function su:f/tparrow2
execute if entity @s[gamemode=creative] as @e[type=#minecraft:arrows,tag=playerarrow,nbt={life:20s},distance=..128] at @s run kill @s
scoreboard players remove @s[scores={infinityBan=1..}] infinityBan 1