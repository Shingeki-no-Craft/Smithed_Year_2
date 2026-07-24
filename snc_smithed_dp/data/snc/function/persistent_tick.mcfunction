# Only tick players who are actually at this booth or in the SNC battlegrounds,
# instead of running snc:player/main for every player on the server every tick.
execute as @a[tag=summit.battlegrounds.player] at @s run function snc:player/main
execute as @a[tag=!summit.battlegrounds.player,predicate=snc:in_booth] at @s run function snc:player/main
