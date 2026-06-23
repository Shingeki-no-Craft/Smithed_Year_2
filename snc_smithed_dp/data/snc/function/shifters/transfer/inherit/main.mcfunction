## It was a pure titan!
# Is it a villager?
execute unless entity @p[distance=.1..20,tag=consume] as @n[tag=ai,distance=0..20] at @s run function snc:shifters/transfer/inherit/titan/save
execute unless entity @p[distance=.1..20,tag=consume] run function snc:shifters/transfer/inherit/villager/main
# Maybe a player
execute if entity @p[distance=.1..20,tag=consume] run function snc:shifters/transfer/inherit/player/main
# Kill the pure titan!
execute as @n[tag=ai,distance=.1..20] at @s run function snc:titans/kill