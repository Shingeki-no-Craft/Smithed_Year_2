setblock ~ ~ ~ farmland
$setblock ~ ~1 ~ $(crop)
# playsound minecraft:entity.sniffer.drop_seed block @a ~ ~ ~ 2 1
playsound minecraft:block.flowering_azalea.break block @a ~ ~ ~ 2 1
$clear @s $(seeds) 1
$scoreboard players remove $energy $(shifter)_vars 2