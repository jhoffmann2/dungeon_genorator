######################################################################################
# Function:		rDirections
# Created By:	Jordan Hoffmann
# Date:			6/15/17
# Version:		1.12
# Description:	summon the random direction armor_stands
######################################################################################

#Initialization
scoreboard objectives add bailxPos dummy
scoreboard objectives add bailyPos dummy
scoreboard objectives add bailzPos dummy
scoreboard objectives add bailxNeg dummy
scoreboard objectives add bailyNeg dummy
scoreboard objectives add bailzNeg dummy
scoreboard players operation @e[name=editor,type=armor_stand] bailxPos = xPosProbability controls
scoreboard players operation @e[name=editor,type=armor_stand] bailyPos = yPosProbability controls
scoreboard players operation @e[name=editor,type=armor_stand] bailzPos = zPosProbability controls
scoreboard players operation @e[name=editor,type=armor_stand] bailxNeg = xNegProbability controls
scoreboard players operation @e[name=editor,type=armor_stand] bailyNeg = yNegProbability controls
scoreboard players operation @e[name=editor,type=armor_stand] bailzNeg = zNegProbability controls

#create directions
function dungeon_genorator:rooms/msc/create/rDirections_helper

#clean up
execute @e[name=editor,type=armor_stand] ~ ~ ~ scoreboard objectives remove bailxPos
execute @e[name=editor,type=armor_stand] ~ ~ ~ scoreboard objectives remove bailyPos
execute @e[name=editor,type=armor_stand] ~ ~ ~ scoreboard objectives remove bailzPos
execute @e[name=editor,type=armor_stand] ~ ~ ~ scoreboard objectives remove bailxNeg
execute @e[name=editor,type=armor_stand] ~ ~ ~ scoreboard objectives remove bailyNeg
execute @e[name=editor,type=armor_stand] ~ ~ ~ scoreboard objectives remove bailzNeg
