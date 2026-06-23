#> snc:shifters/transfer/cheat
# Kills the entity if there's already a shifter of the same type.
#
# @input
#   execute if score count $(shifter)_vars matches 2..
#
# @output
#   Entity is killed and the tag prevent is added
$scoreboard players set prevent $(shifter)_vars 1
$function snc:shifters/transfer/lose {"shifter":"$(shifter)","color":"$(color)", "id":"$(id)"}