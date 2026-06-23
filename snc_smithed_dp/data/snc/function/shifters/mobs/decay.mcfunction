execute store result score @s random run random value 1..4
execute if score @s random matches 1 run tp ^ ^ ^.1
execute if score @s random matches 2 run tp ^ ^ ^-.1
execute if score @s random matches 3 run tp ^.1 ^ ^
execute if score @s random matches 4 run tp ^-.1 ^ ^