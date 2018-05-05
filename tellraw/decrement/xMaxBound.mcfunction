######################################################################################
# function:		xMaxBound
# Created By:	Jordan Hoffmann
# Date:			6/19/17
# Version:		1.12
# Description:	increment Boundry and reload
######################################################################################
scoreboard players remove xMaxBound controls 1
execute @a[tag=ui3] ~ ~ ~ function dungeon_genorator:tellraw/genoration_boundries
