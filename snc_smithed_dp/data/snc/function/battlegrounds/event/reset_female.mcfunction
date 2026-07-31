tag @s add snc.battlegrounds.temp_female
scoreboard players reset @s female_vars
function snc:api/lose/shifter/female
scoreboard players reset $female snc.battlegrounds
attribute @s scale base set 1
effect clear @s saturation
effect clear @s invisibility
effect clear @s resistance