#scoreboard players set state female_vars 0
# Tp player to neck
execute as @p[scores={female_vars=1},tag=!snc.titan,distance=..30] rotated ~ 0 run tp ^ ^4 ^-1

# Start riding armor_stand instead of horse
execute on vehicle run kill
ride @s dismount

summon armor_stand ^ ^-4.5 ^ {DisabledSlots:4144959,Invisible:1b,Tags:["snc.shifter.female","snc.dead","snc.shifter"],Pose:{Head:[0f,0f,0f]},equipment:{head:{id:"minecraft:white_dye",count:1b,components:{"minecraft:item_model":"snc:female/bite/default/3"}}},attributes:[{id:"minecraft:scale",base:8.3}]}

ride @s mount @n[type=armor_stand,tag=snc.dead]
execute on vehicle run rotate @s ~ 0