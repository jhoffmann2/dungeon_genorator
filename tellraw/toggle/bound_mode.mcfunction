######################################################################################
# Function:		bound_mode
# Created By:	Jordan Hoffmann
# Date:			6/19/17
# Version:		1.12
# Description:	toggle between defining bounds by direct or relative coordinates
######################################################################################
execute @e[type=armor_stand,name=editor,tag=!relative_bound] ~ ~ ~ scoreboard players tag @e[type=armor_stand,name=editor] add temp_bound
scoreboard players tag @e[type=armor_stand,name=editor] remove relative_bound
scoreboard players tag @e[type=armor_stand,name=editor,tag=temp_bound] add relative_bound
scoreboard players tag @e[type=armor_stand,name=editor] remove temp_bound

execute @a[tag=ui3] ~ ~ ~ function dungeon_genorator:tellraw/genoration_boundries
