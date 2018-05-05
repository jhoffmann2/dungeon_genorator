######################################################################################
# Function:		updateCoordinates
# Created By:	Jordan Hoffmann
# Date:			6/19/17
# Version:		1.12
# Description:	update the yCoordinate score for @s
######################################################################################

execute @s ~ ~ ~ testforblocks ~ 0 ~ ~ ~ ~ ~ 0 ~
scoreboard players remove @s temp_coord 1
scoreboard players operation @s yCoordinate = @s temp_coord