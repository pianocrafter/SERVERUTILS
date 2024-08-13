data remove storage su:temp pname
execute if block ~ -64 ~ minecraft:bedrock run setblock ~ -64 ~ oak_sign{front_text:{messages:['{"selector":"@p"}','{"text":""}','{"text":""}','{"text":""}']}} replace
data modify storage su:temp pname set from block ~ -64 ~ front_text.messages[0]
data modify storage su:temp pname set string storage su:temp pname 57
fill ~ -64 ~ ~ -64 ~ minecraft:bedrock replace minecraft:oak_sign