######################################################################################
# Function:		first
# Created By:	Jordan Hoffmann
# Date:			6/15/17
# Version:		1.12
# Description:	move @s to the first node in currentBranch
######################################################################################

	#Trunk
tp @s[name=editor,type=armor_stand,tag=trunk] @e[type=armor_stand,name=node,tag=trunk,score_ID_min=1,score_ID=1]

	#Branch
scoreboard players operation @e[type=armor_stand,name=node,score_ID_min=1,score_ID=1,tag=!trunk] branch -= currentBranch branch
tp @s @e[type=armor_stand,name=node,score_branch_min=0,score_branch=0,tag=!trunk]
scoreboard players operation @e[type=armor_stand,name=node,score_ID_min=1,score_ID=1,tag=!trunk] branch += currentBranch branch