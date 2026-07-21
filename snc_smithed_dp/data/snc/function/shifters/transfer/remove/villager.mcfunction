$function snc:shifters/transfer/lose with storage minecraft:$(shifter)
$execute as @n[type=villager, tag=consume] run tag @s add snc.shifter.$(shifter)