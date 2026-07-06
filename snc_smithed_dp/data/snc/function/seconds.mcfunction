scoreboard players set snc.ticks snc.clock 0

## 5s : Check shifters each 5 seconds
scoreboard players add 5s snc.clock 1
execute if score 5s snc.clock matches 5.. run function snc:logic/schedule/5s