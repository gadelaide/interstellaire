tag @a remove readyfor_overworld
tag @a remove readyfor_overworld2
tag @a remove readyfor_amplified
tag @a remove readyfor_moon
execute as @a at @s if predicate is:is_fuel/has_fuel if predicate is:planets/overworld1 unless dimension overworld unless score @s rocket_animation matches 1.. run tag @s add readyfor_overworld
execute as @a at @s if predicate is:is_fuel/has_fuel if predicate is:planets/overworld2 unless dimension is:overworld2 unless score @s rocket_animation matches 1.. run tag @s add readyfor_overworld2
execute as @a at @s if predicate is:is_fuel/has_fuel if predicate is:planets/amplified unless dimension is:amplified unless score @s rocket_animation matches 1.. run tag @s add readyfor_amplified
execute as @a at @s if predicate is:is_fuel/has_fuel if predicate is:planets/moon unless dimension is:moon unless score @s rocket_animation matches 1.. run tag @s add readyfor_moon



scoreboard players enable @a takeoff

## animation > 1 => flying 
execute as @a unless score @s rocket_animation matches 1.. run tag @s remove goto_overworld
execute as @a unless score @s rocket_animation matches 1.. run tag @s remove goto_overworld2
execute as @a unless score @s rocket_animation matches 1.. run tag @s remove goto_amplified
execute as @a unless score @s rocket_animation matches 1.. run tag @s remove goto_moon

execute as @a[tag=readyfor_overworld,scores={takeoff=1..}] run tag @s add goto_overworld
execute as @a[tag=readyfor_overworld,scores={takeoff=1..}] run scoreboard players set @s rocket_animation 1
execute as @a[tag=readyfor_overworld2,scores={takeoff=1..}] run tag @s add goto_overworld2
execute as @a[tag=readyfor_overworld2,scores={takeoff=1..}] run scoreboard players set @s rocket_animation 1
execute as @a[tag=readyfor_amplified,scores={takeoff=1..}] run tag @s add goto_amplified
execute as @a[tag=readyfor_amplified,scores={takeoff=1..}] run scoreboard players set @s rocket_animation 1
execute as @a[tag=readyfor_moon,scores={takeoff=1..}] run tag @s add goto_moon
execute as @a[tag=readyfor_moon,scores={takeoff=1..}] run scoreboard players set @s rocket_animation 1

execute as @a[scores={takeoff=1..}] unless score @s rocket_animation matches 1.. run tellraw @s ["",{"text":"[Interstellaire] ","bold": true},{"fallback":"Take-off failed","translate":"message.rocket.takeoff_failed","color":"gold"}]

scoreboard players set @a takeoff 0