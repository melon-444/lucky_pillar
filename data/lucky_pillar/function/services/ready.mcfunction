kill @e[type=marker,tag=rot_pillar]

gamemode survival @a[team=!,team=!admin]
effect clear @a slow_falling
clear @a

tag @a remove roted
tag @a remove current_team
execute as @a[team=!admin,tag=!spec] at @s run fill ~-1 ~ ~1 ~1 ~2 ~-1 minecraft:barrier hollow
execute as @a[team=!admin,tag=!spec] at @s run setblock ~ ~ ~ air replace
execute as @a[team=!admin,tag=!spec] at @s align xyz run spawnpoint @s ~.5 ~.5 ~.5

execute as @a[team=!admin,tag=!spec] at @s run setblock ~ ~-3 ~ sea_lantern

execute as @a[team=lp_red] at @s run setblock ~ ~-2 ~ red_concrete
execute as @a[team=lp_yellow] at @s run setblock ~ ~-2 ~ yellow_concrete
execute as @a[team=lp_green] at @s run setblock ~ ~-2 ~ green_concrete
execute as @a[team=lp_blue] at @s run setblock ~ ~-2 ~ blue_concrete
execute as @a[team=lp_pink] at @s run setblock ~ ~-2 ~ pink_concrete
execute as @a[team=lp_cyan] at @s run setblock ~ ~-2 ~ cyan_concrete
execute as @a[team=lp_white] at @s run setblock ~ ~-2 ~ white_concrete
execute as @a[team=lp_gray] at @s run setblock ~ ~-2 ~ gray_concrete

forceload remove 100 100 159 159

effect give @a saturation 20 4 true
effect give @a instant_health 20 4 true

title @a reset
title @a title {"text":"即将开始游戏",color:"red"}
title @a subtitle {"text":"5",color:"dark_green"}
execute as @a at @s run playsound entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1
schedule function lucky_pillar:services/r4 1s