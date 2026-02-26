execute as @a at @s run playsound entity.ender_dragon.ambient ambient @s ~ ~ ~
execute as @a[team=!] at @s run fill ~-1 ~ ~1 ~1 ~2 ~-1 air
title @a clear
title @a times 0t 1s 5t
title @a title {"text":"游戏开始",color:"red"}

gamemode survival @a[team=!admin,tag=!spec]

data modify storage lucky_pillar:io game_state set value "running"

schedule function lucky_pillar:timer/sec_tick 1s