######################################################################################
# Function:		maxRooms
# Created By:	Jordan Hoffmann
# Date:			6/19/17
# Version:		1.12
# Description:	decrement probability and reload
######################################################################################
scoreboard players remove maxRooms controls 1
execute @a[tag=ui1] ~ ~ ~ function dungeon_genorator:tellraw/dungeon_customization
