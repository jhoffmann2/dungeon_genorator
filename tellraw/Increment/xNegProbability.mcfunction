######################################################################################
# execute @a[tag=ui2] ~ ~ ~ execute @a[tag=ui2] ~ ~ ~ function:		xNegProbability
# Created By:	Jordan Hoffmann
# Date:			6/19/17
# Version:		1.12
# Description:	increment probability and reload
######################################################################################
scoreboard players add xNegProbability controls 1
execute @a[tag=ui2] ~ ~ ~ function dungeon_genorator:tellraw/directional_probability
