######################################################################################
# Function:		build_branches
# Created By:	Jordan Hoffmann
# Date:			7/20/17
# Version:		1.12
# Description:	display loading screan and build the branches
######################################################################################

playsound minecraft:ui.button.click ambient @s ~ ~ ~
execute @a[tag=ui7] ~ ~ ~ tellraw @s ["",{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n   LOADING... PLEASE BE PATIENT   \n","color":"aqua","bold":true,"underlined":true}]
execute @a[tag=ui7] ~ ~ ~ tellraw @s ["",{"text":" ##################### ","color":"aqua","bold":true,"underlined":true,"italic":false}]

function dungeon_genorator:rooms/build_branches

