## Check who ate the shifter
# If it was a Shifter, give
execute if entity @p[tag=transform,tag=consume,distance=.1..20] run function snc:shifters/transfer/inherit/player/main
# Nope, it wasn't a shifter. Check if its a pure titan, then check if is been controlled by a player
execute unless entity @s[tag=snc.inherit] if entity @n[tag=ai,distance=.1..20] run function snc:shifters/transfer/inherit/main

tag @s remove snc.inherit