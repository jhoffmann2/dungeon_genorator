######################################################################################
# Function:		construct
# Created By:	Jordan Hoffmann
# Date:			6/17/17
# Version:		1.12
# Description:	after the web is built, construct the physical rooms for that spacific branch/trunk
######################################################################################

	#Trunk
execute @e[name=editor,type=armor_stand,tag=trunk] ~ ~ ~ execute @e[name=node,type=armor_stand,tag=s1] ~ ~ ~ execute @s[tag=trunk] ~ ~ ~ function dungeon_genorator:rooms/construction/construct_s1
execute @e[name=editor,type=armor_stand,tag=trunk] ~ ~ ~ execute @e[name=node,type=armor_stand,tag=s2] ~ ~ ~ execute @s[tag=trunk] ~ ~ ~ function dungeon_genorator:rooms/construction/construct_s2
execute @e[name=editor,type=armor_stand,tag=trunk] ~ ~ ~ execute @e[name=node,type=armor_stand,tag=s3] ~ ~ ~ execute @s[tag=trunk] ~ ~ ~ function dungeon_genorator:rooms/construction/construct_s3
execute @e[name=editor,type=armor_stand,tag=trunk] ~ ~ ~ execute @e[name=node,type=armor_stand,tag=s4] ~ ~ ~ execute @s[tag=trunk] ~ ~ ~ function dungeon_genorator:rooms/construction/construct_s4
execute @e[name=editor,type=armor_stand,tag=trunk] ~ ~ ~ execute @e[name=node,type=armor_stand,tag=s5] ~ ~ ~ execute @s[tag=trunk] ~ ~ ~ function dungeon_genorator:rooms/construction/construct_s5
execute @e[name=editor,type=armor_stand,tag=trunk] ~ ~ ~ execute @e[name=node,type=armor_stand,tag=s6] ~ ~ ~ execute @s[tag=trunk] ~ ~ ~ function dungeon_genorator:rooms/construction/construct_s6

	#Branch
scoreboard players operation @e[type=armor_stand,name=node,tag=!trunk] branch -= currentBranch branch
execute @e[name=node,type=armor_stand,score_branch_min=0,score_branch=0,tag=s1] ~ ~ ~ execute @s[tag=!trunk] ~ ~ ~ function dungeon_genorator:rooms/construction/construct_s1
execute @e[name=node,type=armor_stand,score_branch_min=0,score_branch=0,tag=s2] ~ ~ ~ execute @s[tag=!trunk] ~ ~ ~ function dungeon_genorator:rooms/construction/construct_s2
execute @e[name=node,type=armor_stand,score_branch_min=0,score_branch=0,tag=s3] ~ ~ ~ execute @s[tag=!trunk] ~ ~ ~ function dungeon_genorator:rooms/construction/construct_s3
execute @e[name=node,type=armor_stand,score_branch_min=0,score_branch=0,tag=s4] ~ ~ ~ execute @s[tag=!trunk] ~ ~ ~ function dungeon_genorator:rooms/construction/construct_s4
execute @e[name=node,type=armor_stand,score_branch_min=0,score_branch=0,tag=s5] ~ ~ ~ execute @s[tag=!trunk] ~ ~ ~ function dungeon_genorator:rooms/construction/construct_s5
execute @e[name=node,type=armor_stand,score_branch_min=0,score_branch=0,tag=s6] ~ ~ ~ execute @s[tag=!trunk] ~ ~ ~ function dungeon_genorator:rooms/construction/construct_s6
scoreboard players operation @e[type=armor_stand,name=node,tag=!trunk] branch += currentBranch branch

kill @e[type=item]