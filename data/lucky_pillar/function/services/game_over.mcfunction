
data modify storage lucky_pillar:io game_state set value "rewarding"

execute if score $red out_broadcast matches 0 as @a[team=lp_red] run function lucky_pillar:services/winner
execute if score $yellow out_broadcast matches 0 as @a[team=lp_yellow] run function lucky_pillar:services/winner
execute if score $green out_broadcast matches 0 as @a[team=lp_green] run function lucky_pillar:services/winner
execute if score $blue out_broadcast matches 0 as @a[team=lp_blue] run function lucky_pillar:services/winner
execute if score $pink out_broadcast matches 0 as @a[team=lp_pink] run function lucky_pillar:services/winner
execute if score $cyan out_broadcast matches 0 as @a[team=lp_cyan] run function lucky_pillar:services/winner
execute if score $white out_broadcast matches 0 as @a[team=lp_white] run function lucky_pillar:services/winner
execute if score $gray out_broadcast matches 0 as @a[team=lp_gray] run function lucky_pillar:services/winner

schedule function lucky_pillar:services/rewarding 1t