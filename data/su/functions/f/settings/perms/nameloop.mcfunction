data modify storage su:temp nametemp.test set value '"},"hoverEvent":{"action":"show_entity","contents":{"id":'
$data modify storage su:temp nametemp.temp set string storage su:temp pname $(index) $(index2)
execute store success score NAMETEST suTest run data modify storage su:temp nametemp.test set from storage su:temp nametemp.temp
execute unless score NAMETEST suTest matches 0 run function su:f/settings/perms/cleanname
execute if score NAMETEST suTest matches 0 run function su:f/settings/perms/nameoutput with storage su:temp nametemp