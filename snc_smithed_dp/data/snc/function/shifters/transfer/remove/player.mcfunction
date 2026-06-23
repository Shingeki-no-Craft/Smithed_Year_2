$function snc:shifters/transfer/lose with storage minecraft:$(shifter)
$execute as @p[distance=.1..20,tag=consume] run function snc:shifters/transfer/get with storage minecraft:$(shifter)