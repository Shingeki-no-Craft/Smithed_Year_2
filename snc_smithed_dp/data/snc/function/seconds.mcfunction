scoreboard players set ticks clock 0

## 5s : Check shifters each 5 seconds
scoreboard players add 5s clock 1
execute if score 5s clock matches 5.. run function snc:logic/schedule/5s

## 1m : test
scoreboard players add 1m clock 1
execute if score 1m clock matches 60.. run scoreboard players set 1m clock 0