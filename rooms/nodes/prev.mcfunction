######################################################################################
# Function:		prev
# Created By:	Jordan Hoffmann
# Date:			6/15/17
# Version:		1.12
# Description:	move @s to prev node
######################################################################################

	#look for a id value 1 less than closest node
scoreboard players operation temp ID = @e[r=1,type=armor_stand,name=node] ID
scoreboard players operation @e[type=armor_stand,name=node] ID -= temp ID
	
	#Trunk (active when editor has "trunk" tag, navigates editor around trunk nodes)
tp @s[name=editor,type=armor_stand,tag=trunk] @e[type=armor_stand,name=node,score_ID_min=-1,score_ID=-1,tag=trunk]

	#Branch (active when editor doesn't have "trunk" tag, navigates editor around nodes with the same branch score as currentBranch)
scoreboard players operation @e[type=armor_stand,name=node,score_ID_min=-1,score_ID=-1,tag=!trunk] branch -= currentBranch branch
tp @s @e[type=armor_stand,name=node,score_branch_min=0,score_branch=0,tag=!trunk]
scoreboard players operation @e[type=armor_stand,name=node,score_ID_min=-1,score_ID=-1,tag=!trunk] branch += currentBranch branch

	#clean up
scoreboard players operation @e[type=armor_stand,name=node] ID += temp ID
scoreboard players reset temp ID
