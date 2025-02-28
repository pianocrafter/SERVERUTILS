playsound minecraft:entity.ghast.hurt block @a ~ ~ ~ 0.15 2
$item replace block ~ ~ ~ container.$(slutSlot) from entity @e[limit=1,sort=nearest,type=minecraft:item,tag=slutCopyTemp] container.0
kill @e[limit=1,sort=nearest,type=item,tag=slutCopyTemp]