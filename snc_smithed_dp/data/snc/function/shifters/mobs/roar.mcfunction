$function snc:shifters/mobs/$(shifter)/abilities/give

$execute if score #parry $(shifter)_vars matches 1 run return -1
$execute if score $lock_anim $(shifter)_vars matches 1 run return -1

$execute as @n[type=skeleton_horse, tag=snc.body] on passengers if entity @s[tag=animated_java.$(shifter).root,tag=!animated_java.$(shifter).animation.roar.playing] run function snc:shifters/mobs/$(shifter)/animate/roar