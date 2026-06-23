##### HOW TO CREATE A SHIFTER #####
## Set previous curse
$execute if score @s shifter_vars matches 1 run scoreboard players operation curse $(shifter)_vars = curse cart_vars
$execute if score @s shifter_vars matches 2 run scoreboard players operation curse $(shifter)_vars = curse colossal_vars
$execute if score @s shifter_vars matches 3 run scoreboard players operation curse $(shifter)_vars = curse attack_vars
$execute if score @s shifter_vars matches 4 run scoreboard players operation curse $(shifter)_vars = curse beast_vars
$execute if score @s shifter_vars matches 5 run scoreboard players operation curse $(shifter)_vars = curse armor_vars
$execute if score @s shifter_vars matches 6 run scoreboard players operation curse $(shifter)_vars = curse jaw_vars
$execute if score @s shifter_vars matches 7 run scoreboard players operation curse $(shifter)_vars = curse female_vars

