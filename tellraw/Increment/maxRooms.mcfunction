######################################################################################
# Function:		maxRooms
# Created By:	Jordan Hoffmann
# Date:			6/19/17
# Version:		1.12
# Description:	increment probability and reload
######################################################################################
scoreboard players add maxRooms controls 1
execute @a[tag=ui1] ~ ~ ~ function dungeon_genorator:tellraw/dungeon_customization
