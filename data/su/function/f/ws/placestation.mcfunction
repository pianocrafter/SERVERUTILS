$execute unless block ^ ^ ^$(dnum).$(ddec) #minecraft:air run tellraw @a ["",{"text":"[","color":"dark_red"},{"text":"\u26a0","color":"red"},{"text":"]","color":"dark_red"},{"text":" Failed to place $(ws)","color":"red"}]
$execute unless block ^ ^ ^$(dnum).$(ddec) #minecraft:air run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 0.6
$execute if block ^ ^ ^$(dnum).$(ddec) #minecraft:air run setblock ^ ^ ^$(dnum).$(ddec) $(ws)$(dir)
$execute if block ^ ^ ^$(dnum).$(ddec) minecraft:enchanting_table if data storage su:temp raycast.enchant positioned ^ ^ ^$(dnum).$(ddec) run fill ~-3 ~-3 ~-3 ~3 ~3 ~3 minecraft:structure_void replace #minecraft:air
$execute if block ^ ^ ^$(dnum).$(ddec) minecraft:enchanting_table if data storage su:temp raycast.enchant positioned ^ ^ ^1 run fill ~-1 ~ ~-1 ~1 ~ ~1 minecraft:air replace minecraft:structure_void
$execute if block ^ ^ ^$(dnum).$(ddec) minecraft:enchanting_table if data storage su:temp raycast.enchant positioned ^ ^ ^2 run fill ~-1 ~ ~-1 ~1 ~ ~1 minecraft:air replace minecraft:structure_void
$execute if block ^ ^ ^$(dnum).$(ddec) minecraft:enchanting_table if data storage su:temp raycast.enchant positioned ^ ^ ^3 run fill ~-1 ~ ~-1 ~1 ~ ~1 minecraft:air replace minecraft:structure_void
$execute if data storage su:temp raycast.support positioned ^ ^ ^$(dnum).$(ddec) if block ~ ~ ~ minecraft:$(ws) if block ~ ~-1 ~ #su:support run setblock ~ ~-1 ~ minecraft:stone_button$(dir)
$execute positioned ^ ^ ^$(dnum).$(ddec) if block ~ ~ ~ minecraft:$(ws) run summon marker ~ ~ ~ {Invulnerable:1b,Tags:["su.ws"],data:{ws:"$(ws)"}}
$execute positioned ^ ^ ^$(dnum).$(ddec) if block ~ ~ ~ minecraft:$(ws) store result score @n[type=minecraft:marker,tag=su.ws,distance=..0.1] su.wsY run data get entity @s Rotation[0]
$execute positioned ^ ^ ^$(dnum).$(ddec) if block ~ ~ ~ minecraft:$(ws) store result score @n[type=minecraft:marker,tag=su.ws,distance=..0.1] su.wsX run data get entity @s Rotation[1]


data remove storage su:temp raycast