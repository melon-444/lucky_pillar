
title @a title {"text":"决赛开始",color:"red"}
execute as @a at @s run playsound entity.ender_dragon.ambient ambient @s ~ ~ ~
tellraw @a {"text":"决赛阶段开始，所有人无法再次重生，注意边界开始快速收缩！",color:"red"}
scoreboard players set $death_match lp_cnt 1