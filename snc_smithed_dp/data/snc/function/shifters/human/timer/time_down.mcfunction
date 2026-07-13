# If transformed into a shifter go down
$scoreboard players remove $energy $(shifter)_vars $(energy_decrease)

# If berserk is active reduce time
$execute unless score $berserk $(shifter)_vars matches 0 run return 1
$scoreboard players operation $energy $(shifter)_vars *= #10 snc.constant
$scoreboard players operation $energy $(shifter)_vars /= #11 snc.constant