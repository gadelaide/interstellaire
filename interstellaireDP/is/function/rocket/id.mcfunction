tag @e[type=armor_stand,tag=rocket_base] remove init_id_rocket
execute as @e[type=armor_stand,tag=rocket_base] unless score @s id_rocket matches 1.. run scoreboard players set @s id_rocket 0
tag @e[type=armor_stand,tag=rocket_base,limit=1,scores={id_rocket=0}] add init_id_rocket
execute as @e[type=armor_stand,tag=init_id_rocket] run scoreboard players add is_global id_rocket 1
execute as @e[type=armor_stand,tag=init_id_rocket] at @s positioned ~ ~13 ~ run scoreboard players operation @e[type=trader_llama,tag=rocket_seat,distance=..20,limit=5,sort=nearest] id_rocket = is_global id_rocket
execute as @e[type=armor_stand,tag=init_id_rocket] run scoreboard players operation @s id_rocket = is_global id_rocket

execute as @a unless score @s rocket_animation matches 1.. run scoreboard players set @s id_rocket 0

execute as @a at @s if predicate is:on_any_seat run scoreboard players operation @s id_rocket = @n[type=trader_llama,tag=rocket_seat] id_rocket