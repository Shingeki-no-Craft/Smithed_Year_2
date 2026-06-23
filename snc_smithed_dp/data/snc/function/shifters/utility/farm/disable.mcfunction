title @s times 0s 20t 10t
title @s title {"translate":"aot.ability.farm.disabled","color":"red"}
title @s subtitle [{"translate":"aot.ability.farm.disabled.desc"},"(","\uE008",")"]
scoreboard players set #farm cart_vars 10

scoreboard players operation #farm cart_vars *= #-1 constant
function snc:shifters/abilities/farm with storage minecraft:cart

playsound minecraft:block.iron_trapdoor.close master @s