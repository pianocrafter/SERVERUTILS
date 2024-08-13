tellraw @a {"text":"Reloaded!","color":"green"}

##########Pack number##########

# -------------1---------------
scoreboard players set PACKNUM suTest 1
# -----------------------------

##########Integrations#########
scoreboard objectives add tpa.pid dummy "Player ID"
scoreboard objectives add su.id dummy "Server ID"
scoreboard objectives setdisplay list tpa.pid
scoreboard players set divideTime ts_LastDeath 1200
scoreboard objectives add timeSinceDeath dummy

############General############
scoreboard objectives add serverutiltoggle dummy
scoreboard objectives add serverutiltoggle2 dummy
scoreboard objectives add serverutiltoggle3 dummy
scoreboard objectives add serverutiltoggle4 dummy
scoreboard objectives add suTest dummy

##########Workstations########
scoreboard objectives add anvil trigger 
scoreboard objectives add craft trigger
scoreboard objectives add stonecut trigger
scoreboard objectives add grind trigger
scoreboard objectives add echest trigger
scoreboard objectives add enchant trigger
scoreboard objectives add loom trigger
scoreboard objectives add cartograph trigger
scoreboard objectives add smith trigger
scoreboard objectives add su.wsX dummy
scoreboard objectives add su.wsY dummy

##########Glow Mobs########
scoreboard objectives add glow trigger
scoreboard objectives add glowmobs trigger

##########Locate###########
scoreboard objectives add locate trigger
gamerule commandBlockOutput false
data remove storage su:structures s

##########Encumber#########
scoreboard objectives add encumber trigger

##########Magnet###########
scoreboard objectives add magnet trigger
scoreboard objectives add itemTest dummy
scoreboard objectives add itemKillTest totalKillCount
scoreboard objectives add itemKillTime dummy
scoreboard objectives add infinityBan dummy
scoreboard objectives add itemNetheriteTest minecraft.mined:minecraft.ancient_debris
scoreboard objectives add itemDiamondTest minecraft.mined:minecraft.diamond_ore
scoreboard objectives add itemDiamondTest2 minecraft.mined:minecraft.deepslate_diamond_ore

##########Veinmine#########
scoreboard objectives add veinmine trigger

##########Slut Chest#######
scoreboard objectives add slutTest dummy
scoreboard objectives add slutTestSpawn dummy
scoreboard players set SLUTSUB slutTest 27

##########Combine XP#######
scoreboard objectives add combinexp trigger
scoreboard objectives add suxp.xp dummy
scoreboard objectives add suxp.processed dummy
scoreboard objectives add suxp.merge dummy

##########Tp Pet###########
scoreboard objectives add tppet trigger

##########Hat##############
scoreboard objectives add hat trigger
scoreboard objectives add surface trigger

##########Cloneblock#######
advancement revoke @a only su:cloneblock

##########Other############
execute store result score FEEDBACK suTest run gamerule sendCommandFeedback
schedule function su:u10tick 10t replace
schedule function su:u10sec 10s replace
#fill 0 -64 0 15 -50 15 bedrock hollow

##########SETUP COMMANDS############
execute unless score PACKNUM suTest matches 1.. run function su:f/settings/disableall
execute unless score PACKNUM suTest matches 1.. run function su:f/lc/lcfix
