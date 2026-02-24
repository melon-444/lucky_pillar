#重置临时变量
scoreboard players set $i area_cleaner 0
scoreboard players set $j area_cleaner 0
#结束条件判断
execute if score $i_chunkx area_cleaner >= $len_x_chunk area_cleaner run scoreboard players add $j_chunkz area_cleaner 1
execute if score $i_chunkx area_cleaner >= $len_x_chunk area_cleaner run scoreboard players set $i_chunkx area_cleaner 0
scoreboard players add $i_chunkx area_cleaner 1
execute if score $j_chunkz area_cleaner >= $len_z_chunk area_cleaner run gamemode spectator @a[tag=cleaner]
execute if score $j_chunkz area_cleaner >= $len_z_chunk area_cleaner run tag @a remove cleaner
execute if score $j_chunkz area_cleaner >= $len_z_chunk area_cleaner run tellraw @a {"text":"清理完成"}
execute if score $j_chunkz area_cleaner >= $len_z_chunk area_cleaner run forceload remove 100 100 159 159
execute if score $j_chunkz area_cleaner >= $len_z_chunk area_cleaner run return 0

scoreboard players operation $i area_cleaner += $i_chunkx area_cleaner
scoreboard players operation $i area_cleaner += $start_x_chunk area_cleaner
scoreboard players operation $i area_cleaner *= $16 area_cleaner
scoreboard players operation $j area_cleaner += $j_chunkz area_cleaner
scoreboard players operation $j area_cleaner += $start_z_chunk area_cleaner
scoreboard players operation $j area_cleaner *= $16 area_cleaner

data remove storage lucky_pillar:io macro_args
execute store result storage lucky_pillar:io macro_args.x int 1 run scoreboard players get $i area_cleaner
execute store result storage lucky_pillar:io macro_args.z int 1 run scoreboard players get $j area_cleaner
function lucky_pillar:services/clean_func_macro with storage lucky_pillar:io macro_args

schedule function lucky_pillar:services/clean_func 1t