
function lucky_pillar:services/pillar_position_macro

execute as @n[tag=pillar_marker,type=marker] at @s align xyz run tp @s ~.5 ~ ~.5
execute as @n[tag=pillar_marker,type=marker] at @s positioned ~5 ~ ~5 run fill ~ ~-1 ~ ~ -60 ~ bedrock
execute as @n[tag=pillar_marker,type=marker] at @s positioned ~-5 ~ ~-5 run fill ~ ~-1 ~ ~ -60 ~ bedrock
execute as @n[tag=pillar_marker,type=marker] at @s positioned ~5 ~ ~-5 run fill ~ ~-1 ~ ~ -60 ~ bedrock
execute as @n[tag=pillar_marker,type=marker] at @s positioned ~-5 ~ ~5 run fill ~ ~-1 ~ ~ -60 ~ bedrock

data remove storage lucky_pillar:io macro_args
data modify storage lucky_pillar:io macro_args.material set from storage lucky_pillar:io under_material[0]
execute as @n[tag=pillar_marker,type=marker] at @s positioned ~5 ~ ~5 run function lucky_pillar:services/summon_material_macro with storage lucky_pillar:io macro_args
execute as @n[tag=pillar_marker,type=marker] at @s positioned ~-5 ~ ~-5 run function lucky_pillar:services/summon_material_macro with storage lucky_pillar:io macro_args
execute as @n[tag=pillar_marker,type=marker] at @s positioned ~5 ~ ~-5 run function lucky_pillar:services/summon_material_macro with storage lucky_pillar:io macro_args
execute as @n[tag=pillar_marker,type=marker] at @s positioned ~-5 ~ ~5 run function lucky_pillar:services/summon_material_macro with storage lucky_pillar:io macro_args

tag @r[tag=current_team,tag=!roted] add rotating
execute as @p[tag=rotating] at @n[tag=pillar_marker,type=marker] positioned ~5 ~ ~5 align xyz run tp ~.5 ~ ~.5
tag @a[tag=current_team,tag=rotating] add roted
tag @a[tag=current_team,tag=roted] remove rotating

tag @r[tag=current_team,tag=!roted] add rotating
execute as @p[tag=rotating] at @n[tag=pillar_marker,type=marker] positioned ~-5 ~ ~-5 align xyz run tp ~.5 ~ ~.5
tag @a[tag=current_team,tag=rotating] add roted
tag @a[tag=current_team,tag=roted] remove rotating

tag @r[tag=current_team,tag=!roted] add rotating
execute as @p[tag=rotating] at @n[tag=pillar_marker,type=marker] positioned ~5 ~ ~-5 align xyz run tp ~.5 ~ ~.5
tag @a[tag=current_team,tag=rotating] add roted
tag @a[tag=current_team,tag=roted] remove rotating

tag @r[tag=current_team,tag=!roted] add rotating
execute as @p[tag=rotating] at @n[tag=pillar_marker,type=marker] positioned ~-5 ~ ~5 align xyz run tp ~.5 ~ ~.5
tag @a[tag=current_team,tag=rotating] add roted
tag @a[tag=current_team,tag=roted] remove rotating

kill @e[tag=pillar_marker,type=marker]
