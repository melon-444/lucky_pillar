execute store result score $lobby_population lp_cnt if entity @a[team=]

title @a actionbar [{"text":"等待玩家进入中("},{score:{"name":"$lobby_population","objective":"lp_cnt"}},{text:"/32)"}]

execute if score $lobby_population lp_cnt matches 32.. run function lucky_pillar:start_game

tag @a remove spec
tag @a remove current_team
tag @a remove winner