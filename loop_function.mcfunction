######################################################################################
# Function:		loop_function
# Created By:	Jordan Hoffmann
# Date:			6/26/17
# Version:		1.12
# Description:	the loop function for Dungeon Genorator
# Notes:
#
#								USE THE COMMAND:
#------------------------------------------------------------------------------------
#		    /gamerule gameLoopFunction dungeon_genorator:loop_function
#------------------------------------------------------------------------------------
#			  			 within you're minecraft world
#
#If you have more than one loop function, copy the content of this entire text file 
#into the other loop function and set your game rule to execute that function.
#
######################################################################################

execute @a ~ ~ ~ scoreboard players tag @e[name=node,r=10] add keepRoom
execute @a ~ ~ ~ scoreboard players tag @e[name=node,rm=10,tag=keepRoom] remove keepRoom

#Run the first time setting up loop function:
	execute @a[tag=!ranStartDG] ~ ~ ~ function dungeon_genorator:setup
	execute @a[tag=!ranStartDG] ~ ~ ~ function dungeon_genorator:edit
    execute @a[tag=!ranStartDG] ~ ~ ~ scoreboard players set block1PlacementRate controls 70
    execute @a[tag=!ranStartDG] ~ ~ ~ scoreboard players set block2PlacementRate controls 70
    execute @a[tag=!ranStartDG] ~ ~ ~ scoreboard players set block3PlacementRate controls 70
    execute @a[tag=!ranStartDG] ~ ~ ~ scoreboard players set block4PlacementRate controls 70
    execute @a[tag=!ranStartDG] ~ ~ ~ scoreboard players set block5PlacementRate controls 70
    execute @a[tag=!ranStartDG] ~ ~ ~ scoreboard players set block6PlacementRate controls 70
    execute @a[tag=!ranStartDG] ~ ~ ~ scoreboard players set block7PlacementRate controls 30
    execute @a[tag=!ranStartDG] ~ ~ ~ scoreboard players set block8PlacementRate controls 70
    execute @a[tag=!ranStartDG] ~ ~ ~ scoreboard players set block9PlacementRate controls 70
    execute @a[tag=!ranStartDG] ~ ~ ~ scoreboard players set block10PlacementRate controls 70
execute @a[tag=!ranStartDG] ~ ~ ~ scoreboard objectives add quitDG stat.leaveGame
scoreboard players tag @a[tag=!firstRunDG] add ranStartDG

#Run every time the a player joins game
	execute @a[score_quitDG_min=1] ~ ~ ~ function dungeon_genorator:setup
	execute @a[score_quitDG_min=1] ~ ~ ~ function dungeon_genorator:edit
scoreboard players reset @a[score_quitDG_min=1] quitDG

#Always Run
execute @a[tag=update_unknown_UI] ~ ~ ~ function dungeon_genorator:tellraw/random_blocks/block_update_ui
scoreboard players tag @a[tag=update_unknown_UI] remove update_unknown_UI

    #repeat functions that display loading screens
    execute @e[name=editor,type=armor_stand,tag=repeat1] ~ ~ ~ function dungeon_genorator:rooms/build_branches_helper
    execute @e[name=editor,type=armor_stand,tag=repeat2] ~ ~ ~ function dungeon_genorator:rooms/build_trunk
    execute @e[tag=repeat3] ~ ~ ~ function dungeon_genorator:block_placer/place_block_helper
    execute @e[name=editor,type=armor_stand,tag=repeat4] ~ ~ ~ function dungeon_genorator:block_placer/place_all_blocks