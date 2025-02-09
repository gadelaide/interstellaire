## EAST
execute at @e[type=armor_stand,tag=hyperloop_east] run setblock ~ ~ ~ air
execute at @e[type=armor_stand,tag=hyperloop_east] run setblock ~ ~1 ~ air

execute at @e[type=armor_stand,tag=hyperloop_east] run setblock ~ ~-1 ~ iron_block
execute at @e[type=armor_stand,tag=hyperloop_east] run setblock ~ ~2 ~ iron_block

execute at @e[type=armor_stand,tag=hyperloop_east] run setblock ~ ~ ~1 white_stained_glass
execute at @e[type=armor_stand,tag=hyperloop_east] run setblock ~ ~1 ~1 white_stained_glass
execute at @e[type=armor_stand,tag=hyperloop_east] run setblock ~ ~ ~-1 white_stained_glass
execute at @e[type=armor_stand,tag=hyperloop_east] run setblock ~ ~1 ~-1 white_stained_glass

execute as @e[type=armor_stand,tag=hyperloop_east] at @s run tp @s ~1 ~ ~

## SOUTH
execute at @e[type=armor_stand,tag=hyperloop_south] run setblock ~ ~ ~ air
execute at @e[type=armor_stand,tag=hyperloop_south] run setblock ~ ~1 ~ air

execute at @e[type=armor_stand,tag=hyperloop_south] run setblock ~ ~-1 ~ iron_block
execute at @e[type=armor_stand,tag=hyperloop_south] run setblock ~ ~2 ~ iron_block

execute at @e[type=armor_stand,tag=hyperloop_south] run setblock ~1 ~ ~ white_stained_glass
execute at @e[type=armor_stand,tag=hyperloop_south] run setblock ~1 ~1 ~ white_stained_glass
execute at @e[type=armor_stand,tag=hyperloop_south] run setblock ~-1 ~ ~ white_stained_glass
execute at @e[type=armor_stand,tag=hyperloop_south] run setblock ~-1 ~1 ~ white_stained_glass

execute as @e[type=armor_stand,tag=hyperloop_south] at @s run tp @s ~ ~ ~1

## WEST
execute at @e[type=armor_stand,tag=hyperloop_west] run setblock ~ ~ ~ air
execute at @e[type=armor_stand,tag=hyperloop_west] run setblock ~ ~1 ~ air

execute at @e[type=armor_stand,tag=hyperloop_west] run setblock ~ ~-1 ~ iron_block
execute at @e[type=armor_stand,tag=hyperloop_west] run setblock ~ ~2 ~ iron_block

execute at @e[type=armor_stand,tag=hyperloop_west] run setblock ~ ~ ~-1 white_stained_glass
execute at @e[type=armor_stand,tag=hyperloop_west] run setblock ~ ~1 ~-1 white_stained_glass
execute at @e[type=armor_stand,tag=hyperloop_west] run setblock ~ ~ ~1 white_stained_glass
execute at @e[type=armor_stand,tag=hyperloop_west] run setblock ~ ~1 ~1 white_stained_glass

execute as @e[type=armor_stand,tag=hyperloop_west] at @s run tp @s ~-1 ~ ~

## NORTH
execute at @e[type=armor_stand,tag=hyperloop_north] run setblock ~ ~ ~ air
execute at @e[type=armor_stand,tag=hyperloop_north] run setblock ~ ~1 ~ air

execute at @e[type=armor_stand,tag=hyperloop_north] run setblock ~ ~-1 ~ iron_block
execute at @e[type=armor_stand,tag=hyperloop_north] run setblock ~ ~2 ~ iron_block

execute at @e[type=armor_stand,tag=hyperloop_north] run setblock ~-1 ~ ~ white_stained_glass
execute at @e[type=armor_stand,tag=hyperloop_north] run setblock ~-1 ~1 ~ white_stained_glass
execute at @e[type=armor_stand,tag=hyperloop_north] run setblock ~1 ~ ~ white_stained_glass
execute at @e[type=armor_stand,tag=hyperloop_north] run setblock ~1 ~1 ~ white_stained_glass

execute as @e[type=armor_stand,tag=hyperloop_north] at @s run tp @s ~ ~ ~-1
