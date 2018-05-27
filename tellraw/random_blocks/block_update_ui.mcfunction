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

execute @s[tag=editBlock1] ~ ~ ~ execute @e[name=block1Memory] ~ ~ ~ function block_placer:tags/inventorytest/clear_hotbar_slot_tags
execute @s[tag=editBlock2] ~ ~ ~ execute @e[name=block2Memory] ~ ~ ~ function block_placer:tags/inventorytest/clear_hotbar_slot_tags
execute @s[tag=editBlock3] ~ ~ ~ execute @e[name=block3Memory] ~ ~ ~ function block_placer:tags/inventorytest/clear_hotbar_slot_tags
execute @s[tag=editBlock4] ~ ~ ~ execute @e[name=block4Memory] ~ ~ ~ function block_placer:tags/inventorytest/clear_hotbar_slot_tags
execute @s[tag=editBlock5] ~ ~ ~ execute @e[name=block5Memory] ~ ~ ~ function block_placer:tags/inventorytest/clear_hotbar_slot_tags
execute @s[tag=editBlock6] ~ ~ ~ execute @e[name=block6Memory] ~ ~ ~ function block_placer:tags/inventorytest/clear_hotbar_slot_tags
execute @s[tag=editBlock7] ~ ~ ~ execute @e[name=block7Memory] ~ ~ ~ function block_placer:tags/inventorytest/clear_hotbar_slot_tags
execute @s[tag=editBlock8] ~ ~ ~ execute @e[name=block8Memory] ~ ~ ~ function block_placer:tags/inventorytest/clear_hotbar_slot_tags
execute @s[tag=editBlock9] ~ ~ ~ execute @e[name=block9Memory] ~ ~ ~ function block_placer:tags/inventorytest/clear_hotbar_slot_tags
execute @s[tag=editBlock10] ~ ~ ~ execute @e[name=block10Memory] ~ ~ ~ function block_placer:tags/inventorytest/clear_hotbar_slot_tags

scoreboard players tag @s add copySlotTags

execute @s[tag=editBlock1] ~ ~ ~ scoreboard players tag @e[name=block1Memory] add pasteSlotTags
execute @s[tag=editBlock2] ~ ~ ~ scoreboard players tag @e[name=block2Memory] add pasteSlotTags
execute @s[tag=editBlock3] ~ ~ ~ scoreboard players tag @e[name=block3Memory] add pasteSlotTags
execute @s[tag=editBlock4] ~ ~ ~ scoreboard players tag @e[name=block4Memory] add pasteSlotTags
execute @s[tag=editBlock5] ~ ~ ~ scoreboard players tag @e[name=block5Memory] add pasteSlotTags
execute @s[tag=editBlock6] ~ ~ ~ scoreboard players tag @e[name=block6Memory] add pasteSlotTags
execute @s[tag=editBlock7] ~ ~ ~ scoreboard players tag @e[name=block7Memory] add pasteSlotTags
execute @s[tag=editBlock8] ~ ~ ~ scoreboard players tag @e[name=block8Memory] add pasteSlotTags
execute @s[tag=editBlock9] ~ ~ ~ scoreboard players tag @e[name=block9Memory] add pasteSlotTags
execute @s[tag=editBlock10] ~ ~ ~ scoreboard players tag @e[name=block10Memory] add pasteSlotTags

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

tellraw @s ["",{"text":"\n              ","color":"gray"},{"text":"| Reload |","color":"gray","clickEvent":{"action":"run_command","value":"/execute @s ~ ~ ~ function dungeon_genorator:tellraw/random_blocks/block_update_ui"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"click","color":"white"}]}},"insertion":"tellraw @s %s"}]
tellraw @s ["",{"text":"               ","color":"gray"},{"text":"| Back |","color":"gray","clickEvent":{"action":"run_command","value":"/execute @s ~ ~ ~ function dungeon_genorator:tellraw/random_blocks/set"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"click","color":"white"}]}},"insertion":"tellraw @s %s"}]
tellraw @s ["",{"text":" ##################### ","color":"aqua","bold":true,"underlined":true,"italic":false}]
