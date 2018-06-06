######################################################################################
# Function:		loop_function_noUI
# Created By:	Jordan Hoffmann
# Date:			6/26/17
# Version:		1.12
# Description:	the loop function for Dungeon Genorator that doesn't display a user interface
# Notes:
#
#								USE THE COMMAND:
#------------------------------------------------------------------------------------
#		    /gamerule gameLoopFunction dungeon_genorator:loop_function_noUI
#------------------------------------------------------------------------------------
#			  			 within you're minecraft world
#
#If you have more than one loop function, copy the content of this entire text file 
#into the other loop function and set your game rule to execute that function.
#
######################################################################################


#Run the first time setting up loop function:
	execute @a[tag=!ranStartDG] ~ ~ ~ function dungeon_genorator:setup
	execute @a[tag=!ranStartDG] ~ ~ ~ function dungeon_genorator:initiate_scores
    execute @a[tag=!ranStartDG] ~ ~ ~ spreadplayers ~ ~ 1 2 false @e[name=editor]
    execute @a[tag=!ranStartDG] ~ ~ ~ tp @e[name=editor] ~ ~3 ~
    execute @a[tag=!ranStartDG] ~ ~ ~ scoreboard objectives add quitDG stat.leaveGame
scoreboard players tag @a[tag=!ranStartDG] add ranStartDG

#Run every time the a player joins game
	execute @a[score_quitDG_min=1] ~ ~ ~ function dungeon_genorator:setup
    execute @a[score_quitDG_min=1] ~ ~ ~ reload
scoreboard players reset @a[score_quitDG_min=1] quitDG

#Always Run
    scoreboard players tag @a[tag=update_unknown_UI] remove update_unknown_UI

    #repeat functions that display loading screens
    execute @e[name=editor,type=armor_stand,tag=repeat1] ~ ~ ~ function dungeon_genorator:rooms/build_branches_helper
    execute @e[name=editor,type=armor_stand,tag=repeat2] ~ ~ ~ function dungeon_genorator:rooms/build_trunk
    execute @e[tag=repeat3] ~ ~ ~ function dungeon_genorator:block_placer/place_block_helper
    execute @e[name=editor,type=armor_stand,tag=repeat4] ~ ~ ~ function dungeon_genorator:block_placer/place_all_blocks