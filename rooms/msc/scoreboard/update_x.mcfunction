######################################################################################
# Function:		updateCoordinates
# Created By:	Jordan Hoffmann
# Date:			6/19/17
# Version:		1.12
# Description:	update the xCoordinate score for @s
######################################################################################

testforblocks 0 ~ ~ ~ ~ ~ 0 ~ ~
scoreboard players remove @s temp_coord 1
scoreboard players tag @s[score_temp_coord=-1] add NegativeCoordX
execute @s[tag=NegativeCoordX] ~ ~ ~ testforblocks 0 ~ ~ ~ ~ ~ ~ ~ ~
scoreboard players remove @s[tag=NegativeCoordX] temp_coord 1
scoreboard players operation @s xCoordinate = @s temp_coord
scoreboard players operation @s[tag=NegativeCoordX] xCoordinate *= Neg_One xCoordinate
scoreboard players tag @s remove NegativeCoordX