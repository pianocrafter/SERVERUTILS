scoreboard players remove @s[scores={serverutiltoggle=1..}] serverutiltoggle 1
scoreboard players reset @s[scores={serverutiltoggle=..0}] serverutiltoggle
scoreboard players remove @s[scores={serverutiltoggle2=1..}] serverutiltoggle2 1
scoreboard players reset @s[scores={serverutiltoggle2=..0}] serverutiltoggle2
scoreboard players remove @s[scores={serverutiltoggle3=1..}] serverutiltoggle3 1
scoreboard players reset @s[scores={serverutiltoggle3=..0}] serverutiltoggle3
scoreboard players remove @s[scores={serverutiltoggle4=1..}] serverutiltoggle4 1
scoreboard players reset @s[scores={serverutiltoggle4=..0}] serverutiltoggle4

execute as @s[gamemode=creative] run function su:uctick



############################################################################################WORKSTATIONS###########################################################################################
execute unless data storage su:settings ws.all run scoreboard players enable @s[advancements={su:anvil=true}] anvil
execute unless data storage su:settings ws.all run scoreboard players enable @s[advancements={su:craftingtable=true}] craft
execute unless data storage su:settings ws.all run scoreboard players enable @s[advancements={su:stonecut=true}] stonecut
execute unless data storage su:settings ws.all run scoreboard players enable @s[advancements={su:grindstone=true}] grind
execute unless data storage su:settings ws.echest run scoreboard players enable @s[advancements={su:echest=true}] echest
execute unless data storage su:settings ws.ench run scoreboard players enable @s[advancements={su:enchant=true}] enchant
execute unless data storage su:settings ws.all run scoreboard players enable @s[advancements={su:loom=true}] loom
execute unless data storage su:settings ws.all run scoreboard players enable @s[advancements={su:cartograph=true}] cartograph
execute unless data storage su:settings ws.all run scoreboard players enable @s[advancements={su:smith=true}] smith

execute as @s[scores={anvil=1..}] run function su:f/ws/anvil
execute as @s[scores={craft=1..}] run function su:f/ws/craftingtable
execute as @s[scores={stonecut=1..}] run function su:f/ws/stonecutter
execute as @s[scores={grind=1..}] run function su:f/ws/grindstone
execute as @s[scores={echest=1..}] run function su:f/ws/enderchest
execute as @s[scores={enchant=1..}] run function su:f/ws/enchant
execute as @s[scores={loom=1..}] run function su:f/ws/loom
execute as @s[scores={cartograph=1..}] run function su:f/ws/cartograph
execute as @s[scores={smith=1..}] run function su:f/ws/smith

scoreboard players reset @s[scores={anvil=1..}] anvil
scoreboard players reset @s[scores={craft=1..}] craft
scoreboard players reset @s[scores={stonecut=1..}] stonecut
scoreboard players reset @s[scores={grind=1..}] grind
scoreboard players reset @s[scores={echest=1..}] echest
scoreboard players reset @s[scores={enchant=1..}] enchant
scoreboard players reset @s[scores={loom=1..}] loom
scoreboard players reset @s[scores={cartograph=1..}] cartograph
scoreboard players reset @s[scores={smith=1..}] smith

###################################################################################################################################################################################################

############################################################################################LOCATE COMMAND#########################################################################################
execute unless data storage su:settings locate run scoreboard players enable @s locate


execute as @s[scores={locate=1}] run function su:f/lc/message
execute as @s[tag=su.locate] run function su:f/lc/locate
execute as @s[scores={locate=2..18}] run function su:f/lc/locatemark

scoreboard players reset @s[scores={locate=1}] locate
scoreboard players reset @s[scores={locate=19..}] locate
###################################################################################################################################################################################################

############################################################################################PLAYER/MOB GLOW########################################################################################
execute unless data storage su:settings glow run scoreboard players enable @s glow
execute unless data storage su:settings glowmobs run scoreboard players enable @s glowmobs

####################################MOB GLOW####################################
execute as @s[scores={glowmobs=2..99}] run function su:f/glowmobchange
execute as @s[scores={glowmobs=1}] run function su:f/glowconfig
execute as @s[scores={glowmobs=100}] run function su:f/glowconfig2

function su:f/glowmob
################################################################################

execute as @s[scores={glow=1}] run playsound minecraft:entity.glow_squid.ambient master @s ~ ~ ~
execute as @s[scores={glow=1}] run title @s actionbar ["",{"text":"[","color":"gray"},{"text":"\ud83c\udf1f"},{"text":"]","color":"gray"},{"text":" Glow Enabled","bold":true}]
execute as @s[scores={glow=1}] run scoreboard players set @s glow 2
execute as @s[scores={glow=2}] unless predicate su:sneaking run effect give @s minecraft:glowing 1 0 true
execute as @s[scores={glow=2}] if predicate su:sneaking run effect clear @s minecraft:glowing
execute as @s[scores={glow=3}] run playsound minecraft:entity.glow_squid.death master @s ~ ~ ~
execute as @s[scores={glow=3}] run title @s actionbar ["",{"text":"[","color":"gray"},{"text":"\ud83c\udf1f"},{"text":"]","color":"gray"},{"text":" Glow Disabled","bold":true}]


scoreboard players reset @s[scores={glow=3..}] glow
scoreboard players reset @s[scores={glowmobs=1..}] glowmobs

###################################################################################################################################################################################################

####################################################################################XP COMBINE#############################################################################################
execute unless data storage su:settings xpcombine run scoreboard players enable @s combinexp
execute as @s[scores={combinexp=1},tag=!combinexpdisable] run scoreboard players set @s serverutiltoggle3 31
execute as @s[scores={combinexp=1,serverutiltoggle3=1..}] run title @s actionbar {"text":"XP Combine: Disabled","bold":true,"color":"red"}
execute as @s[scores={combinexp=1},tag=!combinexpdisable] run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 
execute as @s[scores={combinexp=1},tag=!combinexpdisable] run tag @s add combinexpdisable

execute as @s[scores={combinexp=0}] at @s run function su:f/combinexp

execute as @s[scores={combinexp=0},tag=combinexpdisable] run scoreboard players set @s serverutiltoggle3 31
execute as @s[scores={combinexp=0,serverutiltoggle3=1..}] run title @s actionbar {"text":"XP Combine: Enabled","bold":true,"color":"green"}
execute as @s[scores={combinexp=0},tag=combinexpdisable] run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~
execute as @s[scores={combinexp=0},tag=combinexpdisable] run tag @s remove combinexpdisable
scoreboard players reset @s[scores={combinexp=2..}] combinexp
###################################################################################################################################################################################################

#####################################################################################ITEM ENCUMBERMENT######################################################################################
execute unless data storage su:settings encumber run scoreboard players enable @s encumber
execute as @s[scores={encumber=1},tag=!encumberenable] run scoreboard players set @s serverutiltoggle 31
execute as @s[scores={encumber=1,serverutiltoggle=1..}] run title @s actionbar {"text":"Encumberment: Enabled","bold":true,"color":"green"}
execute as @s[scores={encumber=1},tag=!encumberenable] run playsound minecraft:block.anvil.land master @s ~ ~ ~ 0.5
execute as @s[scores={encumber=1},tag=!encumberenable] run tag @s add encumberenable


execute as @s[scores={encumber=1}] at @e[type=item,distance=..1] run function su:f/encumber
execute as @s[scores={encumber=1,magnet=1}] positioned ~ ~1.6 ~ positioned ^ ^ ^2.75 positioned ~-2.875 ~-2.875 ~-2.875 at @e[type=item,dx=5.75,dy=5.75,dz=5.75] run function su:f/encumber

execute as @s[scores={encumber=1}] unless entity @s[predicate=su:sneaking,x_rotation=90] at @s as @e[type=item,distance=..1,tag=encumbered] run data modify entity @s PickupDelay set value 4
execute as @s[scores={encumber=1}] unless entity @s[predicate=su:sneaking,x_rotation=90] at @s positioned ~-5.5 ~-4.5 ~-5.5 as @e[type=item,dx=11.5,dy=12.5,dz=11.5,tag=encumbered] run data modify entity @s PickupDelay set value 4
execute as @s[scores={encumber=0}] as @e[type=item,distance=..1,tag=encumbered] run data modify entity @s PickupDelay set value 0


execute as @s[scores={encumber=0},tag=encumberenable] run scoreboard players set @s serverutiltoggle 31
execute as @s[scores={encumber=0,serverutiltoggle=1..}] run title @s actionbar {"text":"Encumberment: Disabled","bold":true,"color":"red"}
execute as @s[scores={encumber=0},tag=encumberenable] run playsound minecraft:block.anvil.land master @s ~ ~ ~ 0.5
execute as @s[scores={encumber=0},tag=encumberenable] run tag @s remove encumberenable
scoreboard players reset @s[scores={encumber=2..}] encumber
###########################################################################################################################################################################################

###################################################################################ITEM MAGNET############################################################################################
execute unless data storage su:settings magnet run scoreboard players enable @s magnet
execute as @s[scores={magnet=1},tag=!magnetenable] run scoreboard players set @s serverutiltoggle2 31
execute as @s[scores={magnet=1,serverutiltoggle2=1..}] run title @s actionbar {"text":"Item Magnet: Enabled","bold":true,"color":"green"}
execute as @s[scores={magnet=1},tag=!magnetenable] run playsound minecraft:entity.player.teleport master @s ~ ~ ~
execute as @s[scores={magnet=1},tag=!magnetenable] run tag @s add magnetenable

function su:f/selectitem
execute as @s[scores={magnet=1}] run function su:f/selectarrow
execute as @e[type=#minecraft:arrows,tag=!playerarrow,tag=!skelarrow,distance=..128] run tag @s add skelarrow
execute as @e[type=minecraft:trident,tag=!playerarrow,tag=!skelarrow,distance=..128] run tag @s add skelarrow

execute as @e[type=item,tag=!nonPlayerItem] unless entity @s[tag=PlayerItem] run tag @s add nonPlayerItem
execute as @e[type=experience_orb,tag=!nonPlayerItem] unless entity @s[tag=PlayerItem] run tag @s add nonPlayerItem

####################################ITEM TP####################################
scoreboard players set @s[scores={itemDiamondTest=1..}] itemTest 1
scoreboard players set @s[scores={itemDiamondTest2=1..}] itemTest 1
scoreboard players set @s[scores={itemNetheriteTest=1..}] itemTest 1
#######################
execute as @e[type=item,tag=PlayerItem,tag=!encumbered,distance=..1] at @s run function su:f/tpitem
execute positioned ~ ~1.6 ~ positioned ^ ^ ^2.75 positioned ~-2.875 ~-2.875 ~-2.875 as @e[type=item,tag=PlayerItem,tag=!encumbered,dx=5.75,dy=5.75,dz=5.75] at @s run function su:f/tpitem
execute as @e[type=experience_orb,tag=PlayerItem,distance=..8] at @s run function su:f/tpitem
#######################
scoreboard players reset @s[scores={itemKillTest=1..}] itemKillTest
scoreboard players reset @s[scores={itemDiamondTest=1..}] itemDiamondTest
scoreboard players reset @s[scores={itemDiamondTest2=1..}] itemDiamondTest2
scoreboard players reset @s[scores={itemNetheriteTest=1..}] itemNetheriteTest
scoreboard players reset @s[scores={itemTest=1..}] itemTest
#######################################################################

execute as @s[scores={magnet=0},tag=magnetenable] run scoreboard players set @s serverutiltoggle2 31
execute as @s[scores={magnet=0,serverutiltoggle2=1..}] run title @s actionbar {"text":"Item Magnet: Disabled","bold":true,"color":"red"}
execute as @s[scores={magnet=0},tag=magnetenable] run playsound minecraft:entity.player.teleport master @s ~ ~ ~ 
execute as @s[scores={magnet=0},tag=magnetenable] run tag @s remove magnetenable
scoreboard players reset @s[scores={magnet=2..}] magnet
###########################################################################################################################################################################################

############################################################################################PET TP#################################################################################################
execute unless data storage su:settings pettp run scoreboard players enable @s tppet
execute as @s[scores={tppet=1},tag=!tppetdisable] run scoreboard players set @s serverutiltoggle4 31
execute as @s[scores={tppet=1,serverutiltoggle4=1..}] run title @s actionbar {"text":"Tp Pet: Disabled","bold":true,"color":"red"}
execute as @s[scores={tppet=1},tag=!tppetdisable] run playsound minecraft:entity.wolf.death master @s ~ ~ ~
execute as @s[scores={tppet=1},tag=!tppetdisable] run tag @s add tppetdisable

execute as @s[scores={tppet=0}] run function su:f/ptp/pettick

execute as @s[scores={tppet=0},tag=tppetdisable] run scoreboard players set @s serverutiltoggle4 31
execute as @s[scores={tppet=0,serverutiltoggle4=1..}] run title @s actionbar {"text":"Tp Pet: Enabled","bold":true,"color":"green"}
execute as @s[scores={tppet=0},tag=tppetdisable] run playsound minecraft:entity.wolf.ambient master @s ~ ~ ~
execute as @s[scores={tppet=0},tag=tppetdisable] run tag @s remove tppetdisable
scoreboard players reset @s[scores={tppet=2..}] tppet
###################################################################################################################################################################################################

############################################################################################ITEM WEAR##############################################################################################
execute unless data storage su:settings hat run scoreboard players enable @s hat

execute as @s[scores={hat=1..}] run function su:f/hat

scoreboard players reset @s[scores={hat=1..}] hat
###################################################################################################################################################################################################

############################################################################################SURFACE TP#############################################################################################
execute unless data storage su:settings sf.all run scoreboard players enable @s surface

execute as @s[scores={surface=1..}] run function back:set_back
execute as @s[scores={surface=1..}] if dimension minecraft:overworld run spreadplayers ~ ~ 1 8 false @s
execute as @s[scores={surface=1..}] if dimension minecraft:overworld run playsound minecraft:entity.player.teleport master @s ~ ~ ~
execute unless data storage su:settings sf.nether as @s[scores={surface=1..}] if dimension minecraft:the_nether run spreadplayers ~ ~ 1 8 false @s
execute unless data storage su:settings sf.nether as @s[scores={surface=1..}] if dimension minecraft:the_nether run playsound minecraft:entity.player.teleport master @s ~ ~ ~
execute if data storage su:settings sf.nether as @s[scores={surface=1..}] if dimension minecraft:the_nether run tellraw @s ["",{"text":"[","color":"dark_red"},{"text":"\u26a0","color":"red"},{"text":"]","color":"dark_red"},{"text":" Surface command is disabled for nether","color":"red"}]
execute if data storage su:settings sf.nether as @s[scores={surface=1..}] if dimension minecraft:the_nether run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~

scoreboard players reset @s[scores={surface=1..}] surface
###################################################################################################################################################################################################










