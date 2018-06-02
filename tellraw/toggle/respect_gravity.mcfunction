######################################################################################
# Function:		respect_gravity
# Created By:	Jordan Hoffmann
# Date:			6/19/17
# Version:		1.12
# Description:	toggle between respecting gravity (great for buildings) or not (great for caves)
######################################################################################
execute @e[type=armor_stand,name=editor,tag=!respect_gravity] ~ ~ ~ scoreboard players tag @e[type=armor_stand,name=editor] add temp_gravity
scoreboard players tag @e[type=armor_stand,name=editor] remove respect_gravity
scoreboard players tag @e[type=armor_stand,name=editor,tag=temp_gravity] add respect_gravity
scoreboard players tag @e[type=armor_stand,name=editor] remove temp_gravity

execute @s ~ ~ ~ function dungeon_genorator:tellraw/build_functions
