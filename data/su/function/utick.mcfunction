scoreboard players remove @a[scores={serverutiltoggle=1..}] serverutiltoggle 1
scoreboard players reset @a[scores={serverutiltoggle=..0}] serverutiltoggle
scoreboard players remove @a[scores={serverutiltoggle2=1..}] serverutiltoggle2 1
scoreboard players reset @a[scores={serverutiltoggle2=..0}] serverutiltoggle2
scoreboard players remove @a[scores={serverutiltoggle3=1..}] serverutiltoggle3 1
scoreboard players reset @a[scores={serverutiltoggle3=..0}] serverutiltoggle3
scoreboard players remove @a[scores={serverutiltoggle4=1..}] serverutiltoggle4 1
scoreboard players reset @a[scores={serverutiltoggle4=..0}] serverutiltoggle4

#kill @e[type=item]
#kill @e[type=area_effect_cloud]
#tp pianoboy913 0 400 0

execute as @a[gamemode=creative] run function su:uctick

execute as @a run scoreboard players operation @s timeSinceDeath = @s ts_LastDeath
execute as @a run scoreboard players operation @s timeSinceDeath /= divideTime ts_LastDeath
execute as @a run scoreboard players operation @s playTimeHours = @s hc_playTime
execute as @a run scoreboard players operation @s playTimeHours /= Math hc_playTimes

##For Seperate veinmine datapack
#scoreboard players enable @a veinmine
#scoreboard players reset @a[scores={veinmine=2..}] veinmine

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
execute unless data storage su:settings ws.all run scoreboard players enable @a[advancements={su:anvil=true}] anvil
execute unless data storage su:settings ws.all run scoreboard players enable @a[advancements={su:craftingtable=true}] craft
execute unless data storage su:settings ws.all run scoreboard players enable @a[advancements={su:stonecut=true}] stonecut
execute unless data storage su:settings ws.all run scoreboard players enable @a[advancements={su:grindstone=true}] grind
execute unless data storage su:settings ws.echest run scoreboard players enable @a[advancements={su:echest=true}] echest
execute unless data storage su:settings ws.ench run scoreboard players enable @a[advancements={su:enchant=true}] enchant
execute unless data storage su:settings ws.all run scoreboard players enable @a[advancements={su:loom=true}] loom
execute unless data storage su:settings ws.all run scoreboard players enable @a[advancements={su:cartograph=true}] cartograph
execute unless data storage su:settings ws.all run scoreboard players enable @a[advancements={su:smith=true}] smith

execute as @a[scores={anvil=1..}] at @s run function su:f/ws/anvil
execute as @a[scores={craft=1..}] at @s run function su:f/ws/craftingtable
execute as @a[scores={stonecut=1..}] at @s run function su:f/ws/stonecutter
execute as @a[scores={grind=1..}] at @s run function su:f/ws/grindstone
execute as @a[scores={echest=1..}] at @s run function su:f/ws/enderchest
execute as @a[scores={enchant=1..}] at @s run function su:f/ws/enchant
execute as @a[scores={loom=1..}] at @s run function su:f/ws/loom
execute as @a[scores={cartograph=1..}] at @s run function su:f/ws/cartograph
execute as @a[scores={smith=1..}] at @s run function su:f/ws/smith

execute as @e[type=minecraft:marker,tag=su.ws] at @s run function su:f/ws/wstick

scoreboard players reset @a[scores={anvil=1..}] anvil
scoreboard players reset @a[scores={craft=1..}] craft
scoreboard players reset @a[scores={stonecut=1..}] stonecut
scoreboard players reset @a[scores={grind=1..}] grind
scoreboard players reset @a[scores={echest=1..}] echest
scoreboard players reset @a[scores={enchant=1..}] enchant
scoreboard players reset @a[scores={loom=1..}] loom
scoreboard players reset @a[scores={cartograph=1..}] cartograph
scoreboard players reset @a[scores={smith=1..}] smith

###################################################################################################################################################################################################

############################################################################################LOCATE COMMAND#########################################################################################
execute unless data storage su:settings locate run scoreboard players enable @a locate


execute as @a[scores={locate=1}] at @s run function su:f/lc/message
execute as @a[tag=su.locate] run function su:f/lc/locate
execute as @a[scores={locate=2..18}] run function su:f/lc/locatemark

scoreboard players reset @a[scores={locate=1}] locate
scoreboard players reset @a[scores={locate=19..}] locate
###################################################################################################################################################################################################

############################################################################################PLAYER/MOB GLOW########################################################################################
execute unless data storage su:settings glow run scoreboard players enable @a glow
execute unless data storage su:settings glowmobs run scoreboard players enable @a glowmobs

####################################MOB GLOW####################################
execute as @a[scores={glowmobs=2..99}] run function su:f/glowmobchange
execute as @a[scores={glowmobs=1}] run function su:f/glowconfig
execute as @a[scores={glowmobs=100}] run function su:f/glowconfig2

execute as @a at @s run function su:f/glowmob
################################################################################

execute as @a[scores={glow=1}] at @s run playsound minecraft:entity.glow_squid.ambient master @s ~ ~ ~
execute as @a[scores={glow=1}] run title @s actionbar ["",{"text":"[","color":"gray"},{"text":"\ud83c\udf1f"},{"text":"]","color":"gray"},{"text":" Glow Enabled","bold":true}]
execute as @a[scores={glow=1}] run scoreboard players set @s glow 2
execute as @a[scores={glow=2}] unless predicate su:sneaking run effect give @s minecraft:glowing 1 0 true
execute as @a[scores={glow=2}] if predicate su:sneaking run effect clear @s minecraft:glowing
execute as @a[scores={glow=3}] at @s run playsound minecraft:entity.glow_squid.death master @s ~ ~ ~
execute as @a[scores={glow=3}] run title @s actionbar ["",{"text":"[","color":"gray"},{"text":"\ud83c\udf1f"},{"text":"]","color":"gray"},{"text":" Glow Disabled","bold":true}]


scoreboard players reset @a[scores={glow=3..}] glow
scoreboard players reset @a[scores={glowmobs=1..}] glowmobs

###################################################################################################################################################################################################

############################################################################################SLUT CHEST#############################################################################################

#execute unless entity @e[type=minecraft:armor_stand,tag=slutchest] at @p run function su:f/sc/slutspawn
execute unless data storage su:settings slut as @n[type=minecraft:armor_stand,tag=slutchest] at @s run function su:f/sc/sluttick
execute unless data storage su:settings slut as @e[type=item,nbt={Age:5998s}] at @s unless predicate su:scblacklist as @n[type=minecraft:armor_stand,tag=slutchest] run function su:f/sc/slutitem
execute unless data storage su:settings slut as @e[type=item] unless entity @s[nbt={Health:5s}] at @s unless predicate su:scblacklist as @n[type=minecraft:armor_stand,tag=slutchest] run function su:f/sc/slutitem
execute unless data storage su:settings slut as @e[type=item,tag=encumbered,nbt={Age:1200s}] at @s unless predicate su:scblacklist as @n[type=minecraft:armor_stand,tag=slutchest] run function su:f/sc/slutitem
execute unless data storage su:settings slut in minecraft:the_end as @e[type=item,predicate=su:outofworld] unless predicate su:endblacklist unless predicate su:scblacklist in minecraft:overworld as @n[type=minecraft:armor_stand,tag=slutchest] run function su:f/sc/slutitem

###################################################################################################################################################################################################

####################################################################################XP COMBINE#############################################################################################
execute unless data storage su:settings xpcombine run scoreboard players enable @a combinexp
execute as @a[scores={combinexp=1},tag=!combinexpdisable] run scoreboard players set @s serverutiltoggle3 31
execute as @a[scores={combinexp=1,serverutiltoggle3=1..}] run title @s actionbar {"text":"XP Combine: Disabled","bold":true,"color":"red"}
execute as @a[scores={combinexp=1},tag=!combinexpdisable] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 
execute as @a[scores={combinexp=1},tag=!combinexpdisable] run tag @s add combinexpdisable

execute as @a[scores={combinexp=0}] at @s run function su:f/combinexp

execute as @a[scores={combinexp=0},tag=combinexpdisable] run scoreboard players set @s serverutiltoggle3 31
execute as @a[scores={combinexp=0,serverutiltoggle3=1..}] run title @s actionbar {"text":"XP Combine: Enabled","bold":true,"color":"green"}
execute as @a[scores={combinexp=0},tag=combinexpdisable] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~
execute as @a[scores={combinexp=0},tag=combinexpdisable] run tag @s remove combinexpdisable
scoreboard players reset @a[scores={combinexp=2..}] combinexp
###################################################################################################################################################################################################

#####################################################################################ITEM ENCUMBERMENT######################################################################################
execute unless data storage su:settings encumber run scoreboard players enable @a encumber
execute as @a[scores={encumber=1},tag=!encumberenable] run scoreboard players set @s serverutiltoggle 31
execute as @a[scores={encumber=1,serverutiltoggle=1..}] run title @s actionbar {"text":"Encumberment: Enabled","bold":true,"color":"green"}
execute as @a[scores={encumber=1},tag=!encumberenable] at @s run playsound minecraft:block.anvil.land master @s ~ ~ ~ 0.5
execute as @a[scores={encumber=1},tag=!encumberenable] run tag @s add encumberenable


execute as @a[scores={encumber=1}] at @s at @e[type=item,distance=..1] run function su:f/encumber
execute as @a[scores={encumber=1,magnet=1}] at @s positioned ~ ~1.6 ~ positioned ^ ^ ^2.75 positioned ~-2.875 ~-2.875 ~-2.875 at @e[type=item,dx=5.75,dy=5.75,dz=5.75] run function su:f/encumber

execute as @a[scores={encumber=1}] unless entity @s[predicate=su:sneaking,x_rotation=90] at @s as @e[type=item,distance=..1,tag=encumbered] run data modify entity @s PickupDelay set value 4
execute as @a[scores={encumber=1}] unless entity @s[predicate=su:sneaking,x_rotation=90] at @s positioned ~-5.5 ~-4.5 ~-5.5 as @e[type=item,dx=11.5,dy=12.5,dz=11.5,tag=encumbered] run data modify entity @s PickupDelay set value 4
execute as @a[scores={encumber=0}] at @s as @e[type=item,distance=..1,tag=encumbered] run data modify entity @s PickupDelay set value 0


execute as @a[scores={encumber=0},tag=encumberenable] run scoreboard players set @s serverutiltoggle 31
execute as @a[scores={encumber=0,serverutiltoggle=1..}] run title @s actionbar {"text":"Encumberment: Disabled","bold":true,"color":"red"}
execute as @a[scores={encumber=0},tag=encumberenable] at @s run playsound minecraft:block.anvil.land master @s ~ ~ ~ 0.5
execute as @a[scores={encumber=0},tag=encumberenable] run tag @s remove encumberenable
scoreboard players reset @a[scores={encumber=2..}] encumber
###########################################################################################################################################################################################


###################################################################################ITEM MAGNET############################################################################################
execute unless data storage su:settings magnet run scoreboard players enable @a magnet
execute as @a[scores={magnet=1},tag=!magnetenable] run scoreboard players set @s serverutiltoggle2 31
execute as @a[scores={magnet=1,serverutiltoggle2=1..}] run title @s actionbar {"text":"Item Magnet: Enabled","bold":true,"color":"green"}
execute as @a[scores={magnet=1},tag=!magnetenable] at @s run playsound minecraft:entity.player.teleport master @s ~ ~ ~
execute as @a[scores={magnet=1},tag=!magnetenable] run tag @s add magnetenable

execute as @a at @s run function su:f/selectitem
execute as @a[scores={magnet=1}] at @s run function su:f/selectarrow
execute as @e[type=#minecraft:arrows,tag=!playerarrow,tag=!skelarrow,distance=..128] run tag @s add skelarrow
execute as @e[type=minecraft:trident,tag=!playerarrow,tag=!skelarrow,distance=..128] run tag @s add skelarrow

execute as @e[type=item,tag=!nonPlayerItem] unless entity @s[tag=PlayerItem] run tag @s add nonPlayerItem
execute as @e[type=experience_orb,tag=!nonPlayerItem] unless entity @s[tag=PlayerItem] run tag @s add nonPlayerItem

####################################ITEM TP####################################
scoreboard players set @a[scores={itemDiamondTest=1..}] itemTest 1
scoreboard players set @a[scores={itemDiamondTest2=1..}] itemTest 1
scoreboard players set @a[scores={itemNetheriteTest=1..}] itemTest 1
#######################
execute as @e[type=item,tag=PlayerItem,tag=!encumbered] at @s run function su:f/tpitem
execute as @e[type=experience_orb,tag=PlayerItem] at @s run function su:f/tpitem
#######################
scoreboard players reset @a[scores={itemKillTest=1..}] itemKillTest
scoreboard players reset @a[scores={itemDiamondTest=1..}] itemDiamondTest
scoreboard players reset @a[scores={itemDiamondTest2=1..}] itemDiamondTest2
scoreboard players reset @a[scores={itemNetheriteTest=1..}] itemNetheriteTest
scoreboard players reset @a[scores={itemTest=1..}] itemTest
#######################################################################

execute as @a[scores={magnet=0},tag=magnetenable] run scoreboard players set @s serverutiltoggle2 31
execute as @a[scores={magnet=0,serverutiltoggle2=1..}] run title @s actionbar {"text":"Item Magnet: Disabled","bold":true,"color":"red"}
execute as @a[scores={magnet=0},tag=magnetenable] at @s run playsound minecraft:entity.player.teleport master @s ~ ~ ~ 
execute as @a[scores={magnet=0},tag=magnetenable] run tag @s remove magnetenable
scoreboard players reset @a[scores={magnet=2..}] magnet
###########################################################################################################################################################################################

############################################################################################PET TP#################################################################################################
execute unless data storage su:settings pettp run scoreboard players enable @a tppet
execute as @a[scores={tppet=1},tag=!tppetdisable] run scoreboard players set @s serverutiltoggle4 31
execute as @a[scores={tppet=1,serverutiltoggle4=1..}] run title @s actionbar {"text":"Tp Pet: Disabled","bold":true,"color":"red"}
execute as @a[scores={tppet=1},tag=!tppetdisable] at @s run playsound minecraft:entity.wolf.death master @s ~ ~ ~
execute as @a[scores={tppet=1},tag=!tppetdisable] run tag @s add tppetdisable

execute as @a[scores={tppet=0}] at @s run function su:f/ptp/pettick

execute as @a[scores={tppet=0},tag=tppetdisable] run scoreboard players set @s serverutiltoggle4 31
execute as @a[scores={tppet=0,serverutiltoggle4=1..}] run title @s actionbar {"text":"Tp Pet: Enabled","bold":true,"color":"green"}
execute as @a[scores={tppet=0},tag=tppetdisable] at @s run playsound minecraft:entity.wolf.ambient master @s ~ ~ ~
execute as @a[scores={tppet=0},tag=tppetdisable] run tag @s remove tppetdisable
scoreboard players reset @a[scores={tppet=2..}] tppet
###################################################################################################################################################################################################

############################################################################################ITEM WEAR##############################################################################################
execute unless data storage su:settings hat run scoreboard players enable @a hat

execute as @a[scores={hat=1..}] run function su:f/hat

scoreboard players reset @a[scores={hat=1..}] hat
###################################################################################################################################################################################################

############################################################################################SURFACE TP#############################################################################################
execute unless data storage su:settings sf.all run scoreboard players enable @a surface

execute as @a[scores={surface=1..}] at @s if dimension minecraft:overworld at @s run spreadplayers ~ ~ 1 8 false @s
execute as @a[scores={surface=1..}] at @s if dimension minecraft:overworld at @s run playsound minecraft:entity.player.teleport master @s ~ ~ ~
execute unless data storage su:settings sf.nether as @a[scores={surface=1..}] at @s if dimension minecraft:the_nether at @s run spreadplayers ~ ~ 1 8 false @s
execute unless data storage su:settings sf.nether as @a[scores={surface=1..}] at @s if dimension minecraft:the_nether at @s run playsound minecraft:entity.player.teleport master @s ~ ~ ~
execute if data storage su:settings sf.nether as @a[scores={surface=1..}] at @s if dimension minecraft:the_nether run tellraw @s ["",{"text":"[","color":"dark_red"},{"text":"\u26a0","color":"red"},{"text":"]","color":"dark_red"},{"text":" Surface command is disabled for nether","color":"red"}]
execute if data storage su:settings sf.nether as @a[scores={surface=1..}] at @s if dimension minecraft:the_nether run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~

scoreboard players reset @a[scores={surface=1..}] surface
###################################################################################################################################################################################################










