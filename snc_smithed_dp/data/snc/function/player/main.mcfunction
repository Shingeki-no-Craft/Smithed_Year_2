## SHIFTER
execute if score @s female_vars matches 1.. run function snc:shifters/human/main
# Turn into pure titan
execute if score @s snc.transform matches 1.. run function snc:player/titan/transformation


## PLAYER
#Init
execute unless score @s snc.odm_state matches 0.. run function snc:logic/trigger/init
## Logic
execute if score @s snc.earthquake matches 0.. run function snc:logic/earthquake/score
## Using right click
execute unless score @s snc.used.carrot matches 1.. run return 1
scoreboard players set @s snc.used.carrot 0
# scoreboard players set @s snc.hold.rc 5
# Impulse
execute if score @s[tag=!snc.grabbed] snc.odm_state matches 1.. if predicate snc:odm/has_gas_trigger if predicate snc:odm/has_odm if function snc:player/odm/impulse/main run return -1
#Throw
execute if score @s[tag=!snc.grabbed,tag=!snc.injured] snc.odm_state matches 0 if predicate snc:odm/has_gas_trigger if predicate snc:odm/has_odm run function snc:player/odm/throw/config

return 1