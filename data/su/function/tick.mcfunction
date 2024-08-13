

#kill @e[type=item]
#kill @e[type=area_effect_cloud]
#tp pianoboy913 0 400 0

#############################################################################VANILLA TWEAKS INGEGRATIONS##################################################################################

execute as @a unless score @s tpa.pid matches 1.. store result score @s tpa.pid run scoreboard players add #last tpa.pid 1
execute as @a run scoreboard players operation @s timeSinceDeath = @s ts_LastDeath
execute as @a run scoreboard players operation @s timeSinceDeath /= divideTime ts_LastDeath
execute as @a run scoreboard players operation @s playTimeHours = @s hc_playTime
execute as @a run scoreboard players operation @s playTimeHours /= Math hc_playTimes
##########################################################################################################################################################################################

#advancement revoke @a from su:cloneblock

############################################################################################FEATURE CONFIGURATIONS#################################################################################

execute if data storage su:settings glow run scoreboard players reset @a glow
execute if data storage su:settings glowmobs run scoreboard players reset @a glowmobs
execute if data storage su:settings locate run scoreboard players reset @a locate
execute if data storage su:settings magnet run scoreboard players reset @a magnet
execute if data storage su:settings magnet run tag @a[tag=magnetenable] remove magnetenable
execute if data storage su:settings encumber run scoreboard players reset @a encumber
execute if data storage su:settings encumber run tag @a[tag=encumberenable] remove encumberenable
execute if data storage su:settings ws.all run scoreboard players reset @a anvil
execute if data storage su:settings ws.all run scoreboard players reset @a craft
execute if data storage su:settings ws.all run scoreboard players reset @a stonecut
execute if data storage su:settings ws.all run scoreboard players reset @a grind
execute if data storage su:settings ws.all run scoreboard players reset @a loom
execute if data storage su:settings ws.all run scoreboard players reset @a cartograph
execute if data storage su:settings ws.all run scoreboard players reset @a smith
execute if data storage su:settings ws.ench run scoreboard players reset @a enchant
execute if data storage su:settings ws.echest run scoreboard players reset @a echest
execute if data storage su:settings xpcombine run scoreboard players reset @a combinexp
execute if data storage su:settings xpcombine run tag @a[tag=combinexpdisable] remove combinexpdisable
execute if data storage su:settings pettp run scoreboard players reset @a tppet
execute if data storage su:settings pettp run tag @a[tag=tppetdisable] remove tppetdisable
execute if data storage su:settings hat run scoreboard players reset @a hat
execute if data storage su:settings sf.all run scoreboard players reset @a surface

###################################################################################################################################################################################################


############################################################################################WORKSTATIONS###########################################################################################
execute as @e[type=minecraft:marker,tag=su.ws] at @s run function su:f/ws/wstick
###################################################################################################################################################################################################

############################################################################################SLUT CHEST#############################################################################################

#execute unless entity @e[type=minecraft:armor_stand,tag=slutchest] at @p run function su:f/sc/slutspawn
execute unless data storage su:settings slut as @n[type=minecraft:armor_stand,tag=slutchest] at @s run function su:f/sc/sluttick
execute unless data storage su:settings slut as @e[type=item,nbt={Age:5998s}] at @s unless predicate su:scblacklist as @n[type=minecraft:armor_stand,tag=slutchest] run function su:f/sc/slutitem
execute unless data storage su:settings slut as @e[type=item] unless entity @s[nbt={Health:5s}] at @s unless predicate su:scblacklist as @n[type=minecraft:armor_stand,tag=slutchest] run function su:f/sc/slutitem
execute unless data storage su:settings slut as @e[type=item,tag=encumbered,nbt={Age:1200s}] at @s unless predicate su:scblacklist as @n[type=minecraft:armor_stand,tag=slutchest] run function su:f/sc/slutitem
execute unless data storage su:settings slut in minecraft:the_end as @e[type=item,predicate=su:outofworld] unless predicate su:endblacklist unless predicate su:scblacklist in minecraft:overworld as @n[type=minecraft:armor_stand,tag=slutchest] run function su:f/sc/slutitem

###################################################################################################################################################################################################


#########################################################################################MAIN PLAYER TICK##########################################################################################
execute as @a at @s run function su:f/idtickpass with storage su:temp
###################################################################################################################################################################################################