tellraw @a {"text":"地图清理开始..."}
forceload add 100 100 159 159
scoreboard players set $i_chunkx area_cleaner 0
scoreboard players set $j_chunkz area_cleaner 0

execute as @r[team=admin] run tag @s add cleaner
tellraw @p[tag=cleaner] {"text":"你作为管理，被选中清理地图"}


schedule function lucky_pillar:services/clean_func 1t
