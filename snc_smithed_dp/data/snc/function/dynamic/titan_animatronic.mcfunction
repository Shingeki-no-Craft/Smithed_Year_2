scoreboard players add @s snc.titan.animatronic 1

#execute if score @s snc.titan.animatronic matches 8 run tp @s ^ ^ ^.15 ~ ~
execute if score @s snc.titan.animatronic matches 25 rotated ~ 0 run tp @s ^ ^.25 ^.10
execute if score @s snc.titan.animatronic matches 25 run rotate @s ~ 11.25
execute if score @s snc.titan.animatronic matches 50 rotated ~ 0 run tp @s ^ ^ ^-.50
execute if score @s snc.titan.animatronic matches 50 run rotate @s ~ 0
execute if score @s snc.titan.animatronic matches 75 rotated ~ 0 run tp @s ^ ^-.25 ^.10
execute if score @s snc.titan.animatronic matches 75 run rotate @s ~ -11.25
execute if score @s snc.titan.animatronic matches 100 rotated ~ 0 run tp @s ^ ^ ^.30
execute if score @s snc.titan.animatronic matches 100 run rotate @s ~ 0

execute if score @s snc.titan.animatronic matches 100.. run scoreboard players set @s snc.titan.animatronic 0

