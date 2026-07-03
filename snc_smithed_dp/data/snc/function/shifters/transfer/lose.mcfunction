$execute as @s[tag=snc.titan] run function snc:shifters/human/timer/cd {"shifter":$(shifter), "id":"$(id)"}

$bossbar remove snc:$(shifter)_health
tag @s remove consume

team leave @s

## If detected 2 shifters then remove one from the vars
$execute if score prevent $(shifter)_vars matches 1 run scoreboard players reset @s $(shifter)_vars
$scoreboard players reset @s $(shifter)_vars

$execute unless score prevent $(shifter)_vars matches 1 run scoreboard players reset * $(shifter)_vars

# Reset "prevent"
$scoreboard players reset prevent $(shifter)_vars