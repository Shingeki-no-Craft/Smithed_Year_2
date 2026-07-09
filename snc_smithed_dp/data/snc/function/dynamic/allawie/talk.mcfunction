advancement revoke @s only snc:mannequin/allawie
execute if score @s snc.quest.battlegrounds matches 1..5 run return 0

# Explain at first
execute unless score @s snc.quest.battlegrounds matches 1.. run function snc:dynamic/allawie/explain

# Encourage le player
execute if score @s snc.quest.battlegrounds matches 6.. run function snc:dynamic/dialog_box {name:{text:"Allawie",color:light_purple}, line_1:[{text:"Let's see what you can do...", color:dark_gray, italic:true}], line_2: [""], line_3:[""], sound:"entity.villager.ambient master @s ~ ~ ~ 3 1"}