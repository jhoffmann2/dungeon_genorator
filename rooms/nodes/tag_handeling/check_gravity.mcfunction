######################################################################################
# Function:		check_gravity
# Created By:	Jordan Hoffmann
# Date:			6/29/17
# Version:		1.12
# Description:	give editor the invalid_location tag if there isn't sturdy
#				construction below it.
######################################################################################

execute @e[name=editor,type=armor_stand] ~ ~-8 ~ execute @e[r=1,name=node,type=armor_stand] ~ ~ ~ scoreboard players tag @e[name=editor,type=armor_stand] add valid_location
scoreboard players tag @e[name=editor,type=armor_stand,score_floor=0] add valid_location

scoreboard players tag @e[name=editor,type=armor_stand,tag=!valid_location] add invalid_location
scoreboard players tag @e[name=editor,type=armor_stand] remove valid_location