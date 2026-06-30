$function snc:shifters/mobs/$(shifter)/abilities/give

$execute if score #parry $(shifter)_vars matches 1 run return -1
$execute if score $lock_anim $(shifter)_vars matches 1 run return -1

$execute as 0000007f-0000-007f-0000-007f0000000$(id) on passengers if entity @s[tag=animated_java.$(shifter).root,tag=!animated_java.$(shifter).animation.roar.playing] run function snc:shifters/mobs/$(shifter)/animate/roar

$execute if score @s snc.gene.koniglich matches 1 as @e[tag=snc.infct, distance=..384] at @s run function snc:player/titan/infect/trigger {"team":$(shifter)}