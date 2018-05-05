######################################################################################
# Function:		check_coord_bounds
# Created By:	Jordan Hoffmann
# Date:			6/29/17
# Version:		1.12
# Description:	give editor the invalid_location tag if its out of the user defined
#				coordinate bounds.
######################################################################################

execute @e[name=editor,type=armor_stand] ~ ~ ~ function dungeon_genorator:rooms/msc/scoreboard/update_coordinates

#if (markers xCoordinate >= xMaxBound) {out of bounds}
scoreboard players operation @e[name=editor,type=armor_stand] xCoordinate -= xMaxBound controls
scoreboard players operation @e[name=editor,type=armor_stand,tag=relative_bound] xCoordinate -= @e[name=node,type=armor_stand,score_ID=1,score_ID_min=1] xCoordinate
scoreboard players tag @e[name=editor,type=armor_stand,score_xCoordinate_min=0] add invalid_location
scoreboard players operation @e[name=editor,type=armor_stand] xCoordinate += xMaxBound controls
scoreboard players operation @e[name=editor,type=armor_stand,tag=relative_bound] xCoordinate += @e[name=node,type=armor_stand,score_ID=1,score_ID_min=1] xCoordinate

#if (markers xCoordinate <= xMinBound) {out of bounds}
scoreboard players operation @e[name=editor,type=armor_stand] xCoordinate -= xMinBound controls
scoreboard players operation @e[name=editor,type=armor_stand,tag=relative_bound] xCoordinate -= @e[name=node,type=armor_stand,score_ID=1,score_ID_min=1] xCoordinate
scoreboard players tag @e[name=editor,type=armor_stand,score_xCoordinate=0] add invalid_location
scoreboard players operation @e[name=editor,type=armor_stand] xCoordinate += xMinBound controls
scoreboard players operation @e[name=editor,type=armor_stand,tag=relative_bound] xCoordinate += @e[name=node,type=armor_stand,score_ID=1,score_ID_min=1] xCoordinate

#if (markers yCoordinate >= yMaxBound) {out of bounds}
scoreboard players operation @e[name=editor,type=armor_stand] yCoordinate -= yMaxBound controls
scoreboard players operation @e[name=editor,type=armor_stand,tag=relative_bound] yCoordinate -= @e[name=node,type=armor_stand,score_ID=1,score_ID_min=1] yCoordinate
scoreboard players tag @e[name=editor,type=armor_stand,score_yCoordinate_min=0] add invalid_location
scoreboard players operation @e[name=editor,type=armor_stand] yCoordinate += yMaxBound controls
scoreboard players operation @e[name=editor,type=armor_stand,tag=relative_bound] yCoordinate += @e[name=node,type=armor_stand,score_ID=1,score_ID_min=1] yCoordinate

#if (markers yCoordinate <= yMinBound) {out of bounds}
scoreboard players operation @e[name=editor,type=armor_stand] yCoordinate -= yMinBound controls
scoreboard players operation @e[name=editor,type=armor_stand,tag=relative_bound] yCoordinate -= @e[name=node,type=armor_stand,score_ID=1,score_ID_min=1] yCoordinate
scoreboard players tag @e[name=editor,type=armor_stand,score_yCoordinate=0] add invalid_location
scoreboard players operation @e[name=editor,type=armor_stand] yCoordinate += yMinBound controls
scoreboard players operation @e[name=editor,type=armor_stand,tag=relative_bound] yCoordinate += @e[name=node,type=armor_stand,score_ID=1,score_ID_min=1] yCoordinate

#if (markers zCoordinate >= zMaxBound) {out of bounds}
scoreboard players operation @e[name=editor,type=armor_stand] zCoordinate -= zMaxBound controls
scoreboard players operation @e[name=editor,type=armor_stand,tag=relative_bound] zCoordinate -= @e[name=node,type=armor_stand,score_ID=1,score_ID_min=1] zCoordinate
scoreboard players tag @e[name=editor,type=armor_stand,score_zCoordinate_min=0] add invalid_location
scoreboard players operation @e[name=editor,type=armor_stand] zCoordinate += zMaxBound controls
scoreboard players operation @e[name=editor,type=armor_stand,tag=relative_bound] zCoordinate += @e[name=node,type=armor_stand,score_ID=1,score_ID_min=1] zCoordinate

#if (markers zCoordinate <= zMinBound) {out of bounds}
scoreboard players operation @e[name=editor,type=armor_stand] zCoordinate -= zMinBound controls
scoreboard players operation @e[name=editor,type=armor_stand,tag=relative_bound] zCoordinate -= @e[name=node,type=armor_stand,score_ID=1,score_ID_min=1] zCoordinate
scoreboard players tag @e[name=editor,type=armor_stand,score_zCoordinate=0] add invalid_location
scoreboard players operation @e[name=editor,type=armor_stand] zCoordinate += zMinBound controls
scoreboard players operation @e[name=editor,type=armor_stand,tag=relative_bound] zCoordinate += @e[name=node,type=armor_stand,score_ID=1,score_ID_min=1] zCoordinate