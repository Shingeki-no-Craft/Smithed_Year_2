title @s times 0s 20t 10t
title @s title {"translate":"aot.ability.harvest.disabled","color":"red"}
title @s subtitle [{"translate":"aot.ability.harvest.disabled.desc"},"(","\uE008",")"]
scoreboard players set #harvest cart_vars 10

scoreboard players operation #harvest cart_vars *= #-1 constant
function snc:shifters/abilities/harvest with storage minecraft:cart

playsound minecraft:block.iron_trapdoor.close master @s