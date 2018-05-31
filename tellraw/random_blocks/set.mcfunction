######################################################################################
# Function:		dungeon_customization
# Created By:	Jordan Hoffmann
# Date:			6/17/17
# Version:		1.12
# Description:	user interface for customizing the dungeons
######################################################################################
scoreboard players tag @s remove ui1
scoreboard players tag @s remove ui2
scoreboard players tag @s remove ui3
scoreboard players tag @s remove ui4
scoreboard players tag @s remove ui5
scoreboard players tag @s remove ui6
scoreboard players tag @s remove ui7

scoreboard players tag @s remove editBlock1
scoreboard players tag @s remove editBlock2
scoreboard players tag @s remove editBlock3
scoreboard players tag @s remove editBlock4
scoreboard players tag @s remove editBlock5
scoreboard players tag @s remove editBlock6
scoreboard players tag @s remove editBlock7
scoreboard players tag @s remove editBlock8
scoreboard players tag @s remove editBlock9
scoreboard players tag @s remove editBlock10

scoreboard players set @s UIstartLine 1

function dungeon_genorator:block_placer/tags/inventorytest/clear_hotbar_slot_tags

playsound minecraft:ui.button.click ambient @s ~ ~ ~

tellraw @s ["",{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n    SET RANDOM BLOCKS    \n","color":"aqua","bold":true,"underlined":true}]

tellraw @s ["",{"text":"           ","color":"gray"},{"text":"- Set Block 1 -","color":"light_purple","clickEvent":{"action":"run_command","value":"/execute @s ~ ~ ~ function dungeon_genorator:tellraw/random_blocks/block_1"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"click","color":"white"}]}},"insertion":"tellraw @s %s"}]
tellraw @s ["",{"text":"           ","color":"gray"},{"text":"- Set Block 2 -","color":"light_purple","clickEvent":{"action":"run_command","value":"/execute @s ~ ~ ~ function dungeon_genorator:tellraw/random_blocks/block_2"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"click","color":"white"}]}},"insertion":"tellraw @s %s"}]
tellraw @s ["",{"text":"           ","color":"gray"},{"text":"- Set Block 3 -","color":"light_purple","clickEvent":{"action":"run_command","value":"/execute @s ~ ~ ~ function dungeon_genorator:tellraw/random_blocks/block_3"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"click","color":"white"}]}},"insertion":"tellraw @s %s"}]
tellraw @s ["",{"text":"           ","color":"gray"},{"text":"- Set Block 4 -","color":"light_purple","clickEvent":{"action":"run_command","value":"/execute @s ~ ~ ~ function dungeon_genorator:tellraw/random_blocks/block_4"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"click","color":"white"}]}},"insertion":"tellraw @s %s"}]
tellraw @s ["",{"text":"           ","color":"gray"},{"text":"- Set Block 5 -","color":"light_purple","clickEvent":{"action":"run_command","value":"/execute @s ~ ~ ~ function dungeon_genorator:tellraw/random_blocks/block_5"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"click","color":"white"}]}},"insertion":"tellraw @s %s"}]
tellraw @s ["",{"text":"           ","color":"gray"},{"text":"- Set Block 6 -","color":"light_purple","clickEvent":{"action":"run_command","value":"/execute @s ~ ~ ~ function dungeon_genorator:tellraw/random_blocks/block_6"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"click","color":"white"}]}},"insertion":"tellraw @s %s"}]
tellraw @s ["",{"text":"           ","color":"gray"},{"text":"- Set Block 7 -","color":"light_purple","clickEvent":{"action":"run_command","value":"/execute @s ~ ~ ~ function dungeon_genorator:tellraw/random_blocks/block_7"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"click","color":"white"}]}},"insertion":"tellraw @s %s"}]
tellraw @s ["",{"text":"           ","color":"gray"},{"text":"- Set Block 8 -","color":"light_purple","clickEvent":{"action":"run_command","value":"/execute @s ~ ~ ~ function dungeon_genorator:tellraw/random_blocks/block_8"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"click","color":"white"}]}},"insertion":"tellraw @s %s"}]
tellraw @s ["",{"text":"           ","color":"gray"},{"text":"- Set Block 9 -","color":"light_purple","clickEvent":{"action":"run_command","value":"/execute @s ~ ~ ~ function dungeon_genorator:tellraw/random_blocks/block_9"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"click","color":"white"}]}},"insertion":"tellraw @s %s"}]
tellraw @s ["",{"text":"          ","color":"gray"},{"text":"- Set Block 10 -","color":"light_purple","clickEvent":{"action":"run_command","value":"/execute @s ~ ~ ~ function dungeon_genorator:tellraw/random_blocks/block_10"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"click","color":"white"}]}},"insertion":"tellraw @s %s"}]

tellraw @s ["",{"text":"\n              ","color":"gray"},{"text":"| Reload |","color":"gray","clickEvent":{"action":"run_command","value":"/execute @s ~ ~ ~ function dungeon_genorator:tellraw/random_blocks/set"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"click","color":"white"}]}},"insertion":"tellraw @s %s"}]
tellraw @s ["",{"text":"               ","color":"gray"},{"text":"| Back |","color":"gray","clickEvent":{"action":"run_command","value":"/execute @s ~ ~ ~ function dungeon_genorator:tellraw/random_blocks"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"click","color":"white"}]}},"insertion":"tellraw @s %s"}]
tellraw @s ["",{"text":" ##################### ","color":"aqua","bold":true,"underlined":true,"italic":false}]


