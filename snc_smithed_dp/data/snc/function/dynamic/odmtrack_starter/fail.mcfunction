scoreboard players reset @s snc.quest.odmtrack.progress
scoreboard players reset @s snc.quest.odmtrack.stage
scoreboard players reset @s snc.quest.odmtrack
playsound minecraft:entity.blaze.death master @s ~ ~ ~ 2 1
playsound minecraft:entity.villager.ambient master @s ~ ~ ~ 3 2
tellraw @s ["",{"text":"[NPC] ","color":"yellow"},{"text":"<Gen. Hope>","color":"dark_green"},{"text":" oop! You have ","color":"white"},{"text":"failed","color":"red"},{"text":" to finish the track.... Come back when ","color":"white"},{"text":"you","color":"gold"},{"text":" feel ready!","color":"white"}]