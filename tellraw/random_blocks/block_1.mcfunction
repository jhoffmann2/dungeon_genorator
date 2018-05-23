######################################################################################
# Function:		dungeon_customization
# Created By:	Jordan Hoffmann
# Date:			6/17/17
# Version:		1.12
# Description:	user interface for customizing the dungeons
######################################################################################
scoreboard players tag @s remove ui1
scoreboard players tag @s remove ui2
scoreboard players tag @s remove ui3
scoreboard players tag @s remove ui4
scoreboard players tag @s remove ui5
scoreboard players tag @s remove ui6
scoreboard players tag @s remove ui7

#execute @e[name=block1] ~ ~ ~ function block_placer:tags/inventorytest/clear_hotbar_slot_tags
scoreboard players tag @s add copySlotTags
scoreboard players tag @e[name=block1] add pasteSlotTags
function dungeon_genorator:block_placer_helper/copy_slot_tags/copy_hotbar_tags

playsound minecraft:ui.button.click ambient @s ~ ~ ~

scoreboard players tag @s remove displaying_hotbar 
scoreboard players tag @s remove displaying_all_slots 
tellraw @a ["",{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n------ Block List ------\n","bold":true},{"text":"[ Update With Hotbar  ]","color":"gold","clickEvent":{"action":"run_command","value":"/execute @s ~ ~ ~ function block_placer:tellraw/toggleBlocks/update_with_hotbar"},"bold":false}]function block_placer:tellraw/toggleBlocks/slots/slot-1
function block_placer:tellraw/toggleBlocks/slots/slot0
function block_placer:tellraw/toggleBlocks/slots/slot1
function block_placer:tellraw/toggleBlocks/slots/slot2
function block_placer:tellraw/toggleBlocks/slots/slot3
function block_placer:tellraw/toggleBlocks/slots/slot4
function block_placer:tellraw/toggleBlocks/slots/slot5
function block_placer:tellraw/toggleBlocks/slots/slot6
function block_placer:tellraw/toggleBlocks/slots/slot7
function block_placer:tellraw/toggleBlocks/slots/slot8
tellraw @a ["",{"text":"----------------------","bold":true}]

tellraw @s ["",{"text":"\n              ","color":"gray"},{"text":"| Reload |","color":"gray","clickEvent":{"action":"run_command","value":"/execute @s ~ ~ ~ function dungeon_genorator:tellraw/random_blocks/block_1"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"click","color":"white"}]}},"insertion":"tellraw @s %s"}]
tellraw @s ["",{"text":"               ","color":"gray"},{"text":"| Back |","color":"gray","clickEvent":{"action":"run_command","value":"/execute @s ~ ~ ~ function dungeon_genorator:tellraw/random_blocks/set"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"click","color":"white"}]}},"insertion":"tellraw @s %s"}]
tellraw @s ["",{"text":" ##################### ","color":"aqua","bold":true,"underlined":true,"italic":false}]
