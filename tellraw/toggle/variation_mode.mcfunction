######################################################################################
# Function:		bound_mode
# Created By:	Jordan Hoffmann
# Date:			6/19/17
# Version:		1.12
# Description:	toggle between defining bounds by direct or relative coordinates
######################################################################################
execute @e[type=armor_stand,name=editor,tag=!thematic] ~ ~ ~ scoreboard players tag @e[type=armor_stand,name=editor] add temp_Variation_mode
scoreboard players tag @e[type=armor_stand,name=editor] remove thematic
scoreboard players tag @e[type=armor_stand,name=editor,tag=temp_Variation_mode] add thematic
scoreboard players tag @e[type=armor_stand,name=editor] remove temp_Variation_mode

execute @a[tag=ui6] ~ ~ ~ function dungeon_genorator:tellraw/variation_probability
