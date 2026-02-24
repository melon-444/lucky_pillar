title @a title {"text":"游戏结束",color:"red"}
execute as @a[tag=spec,tag=winner] run tp @p[tag=winner,tag=!spec]
execute as @a[tag=spec,tag=winner] run gamemode survival @s
tellraw @a [{"text":"胜者："},{selector:"@a[tag=winner]",separator:"、"}]
tellraw @a [{"text":"十秒后重置地图",color:"gray",italic:true}]
schedule function lucky_pillar:services/firework_rocket 1t

schedule function lucky_pillar:services/game_stop 10s