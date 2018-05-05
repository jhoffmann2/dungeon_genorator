######################################################################################
# Function:		genoration_boundries_2
# Created By:	Jordan Hoffmann
# Date:			6/17/17
# Version:		1.12
# Description:	second page of user interface for customizing
#				where the dungeon can genorate
######################################################################################

scoreboard players tag @s add ui4
scoreboard players tag @s remove ui1
scoreboard players tag @s remove ui3
scoreboard players tag @s remove ui2
scoreboard players tag @s remove ui5
scoreboard players tag @s remove ui6
scoreboard players tag @s remove ui7

playsound minecraft:ui.button.click ambient @s ~ ~ ~
tellraw @s ["",{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n  GENORATION  BOUNDRIES  \n","color":"aqua","bold":true,"underlined":true}]

execute @e[type=armor_stand,name=editor,tag=!respect_gravity] ~ ~ ~ tellraw @a[tag=ui4] ["",{"text":"          ","color":"gray"},{"text":"Respect Gravity","color":"dark_red","strikethrough":true,"clickEvent":{"action":"run_command","value":"/execute @s ~ ~ ~ function dungeon_genorator:tellraw/toggle/respect_gravity"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"click","color":"white"}]}},"insertion":"tellraw @s %s"}]
execute @e[type=armor_stand,name=editor,tag=respect_gravity] ~ ~ ~ tellraw @a[tag=ui4] ["",{"text":"          ","color":"gray"},{"text":"Respect Gravity","color":"green","clickEvent":{"action":"run_command","value":"/execute @s ~ ~ ~ function dungeon_genorator:tellraw/toggle/respect_gravity"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"click","color":"white"}]}},"insertion":"tellraw @s %s"}]


tellraw @s ["",{"text":"\n              ","color":"gray"},{"text":"| Reload |","color":"gray","clickEvent":{"action":"run_command","value":"/execute @s ~ ~ ~ function dungeon_genorator:tellraw/genoration_boundries_2"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"click","color":"white"}]}},"insertion":"tellraw @s %s"}]
tellraw @s ["",{"text":"               ","color":"gray"},{"text":"| Back |","color":"gray","clickEvent":{"action":"run_command","value":"/execute @s ~ ~ ~ function dungeon_genorator:tellraw/genoration_boundries"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"click","color":"white"}]}},"insertion":"tellraw @s %s"}]
tellraw @s ["",{"text":" ##################### ","color":"aqua","bold":true,"underlined":true,"italic":false}]