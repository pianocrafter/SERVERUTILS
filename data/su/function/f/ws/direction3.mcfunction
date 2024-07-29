
#Facing North
execute as @s[y_rotation=145..-145] run data modify storage su:temp raycast.dir set value '[facing=south]'

#Facing South
execute as @s[y_rotation=-45..45] run data modify storage su:temp raycast.dir set value '[facing=north]'

#Facing East
execute as @s[y_rotation=-145..-45] run data modify storage su:temp raycast.dir set value '[facing=west]'

#Facing West
execute as @s[y_rotation=45..145] run data modify storage su:temp raycast.dir set value '[facing=east]'