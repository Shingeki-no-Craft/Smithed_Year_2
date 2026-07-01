## States
# 0 : Off
# 1 : Born
# 2 : Sneak
# 3 : Idle
# 4 : Walk
# 5 : Run
# 6 : Jump
# 7 : Bite
# 8 : Roar
# 9 : Die
###############

## Rotate model
execute store result score rotation female_vars run data get entity @s Rotation[0]
scoreboard players operation rotation female_vars -= player_rotation female_vars
execute unless score rotation female_vars matches -20..20 on vehicle at @s on passengers unless entity @s[type=player] run rotate @s ~ 0
### Animations
## General
## 1. function snc:shifters/mobs/female/animate/born is handled externally
## 2. function snc:shifters/mobs/female/animate/sneak is handled externally
execute if score state female_vars matches 2 on vehicle rotated ~ 0 positioned ^ ^-.9 ^4 on passengers if entity @s[tag=snc.titan] run function snc:shifters/mobs/highlight
execute if score state female_vars matches 3 run function snc:shifters/mobs/female/animate/idle/main
execute if score state female_vars matches 4 run function snc:shifters/mobs/female/animate/walk/main
execute if score state female_vars matches 5 if entity @s[tag=!animated_java.female.animation.run.playing] run function snc:shifters/mobs/female/animate/run
execute if score state female_vars matches 6 if entity @s[tag=animated_java.female.animation.jump_loop.playing] if score $air female_vars matches 0 run function snc:shifters/mobs/female/animate/jump_end
## 6. function snc:shifters/mobs/female/animate/jump is handled externally
## 7. function snc:shifters/mobs/female/animate/bite is handled externally
## 8. function snc:shifters/mobs/female/animate/roar is handled externally
## 9. function snc:shifters/mobs/female/animate/death is handled externally