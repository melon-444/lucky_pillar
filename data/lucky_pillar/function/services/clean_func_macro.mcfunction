$place template lucky_pillar:chunk_void $(x) -64 $(z)
$tp @p[tag=cleaner] $(x) -60 $(z)

scoreboard players set $total_chunks area_cleaner 1
scoreboard players operation $total_chunks area_cleaner *= $len_x_chunk area_cleaner
scoreboard players operation $total_chunks area_cleaner *= $len_z_chunk area_cleaner

scoreboard players set $curr_chunks area_cleaner 1
scoreboard players operation $curr_chunks area_cleaner *= $len_x_chunk area_cleaner
scoreboard players operation $curr_chunks area_cleaner *= $j_chunkz area_cleaner
scoreboard players operation $curr_chunks area_cleaner += $i_chunkx area_cleaner

#$tellraw @a [{"text":"[debug] 已放置 $(x) -64 $(z)"}]
title @a actionbar [{"text":"清理进度：("},{score:{name:"$curr_chunks",objective:"area_cleaner"}},"/",{score:{name:"$total_chunks",objective:"area_cleaner"}},")"]