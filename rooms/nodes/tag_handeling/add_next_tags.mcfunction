######################################################################################
# Function:		add_next_tags
# Created By:	Jordan Hoffmann
# Date:			6/16/17
# Version:		1.12
# Description:	after the node web is built, move editor through, 
#				assigning direction tags.
######################################################################################

execute @e[name=editor,type=armor_stand] ~ ~ ~ function dungeon_genorator:rooms/nodes/first


#create backup of node
execute @e[name=editor,type=armor_stand] ~ ~ ~ summon armor_stand ~ ~ ~ {CustomName:"tempLocationCheck",NoGravity:1b,Marker:1b,Invisible:1,NoBasePlate:1}
execute @e[name=node,type=armor_stand,tag=yPos] ~ ~ ~ scoreboard players tag @e[name=tempLocationCheck,type=armor_stand,r=1] add yPos
execute @e[name=node,type=armor_stand,tag=yNeg] ~ ~ ~ scoreboard players tag @e[name=tempLocationCheck,type=armor_stand,r=1] add yNeg
execute @e[name=node,type=armor_stand,tag=xPos] ~ ~ ~ scoreboard players tag @e[name=tempLocationCheck,type=armor_stand,r=1] add xPos
execute @e[name=node,type=armor_stand,tag=xNeg] ~ ~ ~ scoreboard players tag @e[name=tempLocationCheck,type=armor_stand,r=1] add xNeg
execute @e[name=node,type=armor_stand,tag=zPos] ~ ~ ~ scoreboard players tag @e[name=tempLocationCheck,type=armor_stand,r=1] add zPos
execute @e[name=node,type=armor_stand,tag=zNeg] ~ ~ ~ scoreboard players tag @e[name=tempLocationCheck,type=armor_stand,r=1] add zNeg



function dungeon_genorator:rooms/nodes/tag_handeling/add_next_tags_helper

execute @a[tag=debug] ~ ~ ~ execute @e[name=tempLocationCheck,type=armor_stand] ~ ~ ~ particle cloud ~ ~6 ~ 0 3 0 0 100
execute @a[tag=debug] ~ ~ ~ execute @e[name=editor,type=armor_stand] ~ ~ ~ particle flame ~ ~6 ~ 0 3 0 0 100

execute @e[name=editor,type=armor_stand] ~ ~ ~ execute @e[name=tempLocationCheck,type=armor_stand,r=1] ~ ~ ~ scoreboard players tag @e[name=editor,type=armor_stand] add cancelNextTags
execute @e[name=editor,type=armor_stand,tag=cancelNextTags] ~ ~ ~ execute @a[tag=debug] ~ ~ ~ playsound minecraft:block.anvil.destroy ambient @s ~ ~ ~ 1

#if nothing was built, undo the "next" tags
execute @e[name=editor,type=armor_stand,tag=cancelNextTags] ~ ~ ~ execute @e[name=tempLocationCheck,type=armor_stand,tag=!yPos] ~ ~ ~ scoreboard players tag @e[name=node,type=armor_stand,r=1] remove yPos
execute @e[name=editor,type=armor_stand,tag=cancelNextTags] ~ ~ ~ execute @e[name=tempLocationCheck,type=armor_stand,tag=!yNeg] ~ ~ ~ scoreboard players tag @e[name=node,type=armor_stand,r=1] remove yNeg
execute @e[name=editor,type=armor_stand,tag=cancelNextTags] ~ ~ ~ execute @e[name=tempLocationCheck,type=armor_stand,tag=!xPos] ~ ~ ~ scoreboard players tag @e[name=node,type=armor_stand,r=1] remove xPos
execute @e[name=editor,type=armor_stand,tag=cancelNextTags] ~ ~ ~ execute @e[name=tempLocationCheck,type=armor_stand,tag=!xNeg] ~ ~ ~ scoreboard players tag @e[name=node,type=armor_stand,r=1] remove xNeg
execute @e[name=editor,type=armor_stand,tag=cancelNextTags] ~ ~ ~ execute @e[name=tempLocationCheck,type=armor_stand,tag=!zPos] ~ ~ ~ scoreboard players tag @e[name=node,type=armor_stand,r=1] remove zPos
execute @e[name=editor,type=armor_stand,tag=cancelNextTags] ~ ~ ~ execute @e[name=tempLocationCheck,type=armor_stand,tag=!zNeg] ~ ~ ~ scoreboard players tag @e[name=node,type=armor_stand,r=1] remove zNeg



kill @e[name=tempLocationCheck,type=armor_stand]

scoreboard players tag @e[name=editor,type=armor_stand,tag=cancelNextTags] remove cancelNextTags