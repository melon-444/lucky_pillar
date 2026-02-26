scoreboard objectives remove lp_cnt
scoreboard objectives remove area_cleaner
scoreboard objectives remove death_cnt
scoreboard objectives remove out_broadcast

bossbar remove border_shrink

data remove storage lucky_pillar:io game_state

schedule clear lucky_pillar:timer/sec_tick
schedule clear lucky_pillar:services/firework_rocket

clear @a

effect clear @a

kill @e[type=marker,tag=rot_pillar]

setblock 0 -64 0 air

team leave @a[team=!admin]

team remove lp_red
team remove lp_yellow
team remove lp_green
team remove lp_blue
team remove lp_pink
team remove lp_cyan
team remove lp_white
team remove lp_gray

tag @a remove spec
tag @a remove current_team
tag @a remove winner

worldborder center 0 0
worldborder damage amount 0.2
worldborder damage buffer 5
worldborder warning time 15
worldborder set 59999968
