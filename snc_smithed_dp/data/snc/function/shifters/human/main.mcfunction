## Is shifter is not added again it means the player is not a shifter anymore, then it has to be killed
tag @s remove snc.female
##### HOW TO CREATE A SHIFTER #####
# Timer
function snc:shifters/human/timer/main with storage snc:female

## Removes shifter and kills the user, generally used when the player used cheats, was offline during the Curse of Ymir
execute if entity @s[tag=!snc.female] run function snc:shifters/human/remove

## Shifters player controler
execute if entity @s[tag=snc.titan] run function snc:shifters/mobs/controller with storage snc:female