execute store result score $rotating_cnt lp_cnt if entity @a[team=!admin,tag=!spec,tag=!roted]
execute if score $rotating_cnt lp_cnt matches ..0 run return run schedule function lucky_pillar:services/ready 1t

execute as @n[tag=rot_pillar,type=marker] at @s run rotate @s ~45 ~

tag @a remove current_team

execute if score $team_cnt lp_cnt matches 0 run tag @a[team=lp_red] add current_team
execute if score $team_cnt lp_cnt matches 1 run tag @a[team=lp_yellow] add current_team
execute if score $team_cnt lp_cnt matches 2 run tag @a[team=lp_green] add current_team
execute if score $team_cnt lp_cnt matches 3 run tag @a[team=lp_blue] add current_team
execute if score $team_cnt lp_cnt matches 4 run tag @a[team=lp_pink] add current_team
execute if score $team_cnt lp_cnt matches 5 run tag @a[team=lp_cyan] add current_team
execute if score $team_cnt lp_cnt matches 6 run tag @a[team=lp_white] add current_team
execute if score $team_cnt lp_cnt matches 7 run tag @a[team=lp_gray] add current_team

execute as @n[tag=rot_pillar,type=marker] at @s run function lucky_pillar:services/summon_pillar
scoreboard players add $team_cnt lp_cnt 1

function lucky_pillar:services/rot_pillar