######################################################################################
# Function:		initiate_scores
# Created By:	Jordan Hoffmann
# Date:			6/19/17
# Version:		1.12
# Description:	set up default scores for important settings
######################################################################################

scoreboard players set block1PlacementRate controls 70
scoreboard players set block2PlacementRate controls 70
scoreboard players set block3PlacementRate controls 70
scoreboard players set block4PlacementRate controls 70
scoreboard players set block5PlacementRate controls 70
scoreboard players set block6PlacementRate controls 70
scoreboard players set block7PlacementRate controls 70
scoreboard players set block8PlacementRate controls 70
scoreboard players set block9PlacementRate controls 70
scoreboard players set block10PlacementRate controls 70

scoreboard players set xMaxBound controls 54
scoreboard players set yMaxBound controls 54
scoreboard players set zMaxBound controls 54
scoreboard players set xMinBound controls -54
scoreboard players set yMinBound controls -54
scoreboard players set zMinBound controls -54

scoreboard players set s1Probability controls 1
scoreboard players set s2Probability controls 0
scoreboard players set s3Probability controls 0
scoreboard players set s4Probability controls 0
scoreboard players set s5Probability controls 0
scoreboard players set s6Probability controls 0

scoreboard players set maxRooms controls 3

scoreboard players set xPosProbability controls 1
scoreboard players set yPosProbability controls 1
scoreboard players set zPosProbability controls 1
scoreboard players set xNegProbability controls 1
scoreboard players set yNegProbability controls 1
scoreboard players set zNegProbability controls 1

scoreboard players tag @e[name=editor] add relative_bound
