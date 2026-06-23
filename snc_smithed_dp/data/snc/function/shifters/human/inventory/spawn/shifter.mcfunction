setblock ~ ~3 ~ chest

$execute if data storage minecraft:$(shifter) Hotbar[0] run data modify storage minecraft:$(shifter) Hotbar[0].Slot set value 0b
$execute if data storage minecraft:$(shifter) Hotbar[1] run data modify storage minecraft:$(shifter) Hotbar[1].Slot set value 1b
$execute if data storage minecraft:$(shifter) Hotbar[2] run data modify storage minecraft:$(shifter) Hotbar[2].Slot set value 2b
$execute if data storage minecraft:$(shifter) Hotbar[3] run data modify storage minecraft:$(shifter) Hotbar[3].Slot set value 3b
$execute if data storage minecraft:$(shifter) Hotbar[4] run data modify storage minecraft:$(shifter) Hotbar[4].Slot set value 4b
$execute if data storage minecraft:$(shifter) Hotbar[5] run data modify storage minecraft:$(shifter) Hotbar[5].Slot set value 5b
$execute if data storage minecraft:$(shifter) Hotbar[6] run data modify storage minecraft:$(shifter) Hotbar[6].Slot set value 6b
$execute if data storage minecraft:$(shifter) Hotbar[7] run data modify storage minecraft:$(shifter) Hotbar[7].Slot set value 7b
$execute if data storage minecraft:$(shifter) Hotbar[8] run data modify storage minecraft:$(shifter) Hotbar[8].Slot set value 8b
$execute if data storage minecraft:$(shifter) Hotbar[9] run data modify storage minecraft:$(shifter) Hotbar[9].Slot set value 9b
$execute if data storage minecraft:$(shifter) Hotbar[10] run data modify storage minecraft:$(shifter) Hotbar[10].Slot set value 10b
$execute if data storage minecraft:$(shifter) Hotbar[11] run data modify storage minecraft:$(shifter) Hotbar[11].Slot set value 11b
$execute if data storage minecraft:$(shifter) Hotbar[12] run data modify storage minecraft:$(shifter) Hotbar[12].Slot set value 12b
$execute if data storage minecraft:$(shifter) Hotbar[13] run data modify storage minecraft:$(shifter) Hotbar[13].Slot set value 13b

$data modify block ~ ~3 ~ Items set from storage minecraft:$(shifter) Hotbar

execute summon minecraft:chest_minecart run function snc:shifters/human/inventory/drop/shifter
setblock ~ ~3 ~ air replace