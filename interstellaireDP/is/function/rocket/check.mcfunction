scoreboard players enable @a check_liftoff
tag @a remove error_same_plante

##CHANGE## range when adding planets
execute as @a unless score @s check_liftoff matches 0..5 run scoreboard players set @s check_liftoff 1

tellraw @a[scores={rocket_animation=1..,check_liftoff=1..}] ["",{"text":"[Interstellaire] ","bold": true},{"fallback":"You already are travelling","translate":"message.rocket.already_travelling","color":"gold"}]
execute as @a[scores={rocket_animation=1..}] run scoreboard players set @s check_liftoff 0
execute as @a[scores={check_liftoff=1}] if predicate is:on_main_seat run tellraw @s ["",{"text":"[Interstellaire] ","bold": true},{"fallback":"You need to select a destination and an item specific to your destination (see the Space Navigation Handbook)","translate":"message.rocket.need_destination","color":"gold"}]


## example
#execute as @a[scores={check_liftoff=##CHANGE##}] at @s if dimension ##CHANGE## run tag @s add error_same_plante
#execute as @a[scores={check_liftoff=##CHANGE##},tag=!error_same_plante] at @s if predicate is:is_fuel/has_fuel unless predicate ##CHANGE## run tellraw @s ...
#execute as @a[scores={check_liftoff=##CHANGE##},tag=!error_same_plante] at @s if predicate is:is_fuel/has_fuel if predicate ##CHANGE## run tellraw @s ...

## overworld
execute as @a[scores={check_liftoff=2}] at @s if dimension overworld run tag @s add error_same_plante
execute as @a[scores={check_liftoff=2},tag=!error_same_plante] at @s if predicate is:on_main_seat unless predicate is:planets/overworld1 run tellraw @s ["",{"text":"[Interstellaire] ","bold": true},{"fallback":"You need one grass block to acces the Overworld","translate":"message.rocket.need_overworld","color":"gold"}]
execute as @a[scores={check_liftoff=2},tag=!error_same_plante] at @s if predicate is:is_fuel/has_fuel if predicate is:planets/overworld1 run tellraw @s ["",{"text":"[Interstellaire] ","bold": true},{"fallback":"Ready for take-off to the Overworld","translate":"message.rocket.ready_overworld","color":"dark_green"}]

## overworld2
execute as @a[scores={check_liftoff=3}] at @s if dimension is:overworld2 run tag @s add error_same_plante
execute as @a[scores={check_liftoff=3},tag=!error_same_plante] at @s if predicate is:on_main_seat unless predicate is:planets/overworld2 run tellraw @s ["",{"text":"[Interstellaire] ","bold": true},{"fallback":"You need 2 dirt blocks to acces overworld 2","translate":"message.rocket.need_overworld2","color":"gold"}]
execute as @a[scores={check_liftoff=3},tag=!error_same_plante] at @s if predicate is:is_fuel/has_fuel if predicate is:planets/overworld2 run tellraw @s ["",{"text":"[Interstellaire] ","bold": true},{"fallback":"Ready for take-off to overworld 2","translate":"message.rocket.ready_overworld2","color":"dark_green"}]

## amplified
execute as @a[scores={check_liftoff=4}] at @s if dimension is:amplified run tag @s add error_same_plante
execute as @a[scores={check_liftoff=4},tag=!error_same_plante] at @s if predicate is:on_main_seat unless predicate is:planets/amplified run tellraw @s ["",{"text":"[Interstellaire] ","bold": true},{"fallback":"You need 10 grass blocks to acces Amplified","translate":"message.rocket.need_amplified","color":"gold"}]
execute as @a[scores={check_liftoff=4},tag=!error_same_plante] at @s if predicate is:is_fuel/has_fuel if predicate is:planets/amplified run tellraw @s ["",{"text":"[Interstellaire] ","bold": true},{"fallback":"Ready for take-off to the Amplified","translate":"message.rocket.ready_amplified","color":"dark_green"}]

## moon
execute as @a[scores={check_liftoff=5}] at @s if dimension is:moon run tag @s add error_same_plante
execute as @a[scores={check_liftoff=5},tag=!error_same_plante] at @s if predicate is:on_main_seat unless predicate is:planets/moon run tellraw @s ["",{"text":"[Interstellaire] ","bold": true},{"fallback":"You need 10 grass blocks to acces Moon","translate":"message.rocket.need_moon","color":"gold"}]
execute as @a[scores={check_liftoff=5},tag=!error_same_plante] at @s if predicate is:is_fuel/has_fuel if predicate is:planets/moon run tellraw @s ["",{"text":"[Interstellaire] ","bold": true},{"fallback":"Ready for take-off to the Moon","translate":"message.rocket.ready_moon","color":"dark_green"}]


execute as @a[scores={check_liftoff=1..},tag=!error_same_plante] unless predicate is:on_main_seat run tellraw @s ["",{"text":"[Interstellaire] ","bold": true},{"fallback":"You need to be sitting on the main seat of a rocket","translate":"message.rocket.need_seat","color":"gold"}]

tag @a remove is_has_fuel
execute as @a at @s if predicate is:is_fuel/need_8 if predicate is:is_fuel/has_8 run tag @s add is_has_fuel
execute as @a[scores={check_liftoff=1..},tag=!error_same_plante] at @s if predicate is:is_fuel/need_8 unless predicate is:is_fuel/has_8 if predicate is:on_main_seat run tellraw @s ["",{"text":"[Interstellaire] ","bold": true},{"fallback":"You need to put ","translate":"message.rocket.need_fuel1","color":"gold"},{"text":"8","color":"gold"},{"fallback":" blocks of coal to fuel the rocket (open inventory)","translate":"message.rocket.need_fuel2","color":"gold"}]
execute as @a at @s if predicate is:is_fuel/need_16 if predicate is:is_fuel/has_16 run tag @s add is_has_fuel
execute as @a[scores={check_liftoff=1..},tag=!error_same_plante] at @s if predicate is:is_fuel/need_16 unless predicate is:is_fuel/has_16 if predicate is:on_main_seat run tellraw @s ["",{"text":"[Interstellaire] ","bold": true},{"fallback":"You need to put ","translate":"message.rocket.need_fuel1","color":"gold"},{"text":"16","color":"gold"},{"fallback":" blocks of coal to fuel the rocket (open inventory)","translate":"message.rocket.need_fuel2","color":"gold"}]


tellraw @a[tag=error_same_plante] ["",{"text":"[Interstellaire] ","bold": true},{"fallback":"You cannot choose a planet you're already on","translate":"message.rocket.error_same_planet","color":"gold"}]
scoreboard players set @a check_liftoff 0