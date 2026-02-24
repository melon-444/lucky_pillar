#lucky_pillar:_init
# 初始化lucky_pillar模块
function lucky_pillar:services/uninstall

data modify storage lucky_pillar:io game_state set value "waiting"
#todo 修改缩圈表
data modify storage lucky_pillar:io shirnk_time set value [180,180,180,180,180,180,180,180,180,180,180,180,180,180,180,180,180,180,180,180]
data modify storage lucky_pillar:io under_material set value ["cobweb","lava","water","iron_chain","waxed_copper_chain","slime_block"]

gamerule keep_inventory true

#重写 team
team add lp_red {"text":"红队",color:"red"}
team add lp_yellow {"text":"黄队",color:"yellow"}
team add lp_green {"text":"绿队",color:"green"}
team add lp_blue {"text":"蓝队",color:"blue"}
team add lp_pink {"text":"粉队",color:"light_purple"}
team add lp_cyan {"text":"青队",color:"aqua"}
team add lp_white {"text":"白队",color:"white"}
team add lp_gray {"text":"灰队",color:"gray"}

team modify lp_red prefix {"text":"[红队]",color:"red"}
team modify lp_yellow prefix {"text":"[黄队]",color:"yellow"}
team modify lp_green prefix {"text":"[绿队]",color:"green"}
team modify lp_blue prefix {"text":"[蓝队]",color:"blue"}
team modify lp_pink prefix {"text":"[粉队]",color:"light_purple"}
team modify lp_cyan prefix {"text":"[青队]",color:"aqua"}
team modify lp_white prefix {"text":"[白队]",color:"white"}
team modify lp_gray prefix {"text":"[灰队]",color:"gray"}

team modify lp_red color red
team modify lp_yellow color yellow
team modify lp_green color green
team modify lp_blue color blue
team modify lp_pink color light_purple
team modify lp_cyan color aqua
team modify lp_white color white
team modify lp_gray color gray

team add admin {text:"管理员",color:"#f0ff6d"}
team modify admin prefix {"text":"[管理员]",color:"#f0ff6d"}

title @a reset

forceload add 0 0 0 0
setblock 0 -64 0 acacia_sign

scoreboard objectives add death_cnt deathCount

scoreboard objectives add out_boardcast dummy
scoreboard players set $red out_boardcast 0
scoreboard players set $yellow out_boardcast 0
scoreboard players set $green out_boardcast 0
scoreboard players set $blue out_boardcast 0
scoreboard players set $pink out_boardcast 0
scoreboard players set $cyan out_boardcast 0
scoreboard players set $white out_boardcast 0
scoreboard players set $gray out_boardcast 0

scoreboard objectives add area_cleaner dummy
scoreboard players set $start_x_chunk area_cleaner 111
scoreboard players set $start_z_chunk area_cleaner 111
scoreboard players set $len_x_chunk area_cleaner 28
scoreboard players set $len_z_chunk area_cleaner 28
scoreboard players set $16 area_cleaner 16

scoreboard objectives add lp_cnt dummy
scoreboard players set $time lp_cnt 0
scoreboard players set $min lp_cnt 0
scoreboard players set $sec lp_cnt 0
scoreboard players set $const_60 lp_cnt 60
scoreboard players set $death_match lp_cnt 0
scoreboard players set $loot_timer lp_cnt 5
scoreboard players set $event_timer lp_cnt 600

bossbar add border_shrink ["",{text:"距离决赛阶段开始还有："},{score:{name:"$min",objective:lp_cnt},color:"dark_green"},{text:"分"},{score:{name:"$sec",objective:lp_cnt},color:"dark_green"},{text:"秒"}]

bossbar set border_shrink color green
bossbar set border_shrink max 3600
bossbar set border_shrink value 3600
bossbar set border_shrink players @a
bossbar set border_shrink visible false

tp @a 0 -60 0

#清理地图
function lucky_pillar:_clean



