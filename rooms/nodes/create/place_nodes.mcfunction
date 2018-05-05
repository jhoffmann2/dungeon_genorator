######################################################################################
# Function:		place_nodes
# Created By:	Jordan Hoffmann
# Date:			6/16/17
# Version:		1.12
# Description:	place (maxRooms) nodes
######################################################################################

#initiate loop counter: BailRooms if it doesn't exist at startup
scoreboard objectives add bailRooms dummy
scoreboard players add @e[name=editor,type=armor_stand] bailRooms 0

#only run at startup:
execute @e[name=editor,type=armor_stand,score_bailRooms=0,tag=!trunk] ~ ~ ~ scoreboard players tag @e[name=node,type=armor_stand,r=1] add multidirectional
scoreboard players tag @e[name=editor,type=armor_stand,score_bailRooms=0,tag=!trunk] add startBranchHead
scoreboard players operation @e[name=editor,type=armor_stand,score_bailRooms=0] bailRooms += maxRooms controls


#run (maxRooms) number of times
scoreboard players remove @e[name=editor] bailRooms 1
execute @e[name=editor,type=armor_stand,score_bailRooms=0] ~ ~ ~ scoreboard objectives remove bailRooms

function dungeon_genorator:rooms/nodes/create/place_next_node if @e[name=editor,type=armor_stand,score_bailRooms_min=0]

execute @e[name=editor,type=armor_stand,score_bailRooms_min=1] ~ ~ ~ function dungeon_genorator:rooms/nodes/create/place_nodes
