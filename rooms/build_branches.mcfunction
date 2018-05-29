######################################################################################
# Function:		build_branches
# Created By:	Jordan Hoffmann
# Date:			6/15/17
# Version:		1.12
# Description:	build the rooms in the branches
######################################################################################

scoreboard players tag @e[name=editor,type=armor_stand] remove trunk

#set maxFloor to maximum floor in build thus far
scoreboard players reset maxFloor floor
scoreboard players operation maxFloor floor > @e[name=node,type=armor_stand] floor

#set editors currentFloor score to one less than the minimum floor
scoreboard objectives add currentFloor dummy
scoreboard players reset @e[name=editor,type=armor_stand] currentFloor
execute @e[name=node] ~ ~ ~ scoreboard players operation @e[name=editor,type=armor_stand] currentFloor < @s floor
tellraw @a[tag=debug] ["",{"text":"Min Floor: "},{"score":{"name":"@e[name=editor]","objective":"currentFloor"},"insertion":"tellraw @s %s"}]
scoreboard players remove @e[name=editor,type=armor_stand] currentFloor 1

tellraw @a[tag=debug] ["",{"text":"Max Floor: "},{"score":{"name":"maxFloor","objective":"floor"},"insertion":"tellraw @s %s"}]

function dungeon_genorator:rooms/build_branches_helper
scoreboard players tag @e[tag=multidirectional,name=node,type=armor_stand] add buildMultiRoom
scoreboard players tag @e[tag=multidirectional,name=node,type=armor_stand] add maxDirections
function dungeon_genorator:rooms/nodes/tag_handeling/update_multidirectional_nodes
function dungeon_genorator:rooms/construction/multidirectional/construct
scoreboard players tag @e[name=node,type=armor_stand] remove buildMultiRoom

tellraw @a[tag=debug] ["",{"text":"Done"}]
execute @a[tag=ui7] ~ ~ ~ function dungeon_genorator:tellraw/build_functions