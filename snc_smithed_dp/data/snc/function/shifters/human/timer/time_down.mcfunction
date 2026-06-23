# If transformed into a shifter go down
$scoreboard players remove $energy $(shifter)_vars $(energy_decrease)

# Decrease time faster
$execute if score $shifter_mastery config matches 1 if score $master $(shifter)_vars matches ..3 run scoreboard players remove $energy $(shifter)_vars 3
$execute if score $shifter_mastery config matches 1 if score $master $(shifter)_vars matches ..9 run scoreboard players remove $energy $(shifter)_vars 3
$execute if score $shifter_mastery config matches 1 if score $master $(shifter)_vars matches ..18 run scoreboard players remove $energy $(shifter)_vars 3
$execute if score $shifter_mastery config matches 1 if score $master $(shifter)_vars matches ..30 run scoreboard players remove $energy $(shifter)_vars 3

# If berserk is active reduce time
$execute unless score $berserk $(shifter)_vars matches 0 run return 1
$scoreboard players operation $energy $(shifter)_vars *= #10 constant
$scoreboard players operation $energy $(shifter)_vars /= #11 constant