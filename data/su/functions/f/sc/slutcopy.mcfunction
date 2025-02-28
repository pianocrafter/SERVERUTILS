playsound minecraft:entity.ghast.hurt block @a ~ ~ ~ 0.15 2
#$item replace block ~ ~ ~ container.$(slutSlot) from entity @e[limit=1,sort=nearest,type=minecraft:item,tag=slutCopyTemp] container.0
#data modify block 72 173 -24 Items[{Slot:$(slutSlot)b}] set from entity @e[limit=1,sort=nearest,type=minecraft:item,tag=slutCopyTemp] Item
$item replace block ~ ~ ~ container.$(slutSlot) with $(slutItemId)$(slutItemTag) $(slutItemCount)
kill @e[sort=nearest,type=item,tag=slutCopyTemp]

#$say item replace block ~ ~ ~ container.$(slutSlot) with $(slutItemId)$(slutItemTag) $(slutItemCount)
#$say value is $(slutItemTag)
#$say value is $(slutItemId)
#$say value is $(slutItemCount)
