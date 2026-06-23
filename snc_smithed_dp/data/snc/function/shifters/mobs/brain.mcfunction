## Detect Movement
# get the current position to #posx1
$execute store result score #posx1 $(shifter)_vars run data get entity @s Pos[0] 1000
# Find the mov direction and store in #posx1
$scoreboard players operation #posx1 $(shifter)_vars -= #posx0 $(shifter)_vars
$execute if score #posx1 $(shifter)_vars matches ..-1 run scoreboard players operation #posx1 $(shifter)_vars *= #-1 constant
# Save the current position to #posx0
$execute store result score #posx0 $(shifter)_vars run data get entity @s Pos[0] 1000

# get the current position to #posz1
$execute store result score #posz1 $(shifter)_vars run data get entity @s Pos[2] 1000
# Find the mov direction and store in #posz1
$scoreboard players operation #posz1 $(shifter)_vars -= #posz0 $(shifter)_vars
$execute if score #posz1 $(shifter)_vars matches ..-1 run scoreboard players operation #posz1 $(shifter)_vars *= #-1 constant
# Save the current position to #posx0
$execute store result score #posz0 $(shifter)_vars run data get entity @s Pos[2] 1000

## Add movement from both axis
$scoreboard players operation #posx1 $(shifter)_vars += #posz1 $(shifter)_vars

## Set flag $moving
$execute if score #posx1 $(shifter)_vars matches 1.. run scoreboard players set $moving $(shifter)_vars 1
$execute unless score #posx1 $(shifter)_vars matches 1.. run scoreboard players set $moving $(shifter)_vars 0