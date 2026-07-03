advancement revoke @s only snc:mannequin/zabat
execute at @s run playsound entity.villager.ambient master @s ~ ~ ~ 1 2

tellraw @s ["",{"text":"[NPC]","color":"yellow"},{"text":" <Zabat>","color":"light_purple"},{"text":" You should really join our "},{"text":"Discord Server","color":"blue","clickEvent":{"action":"open_url","value":"https://discord.gg/B7bYYsmvcw"}},{"text":"!"}]