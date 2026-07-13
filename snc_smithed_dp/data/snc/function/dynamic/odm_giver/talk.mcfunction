advancement revoke @s only snc:mannequin/odm_giver

execute if items entity @s container.* *[custom_data~{snc_gear:true}] run tag @s add snc.has.gear
execute if items entity @s weapon.offhand *[custom_data~{snc_gear:true}] run tag @s add snc.has.gear
execute if items entity @s container.* *[custom_data~{snc_trigger:true}] run tag @s add snc.has.trigger
execute if items entity @s weapon.offhand *[custom_data~{snc_trigger:true}] run tag @s add snc.has.trigger

execute if entity @s[tag=snc.has.gear, tag=snc.has.trigger] run tag @s add snc.has.odm
tag @s remove snc.has.gear
tag @s remove snc.has.trigger


execute if entity @s[advancements={snc:odm_get=false}] run function snc:dynamic/dialog_box {name:{text:"Gen. Energy",color:green}, line_1:["Ah, a fresh meat! Here, take this your",{"text":" ODM Gear","color":"dark_red"},". This"], line_2:["steel is all that stands between you and the Titans Jaws."], line_3:["Don't",{"text":" die ","color":"dark_red"},"out there",{text:" Soldier", color:dark_green},"!"], sound:"entity.villager.yes master @s ~ ~ ~ 1 1"}
execute if entity @s[advancements={snc:odm_get=false}] run playsound entity.player.levelup master @s ~ ~ ~ 1 1

execute if entity @s[advancements={snc:odm_get=true}, tag=!snc.has.odm] run function snc:dynamic/dialog_box {name:{text:"Gen. Energy",color:green}, line_1:["What?! Did you lose it!? Are you...?!"], line_2:["..."], line_3:["I have",{"text":" one more","color":"dark_red"},", but this is the last one."], sound:"entity.villager.no master @s ~ ~ ~ 1 1"}
execute if entity @s[advancements={snc:odm_get=true}, tag=snc.has.odm] run function snc:dynamic/dialog_box {name:{text:"Gen. Energy",color:green}, line_1:["You have already received your",{"text":" ODM Gear","color":"dark_red"},"."], line_2:["Only one per recruit."], line_3:[""], sound:"entity.villager.no master @s ~ ~ ~ 1 1"}

execute if entity @s[tag=!snc.has.odm] run function snc:dynamic/odm_giver/give
tag @s remove snc.has.odm