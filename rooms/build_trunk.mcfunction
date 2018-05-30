######################################################################################
# Function:		build_trunk
# Created By:	Jordan Hoffmann
# Date:			6/15/17
# Version:		1.12
# Description:	build the rooms in the main trunk
######################################################################################
scoreboard players set currentID ID 0
scoreboard players reset currentBranch branch
scoreboard players tag @e[name=editor,type=armor_stand] add trunk
scoreboard objectives add floor dummy
scoreboard players set @e[name=editor,type=armor_stand] floor 0

function dungeon_genorator:rooms/construction/clean_up
execute @e[name=editor,type=armor_stand] ~ ~ ~ function dungeon_genorator:rooms/nodes/first
kill @e[type=armor_stand,name=node]
execute @e[name=editor,type=armor_stand] ~ ~ ~ function dungeon_genorator:rooms/nodes/create/create_node
execute @e[name=node,type=armor_stand,score_ID=1,score_ID_min=1] ~ ~ ~ function dungeon_genorator:rooms/msc/scoreboard/update_coordinates


function dungeon_genorator:rooms/nodes/create/place_nodes
scoreboard objectives remove bailRooms

function dungeon_genorator:rooms/nodes/tag_handeling/add_next_tags
function dungeon_genorator:rooms/nodes/tag_handeling/add_variation_tags
function dungeon_genorator:rooms/construction/construct
#scoreboard players set @e[name=node,type=armor_stand] directionCount 2
#execute @e[name=editor,type=armor_stand] ~ ~ ~ function dungeon_genorator:rooms/nodes/first
#execute @e[name=editor,type=armor_stand] ~ ~ ~ scoreboard players set @e[name=node,type=armor_stand,r=1] directionCount 1
#execute @e[name=editor,type=armor_stand] ~ ~ ~ function dungeon_genorator:rooms/nodes/last
#execute @e[name=editor,type=armor_stand] ~ ~ ~ scoreboard players set @e[name=node,type=armor_stand,r=1] directionCount 1

execute @a[tag=ui7] ~ ~ ~ function dungeon_genorator:tellraw/build_functions
