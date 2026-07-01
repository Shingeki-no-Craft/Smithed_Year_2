particle glow_squid_ink ~ ~ ~ 0 0 0 0 10 force
$execute positioned ~ ~-$(half_distance) ~ run function snc:logic/hitbox/display {size:$(distance), sizeY:$(distance)}
#$particle minecraft:damage_indicator ~ ~ ~ $(half_distance) $(half_distance) $(half_distance) 0 1000 force
$execute positioned ~-$(half_distance).5 ~-$(half_distance).5 ~-$(half_distance).5 run effect give @e[dx=$(distance),dy=$(distance),dz=$(distance)] glowing 5 0 true