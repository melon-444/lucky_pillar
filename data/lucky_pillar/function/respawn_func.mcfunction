#lucky_pillar:respawn_func
# 复活动作
title @s times 0t 2s 10t
title @s title {"text":"你已被淘汰",color:"red"}
gamemode spectator @s
tag @s add spec
tp @p[tag=!spec]