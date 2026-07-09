execute unless score @s snc.elevator matches 0.. if function snc:dynamic/elevator/trigger run return -1

# Effect
# Going down
execute if score @s snc.elevator matches 160 if entity @s[tag=snc.elevator.1] at @s run tp ~ ~-.01 ~
execute if score @s snc.elevator matches 160 if entity @s[tag=snc.elevator.2] at @s run tp ~ ~-.01 ~
execute if score @s snc.elevator matches 160 run effect give @s slow_falling 4 5 true
execute if score @s snc.elevator matches 160 run effect give @s slow_falling 4 5 true
# Going up
execute if score @s snc.elevator matches 160 if entity @s[tag=snc.elevator.3] run effect give @s levitation 3 0 true
execute if score @s snc.elevator matches 160 if entity @s[tag=snc.elevator.4] run effect give @s levitation 3 0 true

execute if score @s snc.elevator matches 160 run title @s times 20 20 20
execute if score @s snc.elevator matches 160 run title @s title {text:"\uE100", font:"snc:gui"}

execute if score @s snc.elevator matches 160 run playsound entity.minecart.riding master @a
execute if score @s snc.elevator matches 140 run playsound entity.minecart.riding master @a

## Teleport
# down
execute if score @s snc.elevator matches 120 if entity @s[tag=snc.elevator.1] run tp @s -5.5 65.5 116.5 180 0
execute if score @s snc.elevator matches 120 if entity @s[tag=snc.elevator.2] run tp @s -11.5 65.5 116.5 180 0
# up
execute if score @s snc.elevator matches 120 if entity @s[tag=snc.elevator.3] run tp @s -13.5 86.5 106.5 90 0
execute if score @s snc.elevator matches 120 if entity @s[tag=snc.elevator.4] run tp @s -13.5 86.5 112.5 90 0

## Arrival
execute if score @s snc.elevator matches 90 if entity @s[tag=snc.elevator.1] run function snc:dynamic/elevator/title {"title": [{"color":"#55FFFF","text":"C", bold:true},{"color":"#74FFFF","text":"r"},{"color":"#93FFFF","text":"y"},{"color":"#B2FFFF","text":"s"},{"color":"#D1FFFF","text":"t"},{"color":"#F0FFFF","text":"a"},{"color":"#F0FFFF","text":"l "},{"color":"#D1FFFF","text":"C"},{"color":"#B2FFFF","text":"a"},{"color":"#93FFFF","text":"v"},{"color":"#55FFFF","text":"e"}], id: "1"}
execute if score @s snc.elevator matches 90 if entity @s[tag=snc.elevator.2] run function snc:dynamic/elevator/title {"title": [{"color":"#55FFFF","text":"C", bold:true},{"color":"#74FFFF","text":"r"},{"color":"#93FFFF","text":"y"},{"color":"#B2FFFF","text":"s"},{"color":"#D1FFFF","text":"t"},{"color":"#F0FFFF","text":"a"},{"color":"#F0FFFF","text":"l "},{"color":"#D1FFFF","text":"C"},{"color":"#B2FFFF","text":"a"},{"color":"#93FFFF","text":"v"},{"color":"#55FFFF","text":"e"}], id: "2"}
execute if score @s snc.elevator matches 90 if entity @s[tag=snc.elevator.3] run function snc:dynamic/elevator/title {"title": [{"color":"#FFAA00","text":"E", bold:true},{"color":"#FFBF15","text":"x"},{"color":"#FFD52B","text":"t"},{"color":"#FFEA40","text":"e"},{"color":"#FFFF55","text":"r"},{"color":"#FFEA40","text":"i"},{"color":"#FFD52B","text":"o"},{"color":"#FFAA00","text":"r"}], id: "3"}
execute if score @s snc.elevator matches 90 if entity @s[tag=snc.elevator.4] run function snc:dynamic/elevator/title {"title": [{"color":"#FFAA00","text":"E", bold:true},{"color":"#FFBF15","text":"x"},{"color":"#FFD52B","text":"t"},{"color":"#FFEA40","text":"e"},{"color":"#FFFF55","text":"r"},{"color":"#FFEA40","text":"i"},{"color":"#FFD52B","text":"o"},{"color":"#FFAA00","text":"r"}], id: "4"}

execute if score @s snc.elevator matches 0 run scoreboard players reset @s snc.elevator
scoreboard players remove @s snc.elevator 1