$execute if score snc.ticks clock matches 17 run effect give @s resistance 3 $(resistance) true

$execute if score $gamemode $(shifter)_vars matches 1 run function snc:shifters/combat/main {"shifter":$(shifter),"id":"$(id)"}
$execute if score $gamemode $(shifter)_vars matches -1 run function snc:shifters/utility/main {"shifter":$(shifter), "block_range":$(block_range)}

## Is moving? Unless is sneaking!
# execute unless entity @s[type=player] run function snc:shifters/mobs/brain if predicate snc:is_moving
# Rotation
$execute store result score player_rotation $(shifter)_vars run data get entity @s Rotation[0]

## Prevent Moving Inventory (Almost)
$execute if items entity @s player.cursor *[minecraft:custom_data~{atk_shifter:1b, summit: {droppable: {callback: true}}}] run function snc:shifters/mobs/$(shifter)/abilities/give

# Kill when energy runs out
$execute if score $energy $(shifter)_vars matches ..0 if score state $(shifter)_vars matches 2.. run function snc:shifters/human/timer/check_berserk {"shifter":$(shifter), "id":"$(id)"}
# Insta remove
$execute if predicate snc:shifters/has_insta_remove if score state $(shifter)_vars matches 2.. run function snc:shifters/human/timer/vanish
# Ride when is not dead
#$execute unless score state $(shifter)_vars matches 9 if predicate snc:player/keybinds/sneak run function snc:shifters/mobs/$(shifter)/animate/sneak
$execute unless score state $(shifter)_vars matches 9 unless predicate snc:shifters/is_riding run function snc:shifters/mobs/$(shifter)/animate/sneak

## Health system
# When doesn't have absortion then add tag 'injured'
$execute store result score $health $(shifter)_vars run data get entity @s AbsorptionAmount

# If HP is the same as before, don't update
$execute if score $health $(shifter)_vars = $prev_health $(shifter)_vars run return -1
# Cancel update if energy ended
$execute if score $energy $(shifter)_vars matches ..0 run return -1
    # Update bossbar
    $execute store result bossbar snc:$(shifter)_health value run scoreboard players get $health $(shifter)_vars
    ## Check health
    $execute if score $health $(shifter)_vars < $prev_health $(shifter)_vars unless score state $(shifter)_vars matches 9 run function snc:shifters/mobs/parry {"shifter":$(shifter)}
    $execute if predicate snc:is_hurt unless score state $(shifter)_vars matches 9 run function snc:shifters/mobs/parry {"shifter":$(shifter)}
    # Update skin
    $execute on vehicle on passengers if entity @s[tag=animated_java.$(shifter).root,tag=!animated_java.$(shifter).animation.born.playing] run function snc:shifters/mobs/$(shifter)/skin
    # Kill when hp is 0
    $execute if score $health $(shifter)_vars matches ..0 if score state $(shifter)_vars matches 2.. run function snc:shifters/human/timer/cd_hurt {"shifter":$(shifter), "id":"$(id)"}
    # Store last hp value
    $scoreboard players operation $prev_health $(shifter)_vars = $health $(shifter)_vars
    