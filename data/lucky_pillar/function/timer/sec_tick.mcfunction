
scoreboard players remove $time lp_cnt 1
scoreboard players operation $min lp_cnt = $time lp_cnt
scoreboard players operation $min lp_cnt /= $const_60 lp_cnt
scoreboard players operation $sec lp_cnt = $time lp_cnt
scoreboard players operation $sec lp_cnt %= $const_60 lp_cnt
execute store result bossbar border_shrink value run scoreboard players get $time lp_cnt

execute if score $death_match lp_cnt matches 0 run bossbar set minecraft:border_shrink name ["",{text:"距离决赛阶段开始还有："},{score:{name:"$min",objective:lp_cnt},color:"dark_green"},{text:"分"},{score:{name:"$sec",objective:lp_cnt},color:"dark_green"},{text:"秒"}] 
execute if score $death_match lp_cnt matches 1 run bossbar set minecraft:border_shrink name ["",{text:"距离边界收缩还有："},{score:{name:"$min",objective:lp_cnt},color:"dark_green"},{text:"分"},{score:{name:"$sec",objective:lp_cnt},color:"dark_green"},{text:"秒"}] 

execute as @a[team=!admin,tag=!spec] if score $loot_current lp_cnt >= $loot_timer lp_cnt run loot give @s loot lucky_pillar:full_loot_table_1_21_11
execute if score $loot_current lp_cnt >= $loot_timer lp_cnt run scoreboard players set $loot_current lp_cnt 0
scoreboard players add $loot_current lp_cnt 1

schedule function lucky_pillar:timer/sec_tick 1s