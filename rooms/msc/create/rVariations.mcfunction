######################################################################################
# Function:		rVariations
# Created By:	Jordan Hoffmann
# Date:			6/15/17
# sersion:		1.12
# Description:	summon the random room variation armor_stands
######################################################################################

#Initialization
scoreboard objectives add bails1 dummy
scoreboard objectives add bails2 dummy
scoreboard objectives add bails3 dummy
scoreboard objectives add bails4 dummy
scoreboard objectives add bails5 dummy
scoreboard objectives add bails6 dummy
scoreboard players operation @e[name=editor,type=armor_stand] bails1 = s1Probability controls
scoreboard players operation @e[name=editor,type=armor_stand] bails2 = s2Probability controls
scoreboard players operation @e[name=editor,type=armor_stand] bails3 = s3Probability controls
scoreboard players operation @e[name=editor,type=armor_stand] bails4 = s4Probability controls
scoreboard players operation @e[name=editor,type=armor_stand] bails5 = s5Probability controls
scoreboard players operation @e[name=editor,type=armor_stand] bails6 = s6Probability controls

#create directions
function dungeon_genorator:rooms/msc/create/rVariations_helper

#clean up
execute @e[name=editor,type=armor_stand] ~ ~ ~ scoreboard objectives remove bails1
execute @e[name=editor,type=armor_stand] ~ ~ ~ scoreboard objectives remove bails2
execute @e[name=editor,type=armor_stand] ~ ~ ~ scoreboard objectives remove bails3
execute @e[name=editor,type=armor_stand] ~ ~ ~ scoreboard objectives remove bails4
execute @e[name=editor,type=armor_stand] ~ ~ ~ scoreboard objectives remove bails5
execute @e[name=editor,type=armor_stand] ~ ~ ~ scoreboard objectives remove bails6
