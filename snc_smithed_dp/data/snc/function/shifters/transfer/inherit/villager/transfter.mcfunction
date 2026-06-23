#Add Tags
tag @s add titan
tag @s add ai
tag @s add snc.hostile
execute if score @s snc.gene.koniglich matches 1 run tag @s add snc.koniglich

#Save
data modify storage snc:gene titan.Tags set from entity @s Tags
data modify storage snc:gene titan.CustomName set from entity @s CustomName
data modify storage snc:gene titan.Age set from entity @s Age
data modify storage snc:gene titan.Model set from entity @s equipment.head

#Titan
execute as @n[tag=ai,tag=titan] run function snc:shifters/transfer/inherit/villager/storage

#Delete Storage
data remove storage snc:gene titan