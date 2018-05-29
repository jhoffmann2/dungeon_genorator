######################################################################################
# Function:		UIstartLine
# Created By:	Jordan Hoffmann
# Date:			5/29/18
# Version:		1.12
# Description:	increment UIstartLine and reload
######################################################################################
scoreboard players remove @s UIstartLine 1
execute @s ~ ~ ~ function dungeon_genorator:tellraw/random_blocks/block_update_ui
