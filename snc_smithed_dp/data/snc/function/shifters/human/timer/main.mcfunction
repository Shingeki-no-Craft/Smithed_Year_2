execute if score @s female_vars matches 1 run tag @s add snc.female
## Is not transformed
#$execute as @s[tag=!transform] run scoreboard players set state $(shifter)_vars 0
# Increase energy when not transformed
execute as @s[tag=!transform] if score snc.ticks clock matches 19 unless score $energy female_vars matches 3600.. run scoreboard players add $energy female_vars 8
# Decrease energy when transformed
$execute as @s[tag=transform] if score snc.ticks clock matches 19 run function snc:shifters/human/timer/time_down {"shifter":$(shifter),"energy_decrease":$(energy_decrease)}
# Show
$execute if score snc.ticks clock matches 19 if entity @s[tag=transform] run function snc:shifters/human/timer/display {"shifter":"$(shifter)", "interface":"205"}
$execute if score snc.ticks clock matches 19 if entity @s[tag=!transform] run function snc:shifters/human/timer/display {"shifter":"$(shifter)", "interface":"204"}

## HP, remove type=player in the future for AI Shifters?
# Set titan's current health to the corresponding scoreboard.
execute store result score titan.health.bar female_vars run data get entity @s AbsorptionAmount
execute if score titan.health.bar female_vars matches 0 if entity @s[type=player] run function snc:shifters/human/trigger/injured {"shifter": "$(shifter)","name": "$(name)"}
execute if score titan.health.bar female_vars matches 20.. run tag @s remove snc.injured

## Regeneration
# Human
scoreboard players add human.regen female_vars 1
execute if score human.regen female_vars matches 80.. run scoreboard players set human.regen female_vars 0
execute if entity @s[tag=!transform] if score human.regen female_vars matches 0 run function snc:shifters/human/regeneration {"shifter":"female"}
# Shifter
scoreboard players add shift.regen female_vars 1
$execute if score shift.regen female_vars matches $(regen_ticks).. run scoreboard players set shift.regen female_vars 0
$execute if entity @s[tag=transform] if score shift.regen female_vars matches 0 run function snc:shifters/mobs/regeneration {"shifter":"female","hp":$(hp)}

## Injured
execute if score snc.ticks clock matches 19 if entity @s[tag=snc.injured] run function snc:player/titan/effects/injured