## every passangers of the same rocket have the same id and rocket_animation score
execute as @a[scores={rocket_animation=1}] at @s as @a if score @s id_rocket = @p id_rocket run scoreboard players set @s rocket_animation 1

scoreboard players add @a[scores={rocket_animation=1..}] rocket_animation 1

## clear the fuel
execute as @a[scores={rocket_animation=2}] at @s run data merge entity @n[type=trader_llama,tag=rocket_seat1] {Items:[{Slot:0b,id:"minecraft:air",count:0},{Slot:1b,id:"minecraft:air",count:0},{Slot:2b,id:"minecraft:air",count:0}]}

execute as @a[scores={rocket_animation=2}] if predicate is:on_main_seat run tag @s add on_seat1
execute as @a[scores={rocket_animation=2}] if predicate is:on_seat_2 run tag @s add on_seat2
execute as @a[scores={rocket_animation=2}] if predicate is:on_seat_3 run tag @s add on_seat3
execute as @a[scores={rocket_animation=2}] if predicate is:on_seat_4 run tag @s add on_seat4
execute as @a[scores={rocket_animation=2}] if predicate is:on_seat_5 run tag @s add on_seat5


title @a[scores={rocket_animation=3}] times 2 16 2

## making sure the right rocket is affected
## execute as @a[scores={rocket_animation=43..}] at @s as @e[tag=rocket_base] if score @s id_rocket = @p id_rocket run ...

# animation and sound
execute as @a[scores={rocket_animation=33}] at @s as @e[type=armor_stand,tag=rocket_base] if score @s id_rocket = @p id_rocket at @s run fill ~-2 ~12 ~-2 ~2 ~22 ~2 air replace barrier
execute as @a[scores={rocket_animation=43}] at @s as @e[type=armor_stand,tag=rocket_base] if score @s id_rocket = @p id_rocket at @s run function is:rocket/fire
execute as @a[scores={rocket_animation=43..}] at @s as @e[type=armor_stand,tag=rocket_base] if score @s id_rocket = @p id_rocket at @s run playsound minecraft:entity.lightning_bolt.thunder neutral @a[distance=..300] ~ ~ ~ 5 0.1
execute as @a[scores={rocket_animation=43..}] at @s as @e[type=armor_stand,tag=rocket_base] if score @s id_rocket = @p id_rocket at @s run particle minecraft:flame ^4.2 ^-9 ^ 0.3 3 0.3 0.05 10 normal
execute as @a[scores={rocket_animation=43..}] at @s as @e[type=armor_stand,tag=rocket_base] if score @s id_rocket = @p id_rocket at @s run particle minecraft:flame ^-4.2 ^-9 ^ 0.3 3 0.3 0.05 10 normal
execute as @a[scores={rocket_animation=43..}] at @s as @e[type=armor_stand,tag=rocket_base] if score @s id_rocket = @p id_rocket at @s run particle minecraft:flame ^ ^-11 ^ 0.6 5 0.6 0.05 20 normal
execute as @a[scores={rocket_animation=43..153}] at @s as @e[type=armor_stand,tag=rocket_base] if score @s id_rocket = @p id_rocket at @s run particle minecraft:explosion ~ ~-4 ~ 4 3 4 0.08 25 normal
execute as @a[scores={rocket_animation=103..100000}] at @s as @e[type=armor_stand,tag=rocket_base] if score @s id_rocket = @p id_rocket at @s run particle minecraft:campfire_cosy_smoke ~ ~-16 ~ 2 5 2 0.08 15 normal



# countdown
execute as @a[scores={rocket_animation=3}] run title @s title {"text":"5","color":"gold"}
execute as @a[scores={rocket_animation=23}] run title @s title {"text":"4","color":"gold"}
execute as @a[scores={rocket_animation=43}] run title @s title {"text":"3","color":"gold"}
execute as @a[scores={rocket_animation=63}] run title @s title {"text":"2","color":"gold"}
execute as @a[scores={rocket_animation=83}] run title @s title {"text":"1","color":"gold"}
execute as @a[scores={rocket_animation=103}] run title @s title {"fallback":"Take off !","translate":"message.rocket.takeoff","color":"dark_green"}

# moving up
execute as @a[scores={rocket_animation=103..143}] unless predicate is:in_space at @s as @e[type=armor_stand,tag=rocket_base] if score @s id_rocket = @p id_rocket at @s run tp @s ~ ~0.15 ~
execute as @a[scores={rocket_animation=143..163}] unless predicate is:in_space at @s as @e[type=armor_stand,tag=rocket_base] if score @s id_rocket = @p id_rocket at @s run tp @s ~ ~0.3 ~
execute as @a[scores={rocket_animation=163..203}] unless predicate is:in_space at @s as @e[type=armor_stand,tag=rocket_base] if score @s id_rocket = @p id_rocket at @s run tp @s ~ ~0.7 ~
execute as @a[scores={rocket_animation=203..100000}] unless predicate is:in_space at @s as @e[type=armor_stand,tag=rocket_base] if score @s id_rocket = @p id_rocket at @s run tp @s ~ ~1 ~

# keeping the right seat
execute as @a[scores={rocket_animation=3..},tag=on_seat1] unless predicate is:on_main_seat run ride @s dismount
execute as @e[type=trader_llama,tag=rocket_seat1] at @s as @a[scores={rocket_animation=3..},tag=on_seat1] if score @s id_rocket = @n[type=trader_llama,tag=rocket_seat1] id_rocket run ride @s mount @n[type=trader_llama,tag=rocket_seat1]

execute as @a[scores={rocket_animation=3..},tag=on_seat2] unless predicate is:on_seat_2 run ride @s dismount
execute as @e[type=trader_llama,tag=rocket_seat2] at @s as @a[scores={rocket_animation=3..},tag=on_seat2] if score @s id_rocket = @n[type=trader_llama,tag=rocket_seat2] id_rocket run ride @s mount @n[type=trader_llama,tag=rocket_seat2]

execute as @a[scores={rocket_animation=3..},tag=on_seat3] unless predicate is:on_seat_3 run ride @s dismount
execute as @e[type=trader_llama,tag=rocket_seat3] at @s as @a[scores={rocket_animation=3..},tag=on_seat3] if score @s id_rocket = @n[type=trader_llama,tag=rocket_seat3] id_rocket run ride @s mount @n[type=trader_llama,tag=rocket_seat3]

execute as @a[scores={rocket_animation=3..},tag=on_seat4] unless predicate is:on_seat_4 run ride @s dismount
execute as @e[type=trader_llama,tag=rocket_seat4] at @s as @a[scores={rocket_animation=3..},tag=on_seat4] if score @s id_rocket = @n[type=trader_llama,tag=rocket_seat4] id_rocket run ride @s mount @n[type=trader_llama,tag=rocket_seat4]

execute as @a[scores={rocket_animation=3..},tag=on_seat5] unless predicate is:on_seat_5 run ride @s dismount
execute as @e[type=trader_llama,tag=rocket_seat5] at @s as @a[scores={rocket_animation=3..},tag=on_seat5] if score @s id_rocket = @n[type=trader_llama,tag=rocket_seat5] id_rocket run ride @s mount @n[type=trader_llama,tag=rocket_seat5]

# reaching space
execute as @a[scores={rocket_animation=3..}] at @s if predicate is:in_space run scoreboard players set @s rocket_animation 100000
execute as @a[scores={rocket_animation=100000}] at @s as @a if score @s id_rocket = @p id_rocket run scoreboard players set @s rocket_animation 100000
execute as @a[scores={rocket_animation=100000}] run ride @s dismount

effect give @a[scores={rocket_animation=100000}] slow_falling 15 255 true

## extend if planets added
execute as @a[tag=goto_overworld,scores={rocket_animation=100000}] at @s as @e[tag=rocket] if score @s id_rocket = @p id_rocket at @s in overworld run tp @s ~ 650 ~
execute as @a[tag=goto_overworld,scores={rocket_animation=100000}] at @s as @a if score @s id_rocket = @p id_rocket at @s in overworld run tp @s ~ 650 ~
execute as @a[tag=goto_overworld2,scores={rocket_animation=100000}] at @s as @e[tag=rocket] if score @s id_rocket = @p id_rocket at @s in is:overworld2 run tp @s ~ 650 ~
execute as @a[tag=goto_overworld2,scores={rocket_animation=100000}] at @s as @a if score @s id_rocket = @p id_rocket at @s in is:overworld2 run tp @s ~ 650 ~
execute as @a[tag=goto_amplified,scores={rocket_animation=100000}] at @s as @e[tag=rocket] if score @s id_rocket = @p id_rocket at @s in is:amplified run tp @s ~ 650 ~
execute as @a[tag=goto_amplified,scores={rocket_animation=100000}] at @s as @a if score @s id_rocket = @p id_rocket at @s in is:amplified run tp @s ~ 650 ~
execute as @a[tag=goto_moon,scores={rocket_animation=100000}] at @s as @e[tag=rocket] if score @s id_rocket = @p id_rocket at @s in is:moon run tp @s ~ 650 ~
execute as @a[tag=goto_moon,scores={rocket_animation=100000}] at @s as @a if score @s id_rocket = @p id_rocket at @s in is:moon run tp @s ~ 650 ~



execute as @a[scores={rocket_animation=100004..}] at @s as @e[type=armor_stand,tag=rocket_base] if score @s id_rocket = @p id_rocket at @s if block ~ ~-3.325 ~ #is:airs run tp @s ~ ~-0.05 ~
execute as @a[scores={rocket_animation=100004..}] at @s as @e[type=armor_stand,tag=rocket_base] if score @s id_rocket = @p id_rocket at @s if block ~ ~-3.325 ~ #is:airs run tp @s ~ ~-0.05 ~
execute as @a[scores={rocket_animation=100004..}] at @s as @e[type=armor_stand,tag=rocket_base] if score @s id_rocket = @p id_rocket at @s if block ~ ~-3.325 ~ #is:airs run tp @s ~ ~-0.05 ~
execute as @a[scores={rocket_animation=100004..}] at @s as @e[type=armor_stand,tag=rocket_base] if score @s id_rocket = @p id_rocket at @s if block ~ ~-3.325 ~ #is:airs run tp @s ~ ~-0.05 ~
execute as @a[scores={rocket_animation=100004..}] at @s as @e[type=armor_stand,tag=rocket_base] if score @s id_rocket = @p id_rocket at @s if block ~ ~-3.325 ~ #is:airs run tp @s ~ ~-0.05 ~
execute as @a[scores={rocket_animation=100004..}] at @s as @e[type=armor_stand,tag=rocket_base] if score @s id_rocket = @p id_rocket at @s if block ~ ~-3.325 ~ #is:airs run tp @s ~ ~-0.05 ~
execute as @a[scores={rocket_animation=100004..}] at @s as @e[type=armor_stand,tag=rocket_base] if score @s id_rocket = @p id_rocket at @s if block ~ ~-3.325 ~ #is:airs run tp @s ~ ~-0.05 ~
execute as @a[scores={rocket_animation=100004..}] at @s as @e[type=armor_stand,tag=rocket_base] if score @s id_rocket = @p id_rocket at @s if block ~ ~-3.325 ~ #is:airs run tp @s ~ ~-0.05 ~
execute as @a[scores={rocket_animation=100004..}] at @s as @e[type=armor_stand,tag=rocket_base] if score @s id_rocket = @p id_rocket at @s if block ~ ~-3.325 ~ #is:airs run tp @s ~ ~-0.05 ~
execute as @a[scores={rocket_animation=100004..}] at @s as @e[type=armor_stand,tag=rocket_base] if score @s id_rocket = @p id_rocket at @s if block ~ ~-3.325 ~ #is:airs run tp @s ~ ~-0.05 ~
execute as @a[scores={rocket_animation=100004..}] at @s as @e[type=armor_stand,tag=rocket_base] if score @s id_rocket = @p id_rocket at @s if block ~ ~-3.325 ~ #is:airs run tp @s ~ ~-0.05 ~
execute as @a[scores={rocket_animation=100004..}] at @s as @e[type=armor_stand,tag=rocket_base] if score @s id_rocket = @p id_rocket at @s if block ~ ~-3.325 ~ #is:airs run tp @s ~ ~-0.05 ~
execute as @a[scores={rocket_animation=100004..}] at @s as @e[type=armor_stand,tag=rocket_base] if score @s id_rocket = @p id_rocket at @s if block ~ ~-3.325 ~ #is:airs run tp @s ~ ~-0.05 ~
execute as @a[scores={rocket_animation=100004..}] at @s as @e[type=armor_stand,tag=rocket_base] if score @s id_rocket = @p id_rocket at @s if block ~ ~-3.325 ~ #is:airs run tp @s ~ ~-0.05 ~
execute as @a[scores={rocket_animation=100004..}] at @s as @e[type=armor_stand,tag=rocket_base] if score @s id_rocket = @p id_rocket at @s if block ~ ~-3.325 ~ #is:airs run tp @s ~ ~-0.05 ~
execute as @a[scores={rocket_animation=100004..}] at @s as @e[type=armor_stand,tag=rocket_base] if score @s id_rocket = @p id_rocket at @s if block ~ ~-3.325 ~ #is:airs run tp @s ~ ~-0.05 ~
execute as @a[scores={rocket_animation=100004..}] at @s as @e[type=armor_stand,tag=rocket_base] if score @s id_rocket = @p id_rocket at @s if block ~ ~-3.325 ~ #is:airs run tp @s ~ ~-0.05 ~
execute as @a[scores={rocket_animation=100004..}] at @s as @e[type=armor_stand,tag=rocket_base] if score @s id_rocket = @p id_rocket at @s if block ~ ~-3.325 ~ #is:airs run tp @s ~ ~-0.05 ~
execute as @a[scores={rocket_animation=100004..}] at @s as @e[type=armor_stand,tag=rocket_base] if score @s id_rocket = @p id_rocket at @s if block ~ ~-3.325 ~ #is:airs run tp @s ~ ~-0.05 ~
execute as @a[scores={rocket_animation=100004..}] at @s as @e[type=armor_stand,tag=rocket_base] if score @s id_rocket = @p id_rocket at @s if block ~ ~-3.325 ~ #is:airs run tp @s ~ ~-0.05 ~

# landing safe
execute as @p[scores={rocket_animation=100020}] at @s as @e[type=armor_stand,tag=rocket_base] if score @s id_rocket = @p id_rocket at @s run summon marker ~ ~ ~ {Tags:["safe_landing"]}

# touching down
execute as @e[type=armor_stand,tag=rocket_base] at @s as @a[scores={rocket_animation=100004..}] if score @s id_rocket = @n[type=armor_stand,tag=rocket_base] id_rocket unless block ~ ~-3.325 ~ #is:airs run scoreboard players set @s rocket_animation 200000
execute as @a[scores={rocket_animation=200000}] at @s as @a if score @s id_rocket = @p id_rocket run scoreboard players set @s rocket_animation 200000


execute as @a[scores={rocket_animation=200000}] at @s as @n[type=armor_stand,tag=rocket_base] at @s run function is:rocket/place_borders

scoreboard players set @a[scores={rocket_animation=200000}] rocket_animation 0


function is:rocket/update_seat








