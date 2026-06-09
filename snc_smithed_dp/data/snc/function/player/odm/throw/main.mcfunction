execute if block ~ ~-.05 ~ #air run effect give @s levitation 1 0 true
playsound minecraft:aot.shoot player @a ~ ~ ~ 3 1.0

## Effects
execute rotated ~ 0 positioned ^.5 ^ ^.2 run particle minecraft:cloud ~ ~1 ~ ^ ^ ^2000000 0.0000003 0 force
execute rotated ~ 0 positioned ^-.5 ^ ^.2 run particle minecraft:cloud ~ ~1 ~ ^ ^ ^2000000 0.0000003 0 force
ride @s dismount

## O [hook][motion_odm] -> gets shoot and detects when motion_odm dies
# Summon hooks
function snc:logic/uuid/gen {"storage":"odm"}
data modify storage snc:hx_odm UUID set from entity @s UUID
data modify storage snc:hx_odm pivot set value -1.1
data modify storage snc:hx_odm side set value "R"
function snc:player/odm/throw/summon with storage snc:hx_odm
data modify storage snc:hx_odm pivot set value 1.1
data modify storage snc:hx_odm side set value "L"
function snc:player/odm/throw/summon with storage snc:hx_odm

# ODM status -> 1 on air
scoreboard players set @s snc.odm_state 1
scoreboard players set @s snc.odm_push.left 0
scoreboard players set @s snc.odm_push.right 0

# Save Rotation to compare
execute store result score @s snc.odm_throw_x run data get entity @s Rotation[0]
execute store result score @s snc.odm_throw_y run data get entity @s Rotation[1]