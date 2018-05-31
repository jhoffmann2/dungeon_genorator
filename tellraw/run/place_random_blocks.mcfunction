######################################################################################
# Function:		build_trunk
# Created By:	Jordan Hoffmann
# Date:			7/20/17
# Version:		1.12
# Description:	display loading screan and build the trunk
######################################################################################

playsound minecraft:ui.button.click ambient @s ~ ~ ~
tellraw @s ["",{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n   LOADING... PLEASE BE PATIENT   \n","color":"aqua","bold":true,"underlined":true}]
tellraw @s ["",{"text":" ##################### ","color":"aqua","bold":true,"underlined":true,"italic":false}]

function dungeon_genorator:block_placer/place_all_blocks
execute @s[tag=!ui7] ~ ~ ~ function dungeon_genorator:tellraw/random_blocks
execute @s[tag=ui7] ~ ~ ~ function dungeon_genorator:tellraw/build_functions