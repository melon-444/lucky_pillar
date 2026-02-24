title @a title {"text":"即将开始游戏",color:"red"}
title @a subtitle {"text":"2",color:"red"}
execute as @a at @s run playsound entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1.8
schedule function lucky_pillar:services/r1 1s