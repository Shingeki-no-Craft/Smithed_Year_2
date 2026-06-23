#> snc:shifters/human/timer/main
# Controlls the player who has the shifter, tracking attributes such as health, if it disconnects, if its hurt.
#
# @Input:
#   Detects if player with shifter is doing an action.
#
# @Output:
#   Based on the action triggers other functions.

# Check if still a shifter
$execute if score @s $(shifter)_vars matches 1 run tag @s add shifter
## Is not transformed
#$execute as @s[tag=!transform] run scoreboard players set state $(shifter)_vars 0
# Increase energy when not transformed
$execute as @s[tag=!transform] if score ticks clock matches 19 unless score $energy $(shifter)_vars matches 3600.. run scoreboard players add $energy $(shifter)_vars 8
# Decrease energy when transformed
$execute as @s[tag=transform] if score ticks clock matches 19 run function snc:shifters/human/timer/time_down {"shifter":$(shifter),"energy_decrease":$(energy_decrease)}
# Show
$execute if entity @s[tag=!hidden.shifter, tag=transform] run function snc:shifters/human/timer/display {"shifter":"$(shifter)", "interface":"205"}
$execute if entity @s[tag=!hidden.shifter, tag=!transform] run function snc:shifters/human/timer/display {"shifter":"$(shifter)", "interface":"204"}

$execute if score ticks clock matches 15 store result score #x_$(shifter) shifter_vars run data get entity @s Pos[0]
$execute if score ticks clock matches 15 store result score #z_$(shifter) shifter_vars run data get entity @s Pos[2]

## HP, remove type=player in the future for AI Shifters?
# Set titan's current health to the corresponding scoreboard.
$execute store result score titan.health.bar $(shifter)_vars run data get entity @s AbsorptionAmount
$execute if score titan.health.bar $(shifter)_vars matches 0 if entity @s[type=player,tag=!hidden.shifter] run function snc:shifters/human/trigger/injured {"shifter": "$(shifter)","name": "$(name)"}
$execute if score titan.health.bar $(shifter)_vars matches 20.. run tag @s remove snc.injured
# Set player's current health to the corresponding scoreboard.
$execute if entity @s[type=player,tag=hidden.shifter] store result score player_health_bar $(shifter)_vars run data get entity @s Health
$execute if entity @s[type=player,tag=hidden.shifter] if score player_health_bar $(shifter)_vars matches ..15 run scoreboard players set @s atk 300

## Remove transform
execute if entity @s[tag=snc.injured] if predicate snc:is_hurt run function snc:shifters/transfer/hit

## Regeneration
# Human
$scoreboard players add human.regen $(shifter)_vars 1
$execute if score human.regen $(shifter)_vars matches 80.. run scoreboard players set human.regen $(shifter)_vars 0
$execute if entity @s[tag=!hidden.shifter,tag=!transform] if score human.regen $(shifter)_vars matches 0 run function snc:shifters/human/regeneration {"shifter":$(shifter)}
# Shifter
$scoreboard players add shift.regen $(shifter)_vars 1
$execute if score shift.regen $(shifter)_vars matches $(regen_ticks).. run scoreboard players set shift.regen $(shifter)_vars 0
$execute if entity @s[tag=!hidden.shifter,tag=transform] if score shift.regen $(shifter)_vars matches 0 run function snc:shifters/mobs/regeneration {"shifter":$(shifter),"hp":$(hp)}

## Injured
execute if score ticks clock matches 19 if entity @s[tag=snc.injured] run function snc:player/titan/effects/injured

# Effects on curse
$execute if score curse config matches 0 run function snc:shifters/sick/short {"shifter":"$(shifter)"}
$execute if score curse config matches 1 run function snc:shifters/sick/large {"shifter":"$(shifter)"}
$execute if score curse config matches 2 run function snc:shifters/sick/normal {"shifter":"$(shifter)"}

## UNIQUE: ATTACK
execute if score @s[tag=!transform] attack_vars matches 1.. if predicate snc:player/is_sneaking if entity @e[type=#snc:eldian,scores={snc.gene.koniglich=1},sort=nearest,limit=1,distance=.5..2] unless score koniglich attack_vars matches 1.. run scoreboard players set koniglich attack_vars 300
execute if score @s attack_vars matches 1.. if score koniglich attack_vars matches 1.. run function snc:shifters/mobs/attack/action/koniglich

## UNIQUE: BEAST
execute if entity @s[tag=transform] if predicate snc:shifters/beast/atk_6 at @e[type=#snc:target,distance=.1..] rotated ~ 0 run function snc:shifters/mobs/beast/action/sense/particle