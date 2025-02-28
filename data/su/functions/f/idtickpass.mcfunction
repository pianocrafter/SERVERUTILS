data remove storage su:temp id
execute store result storage su:temp id int 1 run scoreboard players get @s tpa.pid 
function su:f/idtickpass2 with storage su:temp
#$execute unless data storage su:settings perms.p$(id).ID run data modify storage su:settings perms.p$(id).ID set value $(id)
#$say $(id)
#$function su:utick with storage su:settings perms.p$(id).ID
