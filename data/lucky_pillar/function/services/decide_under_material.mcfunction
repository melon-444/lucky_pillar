execute store result score $material_cnt lp_cnt if data storage lucky_pillar:io under_material[]
execute if score $material_cnt lp_cnt matches ..1 run return 0

data remove storage lucky_pillar:io macro_args
scoreboard players remove $material_cnt lp_cnt 1
execute store result storage lucky_pillar:io macro_args.a int 1 run scoreboard players get $material_cnt lp_cnt
function lucky_pillar:services/decide_macro with storage lucky_pillar:io macro_args

function lucky_pillar:services/decide_under_material