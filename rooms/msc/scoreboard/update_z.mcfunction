######################################################################################
# Function:		updateCoordinates
# Created By:	Jordan Hoffmann
# Date:			6/19/17
# Version:		1.12
# Description:	update the zCoordinate score for @s
######################################################################################

testforblocks ~ ~ 0 ~ ~ ~ ~ ~ 0
scoreboard players remove @s temp_coord 1
scoreboard players tag @s[score_temp_coord=-1] add NegativeCoordZ
execute @s[tag=NegativeCoordZ] ~ ~ ~ testforblocks ~ ~ 0 ~ ~ ~ ~ ~ ~
scoreboard players remove @s[tag=NegativeCoordZ] temp_coord 1
scoreboard players operation @s zCoordinate = @s temp_coord
scoreboard players operation @s[tag=NegativeCoordZ] zCoordinate *= Neg_One zCoordinate
scoreboard players tag @s remove NegativeCoordZ