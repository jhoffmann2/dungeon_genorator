######################################################################################
# Function:		check_availability
# Created By:	Jordan Hoffmann
# Date:			6/21/17
# Version:		1.12
# Description:	give editor the invalid_location tag if it can't build there
######################################################################################
execute @e[name=editor,type=armor_stand] ~ ~ ~ execute @e[r=1,name=node,type=armor_stand] ~ ~ ~ scoreboard players tag @e[name=editor,type=armor_stand] add invalid_location
execute @e[name=editor,type=armor_stand] ~ ~ ~ execute @e[r=1,tag=roomBlock,type=armor_stand] ~ ~ ~ scoreboard players tag @e[name=editor,type=armor_stand] add invalid_location

execute @e[name=editor,type=armor_stand,tag=respect_gravity] ~ ~ ~ function dungeon_genorator:rooms/nodes/tag_handeling/check_gravity unless @e[name=editor,type=armor_stand,tag=invalid_location]

function dungeon_genorator:rooms/nodes/tag_handeling/check_coord_bounds unless @e[name=editor,type=armor_stand,tag=invalid_location]
