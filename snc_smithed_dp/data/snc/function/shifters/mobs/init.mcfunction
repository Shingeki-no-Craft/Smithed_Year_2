# Save the current position to #posy0
$execute store result score #posy0 $(shifter)_vars run data get entity @s Pos[1] 1
# Set horse id to track more efficiently
$kill 0000007f-0000-007f-0000-007f0000000$(id)
$summon $(type) ~ ~ ~ {UUID:[I;127,127,127,$(id)]}
$execute as 0000007f-0000-007f-0000-007f0000000$(id) run function snc:shifters/mobs/spawn {\
    "shifter":"$(shifter)", \
    "walk_speed":$(walk_speed), \
    "step_height":$(step_height), \
    "scale_vehicle":$(scale_vehicle) \    
    }
$bossbar add $(shifter)_health {"text":"\$(bossbar_display)"}
$bossbar set minecraft:$(shifter)_health color $(bossbar_color)
$bossbar set minecraft:$(shifter)_health max $(hp)
$bossbar set minecraft:$(shifter)_health style $(bossbar_style)

# Reset regen ticks
$data modify storage minecraft:$(shifter) regen_ticks set from storage minecraft:$(shifter) og_regen_ticks

$scoreboard players set state $(shifter)_vars 1
$scoreboard players set consume $(shifter)_vars 0
$scoreboard players set mov $(shifter)_vars 100
$scoreboard players reset $moving $(shifter)_vars

$scoreboard players set $gamemode $(shifter)_vars 1
$scoreboard players set $vanish $(shifter)_vars 0
$scoreboard players set $hold $(shifter)_vars 0
$scoreboard players set $lock_anim $(shifter)_vars 0
$scoreboard players set $air_frame $(shifter)_vars 0

$execute if predicate snc:shifters/armor/full run scoreboard players set $hardening $(shifter)_vars 0
$execute if predicate snc:shifters/armor/full run scoreboard players set $op.hardening $(shifter)_vars 12
$execute if entity @s[tag=snc.shifter.attack] run scoreboard players set $berserk $(shifter)_vars 1

scoreboard players reset @s snc.ender
scoreboard players reset @s snc.chest
scoreboard players reset @s snc.barrel
scoreboard players reset @s snc.shulker
scoreboard players reset @s snc.trap

effect give @s invisibility infinite 0 true
effect give @s saturation infinite 0 true
effect give @s resistance 5 4 true
$attribute @s scale base set $(scale_player)
$attribute @s entity_interaction_range base set $(entity_range)

execute store result score @s gamemode run data get entity @s playerGameType
gamemode survival

## CART: PASSIVE
# If is not cart and doesn't have passive
$execute unless score @s shifter_vars matches 1 if entity @s[tag=!snc.shifter.cart] run scoreboard players remove $energy $(shifter)_vars 360
# If is not cart, has passive but is not female
$execute unless score @s shifter_vars matches 1 if entity @s[tag=snc.shifter.cart, tag=!snc.shifter.female] run scoreboard players remove $energy $(shifter)_vars 180