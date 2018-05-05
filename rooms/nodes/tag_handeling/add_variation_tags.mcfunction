######################################################################################
# Function:		add_next_tags
# Created By:	Jordan Hoffmann
# Date:			6/16/17
# Version:		1.12
# Description:	after the node web is built, move editor through, 
#				assigning variation tags.
######################################################################################

execute @e[name=editor,type=armor_stand] ~ ~ ~ function dungeon_genorator:rooms/nodes/first

function dungeon_genorator:rooms/nodes/tag_handeling/add_variation_tags_helper