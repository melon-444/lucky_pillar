title @a title {"text":"即将开始游戏",color:"red"}
title @a subtitle {"text":"4",color:"green"}
execute as @a at @s run playsound entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1.2
schedule function lucky_pillar:services/r3 1s