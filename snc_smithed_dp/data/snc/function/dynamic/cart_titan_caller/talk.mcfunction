advancement revoke @s only snc:mannequin/cart_titan_caller
execute if score $hange snc.cart matches 1 run return 0

execute if score $stage snc.cart matches 1.. run function snc:dynamic/dialog_box {name:{text:"L. Bomb",color:green}, line_1:{text:"..."}, line_2: {text:""}, line_3:{text:""}, sound:"entity.villager.ambient master @s ~ ~ ~ 1 2"}
execute if score $stage snc.cart matches 1.. run return 0

playsound entity.villager.ambient master @s ~ ~ ~ 1 2
execute unless score $hange snc.cart matches 1 run scoreboard players set $hange snc.cart 1
function snc:dynamic/dialog_box {name:{text:"L. Bomb",color:green}, line_1:["Hey there! Look, look! I finally managed to get a brand"], line_2: ["new ",{"text":"friend","color":"dark_purple"},"!"], line_3:{text:""}, sound:"entity.villager.ambient master @s ~ ~ ~ 1 2"}
tag @s add snc.talked_to.hange
execute as @n[type=minecraft:item_display,tag=animated_java.cart.root] run function snc:dynamic/cart_titan/jump