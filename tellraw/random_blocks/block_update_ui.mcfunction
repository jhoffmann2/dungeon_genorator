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
function dungeon_genorator:block_placer_helper/test/test_hotbar_loot

playsound minecraft:ui.button.click ambient @s ~ ~ ~

scoreboard players tag @s remove displaying_hotbar 
scoreboard players tag @s remove displaying_all_slots 


scoreboard objectives add UIstartLine dummy
scoreboard players add @s UIstartLine 0

scoreboard objectives add UIcurrentLine dummy
scoreboard players set @s UIcurrentLine 1

tellraw @s ["",{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n------ Block List ------\n","bold":true},{"text":"    [ Update With Hotbar  ]","color":"gold","clickEvent":{"action":"run_command","value":"/execute @s ~ ~ ~ function block_placer:tellraw/toggleBlocks/update_with_hotbar"},"bold":false}]function block_placer:tellraw/toggleBlocks/slots/slot-1


tellraw @s[score_UIstartLine_min=2] ["",{"text":"[^]","color":"red","bold":false,"clickEvent":{"action":"run_command","value":"/execute @s ~ ~ ~ function dungeon_genorator:tellraw/decrement/UIstartLine"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"click"}]}}}]
tellraw @s[score_UIstartLine=1] ["",{"text":"[^]","color":"dark_gray","bold":false}]


execute @s[score_UIstartLine=1,score_UIcurrentLine=12] ~ ~ ~ function block_placer:tellraw/toggleBlocks/slots/slot0
    execute @s[score_UIstartLine=2,score_UIcurrentLine=12] ~ ~ ~ function block_placer:tellraw/toggleloot/slots/slot0 if @e[tag=Slot0IsLootBlock]
execute @s[score_UIstartLine=3,score_UIcurrentLine=12] ~ ~ ~ function block_placer:tellraw/toggleBlocks/slots/slot1
    execute @s[score_UIstartLine=4,score_UIcurrentLine=12] ~ ~ ~ function block_placer:tellraw/toggleloot/slots/slot1 if @e[tag=Slot1IsLootBlock]
execute @s[score_UIstartLine=5,score_UIcurrentLine=12] ~ ~ ~ function block_placer:tellraw/toggleBlocks/slots/slot2
    execute @s[score_UIstartLine=6,score_UIcurrentLine=12] ~ ~ ~ function block_placer:tellraw/toggleloot/slots/slot2 if @e[tag=Slot2IsLootBlock]
execute @s[score_UIstartLine=7,score_UIcurrentLine=12] ~ ~ ~ function block_placer:tellraw/toggleBlocks/slots/slot3
    execute @s[score_UIstartLine=8,score_UIcurrentLine=12] ~ ~ ~ function block_placer:tellraw/toggleloot/slots/slot3 if @e[tag=Slot3IsLootBlock]
execute @s[score_UIstartLine=9,score_UIcurrentLine=12] ~ ~ ~ function block_placer:tellraw/toggleBlocks/slots/slot4
    execute @s[score_UIstartLine=10,score_UIcurrentLine=12] ~ ~ ~ function block_placer:tellraw/toggleloot/slots/slot4 if @e[tag=Slot4IsLootBlock]
execute @s[score_UIstartLine=11,score_UIcurrentLine=12] ~ ~ ~ function block_placer:tellraw/toggleBlocks/slots/slot5
    execute @s[score_UIstartLine=12,score_UIcurrentLine=12] ~ ~ ~ function block_placer:tellraw/toggleloot/slots/slot5 if @e[tag=Slot5IsLootBlock]
execute @s[score_UIstartLine=13,score_UIcurrentLine=12] ~ ~ ~ function block_placer:tellraw/toggleBlocks/slots/slot6
    execute @s[score_UIstartLine=14,score_UIcurrentLine=12] ~ ~ ~ function block_placer:tellraw/toggleloot/slots/slot6 if @e[tag=Slot6IsLootBlock]
execute @s[score_UIstartLine=15,score_UIcurrentLine=12] ~ ~ ~ function block_placer:tellraw/toggleBlocks/slots/slot7
    execute @s[score_UIstartLine=16,score_UIcurrentLine=12] ~ ~ ~ function block_placer:tellraw/toggleloot/slots/slot7 if @e[tag=Slot7IsLootBlock]
scoreboard players tag @s[score_UIstartLine=17,score_UIcurrentLine=12] add downArrowOff
execute @s[score_UIstartLine=17,score_UIcurrentLine=12] ~ ~ ~ function block_placer:tellraw/toggleBlocks/slots/slot8

    execute @s[score_UIstartLine=18,score_UIcurrentLine_min=13] ~ ~ ~ function block_placer:tellraw/willlootprint/slots/slot8
    scoreboard players tag @s[tag=Slot8LootWillPrint] remove downArrowOff
    execute @s[score_UIstartLine=18,score_UIcurrentLine=12] ~ ~ ~ function block_placer:tellraw/toggleloot/slots/slot8 if @e[tag=Slot8IsLootBlock]
    
    
#tellraw @s[score_UIcurrentLine_min=13] ["",{"text":"[v]","color":"red","bold":false,"clickEvent":{"action":"run_command","value":"/execute @s ~ ~ ~ function dungeon_genorator:tellraw/increment/UIstartLine"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"click"}]}}}]
#tellraw @s[score_UIcurrentLine=12] ["",{"text":"[v]","color":"dark_gray","bold":false}]
tellraw @s[tag=!downArrowOff] ["",{"text":"[v]","color":"red","bold":false,"clickEvent":{"action":"run_command","value":"/execute @s ~ ~ ~ function dungeon_genorator:tellraw/increment/UIstartLine"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"click"}]}}}]
tellraw @s[tag=downArrowOff] ["",{"text":"[v]","color":"dark_gray","bold":false}]

scoreboard players tag @s remove downArrowOff
scoreboard players tag @s remove Slot8LootWillPrint

tellraw @a ["",{"text":"----------------------","bold":true}]
tellraw @s ["",{"text":"              ","color":"gray"},{"text":"| Reload |","color":"gray","clickEvent":{"action":"run_command","value":"/execute @s ~ ~ ~ function dungeon_genorator:tellraw/random_blocks/block_update_ui"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"click","color":"white"}]}},"insertion":"tellraw @s %s"}]
tellraw @s ["",{"text":"               ","color":"gray"},{"text":"| Back |","color":"gray","clickEvent":{"action":"run_command","value":"/execute @s ~ ~ ~ function dungeon_genorator:tellraw/random_blocks/set"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"click","color":"white"}]}},"insertion":"tellraw @s %s"}]
tellraw @s ["",{"text":" ##################### ","color":"aqua","bold":true,"underlined":true,"italic":false}]
