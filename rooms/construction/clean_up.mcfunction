######################################################################################
# Function:		clean up
# Created By:	Jordan Hoffmann
# Date:			7/19/17
# sersion:		1.12
# Description:	fill all the rooms and their content with air
######################################################################################


execute @e[name=node,type=armor_stand] ~ ~ ~ setblock ~ ~1 ~ air 0
execute @e[name=node,type=armor_stand] ~ ~ ~ setblock ~ ~ ~ structure_block 0 replace {name:"clear",rotation:"NONE",posX:-4,posY:-4,posZ:-4,mirror:"NONE",ignoreEntities:0b,mode:"LOAD",showboundingbox:0b,sizeX:9,sizeY:9,sizeZ:9}
execute @e[name=node,type=armor_stand] ~ ~ ~ setblock ~ ~1 ~ redstone_block
execute @e[name=node,type=armor_stand,score_ID=1,tag=trunk] ~ ~ ~ fill ~-55 ~-4 ~-55 ~55 ~-4 ~55 grass 0


kill @e[tag=random_block]
kill @e[type=item_frame]
kill @e[type=painting]
kill @e[type=item]