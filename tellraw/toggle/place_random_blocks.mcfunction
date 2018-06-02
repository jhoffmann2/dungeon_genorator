######################################################################################
# Function:		place_random_blocks
# Created By:	Jordan Hoffmann
# Date:			6/2/18
# Version:		1.12
# Description:	toggle between placing blocks during genoration or not
######################################################################################
execute @e[type=armor_stand,name=editor,tag=!place_random_blocks] ~ ~ ~ scoreboard players tag @e[type=armor_stand,name=editor] add temp_bool
scoreboard players tag @e[type=armor_stand,name=editor] remove place_random_blocks
scoreboard players tag @e[type=armor_stand,name=editor,tag=temp_bool] add place_random_blocks
scoreboard players tag @e[type=armor_stand,name=editor] remove temp_bool

execute @s ~ ~ ~ function dungeon_genorator:tellraw/build_functions
