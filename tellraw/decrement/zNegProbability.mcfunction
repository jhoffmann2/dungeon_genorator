######################################################################################
# execute @a[tag=ui2] ~ ~ ~ function:		zNegProbability
# Created By:	Jordan Hoffmann
# Date:			6/19/17
# Version:		1.12
# Description:	decrement probability and reload
######################################################################################
scoreboard players remove zNegProbability controls 1
execute @a[tag=ui2] ~ ~ ~ function dungeon_genorator:tellraw/directional_probability
