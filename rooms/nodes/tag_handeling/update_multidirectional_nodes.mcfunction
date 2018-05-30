######################################################################################
# Function:		update_multidirectional_nodes
# Created By:	Jordan Hoffmann
# Date:			5/2/18
# Version:		1.12.2
# Description:	Recursively update multidirectional nodes
######################################################################################

    #tp editor to update random multidirectional node
	tp @e[name=editor,type=armor_stand] @r[name=node,type=armor_stand,tag=multidirectional]
    
#xPos
    execute @e[name=editor,type=armor_stand] ~8 ~ ~ execute @e[r=1,name=node,type=armor_stand,tag=xNeg] ~ ~ ~ execute @e[name=editor,type=armor_stand] ~ ~ ~ scoreboard players add @e[r=1,name=node,type=armor_stand,tag=!xPos] directionCount 1
    execute @e[name=editor,type=armor_stand] ~8 ~ ~ execute @e[r=1,name=node,type=armor_stand,tag=xNeg] ~ ~ ~ execute @e[name=editor,type=armor_stand] ~ ~ ~ scoreboard players tag @e[r=1,name=node,type=armor_stand,tag=!xPos] add xPos
#yPos
    execute @e[name=editor,type=armor_stand] ~ ~8 ~ execute @e[r=1,name=node,type=armor_stand,tag=yNeg] ~ ~ ~ execute @e[name=editor,type=armor_stand] ~ ~ ~ scoreboard players add @e[r=1,name=node,type=armor_stand,tag=!yPos] directionCount 1
    execute @e[name=editor,type=armor_stand] ~ ~8 ~ execute @e[r=1,name=node,type=armor_stand,tag=yNeg] ~ ~ ~ execute @e[name=editor,type=armor_stand] ~ ~ ~ scoreboard players tag @e[r=1,name=node,type=armor_stand,tag=!yPos] add yPos
#zPos
    execute @e[name=editor,type=armor_stand] ~ ~ ~8 execute @e[r=1,name=node,type=armor_stand,tag=zNeg] ~ ~ ~ execute @e[name=editor,type=armor_stand] ~ ~ ~ scoreboard players add @e[r=1,name=node,type=armor_stand,tag=!zPos] directionCount 1
    execute @e[name=editor,type=armor_stand] ~ ~ ~8 execute @e[r=1,name=node,type=armor_stand,tag=zNeg] ~ ~ ~ execute @e[name=editor,type=armor_stand] ~ ~ ~ scoreboard players tag @e[r=1,name=node,type=armor_stand,tag=!zPos] add zPos
#xNeg
    execute @e[name=editor,type=armor_stand] ~-8 ~ ~ execute @e[r=1,name=node,type=armor_stand,tag=xPos] ~ ~ ~ execute @e[name=editor,type=armor_stand] ~ ~ ~ scoreboard players add @e[r=1,name=node,type=armor_stand,tag=!xNeg] directionCount 1
    execute @e[name=editor,type=armor_stand] ~-8 ~ ~ execute @e[r=1,name=node,type=armor_stand,tag=xPos] ~ ~ ~ execute @e[name=editor,type=armor_stand] ~ ~ ~ scoreboard players tag @e[r=1,name=node,type=armor_stand,tag=!xNeg] add xNeg
#yNeg
    execute @e[name=editor,type=armor_stand] ~ ~-8 ~ execute @e[r=1,name=node,type=armor_stand,tag=yPos] ~ ~ ~ execute @e[name=editor,type=armor_stand] ~ ~ ~ scoreboard players add @e[r=1,name=node,type=armor_stand,tag=!yNeg] directionCount 1
    execute @e[name=editor,type=armor_stand] ~ ~-8 ~ execute @e[r=1,name=node,type=armor_stand,tag=yPos] ~ ~ ~ execute @e[name=editor,type=armor_stand] ~ ~ ~ scoreboard players tag @e[r=1,name=node,type=armor_stand,tag=!yNeg] add yNeg
#zNeg
    execute @e[name=editor,type=armor_stand] ~ ~ ~-8 execute @e[r=1,name=node,type=armor_stand,tag=zPos] ~ ~ ~ execute @e[name=editor,type=armor_stand] ~ ~ ~ scoreboard players add @e[r=1,name=node,type=armor_stand,tag=!zNeg] directionCount 1
    execute @e[name=editor,type=armor_stand] ~ ~ ~-8 execute @e[r=1,name=node,type=armor_stand,tag=zPos] ~ ~ ~ execute @e[name=editor,type=armor_stand] ~ ~ ~ scoreboard players tag @e[r=1,name=node,type=armor_stand,tag=!zNeg] add zNeg

    remove multidirectional tag on updated node
	execute @e[name=editor,type=armor_stand] ~ ~ ~ scoreboard players tag @e[name=node,type=armor_stand,r=1] remove multidirectional
function dungeon_genorator:rooms/nodes/tag_handeling/update_multidirectional_nodes if @e[name=node,type=armor_stand,tag=multidirectional]