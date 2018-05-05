######################################################################################
# Function:		rDirections_helper
# Created By:	Jordan Hoffmann
# Date:			6/17/17
# Version:		1.12
# Description:	the recursive part of rDirections
######################################################################################

#subtract 1
scoreboard players remove @e[name=editor,type=armor_stand] bailxPos 1
scoreboard players remove @e[name=editor,type=armor_stand] bailyPos 1
scoreboard players remove @e[name=editor,type=armor_stand] bailzPos 1
scoreboard players remove @e[name=editor,type=armor_stand] bailxNeg 1
scoreboard players remove @e[name=editor,type=armor_stand] bailyNeg 1
scoreboard players remove @e[name=editor,type=armor_stand] bailzNeg 1


#MAIN COMMAND
execute @e[name=editor,type=armor_stand,score_bailxPos_min=0] ~ ~ ~ summon armor_stand ~ ~ ~ {CustomName:"rDirection",Tags:["xPos"],NoGravity:1b,Small:1,Marker:1b,Invisible:1,Invulnerable:1}
execute @e[name=editor,type=armor_stand,score_bailyPos_min=0] ~ ~ ~ summon armor_stand ~ ~ ~ {CustomName:"rDirection",Tags:["yPos"],NoGravity:1b,Small:1,Marker:1b,Invisible:1,Invulnerable:1}
execute @e[name=editor,type=armor_stand,score_bailzPos_min=0] ~ ~ ~ summon armor_stand ~ ~ ~ {CustomName:"rDirection",Tags:["zPos"],NoGravity:1b,Small:1,Marker:1b,Invisible:1,Invulnerable:1}
execute @e[name=editor,type=armor_stand,score_bailxNeg_min=0] ~ ~ ~ summon armor_stand ~ ~ ~ {CustomName:"rDirection",Tags:["xNeg"],NoGravity:1b,Small:1,Marker:1b,Invisible:1,Invulnerable:1}
execute @e[name=editor,type=armor_stand,score_bailyNeg_min=0] ~ ~ ~ summon armor_stand ~ ~ ~ {CustomName:"rDirection",Tags:["yNeg"],NoGravity:1b,Small:1,Marker:1b,Invisible:1,Invulnerable:1}
execute @e[name=editor,type=armor_stand,score_bailzNeg_min=0] ~ ~ ~ summon armor_stand ~ ~ ~ {CustomName:"rDirection",Tags:["zNeg"],NoGravity:1b,Small:1,Marker:1b,Invisible:1,Invulnerable:1}

#recursion
function dungeon_genorator:rooms/msc/create/rDirections_helper unless @e[name=editor,type=armor_stand,score_bailxPos=0,score_bailyPos=0,score_bailzPos=0,score_bailxNeg=0,score_bailyNeg=0,score_bailzNeg=0]