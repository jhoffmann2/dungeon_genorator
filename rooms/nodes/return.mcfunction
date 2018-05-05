######################################################################################
# Function:		prev
# Created By:	Jordan Hoffmann
# Date:			6/15/17
# Version:		1.12
# Description:	move editor opposite of nextDirection
######################################################################################

execute @e[name=rDirection,type=armor_stand,tag=xPos] ~ ~ ~ execute @s[tag=nextDirection] ~ ~ ~ tp @e[name=editor,type=armor_stand] ~-8 ~ ~

execute @e[name=rDirection,type=armor_stand,tag=xNeg] ~ ~ ~ execute @s[tag=nextDirection] ~ ~ ~ tp @e[name=editor,type=armor_stand] ~8 ~ ~

execute @e[name=rDirection,type=armor_stand,tag=yPos] ~ ~ ~ execute @s[tag=nextDirection] ~ ~ ~ tp @e[name=editor,type=armor_stand] ~ ~-8 ~

execute @e[name=rDirection,type=armor_stand,tag=yNeg] ~ ~ ~ execute @s[tag=nextDirection] ~ ~ ~ tp @e[name=editor,type=armor_stand] ~ ~8 ~

execute @e[name=rDirection,type=armor_stand,tag=zPos] ~ ~ ~ execute @s[tag=nextDirection] ~ ~ ~ tp @e[name=editor,type=armor_stand] ~ ~ ~-8

execute @e[name=rDirection,type=armor_stand,tag=zNeg] ~ ~ ~ execute @s[tag=nextDirection] ~ ~ ~ tp @e[name=editor,type=armor_stand] ~ ~ ~8
