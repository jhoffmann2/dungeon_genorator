######################################################################################
# Function:		add_next_tags_helper
# Created By:	Jordan Hoffmann
# Date:			6/16/17
# Version:		1.12
# Description:	Recursive part of add_next_tags
######################################################################################

scoreboard objectives add bail dummy
scoreboard players add @e[name=editor,type=armor_stand] bail 0
scoreboard players operation @e[name=editor,type=armor_stand,score_bail=0] bail = currentID ID
scoreboard players remove @e[name=editor,type=armor_stand] bail 1
    
    
	execute @e[name=editor,type=armor_stand] ~ ~ ~ function dungeon_genorator:rooms/nodes/next
	
	execute @e[name=editor,type=armor_stand] ~ ~ ~ execute @e[r=1,name=node,tag=xPos] ~ ~ ~ scoreboard players tag @e[name=editor,type=armor_stand] add set_xNeg
	execute @e[name=editor,type=armor_stand] ~ ~ ~ execute @e[r=1,name=node,tag=yPos] ~ ~ ~ scoreboard players tag @e[name=editor,type=armor_stand] add set_yNeg
	execute @e[name=editor,type=armor_stand] ~ ~ ~ execute @e[r=1,name=node,tag=zPos] ~ ~ ~ scoreboard players tag @e[name=editor,type=armor_stand] add set_zNeg
	execute @e[name=editor,type=armor_stand] ~ ~ ~ execute @e[r=1,name=node,tag=xNeg] ~ ~ ~ scoreboard players tag @e[name=editor,type=armor_stand] add set_xPos
	execute @e[name=editor,type=armor_stand] ~ ~ ~ execute @e[r=1,name=node,tag=yNeg] ~ ~ ~ scoreboard players tag @e[name=editor,type=armor_stand] add set_yPos
	execute @e[name=editor,type=armor_stand] ~ ~ ~ execute @e[r=1,name=node,tag=zNeg] ~ ~ ~ scoreboard players tag @e[name=editor,type=armor_stand] add set_zPos
	
	execute @e[name=editor,type=armor_stand] ~ ~ ~ function dungeon_genorator:rooms/nodes/prev
	
	execute @e[name=editor,tag=set_xPos] ~ ~ ~ scoreboard players tag @e[r=1,name=node,type=armor_stand] add xPos
	execute @e[name=editor,tag=set_yPos] ~ ~ ~ scoreboard players tag @e[r=1,name=node,type=armor_stand] add yPos
	execute @e[name=editor,tag=set_zPos] ~ ~ ~ scoreboard players tag @e[r=1,name=node,type=armor_stand] add zPos
	execute @e[name=editor,tag=set_xNeg] ~ ~ ~ scoreboard players tag @e[r=1,name=node,type=armor_stand] add xNeg
	execute @e[name=editor,tag=set_yNeg] ~ ~ ~ scoreboard players tag @e[r=1,name=node,type=armor_stand] add yNeg
	execute @e[name=editor,tag=set_zNeg] ~ ~ ~ scoreboard players tag @e[r=1,name=node,type=armor_stand] add zNeg
	
	scoreboard players tag @e[name=editor,type=armor_stand] remove set_xPos
	scoreboard players tag @e[name=editor,type=armor_stand] remove set_yPos
	scoreboard players tag @e[name=editor,type=armor_stand] remove set_zPos
	scoreboard players tag @e[name=editor,type=armor_stand] remove set_xNeg
	scoreboard players tag @e[name=editor,type=armor_stand] remove set_yNeg
	scoreboard players tag @e[name=editor,type=armor_stand] remove set_zNeg
	
	execute @e[name=editor,type=armor_stand] ~ ~ ~ function dungeon_genorator:rooms/nodes/next
	
function dungeon_genorator:rooms/nodes/tag_handeling/add_next_tags_helper unless @e[name=editor,type=armor_stand,score_bail=0]
execute @e[name=editor,type=armor_stand,score_bail=0] ~ ~ ~ scoreboard objectives remove bail