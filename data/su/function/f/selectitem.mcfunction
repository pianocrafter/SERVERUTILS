execute positioned ~ ~1.6 ~ run tag @e[type=minecraft:item,tag=!PlayerItem,distance=..0.5] add nonPlayerItem
execute if score max_tree_size timber matches 1.. if entity @s[scores={magnet=1}] if predicate su:checktool positioned ~ ~1.6 ~ positioned ^ ^ ^2.75 positioned ~-2.875 ~-2.875 ~-2.875 as @e[type=item,dx=5.75,dy=5.75,dz=5.75] unless entity @s[tag=nonPlayerItem] unless entity @s[tag=encumbered] at @s run summon marker ~ ~ ~ {Tags:["timber_tree","global.ignore"]}
#execute if score max_tree_size timber matches 1.. if entity @s[scores={magnet=1}] if predicate su:checktool positioned ~ ~1.6 ~ positioned ^ ^ ^2.75 positioned ~-2.875 ~-2.875 ~-2.875 as @e[type=item,dx=5.75,dy=5.75,dz=5.75] unless entity @s[tag=nonPlayerItem] unless entity @s[tag=encumbered] at @s run say test
execute if entity @s[scores={magnet=1}] if predicate su:checktool positioned ~ ~1.6 ~ positioned ^ ^ ^2.75 positioned ~-2.875 ~-2.875 ~-2.875 as @e[type=item,dx=5.75,dy=5.75,dz=5.75] unless entity @s[tag=nonPlayerItem] unless entity @s[tag=encumbered] run tag @s add PlayerItem
execute if entity @s[scores={magnet=1}] if predicate su:checktool2 positioned ~ ~1.6 ~ positioned ^ ^ ^2.75 positioned ~-5 ~2.875 ~-5 as @e[type=item,dx=10,dy=30,dz=10] unless entity @s[tag=nonPlayerItem] unless entity @s[tag=encumbered] run tag @s add PlayerItem
execute if entity @s[scores={magnet=1}] if predicate su:checktool positioned ~ ~1.6 ~ positioned ^ ^ ^2.75 positioned ~-2.875 ~-2.875 ~-2.875 as @e[type=experience_orb,dx=5.75,dy=5.75,dz=5.75] unless entity @s[tag=nonPlayerItem] unless entity @s[tag=encumbered] run tag @s add PlayerItem
execute if entity @s[scores={magnet=1}] if predicate su:sneaking unless data entity @s SelectedItem positioned ~ ~1.6 ~ positioned ^ ^ ^2.75 positioned ~-2.875 ~-2.875 ~-2.875 as @e[type=item,dx=5.75,dy=5.75,dz=5.75] unless entity @s[tag=nonPlayerItem] unless entity @s[tag=encumbered] run tag @s add PlayerItem

#execute unless entity @s[scores={magnet=0}] if predicate su:checktool positioned ~-5.5 ~-4.5 ~-5.5 as @e[type=item,dx=11.5,dy=12.5,dz=11.5] unless entity @s[tag=nonPlayerItem] unless entity @s[tag=encumbered] run tag @s add PlayerItem
#execute unless entity @s[scores={magnet=0}] if predicate su:checktool positioned ~-5.5 ~-4.5 ~-5.5 as @e[type=experience_orb,dx=11.5,dy=12.5,dz=11.5] unless entity @s[tag=nonPlayerItem] unless entity @s[tag=encumbered] run tag @s add PlayerItem
#execute unless entity @s[scores={magnet=0}] if predicate su:sneaking unless data entity @s SelectedItem positioned ~-5.5 ~-4.5 ~-5.5 as @e[type=item,dx=11.5,dy=12.5,dz=11.5] unless entity @s[tag=nonPlayerItem] unless entity @s[tag=encumbered] run tag @s add PlayerItem
