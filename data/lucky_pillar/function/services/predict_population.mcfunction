execute store result score $red_cnt lp_cnt if entity @a[team=lp_red,gamemode=!spectator]
execute store result score $yellow_cnt lp_cnt if entity @a[team=lp_yellow,gamemode=!spectator]
execute store result score $green_cnt lp_cnt if entity @a[team=lp_green,gamemode=!spectator]
execute store result score $blue_cnt lp_cnt if entity @a[team=lp_blue,gamemode=!spectator]
execute store result score $pink_cnt lp_cnt if entity @a[team=lp_pink,gamemode=!spectator]
execute store result score $cyan_cnt lp_cnt if entity @a[team=lp_cyan,gamemode=!spectator]
execute store result score $white_cnt lp_cnt if entity @a[team=lp_white,gamemode=!spectator]
execute store result score $gray_cnt lp_cnt if entity @a[team=lp_gray,gamemode=!spectator]

function lucky_pillar:services/out_broadcast