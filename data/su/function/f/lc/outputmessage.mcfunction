tellraw @s {"text":""}
#$execute if entity @s[tag=!su.fortress,tag=!su.remnant] run tellraw @s ["",{"text":"The nearest $(code) is at ","color":"green"},{"text":"[","color":"dark_green"},{"text":"$(cords)","color":"green","clickEvent":{"action":"run_command","value":"/spreadplayers $(x) $(z) 0 1 false @s"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to teleport","color":"dark_green"}}},{"text":"] ","color":"dark_green"},{"text":"($(distance) blocks away)","color":"green"}]
$tellraw @s ["",{"text":"The nearest $(code) is at ","color":"green"},{"text":"[","color":"dark_green"},{"text":"$(cords)","color":"green","clickEvent":{"action":"run_command","value":"/tp $(x) ~ $(z)"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to teleport","color":"dark_green"}}},{"text":"] ","color":"dark_green"},{"text":"($(distance) blocks away)","color":"green"}]
tellraw @s {"text":""}
execute at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 

#$say $(code)
#$say $(cords)
#$say $(x)
#$say $(z)
#$say $(distance)