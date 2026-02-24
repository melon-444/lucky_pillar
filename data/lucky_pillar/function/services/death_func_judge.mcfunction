execute if score $death_match lp_cnt matches 0 run function lucky_pillar:death_func
execute if score $death_match lp_cnt matches 0 run tellraw @s {"text":"你在决赛阶段前被玩家击杀，失去了所有装备！"}