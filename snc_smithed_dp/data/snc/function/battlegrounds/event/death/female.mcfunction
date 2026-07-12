scoreboard players reset @s female_vars
function snc:api/lose/shifter/female
scoreboard players reset $female snc.battlegrounds
scoreboard players set $time_left summit.battlegrounds 0
function summit.battlegrounds:api/end_session
