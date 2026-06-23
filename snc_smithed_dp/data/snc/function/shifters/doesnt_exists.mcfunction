##### HOW TO CREATE A SHIFTER #####
scoreboard players set $spawn.shifter shifter_vars 0
scoreboard players operation $spawn.shifter shifter_vars += $cart.doesnt.exists shifter_vars
scoreboard players operation $spawn.shifter shifter_vars += $colossal.doesnt.exists shifter_vars
scoreboard players operation $spawn.shifter shifter_vars += $attack.doesnt.exists shifter_vars
scoreboard players operation $spawn.shifter shifter_vars += $beast.doesnt.exists shifter_vars
scoreboard players operation $spawn.shifter shifter_vars += $armor.doesnt.exists shifter_vars
scoreboard players operation $spawn.shifter shifter_vars += $jaw.doesnt.exists shifter_vars
scoreboard players operation $spawn.shifter shifter_vars += $female.doesnt.exists shifter_vars