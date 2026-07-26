title @s times 0 100t 0
$title @s actionbar [{"text":"", "shadow_color":16777215, "color": "black"},{"text":"2","font":"snc:dialog/space"},{"text":"","font":"snc:gui","color":"white"},{"text":"1","font":"snc:dialog/space"},{"text":"","extra":[$(name)],"font":"minecraft:default"},{"text":"2","font":"snc:dialog/space"},{"text":"","extra":[$(line_1)],"font":"snc:dialog/line1"},{"text":"3","font":"snc:dialog/space"},{"text":"","extra":[$(line_2)],"font":"snc:dialog/line2"},{"text":"4","font":"snc:dialog/space"},{"text":"","extra":[$(line_3)],"font":"snc:dialog/line3"}]
$playsound $(sound)

#$tellraw @s [{"text": "\n\n\n\n\n\n\n\n\n\n\n\n\n", "shadow_color":16777215, "color": "black"},{"text":"\uE102","font":"snc:gui","color": "white"},"\n   ", $(name),"\n\n   ", $(line_1),"\n   ", $(line_2),"\n   ",$(line_3),"\n"]
#$playsound $(sound)