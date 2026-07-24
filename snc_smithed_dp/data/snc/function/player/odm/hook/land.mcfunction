# Hook landed
$scoreboard players add $(name) snc.odm_state 1
$execute positioned ~-1.5 ~-1.5 ~-1.5 as @n[type=player,tag=snc.titan,dx=2,dy=2,dz=2] run damage @s 1 arrow by $(name)

#particle minecraft:wax_off ~ ~ ~ 0 0 0 20 10 force
particle block{block_state:"dirt"} ~ ~ ~ 0 0 0 1 10 force
particle crit ~ ~ ~ 0 0 0 .4 10 force
playsound minecraft:block.iron_door.close player @a ~ ~ ~ 3.5 1.45
playsound minecraft:block.amethyst_cluster.break player @a ~ ~ ~ 3.5 2

tag @s add snc.wire.buried
scoreboard players set @s snc.projectile 4
tp ^ ^-.6 ^-.5