
execute if data entity @s Inventory[{Slot:103b}] if data entity @s SelectedItem run data modify storage serverutil:temp HeadItem set from entity @s Inventory[{Slot:103b}]
execute unless data entity @s SelectedItem run tellraw @s ["",{"text":"[","color":"dark_red"},{"text":"Hat","color":"red"},{"text":"]","color":"dark_red"},{"text":" No item in hand","color":"red"}]
execute unless data entity @s SelectedItem at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~
execute if data entity @s SelectedItem at @s run playsound minecraft:block.note_block.bell master @s ~ ~ ~
execute if data entity @s SelectedItem run item replace entity @s armor.head from entity @s weapon.mainhand
execute if data entity @s SelectedItem run item replace entity @s weapon.mainhand with minecraft:air
execute if data storage serverutil:temp HeadItem at @s run summon minecraft:item ~ ~ ~ {Tags:["hatSavedItem"],Item:{id:"minecraft:stone",count:1}}
execute if data storage serverutil:temp HeadItem at @s run data modify entity @n[type=item,tag=hatSavedItem] Item set from storage serverutil:temp HeadItem
execute if data storage serverutil:temp HeadItem run data remove storage serverutil:temp HeadItem