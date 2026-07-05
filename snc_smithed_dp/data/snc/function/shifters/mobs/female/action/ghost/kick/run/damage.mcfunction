$execute on vehicle on passengers if entity @s[tag=snc.titan] if score $set_hardening female_vars matches 0 positioned ~ ~-2 ~ on vehicle rotated as @s rotated ~ 0 positioned ^ ^ ^2 run function snc:shifters/combat/damage {"distance":8,"half_distance":4,"shifter":"female","sound":"snc.shifters.punch","damage":$(damage_ghost_retribution),"extra_damage":0,"knockback":$(knockback_ghost_retribution),"energy":$(energy_ghost),"angle":$(angle_ghost)}
$execute on vehicle on passengers if entity @s[tag=snc.titan] if score $set_hardening female_vars matches 1 positioned ~ ~-2 ~ on vehicle rotated as @s rotated ~ 0 positioned ^ ^ ^2 run function snc:shifters/combat/damage {"distance":8,"half_distance":4,"shifter":"female","sound":"snc.shifters.punch","damage":$(damage_ghost_retribution),"extra_damage":$(hardening_damage),"knockback":$(knockback_ghost_retribution),"energy":$(energy_ghost),"angle":$(angle_ghost)}

execute on vehicle run attribute @s minecraft:scale base set 2.1
playsound minecraft:snc.shifters.jaw.smash player @a ^ ^ ^ 4 1
execute on vehicle at @s rotated ~ 0 run particle minecraft:block{block_state:"minecraft:dirt"} ^ ^ ^8 1.5 .5 1.5 1 100 force
execute on vehicle at @s rotated ~ 0 run particle minecraft:block{block_state:"minecraft:dirt"} ^ ^ ^8 .5 .5 .5 1 50 force
execute on vehicle at @s rotated ~ 0 run particle campfire_cosy_smoke ^ ^ ^6 1 .5 1 .5 30 force
execute on vehicle on passengers if entity @s[tag=snc.titan] run playsound minecraft:entity.illusioner.cast_spell player @s ~ ~ ~ 5 1
#execute on vehicle on passengers if entity @s[tag=snc.titan] run function snc:shifters/mobs/attack/abilities/atk_2 with storage snc:female