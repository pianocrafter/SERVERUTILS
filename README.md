
**This datapack is meant to replace most "Essentials"-like plugins, but it also has a number of its own conveniences/q.o.f. features that aren't really in most datapacks/plugins. The application of this pack mostly has its place in a Minecraft realm or in a server that uses any other datapacks (as Essentials will typically brick most of them). Keep in mind that this plugin has many features you might expect, but some are still not available. Please let me know about any suggestions, bugs, or exploits on the GitHub repository.**


<details>
<summary>Planned Features</summary>

- ACTUAL essentials commands (/heal,/repair,/feed,etc. I need to add a per-player permission system for this to be added.)

- Admin commands (/nuke, /tpoffline, /invsee, etc.)

- Admin tools (player chest locker, others)

- Jails

- Player mod system (non-op with higher privileges)

- Nearby chest item dump

- Player payment system/Item based economy

- Player shops

- Kits

- Built-in discord links + update messages

- Team/Faction system

</details>



# Features (All off by default, use what you need)

**(Must be enabled by an admin with /function su:_settings!)**

- **Player glow** (/trigger glow): Allow players to toggle player glow, letting them be seen through walls for easy locating
 
- **Mob Glow** (/trigger glowmob): Allow players to make select mobs glow (livestock, select hostile mobs, endermen) around them, making for easier mob/drops hunting
 
- **Item Magnet** (/trigger magnet): Allow players, when holding a tool or weapon, to have all items and experience teleported to them upon use (See gallery)
 
- **Item Encumberment** (/trigger encumber): Allow players to prevent any item that is not already within their inventory from being picked up. This can be bypassed by looking straight down and sneaking

- **Item Overflow**: Saves any item that is despawned, voided, or destroyed into a chest at a configurable location. This must be done by using /function su:_spawniof to spawn the chest, which can also be extended by placing another double chest beneath. Most common items (natural items, mob drops, etc.) are filtered out and ARE NOT saved.

- **Trash** (/trigger trash): Allow players to toss thrown items. It will remain enabled until it hasn't been used for 30 seconds or is disabled manually. Will attempt to send trash to item overflow.
 
- **Workstations** (/trigger anvil/craft/smith/etc): Allow players to spawn a temporary workstation for their needs, as long as they've obtained that workstation first. This includes a full enchanting table (togglable separately) as long as they've obtained enough bookshelves. Creative players receive access to all commands 

- **Surface Command** (/trigger surface): Allows the player to teleport to the highest point in the world. Separate configuration for within the nether.

- **Hat** (/trigger hat): Allow players to wear any item on their head

- **Pet TP** (/trigger pettp): Allow player's pets to be more consistent when teleporting, instead of getting stuck in an unloaded chunk

- **Locate Command** (/trigger locate): Allow non-opped players to use the locate command for structures _**of your choosing**_. This requires an admin to place down a spawnbox using /function su:setup within a desired chunk of the worldspawn and enabling the desired structures (it uses a very niche technique requiring the use of command blocks) 
 
<details>
<summary>**!WARNING FOR ENCHANTING TABLE WORKSTATION!**</summary>

**IF YOU HAVE ANOTHER DATAPACK THAT USES STRUCTURE VOIDS IN ANY WAY, PLEASE DISABLE THIS WORKSTATION AND REMOVE THE TAG LOCATED AT**
datapacks/Server-Utilities-V.X.X.X/data/minecraft/block/enchantment_power_provider
  
</details>

 
## Commands


| Name                 | Command                       | Brief Description                   |
|----------------------|:-----------------------------:|------------------------------------:|
| Glow                 | ```/trigger glow```           | Enables/disables player glow        |
| Mob glow             | ```/trigger glowmob```        | Brings up glowmobs menu             |
| Hat                  | ```/trigger hat```            | Wear any item on your head          |
| Item Encumberment    | ```/trigger encumber```       | Toggles item encumberment           |
| Item Magnet          | ```/trigger magnet```         | Toggles item magnet                 |
| Locate               | ```/trigger locate```         | Locates structures                  |
| Pet TP               | ```/trigger tppet```          | Toggles Pet TP (On by default)      |
| Surface              | ```/trigger surface```        | Teleports to highest point in world |
| Trash                | ```/trigger trash```          | Toggles Trash                       |
| WS: Anvil            | ```/trigger anvil```          | Spawns a temperary anvil            |
| WS: Cartograph       | ```/trigger cartograph```     | Spawns a temperary cartography table|
| WS: Craft            | ```/trigger craft```          | Spawns a temperary crafting table   |
| WS: Enchant          | ```/trigger enchant```        | Spawns a temperary enchanting table |  
| WS: Enderchest       | ```/trigger echest```         | Spawns a temperary enderchest       |
| WS: Grind            | ```/trigger grind```          | Spawns a temperary grindstone       |
| WS: Loom             | ```/trigger loom```           | Spawns a temperary loom             |
| WS: Smith            | ```/trigger smith```          | Spawns a temperary smithing table   |
| WS: Stonecut         | ```/trigger stonecut```       | Spawns a temperary stonecutter      |
| XP Combine           | ```/trigger combinexp```      | Toggles XP Combine (On by default)  |
