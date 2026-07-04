advancement revoke @s only snc:mannequin/cart_titan_caller
execute if score $hange snc.cart matches 1 run return 0

execute if score $stage snc.cart matches 1.. run tellraw @s ["",{"text":"[NPC]","color":"yellow"},{"text":" <Sqd L. Hange>","color":"dark_green"},{"text":" ..."}]
execute if score $stage snc.cart matches 1.. run return 0

playsound entity.villager.ambient master @s ~ ~ ~ 1 2
execute unless score $hange snc.cart matches 1 run scoreboard players set $hange snc.cart 1
tellraw @s ["",{"text":"[NPC]","color":"yellow"},{"text":" <Sqd L. Hange>","color":"dark_green"},{"text":" Hey there! Look, look! I finally managed to get a brand new "},{"text":"friend","color":"light_purple"},{"text":"!"}]
tag @s add snc.talked_to.hange
function snc:dynamic/cart_titan/jump