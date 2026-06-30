# Run
execute if score state female_vars matches 5 on passengers if entity @s[tag=animated_java.female.root,tag=!animated_java.female.animation.ghost_kick_run.playing] if function snc:shifters/mobs/female/animate/ghost/kick_run run return 1
# If walked
execute if function snc:shifters/mobs/female/action/ghost/kick/walk/move run return 1