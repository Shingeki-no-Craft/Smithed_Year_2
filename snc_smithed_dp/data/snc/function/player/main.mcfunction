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
#down
execute positioned -13.5 87 106.5 if entity @s[dx=1, dy=1, dz=1] run function snc:api/elevator {"coordinates":"-5.5 65 115.5 facing -6 65 103", "text": "Crystal Cave", "color": "#0ED7E2"}
execute positioned -13.5 87 112.5 if entity @s[dx=1, dy=1, dz=1] run function snc:api/elevator {"coordinates":"-11.5 65 115.5 facing -12 65 103", "text": "Crystal Cave", "color": "#0ED7E2"}

#up
execute positioned -5.5 65 116.5 if entity @s[dx=1, dy=1, dz=1] run function snc:api/elevator {"coordinates":"-14.5 87 106.5 facing -18 87 106", "text": "The Mines", "color": "#A67610"}
execute positioned -11.5 65 116.5 if entity @s[dx=1, dy=1, dz=1] run function snc:api/elevator {"coordinates":"-14.5 87 112.5 facing -18 87 112", "text": "The Mines", "color": "#A67610"}

## Using right click
execute unless score @s snc.used.carrot matches 1.. run return 1
scoreboard players set @s snc.used.carrot 0

# Impulse
execute if score @s[tag=!snc.grabbed] snc.odm_state matches 1.. if predicate snc:odm/has_gas_trigger if predicate snc:odm/has_odm if function snc:player/odm/impulse/main run return -1
#Throw
execute if score @s[tag=!snc.grabbed,tag=!snc.injured] snc.odm_state matches 0 if predicate snc:odm/has_gas_trigger if predicate snc:odm/has_odm run function snc:player/odm/throw/config

execute if entity @s[predicate=snc:shifters/has_remove] run function snc:shifters/human/transform/human_aux

return 1