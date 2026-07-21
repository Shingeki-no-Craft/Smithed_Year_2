## SHIFTER
execute if score @s female_vars matches 1.. run function snc:shifters/human/main
# Turn into pure titan
execute if score @s snc.transform matches 1.. run function snc:player/titan/transformation


## PLAYER
#Init
execute unless score @s snc.odm_state matches 0.. run function snc:logic/trigger/init
## Logic
execute if score @s snc.earthquake matches 0.. run function snc:logic/earthquake/score
## Elevator
function snc:dynamic/elevator/main

## ODM Track
# execute if score @s snc.quest.odmtrack.stage matches 1.. run function snc:dynamic/odmtrack_starter/get_value
execute if score @s snc.wait.odmtrack matches 1.. run function snc:dynamic/odmtrack_starter/start_quest

# execute if score @s snc.quest.odmtrack.stage matches 1.. run function snc:dynamic/odmtrack_starter/get_value
execute if score @s snc.quest.odmtrack.progress matches 1.. run function snc:dynamic/odmtrack_starter/particles/tick

## Using right click
execute unless score @s snc.used.carrot matches 1.. run return 1
scoreboard players set @s snc.used.carrot 0
execute unless entity @s[tag=summit.battlegrounds.player] positioned -70 60 122 unless predicate snc:in_booth if predicate snc:odm/has_gas_trigger if predicate snc:odm/has_odm run return 0
execute if predicate snc:odm/has_gas_trigger if predicate snc:odm/has_odm if items entity @s weapon.offhand warped_fungus_on_a_stick[item_model="snc:gear/gear",custom_data~{out:0b}] run return run function snc:player/odm/enable
# Impulse
execute if score @s[tag=!snc.grabbed] snc.odm_state matches 1.. if predicate snc:odm/has_gas_trigger if predicate snc:odm/has_odm if function snc:player/odm/impulse/main run return -1
#Throw
execute if score @s[tag=!snc.grabbed,tag=!snc.injured] snc.odm_state matches 0 if predicate snc:odm/has_gas_trigger if predicate snc:odm/has_odm run function snc:player/odm/throw/config

execute if entity @s[predicate=snc:shifters/has_remove] run function snc:shifters/human/transform/human_aux

return 1