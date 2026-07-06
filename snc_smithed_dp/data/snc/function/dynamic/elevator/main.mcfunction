execute unless score @s snc.elevator matches 0.. if function snc:dynamic/elevator/trigger run return -1

# Effect
# Going down
execute if score @s snc.elevator matches 160 if entity @s[tag=snc.elevator.1] at @s run tp ~ ~-.01 ~
execute if score @s snc.elevator matches 160 if entity @s[tag=snc.elevator.2] at @s run tp ~ ~-.01 ~
execute if score @s snc.elevator matches 160 if entity @s[tag=snc.elevator.1] run effect give @s slow_falling 3 5 true
execute if score @s snc.elevator matches 160 if entity @s[tag=snc.elevator.2] run effect give @s slow_falling 3 5 true
# Going up
execute if score @s snc.elevator matches 160 if entity @s[tag=snc.elevator.3] run effect give @s levitation 3 0 true
execute if score @s snc.elevator matches 160 if entity @s[tag=snc.elevator.4] run effect give @s levitation 3 0 true

execute if score @s snc.elevator matches 160 run title @s times 20 20 20
execute if score @s snc.elevator matches 160 run title @s title {text:"\uE100", font:"snc:gui"}

execute if score @s snc.elevator matches 160 run playsound entity.minecart.riding master @a
execute if score @s snc.elevator matches 140 run playsound entity.minecart.riding master @a

#down
execute if score @s snc.elevator matches 120 if entity @s[tag=snc.elevator.1] run function snc:api/elevator {"coordinates":"-5.5 65.5 115.5 180 0", "text": "Crystal Cave", "color": "#0ED7E2", id: "1"}
execute if score @s snc.elevator matches 120 if entity @s[tag=snc.elevator.2] run function snc:api/elevator {"coordinates":"-11.5 65.5 115.5 180 0", "text": "Crystal Cave", "color": "#0ED7E2", id: "2"}
#up
execute if score @s snc.elevator matches 120 if entity @s[tag=snc.elevator.3] run function snc:api/elevator {"coordinates":"-13.5 86.5 105.5 90 0", "text": "The Mines", "color": "#A67610", id: "3"}
execute if score @s snc.elevator matches 120 if entity @s[tag=snc.elevator.4] run function snc:api/elevator {"coordinates":"-13.5 86.5 111.5 90 0", "text": "The Mines", "color": "#A67610", id: "4"}

execute if score @s snc.elevator matches 100 run playsound minecraft:block.bell.use master @a ~ ~ ~ 1 2

execute if score @s snc.elevator matches 0 run scoreboard players reset @s snc.elevator
scoreboard players remove @s snc.elevator 1