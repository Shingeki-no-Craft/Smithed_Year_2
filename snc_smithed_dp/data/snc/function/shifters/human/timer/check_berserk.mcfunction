# Was berserk?
$execute if score $berserk $(shifter)_vars matches 0 run function snc:shifters/human/timer/cd_hurt {"shifter":"$(shifter)", "id":"$(id)"}
$execute if score $berserk $(shifter)_vars matches 0 run return -1
# Nope! Regular unshift
$function snc:shifters/human/timer/cd {"shifter":"$(shifter)", "id":"$(id)"}