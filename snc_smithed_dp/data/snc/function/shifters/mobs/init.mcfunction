execute store result score $variant female_vars run random value 1..2
execute if score $variant female_vars matches 2 run scoreboard players set $hardening female_vars 0
execute if score $variant female_vars matches 2 run scoreboard players set $op.hardening female_vars 12
scoreboard players set $berserk female_vars 1

# Set horse id to track more efficiently
$kill 0000007f-0000-007f-0000-007f0000000$(id)
$summon $(type) ~ ~ ~ {UUID:[I;127,127,127,$(id)]}
$execute as 0000007f-0000-007f-0000-007f0000000$(id) run function snc:shifters/mobs/spawn {\
    "shifter":"$(shifter)", \
    "walk_speed":$(walk_speed), \
    "step_height":$(step_height), \
    "scale_vehicle":$(scale_vehicle) \    
    }
$bossbar add snc:$(shifter)_health {"font":"snc:gui", "text":"\$(bossbar_display)"}
$bossbar set snc:$(shifter)_health color $(bossbar_color)
$bossbar set snc:$(shifter)_health max $(hp)
$bossbar set snc:$(shifter)_health style $(bossbar_style)

# Reset regen snc.ticks
$data modify storage snc:$(shifter) regen_ticks set from storage snc:$(shifter) og_regen_ticks

$scoreboard players set state $(shifter)_vars 1
$scoreboard players set consume $(shifter)_vars 0
$scoreboard players set mov $(shifter)_vars 100
$scoreboard players reset $moving $(shifter)_vars

$scoreboard players set $vanish $(shifter)_vars 0
$scoreboard players set $hold $(shifter)_vars 0
$scoreboard players set $lock_anim $(shifter)_vars 0
$scoreboard players set $air_frame $(shifter)_vars 0

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

execute store result score @s snc.gamemode run data get entity @s playerGameType
gamemode adventure