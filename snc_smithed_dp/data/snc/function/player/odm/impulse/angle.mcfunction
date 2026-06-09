# Can spinn?
tag @s add spin

effect give @s slow_falling 3 0 true
effect give @s speed 1 4 true

## Push strenght
scoreboard players set @s snc.odm_push 0
scoreboard players operation @s snc.odm_push += @s snc.odm_push.left
scoreboard players operation @s snc.odm_push += @s snc.odm_push.right

# Direction
scoreboard players set @s snc.push.dir 0
#execute if score @s snc.odm_push.left matches 0 run scoreboard players set @s snc.odm_push.left 128
#execute if score @s snc.odm_push.right matches 0 run scoreboard players set @s snc.odm_push.right 128
#execute if score @s snc.odm_push.left < @s snc.odm_push.right run scoreboard players set @s snc.push.dir -1
#execute if score @s snc.odm_push.right < @s snc.odm_push.left run scoreboard players set @s snc.push.dir 1

#tellraw @a {"score":{"name":"@s","objective":"snc.push.dir"}}

#execute if score @s snc.odm_push.left matches 0 if function snc:player/odm/impulse/wires run return -1
#execute if score @s snc.odm_push.left matches ..-1 run function snc:player/odm/impulse/left
#execute if score @s snc.odm_push.left matches 1.. run function snc:player/odm/impulse/right
function snc:player/odm/impulse/wires