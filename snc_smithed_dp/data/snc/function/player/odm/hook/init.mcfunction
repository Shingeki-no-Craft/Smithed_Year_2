#OLD: data modify entity @s leash set value []
data remove entity @s leash
tp ~ ~ ~
tag @s remove snc.wire.init

$execute if entity @s[tag=snc.wire.L] positioned ^ ^ ^1 summon spectral_arrow positioned ^0.002 ^ ^0.1 run function snc:logic/motion/self/odm {"Owner":$(UUID)}
$execute if entity @s[tag=snc.wire.R] positioned ^ ^ ^1 summon spectral_arrow positioned ^-0.002 ^ ^0.1 run function snc:logic/motion/self/odm {"Owner":$(UUID)}