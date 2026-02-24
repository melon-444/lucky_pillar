title @a title {"text":"即将开始游戏",color:"red"}
title @a subtitle {"text":"3",color:"yellow"}
execute as @a at @s run playsound entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1.4
schedule function lucky_pillar:services/r2 1s
