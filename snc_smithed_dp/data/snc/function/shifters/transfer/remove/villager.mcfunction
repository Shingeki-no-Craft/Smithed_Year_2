$function snc:shifters/transfer/lose with storage minecraft:$(shifter)
$execute as @n[tag=consume,type=villager] run tag @s add snc.shifter.$(shifter)