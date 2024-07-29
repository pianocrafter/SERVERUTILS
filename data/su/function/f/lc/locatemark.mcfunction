#say test
gamerule sendCommandFeedback true

execute if entity @s[scores={locate=2}] run tag @s add su.mansion
execute if entity @s[scores={locate=3}] run tag @s add su.monument
execute if entity @s[scores={locate=4}] run tag @s add su.fortress
execute if entity @s[scores={locate=5}] run tag @s add su.remnant
execute if entity @s[scores={locate=6}] run tag @s add su.trail
execute if entity @s[scores={locate=7}] run tag @s add su.dtemple
execute if entity @s[scores={locate=8}] run tag @s add su.jtemple
execute if entity @s[scores={locate=9}] run tag @s add su.acity
execute if entity @s[scores={locate=10}] run tag @s add su.outpost
execute if entity @s[scores={locate=11}] run tag @s add su.pvillage
execute if entity @s[scores={locate=12}] run tag @s add su.dvillage
execute if entity @s[scores={locate=13}] run tag @s add su.svillage
execute if entity @s[scores={locate=14}] run tag @s add su.snvillage
execute if entity @s[scores={locate=15}] run tag @s add su.tvillage
execute if entity @s[scores={locate=16}] run tag @s add su.ecity
#execute if entity @s[scores={locate=17}] run tag @s add su.

tag @s add su.locate

scoreboard players reset @s locate