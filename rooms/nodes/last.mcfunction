######################################################################################
# Function:		last
# Created By:	Jordan Hoffmann
# Date:			6/15/17
# Version:		1.12
# Description:	move @s to the last node
######################################################################################
scoreboard players operation @e[type=armor_stand,name=node] ID -= currentID ID



#Trunk
tp @s[name=editor,type=armor_stand,tag=trunk] @e[tag=trunk,type=armor_stand,name=node,score_ID_min=0,score_ID=0]

#Branch
scoreboard players operation @e[type=armor_stand,name=node,score_ID_min=0,score_ID=0,tag=!trunk] branch -= currentBranch branch
tp @s @e[type=armor_stand,name=node,score_branch_min=0,score_branch=0,tag=!trunk]
scoreboard players operation @e[type=armor_stand,name=node,score_ID_min=0,score_ID=0,tag=!trunk] branch += currentBranch branch


scoreboard players operation @e[type=armor_stand,name=node] ID += currentID ID
