######################################################################################
# Function:		dungeon_customization
# Created By:	Jordan Hoffmann
# Date:			6/17/17
# Version:		1.12
# Description:	user interface for customizing the dungeons
######################################################################################
scoreboard players tag @s add ui1
scoreboard players tag @s remove ui2
scoreboard players tag @s remove ui3
scoreboard players tag @s remove ui4
scoreboard players tag @s remove ui5
scoreboard players tag @s remove ui6
scoreboard players tag @s remove ui7

playsound minecraft:ui.button.click ambient @s ~ ~ ~
tellraw @s ["",{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n  DUNGEON CUSTOMIZATION  \n","color":"aqua","bold":true,"underlined":true}]
tellraw @s ["",{"text":" [","color":"gray"},{"text":" - ","color":"red","clickEvent":{"action":"run_command","value":"/execute @s ~ ~ ~ function dungeon_genorator:tellraw/decrement/maxRooms"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"decrement","color":"white"}]}}},{"text":"]  Maximum Rooms : ","color":"gray"},{"score":{"name":"maxRooms","objective":"controls"},"color":"light_purple","clickEvent":{"action":"suggest_command","value":"/scoreboard players set maxRooms controls 25"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"click for command","color":"white"}]}}},{"text":"  [","color":"gray"},{"text":" + ","color":"green","clickEvent":{"action":"run_command","value":"/execute @s ~ ~ ~ function dungeon_genorator:tellraw/increment/maxRooms"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"increment"}]}}},{"text":"]","color":"gray"}]
tellraw @s ["",{"text":"           ","color":"gray"},{"text":"- Probability -","color":"blue","clickEvent":{"action":"run_command","value":"/execute @s ~ ~ ~ function dungeon_genorator:tellraw/probability_selector"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"click","color":"white"}]}},"insertion":"tellraw @s %s"}]
tellraw @s ["",{"text":"           ","color":"gray"},{"text":"- Boundries -","color":"blue","clickEvent":{"action":"run_command","value":"/execute @s ~ ~ ~ function dungeon_genorator:tellraw/genoration_boundries"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"click","color":"white"}]}},"insertion":"tellraw @s %s"}]
tellraw @s ["",{"text":"         ","color":"gray"},{"text":"- Random Blocks -","color":"blue","clickEvent":{"action":"run_command","value":"/execute @s ~ ~ ~ function dungeon_genorator:tellraw/random_blocks"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"click","color":"white"}]}},"insertion":"tellraw @s %s"}]

tellraw @s ["",{"text":"\n               ","color":"gray"},{"text":"- Build -","color":"blue","clickEvent":{"action":"run_command","value":"/execute @s ~ ~ ~ function dungeon_genorator:tellraw/build_functions"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"click","color":"white"}]}},"insertion":"tellraw @s %s"}]

tellraw @s ["",{"text":"\n              ","color":"gray"},{"text":"| Reload |","color":"gray","clickEvent":{"action":"run_command","value":"/execute @s ~ ~ ~ function dungeon_genorator:tellraw/dungeon_customization"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"click","color":"white"}]}},"insertion":"tellraw @s %s"}]
tellraw @s ["",{"text":"\n ##################### ","color":"aqua","bold":true,"underlined":true,"italic":false}]
