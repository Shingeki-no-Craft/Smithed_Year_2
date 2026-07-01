# Hook landed
$scoreboard players add $(name) snc.odm_state 1
$execute positioned ~-4.5 ~-4.5 ~-4.5 as @e[dx=8,dy=8,dz=8,tag=snc.titan] run damage @s 1 arrow by $(name)

playsound minecraft:block.iron_door.close player @a ~ ~ ~ 3.5 1.45
playsound minecraft:block.amethyst_cluster.break player @a ~ ~ ~ 3.5 2

tag @s add snc.wire.shifter
ride @s mount @n[tag=snc.hook.titan]
tag @s add snc.wire.buried
scoreboard players set @s snc.projectile 4