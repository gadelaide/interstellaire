schedule function is:10sec 10s replace

##### ROCKET FLOOR
tag @e[tag=rocket_base] remove rocket_flying
execute as @a[scores={rocket_animation=1..}] at @s as @e[tag=rocket_base] if score @s id_rocket = @p id_rocket run tag @s add rocket_flying
execute as @e[tag=rocket_base,tag=!rocket_flying] at @s run function is:rocket/place_borders

## genox
function is:genox/timer
function is:genox/update

## update player id for powers
tag @a remove init_id_player
execute as @a unless score @s p_playerId matches 1.. run tag @s add init_id_player
execute if entity @a[tag=init_id_player] run scoreboard players add is_global p_playerId 1
scoreboard players operation @p[tag=init_id_player] p_playerId = is_global p_playerId