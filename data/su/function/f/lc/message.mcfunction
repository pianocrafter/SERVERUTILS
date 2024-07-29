schedule function su:u10sec 10s replace
gamerule sendCommandFeedback false

tellraw @s ["",{"text":"\n\n\n\n\n\n\n\n\n\n\n\n"},{"text":"Locate Structure:","bold":true,"underlined":true,"color":"green"},{"text":"\n "}]

data remove storage su:structures message
data modify storage su:structures message.tellraw set value '[""'

execute unless data storage su:structures s.mansion run function su:f/lc/messageid {s:"Mansion",color:"green",id:"2"}
execute if data storage su:structures s.mansion run function su:f/lc/messageid {s:"Mansion",color:"red",id:"2"}
execute if dimension minecraft:overworld run function su:f/lc/messageadd with storage su:structures message

execute unless data storage su:structures s.monument run function su:f/lc/messageid {s:"Monument",color:"green",id:"3"}
execute if data storage su:structures s.monument run function su:f/lc/messageid {s:"Monument",color:"red",id:"3"}
execute if dimension minecraft:overworld run function su:f/lc/messageadd with storage su:structures message

execute unless data storage su:structures s.fortress run function su:f/lc/messageid {s:"Fortress",color:"green",id:"4"}
execute if data storage su:structures s.fortress run function su:f/lc/messageid {s:"Fortress",color:"red",id:"4"}
execute if dimension minecraft:the_nether run function su:f/lc/messageadd with storage su:structures message

execute unless data storage su:structures s.remnant run function su:f/lc/messageid {s:"Bastion Remnant",color:"green",id:"5"}
execute if data storage su:structures s.remnant run function su:f/lc/messageid {s:"Bastion Remnant",color:"red",id:"5"}
execute if dimension minecraft:the_nether run function su:f/lc/messageadd with storage su:structures message

execute unless data storage su:structures s.trail run function su:f/lc/messageid {s:"Trail Ruins",color:"green",id:"6"}
execute if data storage su:structures s.trail run function su:f/lc/messageid {s:"Trail Ruins",color:"red",id:"6"}
execute if dimension minecraft:overworld run function su:f/lc/messageadd with storage su:structures message

execute unless data storage su:structures s.dtemple run function su:f/lc/messageid {s:"Desert Pyramid",color:"green",id:"7"}
execute if data storage su:structures s.dtemple run function su:f/lc/messageid {s:"Desert Pyramid",color:"red",id:"7"}
execute if dimension minecraft:overworld run function su:f/lc/messageadd with storage su:structures message

execute unless data storage su:structures s.jtemple run function su:f/lc/messageid {s:"Jungle Pyramid",color:"green",id:"8"}
execute if data storage su:structures s.jtemple run function su:f/lc/messageid {s:"Jungle Pyramid",color:"red",id:"8"}
execute if dimension minecraft:overworld run function su:f/lc/messageadd with storage su:structures message

execute unless data storage su:structures s.acity run function su:f/lc/messageid {s:"Ancient City",color:"green",id:"9"}
execute if data storage su:structures s.acity run function su:f/lc/messageid {s:"Ancient City",color:"red",id:"9"}
execute if dimension minecraft:overworld run function su:f/lc/messageadd with storage su:structures message

execute unless data storage su:structures s.outpost run function su:f/lc/messageid {s:"Pillager Outpost",color:"green",id:"10"}
execute if data storage su:structures s.outpost run function su:f/lc/messageid {s:"Pillager Outpost",color:"red",id:"10"}
execute if dimension minecraft:overworld run function su:f/lc/messageadd with storage su:structures message

execute unless data storage su:structures s.pvillage run function su:f/lc/messageid {s:"Plains Village",color:"green",id:"11"}
execute if data storage su:structures s.pvillage run function su:f/lc/messageid {s:"Plains Village",color:"red",id:"11"}
execute if dimension minecraft:overworld run function su:f/lc/messageadd with storage su:structures message

execute unless data storage su:structures s.dvillage run function su:f/lc/messageid {s:"Desert Village",color:"green",id:"12"}
execute if data storage su:structures s.dvillage run function su:f/lc/messageid {s:"Desert Village",color:"red",id:"12"}
execute if dimension minecraft:overworld run function su:f/lc/messageadd with storage su:structures message

execute unless data storage su:structures s.svillage run function su:f/lc/messageid {s:"Savanna Village",color:"green",id:"13"}
execute if data storage su:structures s.svillage run function su:f/lc/messageid {s:"Savanna Village",color:"red",id:"13"}
execute if dimension minecraft:overworld run function su:f/lc/messageadd with storage su:structures message

execute unless data storage su:structures s.snvillage run function su:f/lc/messageid {s:"Snowy Village",color:"green",id:"14"}
execute if data storage su:structures s.snvillage run function su:f/lc/messageid {s:"Snowy Village",color:"red",id:"14"}
execute if dimension minecraft:overworld run function su:f/lc/messageadd with storage su:structures message

execute unless data storage su:structures s.tvillage run function su:f/lc/messageid {s:"Taiga Village",color:"green",id:"15"}
execute if data storage su:structures s.tvillage run function su:f/lc/messageid {s:"Taiga Village",color:"red",id:"15"}
execute if dimension minecraft:overworld run function su:f/lc/messageadd with storage su:structures message

execute unless data storage su:structures s.ecity run function su:f/lc/messageid {s:"End City",color:"green",id:"16"}
execute if data storage su:structures s.ecity run function su:f/lc/messageid {s:"End City",color:"red",id:"16"}
execute if dimension minecraft:the_end run function su:f/lc/messageadd with storage su:structures message

#execute unless data storage su:structures s.STRUCTURE run function su:f/lc/messageid {s:"STRUCTURE",color:"green",id:"ID"}
#execute if data storage su:structures s.STRUCTURE run function su:f/lc/messageid {s:"STRUCTURE",color:"red",id:"ID"}
#execute if dimension minecraft:overworld run function su:f/lc/messageadd with storage su:structures message


function su:f/lc/messageout with storage su:structures message
tellraw @s {"text":"\n"}


data remove storage su:structures message

execute at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 0.4