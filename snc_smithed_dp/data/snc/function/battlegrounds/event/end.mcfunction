
# Titan won
execute if score $win snc.battlegrounds matches 1.. if entity @s[tag=snc.battlegrounds.temp_female] run return run function snc:battlegrounds/event/end/titan_win
execute if score $win snc.battlegrounds matches 1.. run return run function snc:battlegrounds/event/end/scout_lose

# Scouts won
execute if entity @s[tag=snc.battlegrounds.temp_female] run return run function snc:battlegrounds/event/end/titan_lose
function snc:battlegrounds/event/end/scout_win
