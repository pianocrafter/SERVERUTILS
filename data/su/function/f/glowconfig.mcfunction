tellraw @s {"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}
tellraw @s ["",{"text":"----------","bold":true,"color":"green"},{"text":"Glowing Mobs Config","bold":true,"color":"yellow"},{"text":"----------","bold":true,"color":"green"}]

tellraw @s {"text":" "}
tellraw @s ["",{"text":"      "},{"text":"[Enable Passive] ","color":"white","clickEvent":{"action":"run_command","value":"/trigger glowmobs set 97"}},{"text":"    ","color":"white"},{"text":"[Enable Pillager]","color":"white","clickEvent":{"action":"run_command","value":"/trigger glowmobs set 98"}},{"text":"\n                     ","color":"white"},{"text":" ","color":"white","clickEvent":{"action":"run_command","value":"/trigger glowmobs set 99"}},{"text":"[Disable All]","color":"red","clickEvent":{"action":"run_command","value":"/function su:f/gm/3disableall"}}]
tellraw @s {"text":" "}

execute if entity @s[tag=glowmobBEE] run tellraw @s ["",{"text":"BEE - [","color":"dark_green"},{"text":"Enabled","bold":true,"color":"green","clickEvent":{"action":"run_command","value":"/trigger glowmobs set 2"}},{"text":"/","color":"dark_green","clickEvent":{"action":"run_command","value":"/trigger glowmobs set 2"}},{"text":"Disabled","color":"gray","clickEvent":{"action":"run_command","value":"/trigger glowmobs set 2"}},{"text":"]","color":"dark_green"}]
execute if entity @s[tag=!glowmobBEE] run tellraw @s ["",{"text":"BEE - [","color":"dark_green"},{"text":"Enabled","color":"gray","clickEvent":{"action":"run_command","value":"/trigger glowmobs set 2"}},{"text":"/","color":"dark_green","clickEvent":{"action":"run_command","value":"/trigger glowmobs set 2"}},{"text":"Disabled","bold":true,"color":"red","clickEvent":{"action":"run_command","value":"/trigger glowmobs set 2"}},{"text":"]","color":"dark_green"}]
#execute if entity @s[scores={glowmobs=2}] run function su:f/gm/bee

execute if entity @s[tag=glowmobCHICKEN] run tellraw @s ["",{"text":"CHICKEN - [","color":"dark_green"},{"text":"Enabled","bold":true,"color":"green","clickEvent":{"action":"run_command","value":"/trigger glowmobs set 3"}},{"text":"/","color":"dark_green","clickEvent":{"action":"run_command","value":"/trigger glowmobs set 3"}},{"text":"Disabled","color":"gray","clickEvent":{"action":"run_command","value":"/trigger glowmobs set 3"}},{"text":"]","color":"dark_green"}]
execute if entity @s[tag=!glowmobCHICKEN] run tellraw @s ["",{"text":"CHICKEN - [","color":"dark_green"},{"text":"Enabled","color":"gray","clickEvent":{"action":"run_command","value":"/trigger glowmobs set 3"}},{"text":"/","color":"dark_green","clickEvent":{"action":"run_command","value":"/trigger glowmobs set 3"}},{"text":"Disabled","bold":true,"color":"red","clickEvent":{"action":"run_command","value":"/trigger glowmobs set 3"}},{"text":"]","color":"dark_green"}]
#execute if entity @s[scores={glowmobs=3}] run function su:f/gm/chicken

execute if entity @s[tag=glowmobCOW] run tellraw @s ["",{"text":"COW - [","color":"dark_green"},{"text":"Enabled","bold":true,"color":"green","clickEvent":{"action":"run_command","value":"/trigger glowmobs set 4"}},{"text":"/","color":"dark_green","clickEvent":{"action":"run_command","value":"/trigger glowmobs set 4"}},{"text":"Disabled","color":"gray","clickEvent":{"action":"run_command","value":"/trigger glowmobs set 4"}},{"text":"]","color":"dark_green"}]
execute if entity @s[tag=!glowmobCOW] run tellraw @s ["",{"text":"COW - [","color":"dark_green"},{"text":"Enabled","color":"gray","clickEvent":{"action":"run_command","value":"/trigger glowmobs set 4"}},{"text":"/","color":"dark_green","clickEvent":{"action":"run_command","value":"/trigger glowmobs set 4"}},{"text":"Disabled","bold":true,"color":"red","clickEvent":{"action":"run_command","value":"/trigger glowmobs set 4"}},{"text":"]","color":"dark_green"}]
#execute if entity @s[scores={glowmobs=4}] run function su:f/gm/cow

execute if entity @s[tag=glowmobCREEPER] run tellraw @s ["",{"text":"CREEPER - [","color":"dark_green"},{"text":"Enabled","bold":true,"color":"green","clickEvent":{"action":"run_command","value":"/trigger glowmobs set 22"}},{"text":"/","color":"dark_green","clickEvent":{"action":"run_command","value":"/trigger glowmobs set 22"}},{"text":"Disabled","color":"gray","clickEvent":{"action":"run_command","value":"/trigger glowmobs set 22"}},{"text":"]","color":"dark_green"}]
execute if entity @s[tag=!glowmobCREEPER] run tellraw @s ["",{"text":"CREEPER - [","color":"dark_green"},{"text":"Enabled","color":"gray","clickEvent":{"action":"run_command","value":"/trigger glowmobs set 22"}},{"text":"/","color":"dark_green","clickEvent":{"action":"run_command","value":"/trigger glowmobs set 22"}},{"text":"Disabled","bold":true,"color":"red","clickEvent":{"action":"run_command","value":"/trigger glowmobs set 22"}},{"text":"]","color":"dark_green"}]
#execute if entity @s[scores={glowmobs=22}] run function su:f/gm/creeper

execute if entity @s[tag=glowmobDONKEY] run tellraw @s ["",{"text":"DONKEY - [","color":"dark_green"},{"text":"Enabled","bold":true,"color":"green","clickEvent":{"action":"run_command","value":"/trigger glowmobs set 5"}},{"text":"/","color":"dark_green","clickEvent":{"action":"run_command","value":"/trigger glowmobs set 5"}},{"text":"Disabled","color":"gray","clickEvent":{"action":"run_command","value":"/trigger glowmobs set 5"}},{"text":"]","color":"dark_green"}]
execute if entity @s[tag=!glowmobDONKEY] run tellraw @s ["",{"text":"DONKEY - [","color":"dark_green"},{"text":"Enabled","color":"gray","clickEvent":{"action":"run_command","value":"/trigger glowmobs set 5"}},{"text":"/","color":"dark_green","clickEvent":{"action":"run_command","value":"/trigger glowmobs set 5"}},{"text":"Disabled","bold":true,"color":"red","clickEvent":{"action":"run_command","value":"/trigger glowmobs set 5"}},{"text":"]","color":"dark_green"}]
#execute if entity @s[scores={glowmobs=5}] run function su:f/gm/donkey

execute if entity @s[tag=glowmobDROWNED] run tellraw @s ["",{"text":"DROWNED - [","color":"dark_green"},{"text":"Enabled","bold":true,"color":"green","clickEvent":{"action":"run_command","value":"/trigger glowmobs set 6"}},{"text":"/","color":"dark_green","clickEvent":{"action":"run_command","value":"/trigger glowmobs set 6"}},{"text":"Disabled","color":"gray","clickEvent":{"action":"run_command","value":"/trigger glowmobs set 6"}},{"text":"]","color":"dark_green"}]
execute if entity @s[tag=!glowmobDROWNED] run tellraw @s ["",{"text":"DROWNED - [","color":"dark_green"},{"text":"Enabled","color":"gray","clickEvent":{"action":"run_command","value":"/trigger glowmobs set 6"}},{"text":"/","color":"dark_green","clickEvent":{"action":"run_command","value":"/trigger glowmobs set 6"}},{"text":"Disabled","bold":true,"color":"red","clickEvent":{"action":"run_command","value":"/trigger glowmobs set 6"}},{"text":"]","color":"dark_green"}]
#execute if entity @s[scores={glowmobs=6}] run function su:f/gm/drowned

execute if entity @s[tag=glowmobELDER] run tellraw @s ["",{"text":"ELDER GUARDIAN - [","color":"dark_green"},{"text":"Enabled","bold":true,"color":"green","clickEvent":{"action":"run_command","value":"/trigger glowmobs set 7"}},{"text":"/","color":"dark_green","clickEvent":{"action":"run_command","value":"/trigger glowmobs set 7"}},{"text":"Disabled","color":"gray","clickEvent":{"action":"run_command","value":"/trigger glowmobs set 7"}},{"text":"]","color":"dark_green"}]
execute if entity @s[tag=!glowmobELDER] run tellraw @s ["",{"text":"ELDER GUARDIAN - [","color":"dark_green"},{"text":"Enabled","color":"gray","clickEvent":{"action":"run_command","value":"/trigger glowmobs set 7"}},{"text":"/","color":"dark_green","clickEvent":{"action":"run_command","value":"/trigger glowmobs set 7"}},{"text":"Disabled","bold":true,"color":"red","clickEvent":{"action":"run_command","value":"/trigger glowmobs set 7"}},{"text":"]","color":"dark_green"}]
#execute if entity @s[scores={glowmobs=7}] run function su:f/gm/elder

execute if entity @s[tag=glowmobENDERMAN] run tellraw @s ["",{"text":"ENDERMAN - [","color":"dark_green"},{"text":"Enabled","bold":true,"color":"green","clickEvent":{"action":"run_command","value":"/trigger glowmobs set 23"}},{"text":"/","color":"dark_green","clickEvent":{"action":"run_command","value":"/trigger glowmobs set 23"}},{"text":"Disabled","color":"gray","clickEvent":{"action":"run_command","value":"/trigger glowmobs set 23"}},{"text":"]","color":"dark_green"}]
execute if entity @s[tag=!glowmobENDERMAN] run tellraw @s ["",{"text":"ENDERMAN - [","color":"dark_green"},{"text":"Enabled","color":"gray","clickEvent":{"action":"run_command","value":"/trigger glowmobs set 23"}},{"text":"/","color":"dark_green","clickEvent":{"action":"run_command","value":"/trigger glowmobs set 23"}},{"text":"Disabled","bold":true,"color":"red","clickEvent":{"action":"run_command","value":"/trigger glowmobs set 23"}},{"text":"]","color":"dark_green"}]
#execute if entity @s[scores={glowmobs=23}] run function su:f/gm/enderman

execute if entity @s[tag=glowmobEVOKER] run tellraw @s ["",{"text":"EVOKER - [","color":"dark_green"},{"text":"Enabled","bold":true,"color":"green","clickEvent":{"action":"run_command","value":"/trigger glowmobs set 8"}},{"text":"/","color":"dark_green","clickEvent":{"action":"run_command","value":"/trigger glowmobs set 8"}},{"text":"Disabled","color":"gray","clickEvent":{"action":"run_command","value":"/trigger glowmobs set 8"}},{"text":"]","color":"dark_green"}]
execute if entity @s[tag=!glowmobEVOKER] run tellraw @s ["",{"text":"EVOKER - [","color":"dark_green"},{"text":"Enabled","color":"gray","clickEvent":{"action":"run_command","value":"/trigger glowmobs set 8"}},{"text":"/","color":"dark_green","clickEvent":{"action":"run_command","value":"/trigger glowmobs set 8"}},{"text":"Disabled","bold":true,"color":"red","clickEvent":{"action":"run_command","value":"/trigger glowmobs set 8"}},{"text":"]","color":"dark_green"}]
#execute if entity @s[scores={glowmobs=8}] run function su:f/gm/evoker

execute if entity @s[tag=glowmobGHAST] run tellraw @s ["",{"text":"GHAST - [","color":"dark_green"},{"text":"Enabled","bold":true,"color":"green","clickEvent":{"action":"run_command","value":"/trigger glowmobs set 9"}},{"text":"/","color":"dark_green","clickEvent":{"action":"run_command","value":"/trigger glowmobs set 9"}},{"text":"Disabled","color":"gray","clickEvent":{"action":"run_command","value":"/trigger glowmobs set 9"}},{"text":"]","color":"dark_green"}]
execute if entity @s[tag=!glowmobGHAST] run tellraw @s ["",{"text":"GHAST - [","color":"dark_green"},{"text":"Enabled","color":"gray","clickEvent":{"action":"run_command","value":"/trigger glowmobs set 9"}},{"text":"/","color":"dark_green","clickEvent":{"action":"run_command","value":"/trigger glowmobs set 9"}},{"text":"Disabled","bold":true,"color":"red","clickEvent":{"action":"run_command","value":"/trigger glowmobs set 9"}},{"text":"]","color":"dark_green"}]
#execute if entity @s[scores={glowmobs=9}] run function su:f/gm/ghast

execute if entity @s[tag=glowmobGOAT] run tellraw @s ["",{"text":"GOAT - [","color":"dark_green"},{"text":"Enabled","bold":true,"color":"green","clickEvent":{"action":"run_command","value":"/trigger glowmobs set 10"}},{"text":"/","color":"dark_green","clickEvent":{"action":"run_command","value":"/trigger glowmobs set 10"}},{"text":"Disabled","color":"gray","clickEvent":{"action":"run_command","value":"/trigger glowmobs set 10"}},{"text":"]","color":"dark_green"}]
execute if entity @s[tag=!glowmobGOAT] run tellraw @s ["",{"text":"GOAT - [","color":"dark_green"},{"text":"Enabled","color":"gray","clickEvent":{"action":"run_command","value":"/trigger glowmobs set 10"}},{"text":"/","color":"dark_green","clickEvent":{"action":"run_command","value":"/trigger glowmobs set 10"}},{"text":"Disabled","bold":true,"color":"red","clickEvent":{"action":"run_command","value":"/trigger glowmobs set 10"}},{"text":"]","color":"dark_green"}]
#execute if entity @s[scores={glowmobs=10}] run function su:f/gm/goat

execute if entity @s[tag=glowmobHORSE] run tellraw @s ["",{"text":"HORSES - [","color":"dark_green"},{"text":"Enabled","bold":true,"color":"green","clickEvent":{"action":"run_command","value":"/trigger glowmobs set 11"}},{"text":"/","color":"dark_green","clickEvent":{"action":"run_command","value":"/trigger glowmobs set 11"}},{"text":"Disabled","color":"gray","clickEvent":{"action":"run_command","value":"/trigger glowmobs set 11"}},{"text":"]","color":"dark_green"}]
execute if entity @s[tag=!glowmobHORSE] run tellraw @s ["",{"text":"HORSES - [","color":"dark_green"},{"text":"Enabled","color":"gray","clickEvent":{"action":"run_command","value":"/trigger glowmobs set 11"}},{"text":"/","color":"dark_green","clickEvent":{"action":"run_command","value":"/trigger glowmobs set 11"}},{"text":"Disabled","bold":true,"color":"red","clickEvent":{"action":"run_command","value":"/trigger glowmobs set 11"}},{"text":"]","color":"dark_green"}]
#execute if entity @s[scores={glowmobs=11}] run function su:f/gm/horse

execute if entity @s[tag=glowmobPIG] run tellraw @s ["",{"text":"PIG - [","color":"dark_green"},{"text":"Enabled","bold":true,"color":"green","clickEvent":{"action":"run_command","value":"/trigger glowmobs set 12"}},{"text":"/","color":"dark_green","clickEvent":{"action":"run_command","value":"/trigger glowmobs set 12"}},{"text":"Disabled","color":"gray","clickEvent":{"action":"run_command","value":"/trigger glowmobs set 12"}},{"text":"]","color":"dark_green"}]
execute if entity @s[tag=!glowmobPIG] run tellraw @s ["",{"text":"PIG - [","color":"dark_green"},{"text":"Enabled","color":"gray","clickEvent":{"action":"run_command","value":"/trigger glowmobs set 12"}},{"text":"/","color":"dark_green","clickEvent":{"action":"run_command","value":"/trigger glowmobs set 12"}},{"text":"Disabled","bold":true,"color":"red","clickEvent":{"action":"run_command","value":"/trigger glowmobs set 12"}},{"text":"]","color":"dark_green"}]
#execute if entity @s[scores={glowmobs=12}] run function su:f/gm/pig




tellraw @s {"text":" "}
tellraw @s ["",{"text":"--------","color":"green"},{"text":"[","color":"yellow"},{"text":"Previous Page","color":"gray"},{"text":"] ","color":"yellow"},{"text":"[","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger glowmobs set 100"}},{"text":"Next Page","bold":true,"color":"green","clickEvent":{"action":"run_command","value":"/trigger glowmobs set 100"}},{"text":"]","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger glowmobs set 100"}},{"text":"--------","color":"green"}]


