######################################################################################
# Function:		build_functions
# Created By:	Jordan Hoffmann
# Date:			7/20/17
# Version:		1.12
# Description:	user interface for building the dungeon
######################################################################################
scoreboard players tag @s add ui7
scoreboard players tag @s remove ui1
scoreboard players tag @s remove ui2
scoreboard players tag @s remove ui3
scoreboard players tag @s remove ui4
scoreboard players tag @s remove ui5
scoreboard players tag @s remove ui6

playsound minecraft:ui.button.click ambient @s ~ ~ ~
tellraw @s ["",{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n       BUILD DUNGEON       \n","color":"aqua","bold":true,"underlined":true}]
tellraw @s ["",{"text":"        ","color":"gray"},{"text":"- Build Main Trunk -","color":"blue","clickEvent":{"action":"run_command","value":"/execute @s ~ ~ ~ function dungeon_genorator:tellraw/run/build_trunk"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"click","color":"white"}]}},"insertion":"tellraw @s %s"}]
tellraw @s ["",{"text":"        ","color":"gray"},{"text":"-  Build Branches -","color":"blue","clickEvent":{"action":"run_command","value":"/execute @s ~ ~ ~ function dungeon_genorator:tellraw/run/build_branches"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"click","color":"white"}]}},"insertion":"tellraw @s %s"}]
tellraw @s ["",{"text":"\n    ","color":"gray"},{"text":"- Place Random Blocks -","color":"blue","clickEvent":{"action":"run_command","value":"/execute @s ~ ~ ~ function dungeon_genorator:tellraw/run/place_random_blocks"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"click","color":"white"}]}},"insertion":"tellraw @s %s"}]

tellraw @s ["",{"text":"\n              ","color":"gray"},{"text":"| Reload |","color":"gray","clickEvent":{"action":"run_command","value":"/execute @s ~ ~ ~ function dungeon_genorator:tellraw/build_functions"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"click","color":"white"}]}},"insertion":"tellraw @s %s"}]
tellraw @s ["",{"text":"               ","color":"gray"},{"text":"| Back |","color":"gray","clickEvent":{"action":"run_command","value":"/execute @s ~ ~ ~ function dungeon_genorator:tellraw/dungeon_customization"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"click","color":"white"}]}},"insertion":"tellraw @s %s"}]

tellraw @s ["",{"text":" ##################### ","color":"aqua","bold":true,"underlined":true,"italic":false}]
