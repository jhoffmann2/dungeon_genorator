######################################################################################
# function:		s3Probability
# Created By:	Jordan Hoffmann
# Date:			6/19/17
# Version:		1.12
# Description:	decrement probability and reload
######################################################################################
scoreboard players add s3Probability controls 1
execute @a[tag=ui6] ~ ~ ~ function dungeon_genorator:tellraw/variation_probability