scoreboard players set @s snc.odm_dist 0
execute if entity @s[tag=!snc.wire.buried] run scoreboard players add @s snc.projectile 1

#$execute if entity @s[tag=snc.wire.init] rotated as $(name) run function snc:player/odm/hook/init with entity @s
$execute unless score @s[tag=snc.wire.init] snc.projectile matches 1..2 rotated as $(name) run function snc:player/odm/hook/init with entity @s
$execute facing entity $(name) feet run rotate @s[tag=snc.wire.R] ~-.4 ~
$execute facing entity $(name) feet run rotate @s[tag=snc.wire.L] ~.4 ~

$execute if entity @s[tag=snc.wire.retract] facing entity $(name) feet run tp @s ^ ^ ^4 ~ ~
# Kill hooks
# Reached player
$execute if entity @s[tag=snc.wire.retract] if entity @p[name=$(name),distance=...1] run tag @s add snc.wire.kill
# Missed player
execute if entity @s[tag=snc.wire.retract] if score @s snc.projectile matches 34.. run tag @s add snc.wire.kill
# If deatached
$execute if entity @s[tag=snc.wire.retract,tag=snc.wire.buried] as $(name) run function snc:player/odm/hook/break
# If missed hook but the other one attached
$execute if entity @s[tag=snc.wire.kill] unless score $(name) snc.odm_state matches 2.. run scoreboard players set $(name) snc.odm_state 0

# Get rotation
$execute if entity @s[tag=!snc.wire.retract] store result score $(name) snc.rotation_x run data get entity $(name) Rotation[0]
#$tellraw $(name) [{"score":{"name":"$(name)","objective":"snc.rotation_x"}}," ",{"score":{"name":"$(name)","objective":"snc.odm_throw_x"}}]
# Prevent cycle
$execute if entity @s[tag=!snc.wire.retract] as $(name) if score @s snc.odm_throw_x matches 135.. if score @s snc.rotation_x matches ..-1 run scoreboard players add @s snc.rotation_x 360
$execute if entity @s[tag=!snc.wire.retract] as $(name) if score @s snc.odm_throw_x matches ..-137 if score @s snc.rotation_x matches 1.. run scoreboard players remove @s snc.rotation_x 360
# Range maximum
#$tellraw $(name) [{"score":{"name":"$(name)","objective":"snc.rotation_x"}}," ",{"score":{"name":"$(name)","objective":"snc.odm_throw_x"}}]

$execute if entity @s[tag=!snc.wire.retract] store result score $(name) snc.rotation_y run data get entity $(name) Rotation[1]
## Compare snc.odm_throw with snc.rotation
$execute if entity @s[tag=!snc.wire.retract] run scoreboard players operation $(name) snc.rotation_x -= $(name) snc.odm_throw_x
$execute if entity @s[tag=!snc.wire.retract] run scoreboard players operation $(name) snc.rotation_y -= $(name) snc.odm_throw_y

#$tellraw $(name) [{"score":{"name":"$(name)","objective":"snc.rotation_x"}}," ",{"score":{"name":"$(name)","objective":"snc.odm_throw_x"}}]

$execute if entity @s[tag=!snc.wire.retract] unless score $(name) snc.rotation_x matches -43..43 as $(name) run function snc:player/odm/hook/break
$execute if entity @s[tag=!snc.wire.retract] if score $(name) snc.rotation_y matches ..-45 as $(name) run function snc:player/odm/hook/break

$execute if score @s snc.projectile matches 4.. run function snc:player/odm/hook/particles {"name":"$(name)"}
# Reset and Kill
$execute if score $(name) snc.odm_state matches 0 run tag @s add snc.wire.kill
#$execute if score $(name) snc.odm_dist matches 0 run tag @s add snc.wire.kill
#$execute if score $(name) snc.odm_dist matches 0 run scoreboard players reset $(name) snc.odm_dist
execute if entity @s[tag=snc.wire.kill] run function snc:logic/kill_mob

## Land
$execute unless score $(name) snc.odm_state matches 0 if entity @s[tag=!snc.wire.shifter] positioned ~-2.5 ~-2.5 ~-2.5 if entity @n[type=#snc:titan, dx=4,dy=4,dz=4,tag=snc.hook.titan] run function snc:player/odm/hook/land_shifter {"name":"$(name)"}
$execute unless score $(name) snc.odm_state matches 0 if entity @s[tag=!snc.wire.buried,tag=!snc.wire.retract,tag=!snc.wire.air] run function snc:player/odm/hook/land {"name":"$(name)"}
execute if score @s snc.projectile matches 4.. run tag @s remove snc.wire.air
return 0