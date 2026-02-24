execute unless data storage lucky_pillar:io shirnk_time[0] run return run function lucky_pillar:services/duel
execute if data storage lucky_pillar:io shirnk_time[0] store result bossbar border_shrink max store result bossbar border_shrink value store result score $time lp_cnt run data get storage lucky_pillar:io shirnk_time[0] 1
execute if data storage lucky_pillar:io shirnk_time[0] run data remove storage lucky_pillar:io shirnk_time[0]
worldborder add -10 2
#
execute if score $death_match lp_cnt matches 0 run function lucky_pillar:services/start_death_match