######################################################################################
# Function:		updateCoordinates
# Created By:	Jordan Hoffmann
# Date:			6/19/17
# Version:		1.12
# Description:	update the xCoordinate, yCoordinate, and zCoordinate scores for @s
######################################################################################
scoreboard objectives add xCoordinate dummy
scoreboard objectives add yCoordinate dummy
scoreboard objectives add zCoordinate dummy
scoreboard objectives add temp_coord dummy
scoreboard players set Neg_One zCoordinate -1
scoreboard players set Neg_One xCoordinate -1

stats entity @s set AffectedBlocks @s temp_coord
scoreboard players add @s temp_coord 0

clone ~ ~ ~ ~ ~ ~ 0 0 0
setblock ~ ~ ~ stone

function dungeon_genorator:rooms/msc/scoreboard/update_x

function dungeon_genorator:rooms/msc/scoreboard/update_y

function dungeon_genorator:rooms/msc/scoreboard/update_z

clone 0 0 0 0 0 0 ~ ~ ~

scoreboard objectives remove temp_coord
scoreboard players reset Neg_One xCoordinate
scoreboard players reset Neg_One zCoordinate
