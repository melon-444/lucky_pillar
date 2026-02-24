execute if data storage lucky_pillar:io {game_state:"waiting"} run function lucky_pillar:lobby_func

#所有后续进来的玩家全部变成旁观
execute if data storage lucky_pillar:io {game_state:"running"} run gamemode spectator @a[team=]
execute if data storage lucky_pillar:io {game_state:"running"} run tag @a[team=] add spec

#设置边界
execute if data storage lucky_pillar:io {game_state:"running"} if score $time lp_cnt matches ..0 run function lucky_pillar:services/set_border

#死斗开启后死亡自动掉落物品
execute if data storage lucky_pillar:io {game_state:"running"} if score $death_match lp_cnt matches 1 as @a[team=!] if score @s death_cnt matches 1.. run function lucky_pillar:death_func

#死斗阶段淘汰广播（包含赢家判断）
execute if data storage lucky_pillar:io {game_state:"running"} if score $death_match lp_cnt matches 1 run function lucky_pillar:services/out_boardcast