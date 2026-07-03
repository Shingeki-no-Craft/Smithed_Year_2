#> snc:shifters/mobs/regeneration
# Manages regeneration for the $(shifter) titan (Titan form)
#
# @input
#   $(shifter) Titan
#
# @output
#   Regeneration every 10 seconds

# Always reset absorption
effect clear @s absorption
effect give @s regeneration 3 0 true

## Prevent goes above max hp
$execute if score titan.health.bar $(shifter)_vars matches $(hp).. run scoreboard players operation titan.health.bar $(shifter)_vars -= #4 snc.constant
$scoreboard players operation titan.health.bar $(shifter)_vars /= #4 snc.constant

$execute store result storage snc:$(shifter) absorption int 1 run scoreboard players get titan.health.bar $(shifter)_vars
$function snc:shifters/mobs/absorption with storage snc:$(shifter)

$execute if predicate snc:shifters/armor/full if predicate snc:chance/50 if score $op.hardening $(shifter)_vars matches ..12 run function snc:shifters/mobs/armor/action/hardening/regen {"pitch":1, "shifter":"$(shifter)"}