$execute if score #parry $(shifter)_vars matches 1 run return -1

playsound aot.shifters.hurt master @a ~ ~ ~ 3 1
$playsound aot.shifters.$(shifter).pain master @a ~ ~ ~ 3 1

playsound minecraft:entity.magma_cube.hurt master @a ~ ~ ~ 3 .03
# playsound minecraft:entity.magma_cube.hurt master @a ~ ~ ~ 3 .03
execute anchored eyes positioned ^ ^ ^ run particle minecraft:block{block_state:"redstone_block"} ~ ~-1 ~ .7 1 .7 1 300 force