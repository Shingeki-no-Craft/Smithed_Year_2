# Activate Berserk
# Mastery enabled
$execute if score $shifter_mastery config matches 1 if score $master $(shifter)_vars matches 4.. if score $berserk $(shifter)_vars matches 1 if function snc:shifters/mobs/$(shifter)/animate/berserk/start run return -1
# Mastery disabled
$execute if score $shifter_mastery config matches 0 if score $berserk $(shifter)_vars matches 1 if function snc:shifters/mobs/$(shifter)/animate/berserk/start run return -1

# Regular unshift
function snc:logic/return_gamemode

tag @s remove snc.titan
tag @s remove consume
tag @s add snc.injured

clear @s *[custom_data~{atk_shifter:1b, summit: {droppable: {callback: true}}}]
clear @s white_dye

effect clear @s
effect give @s resistance 4 127 true
execute if score @s shifter_vars matches 2 run effect give @s slow_falling 9 0 true
execute unless score @s shifter_vars matches 2 run effect give @s slow_falling 3 0 true
effect give @s levitation 1 0 true

# $scoreboard players reset $berserk $(shifter)_vars
$scoreboard players set $energy $(shifter)_vars 0
# Unshift energy
$execute if score $shifter_mastery config matches 1 if score $master $(shifter)_vars matches ..3 run scoreboard players remove $energy $(shifter)_vars 800
$execute if score $shifter_mastery config matches 1 if score $master $(shifter)_vars matches ..9 run scoreboard players remove $energy $(shifter)_vars 800
$execute if score $shifter_mastery config matches 1 if score $master $(shifter)_vars matches ..18 run scoreboard players remove $energy $(shifter)_vars 800
$execute if score $shifter_mastery config matches 1 if score $master $(shifter)_vars matches ..30 run scoreboard players remove $energy $(shifter)_vars 800

$function snc:shifters/human/transform/human {"shifter":"$(shifter)", "id":"$(id)"}

return 0