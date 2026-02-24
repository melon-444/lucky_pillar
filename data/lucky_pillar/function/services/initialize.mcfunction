worldborder center 2000 2000
worldborder damage amount 5
worldborder damage buffer 5
worldborder warning time 10
worldborder set 448

scoreboard players set $time lp_cnt 3600
scoreboard players operation $min lp_cnt = $time lp_cnt
scoreboard players operation $min lp_cnt /= $const_60 lp_cnt
scoreboard players operation $sec lp_cnt = $time lp_cnt
scoreboard players operation $sec lp_cnt %= $const_60 lp_cnt

#bossbar可见
bossbar set border_shrink visible true

tp @a[team=!] 2000 0 2000
execute as @a[tag=spec] run tp @r[team=!]
execute as @a[gamemode=spectator] run tp @r[team=!]

effect give @a[team=!] slow_falling infinite 0 true

#决定底部方块
function lucky_pillar:services/decide_under_material

forceload add 100 100 159 159

#分配玩家位置和柱子的任务
summon marker 2000 0 2000 {Tags:["rot_pillar"]}

#清理生物
execute as @e[tag=rot_pillar,type=marker,limit=1] at @s run kill @e[type=!marker,type=!player,distance=..1000,tag=]
execute as @e[tag=rot_pillar,type=marker,limit=1] at @s run kill @e[type=!marker,type=!player,distance=..1000,tag=]

scoreboard players set $degrees lp_cnt 45
scoreboard players set $team_cnt lp_cnt 0
schedule function lucky_pillar:services/rot_pillar 0.5s