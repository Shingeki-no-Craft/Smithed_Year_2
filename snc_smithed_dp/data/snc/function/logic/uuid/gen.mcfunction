data merge storage snc:hx_chrs_tmp {0:0,1:0,2:0,3:0,4:0,5:0,6:0,7:0,8:0,9:0,a:0,b:0,c:0,d:0,e:0,f:0}
data modify storage snc:hx_chrs in set from entity @s UUID

execute store result score 0= snc.hex_chars store result score 1= snc.hex_chars run data get storage snc:hx_chrs in[0]
execute store result storage snc:hx_chrs_tmp 0 int 1 run scoreboard players operation 0= snc.hex_chars %= #256 snc.constant
execute store result score 2= snc.hex_chars run scoreboard players operation 1= snc.hex_chars /= #256 snc.constant
execute store result storage snc:hx_chrs_tmp 1 int 1 run scoreboard players operation 1= snc.hex_chars %= #256 snc.constant
execute store result score 3= snc.hex_chars run scoreboard players operation 2= snc.hex_chars /= #256 snc.constant
execute store result storage snc:hx_chrs_tmp 2 int 1 run scoreboard players operation 2= snc.hex_chars %= #256 snc.constant
execute store result storage snc:hx_chrs_tmp 3 int 1 run scoreboard players operation 3= snc.hex_chars /= #256 snc.constant

execute store result score 0= snc.hex_chars store result score 1= snc.hex_chars run data get storage snc:hx_chrs in[1]
execute store result storage snc:hx_chrs_tmp 4 int 1 run scoreboard players operation 0= snc.hex_chars %= #256 snc.constant
execute store result score 2= snc.hex_chars run scoreboard players operation 1= snc.hex_chars /= #256 snc.constant
execute store result storage snc:hx_chrs_tmp 5 int 1 run scoreboard players operation 1= snc.hex_chars %= #256 snc.constant
execute store result score 3= snc.hex_chars run scoreboard players operation 2= snc.hex_chars /= #256 snc.constant
execute store result storage snc:hx_chrs_tmp 6 int 1 run scoreboard players operation 2= snc.hex_chars %= #256 snc.constant
execute store result storage snc:hx_chrs_tmp 7 int 1 run scoreboard players operation 3= snc.hex_chars /= #256 snc.constant

execute store result score 0= snc.hex_chars store result score 1= snc.hex_chars run data get storage snc:hx_chrs in[2]
execute store result storage snc:hx_chrs_tmp 8 int 1 run scoreboard players operation 0= snc.hex_chars %= #256 snc.constant
execute store result score 2= snc.hex_chars run scoreboard players operation 1= snc.hex_chars /= #256 snc.constant
execute store result storage snc:hx_chrs_tmp 9 int 1 run scoreboard players operation 1= snc.hex_chars %= #256 snc.constant
execute store result score 3= snc.hex_chars run scoreboard players operation 2= snc.hex_chars /= #256 snc.constant
execute store result storage snc:hx_chrs_tmp a int 1 run scoreboard players operation 2= snc.hex_chars %= #256 snc.constant
execute store result storage snc:hx_chrs_tmp b int 1 run scoreboard players operation 3= snc.hex_chars /= #256 snc.constant

execute store result score 0= snc.hex_chars store result score 1= snc.hex_chars run data get storage snc:hx_chrs in[3]
execute store result storage snc:hx_chrs_tmp c int 1 run scoreboard players operation 0= snc.hex_chars %= #256 snc.constant
execute store result score 2= snc.hex_chars run scoreboard players operation 1= snc.hex_chars /= #256 snc.constant
execute store result storage snc:hx_chrs_tmp d int 1 run scoreboard players operation 1= snc.hex_chars %= #256 snc.constant
execute store result score 3= snc.hex_chars run scoreboard players operation 2= snc.hex_chars /= #256 snc.constant
execute store result storage snc:hx_chrs_tmp e int 1 run scoreboard players operation 2= snc.hex_chars %= #256 snc.constant
execute store result storage snc:hx_chrs_tmp f int 1 run scoreboard players operation 3= snc.hex_chars /= #256 snc.constant

function snc:logic/uuid/get with storage snc:hx_chrs_tmp
$function snc:logic/uuid/concat/$(storage) with storage snc:hx_chrs_tmp