
#Facing North
execute as @s[y_rotation=145..-145] run data modify storage su:temp raycast.dir set value '[face=floor,facing=east]'

#Facing South
execute as @s[y_rotation=-45..45] run data modify storage su:temp raycast.dir set value '[face=floor,facing=west]'

#Facing East
execute as @s[y_rotation=-145..-45] run data modify storage su:temp raycast.dir set value '[face=floor,facing=south]'

#Facing West
execute as @s[y_rotation=45..145] run data modify storage su:temp raycast.dir set value '[face=floor,facing=north]'