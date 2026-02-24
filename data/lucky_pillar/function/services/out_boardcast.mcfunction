execute store result score $red_cnt lp_cnt if entity @a[team=lp_red,tag=!spec]
execute store result score $yellow_cnt lp_cnt if entity @a[team=lp_yellow,tag=!spec]
execute store result score $green_cnt lp_cnt if entity @a[team=lp_green,tag=!spec]
execute store result score $blue_cnt lp_cnt if entity @a[team=lp_blue,tag=!spec]
execute store result score $pink_cnt lp_cnt if entity @a[team=lp_pink,tag=!spec]
execute store result score $cyan_cnt lp_cnt if entity @a[team=lp_cyan,tag=!spec]
execute store result score $white_cnt lp_cnt if entity @a[team=lp_white,tag=!spec]
execute store result score $gray_cnt lp_cnt if entity @a[team=lp_gray,tag=!spec]

execute if score $red_cnt lp_cnt matches ..0 if score $red out_boardcast matches 0 run tellraw @a ["",{"text":"[红队]",color:"red"},{"text":"已被淘汰！","color":"gold"}]
execute if score $red_cnt lp_cnt matches ..0 if score $red out_boardcast matches 0 run scoreboard players set $red out_boardcast 1

execute if score $yellow_cnt lp_cnt matches ..0 if score $yellow out_boardcast matches 0 run tellraw @a ["",{"text":"[黄队]",color:"yellow"},{"text":"已被淘汰！","color":"gold"}]
execute if score $yellow_cnt lp_cnt matches ..0 if score $yellow out_boardcast matches 0 run scoreboard players set $yellow out_boardcast 1

execute if score $green_cnt lp_cnt matches ..0 if score $green out_boardcast matches 0 run tellraw @a ["",{"text":"[绿队]",color:"green"},{"text":"已被淘汰！","color":"gold"}]
execute if score $green_cnt lp_cnt matches ..0 if score $green out_boardcast matches 0 run scoreboard players set $green out_boardcast 1

execute if score $blue_cnt lp_cnt matches ..0 if score $blue out_boardcast matches 0 run tellraw @a ["",{"text":"[蓝队]",color:"blue"},{"text":"已被淘汰！","color":"gold"}]
execute if score $blue_cnt lp_cnt matches ..0 if score $blue out_boardcast matches 0 run scoreboard players set $blue out_boardcast 1

execute if score $pink_cnt lp_cnt matches ..0 if score $pink out_boardcast matches 0 run tellraw @a ["",{"text":"[粉队]",color:"light_purple"},{"text":"已被淘汰！","color":"gold"}]
execute if score $pink_cnt lp_cnt matches ..0 if score $pink out_boardcast matches 0 run scoreboard players set $pink out_boardcast 1

execute if score $cyan_cnt lp_cnt matches ..0 if score $cyan out_boardcast matches 0 run tellraw @a ["",{"text":"[青队]",color:"aqua"},{"text":"已被淘汰！","color":"gold"}]
execute if score $cyan_cnt lp_cnt matches ..0 if score $cyan out_boardcast matches 0 run scoreboard players set $cyan out_boardcast 1

execute if score $white_cnt lp_cnt matches ..0 if score $white out_boardcast matches 0 run tellraw @a ["",{"text":"[白队]",color:"white"},{"text":"已被淘汰！","color":"gold"}]
execute if score $white_cnt lp_cnt matches ..0 if score $white out_boardcast matches 0 run scoreboard players set $white out_boardcast 1

execute if score $gray_cnt lp_cnt matches ..0 if score $gray out_boardcast matches 0 run tellraw @a ["",{"text":"[灰队]",color:"gray"},{"text":"已被淘汰！","color":"gold"}]
execute if score $gray_cnt lp_cnt matches ..0 if score $gray out_boardcast matches 0 run scoreboard players set $gray out_boardcast 1

scoreboard players set $out_sum lp_cnt 0
scoreboard players operation $out_sum lp_cnt += $red out_boardcast
scoreboard players operation $out_sum lp_cnt += $yellow out_boardcast
scoreboard players operation $out_sum lp_cnt += $green out_boardcast
scoreboard players operation $out_sum lp_cnt += $blue out_boardcast
scoreboard players operation $out_sum lp_cnt += $pink out_boardcast
scoreboard players operation $out_sum lp_cnt += $cyan out_boardcast
scoreboard players operation $out_sum lp_cnt += $white out_boardcast
scoreboard players operation $out_sum lp_cnt += $gray out_boardcast

execute if score $out_sum lp_cnt matches 7.. run function lucky_pillar:services/game_over
