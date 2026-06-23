#Villager
data modify entity @s Tags set from storage snc:gene villager.Tags
data modify entity @s CustomName set from storage snc:gene villager.CustomName
data modify entity @s equipment.head set from storage snc:gene villager.Model
data modify entity @s Age set from storage snc:gene villager.Age
execute as @s on passengers run data modify entity @s CustomName set from storage snc:gene villager.CustomName

#Add Tags
tag @s add snc.villager.new
tag @s add snc.inheritance

#Koniglich (Royal Blood)
scoreboard players set @s[tag=snc.koniglich] snc.gene.koniglich 1

#Remove Tags
tag @s remove ai
tag @s remove titan
tag @s remove snc.hostile
tag @s remove snc.handcuffs
tag @s[tag=snc.koniglich] remove snc.koniglich

#Delete Storage
data remove storage snc:gene villager