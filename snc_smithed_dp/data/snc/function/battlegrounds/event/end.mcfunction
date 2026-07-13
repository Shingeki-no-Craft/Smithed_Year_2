
# Titan won
execute if score $female snc.battlegrounds matches 1.. if entity @s[team=snc.battlegrounds.female] run return run function snc:battlegrounds/event/end/titan_win
execute if score $female snc.battlegrounds matches 1.. run return run function snc:battlegrounds/event/end/scout_lose
# Scouts won
execute if entity @s[team=snc.battlegrounds.female] run return run function snc:battlegrounds/event/end/titan_lose
function snc:battlegrounds/event/end/scout_win