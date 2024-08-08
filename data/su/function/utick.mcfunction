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

execute as @a run scoreboard players operation @s timeSinceDeath = @s ts_LastDeath
execute as @a run scoreboard players operation @s timeSinceDeath /= divideTime ts_LastDeath
execute as @a run scoreboard players operation @s playTimeHours = @s hc_playTime
execute as @a run scoreboard players operation @s playTimeHours /= Math hc_playTimes

##For Seperate veinmine datapack
#scoreboard players enable @a veinmine
#scoreboard players reset @a[scores={veinmine=2..}] veinmine

advancement revoke @a from su:cloneblock

############################################################################################FEATURE CONFIGURATIONS#################################################################################

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
execute if data storage su:settings xpcombine run tag @a[tag=combinexpenable] remove combinexpenable
execute if data storage su:settings pettp run scoreboard players reset @a tppet
execute if data storage su:settings xpcombine run tag @a[tag=tppetenable] remove tppetenable

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

execute as @a[scores={glow=1}] unless predicate su:sneaking run effect give @s minecraft:glowing 1 0 true
execute as @a[scores={glow=1}] if predicate su:sneaking run effect clear @s minecraft:glowing

scoreboard players reset @a[scores={glow=2..}] glow
scoreboard players reset @a[scores={glowmobs=1..}] glowmobs

###################################################################################################################################################################################################

############################################################################################SLUT CHEST#############################################################################################

#execute unless entity @e[type=minecraft:armor_stand,tag=slutchest] at @p run function su:f/sc/slutspawn
execute unless data storage su:settings slut as @n[type=minecraft:armor_stand,tag=slutchest] at @s run function su:f/sc/sluttick
execute unless data storage su:settings slut as @e[type=item,nbt={Age:5998s}] at @s unless predicate su:scblacklist as @n[type=minecraft:armor_stand,tag=slutchest] run function su:f/sc/slutitem
execute unless data storage su:settings slut as @e[type=item,nbt={Fire:300s}] at @s unless predicate su:scblacklist as @n[type=minecraft:armor_stand,tag=slutchest] run function su:f/sc/slutitem
execute unless data storage su:settings slut as @e[type=item,nbt={Fire:160s}] at @s unless predicate su:scblacklist as @n[type=minecraft:armor_stand,tag=slutchest] run function su:f/sc/slutitem
execute unless data storage su:settings slut as @e[type=item,nbt={Health:1s}] at @s unless predicate su:scblacklist as @n[type=minecraft:armor_stand,tag=slutchest] run function su:f/sc/slutitem
execute unless data storage su:settings slut as @e[type=item,tag=encumbered,nbt={Age:1200s}] at @s unless predicate su:scblacklist as @n[type=minecraft:armor_stand,tag=slutchest] run function su:f/sc/slutitem
execute unless data storage su:settings slut in minecraft:the_end as @e[type=item,predicate=su:outofworld] unless predicate su:endblacklist unless predicate su:scblacklist in minecraft:overworld as @n[type=minecraft:armor_stand,tag=slutchest] run function su:f/sc/slutitem

###################################################################################################################################################################################################

#####################################################################################ITEM ENCUMBERMENT######################################################################################
execute unless data storage su:settings encumber run scoreboard players enable @a encumber
execute as @a[scores={encumber=1},tag=!encumberenable] run scoreboard players set @s serverutiltoggle 31
execute as @a[scores={encumber=1,serverutiltoggle=1..}] run title @s actionbar {"text":"Encumberment: Enabled","bold":true,"color":"green"}
execute as @a[scores={encumber=1},tag=!encumberenable] at @s run playsound minecraft:block.anvil.land master @s ~ ~ ~ 0.5
execute as @a[scores={encumber=1},tag=!encumberenable] run tag @s add encumberenable


execute as @a[scores={encumber=1}] at @s at @e[type=item,distance=..5] run function su:f/encumber
execute as @a[scores={encumber=1,magnet=1}] at @s positioned ~-5.5 ~-4.5 ~-5.5 at @e[type=item,dx=11.5,dy=12.5,dz=11.5] run function su:f/encumber

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
#######################################################################

execute as @a[scores={magnet=0},tag=magnetenable] run scoreboard players set @s serverutiltoggle2 31
execute as @a[scores={magnet=0,serverutiltoggle2=1..}] run title @s actionbar {"text":"Item Magnet: Disabled","bold":true,"color":"red"}
execute as @a[scores={magnet=0},tag=magnetenable] at @s run playsound minecraft:entity.player.teleport master @s ~ ~ ~ 
execute as @a[scores={magnet=0},tag=magnetenable] run tag @s remove magnetenable
scoreboard players reset @a[scores={magnet=2..}] magnet
###########################################################################################################################################################################################


####################################################################################XP COMBINE#############################################################################################
execute unless data storage su:settings xpcombine run scoreboard players enable @a combinexp
execute as @a[scores={combinexp=1},tag=!combinexpenable] run scoreboard players set @s serverutiltoggle3 31
execute as @a[scores={combinexp=1,serverutiltoggle3=1..}] run title @s actionbar {"text":"XP Combine: Enabled","bold":true,"color":"green"}
execute as @a[scores={combinexp=1},tag=!combinexpenable] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~
execute as @a[scores={combinexp=1},tag=!combinexpenable] run tag @s add combinexpenable

execute as @a[scores={combinexp=1}] at @s run function su:f/combinexp

execute as @a[scores={combinexp=0},tag=combinexpenable] run scoreboard players set @s serverutiltoggle3 31
execute as @a[scores={combinexp=0,serverutiltoggle3=1..}] run title @s actionbar {"text":"XP Combine: Disabled","bold":true,"color":"red"}
execute as @a[scores={combinexp=0},tag=combinexpenable] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 
execute as @a[scores={combinexp=0},tag=combinexpenable] run tag @s remove combinexpenable
scoreboard players reset @a[scores={combinexp=2..}] combinexp
###################################################################################################################################################################################################

############################################################################################PET TP#################################################################################################
scoreboard players enable @a tppet
execute as @a[scores={tppet=1},tag=!tppetenable] run scoreboard players set @s serverutiltoggle4 31
execute as @a[scores={tppet=1,serverutiltoggle4=1..}] run title @s actionbar {"text":"Tp Pet: Enabled","bold":true,"color":"green"}
execute as @a[scores={tppet=1},tag=!tppetenable] at @s run playsound minecraft:entity.wolf.ambient master @s ~ ~ ~
execute as @a[scores={tppet=1},tag=!tppetenable] run tag @s add tppetenable


execute as @e[type=#su:pets,nbt={Sitting:0b}] at @s if data entity @s Owner unless data entity @s Leash if entity @p[distance=64..] run tag @s add tptoowner
execute as @a[scores={tppet=1}] at @s run spreadplayers ~ ~ 3 3 true @e[tag=tptoowner]
execute as @e[tag=tptoowner] at @s run execute if data entity @s Owner run execute at @s if entity @p[distance=64..] run tag @s add justteleported_inair
execute as @e[tag=tptoowner] at @s run execute if data entity @s Owner run execute at @s if entity @p[distance=64..] run execute at @p run tp @s ^ ^ ^-2
execute as @e[tag=justteleported_inair] at @s run effect give @s slow_falling 1
execute as @e[tag=justteleported_inair] at @s run execute unless block ~ ~-1 ~ air run tag @s remove justteleported_inair
execute as @e[tag=tptoowner] at @s run tag @s remove tptoowner

execute as @a[scores={tppet=0},tag=tppetenable] run scoreboard players set @s serverutiltoggle4 31
execute as @a[scores={tppet=0,serverutiltoggle4=1..}] run title @s actionbar {"text":"Tp Pet: Disabled","bold":true,"color":"red"}
execute as @a[scores={tppet=0},tag=tppetenable] at @s run playsound minecraft:entity.wolf.death master @s ~ ~ ~ 
execute as @a[scores={tppet=0},tag=tppetenable] run tag @s remove tppetenable
scoreboard players reset @a[scores={tppet=2..}] tppet
###################################################################################################################################################################################################

############################################################################################ITEM WEAR##############################################################################################
scoreboard players enable @a hat

execute as @a[scores={hat=1..}] run function su:f/hat

scoreboard players reset @a[scores={hat=1..}] hat
###################################################################################################################################################################################################

############################################################################################SURFACE TP#############################################################################################
scoreboard players enable @a surface

execute as @a[scores={surface=1..}] at @s run spreadplayers ~ ~ 1 8 false @s
execute as @a[scores={surface=1..}] at @s run playsound minecraft:entity.player.teleport master @s ~ ~ ~

scoreboard players reset @a[scores={surface=1..}] surface
###################################################################################################################################################################################################










