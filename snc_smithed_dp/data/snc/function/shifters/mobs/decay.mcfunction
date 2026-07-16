execute store result score @s snc.random run random value 1..4
execute if score @s snc.random matches 1 run tp ^ ^ ^.1
execute if score @s snc.random matches 2 run tp ^ ^ ^-.1
execute if score @s snc.random matches 3 run tp ^.1 ^ ^
execute if score @s snc.random matches 4 run tp ^-.1 ^ ^