$execute unless data storage su:settings perms.p$(id).ID run data modify storage su:settings perms.p$(id).ID set value $(id)

$function su:utick with storage su:settings perms.p$(id)
data remove storage su:temp id
#$say Test: $(id)