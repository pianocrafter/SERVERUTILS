#execute unless entity @a[tag=su.locate] run function su:f/lc/storagereset
#execute if data storage su:structures s run function su:f/lc/locateclear
execute unless entity @a[tag=su.locate] run data remove storage su:structures stemp

schedule function su:u10tick 10t replace