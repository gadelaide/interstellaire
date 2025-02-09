execute as @e[type=armor_stand,tag=start_summon_rocket] at @s if entity @e[type=armor_stand,tag=rocket_base,distance=..10] run tellraw @p ["",{"text":"[Interstellaire] ","bold": true},{"fallback":"Too close to an existing rocket","translate":"message.rocket.too_close","color":"gold"}]
execute as @e[type=armor_stand,tag=start_summon_rocket] at @s if entity @e[type=armor_stand,tag=rocket_base,distance=..10] run function is:rocket/item
execute as @e[type=armor_stand,tag=start_summon_rocket] at @s if entity @e[type=armor_stand,tag=rocket_base,distance=..10] run kill @s

execute as @e[type=armor_stand,tag=start_summon_rocket] at @s unless predicate is:check_room run tellraw @p ["",{"text":"[Interstellaire] ","bold": true},{"fallback":"There is not enough room","translate":"message.rocket.no_room","color":"gold"}]
execute as @e[type=armor_stand,tag=start_summon_rocket] at @s unless predicate is:check_room run function is:rocket/item
execute as @e[type=armor_stand,tag=start_summon_rocket] at @s unless predicate is:check_room run kill @s

execute as @e[type=armor_stand,tag=start_summon_rocket] at @s run playsound minecraft:block.stone.place neutral @a ~ ~ ~ 0.5 1

execute as @e[type=armor_stand,tag=start_summon_rocket] at @s run summon armor_stand ~ ~3.375 ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["rocket","rocket_base","need_scaling"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:diamond_sword",count:1,components:{"minecraft:custom_model_data":971214}}],attributes:[{id:"minecraft:generic.scale",base:9}]}


execute as @a[y_rotation=-45..45] at @s as @n[type=armor_stand,tag=start_summon_rocket] at @s as @n[type=armor_stand,tag=rocket_base] at @s run tp @s ~ ~ ~ 0 0
execute as @a[y_rotation=45..135] at @s as @n[type=armor_stand,tag=start_summon_rocket] at @s as @n[type=armor_stand,tag=rocket_base] at @s run tp @s ~ ~ ~ 90 0
execute as @a[y_rotation=135..180] at @s as @n[type=armor_stand,tag=start_summon_rocket] at @s as @n[type=armor_stand,tag=rocket_base] at @s run tp @s ~ ~ ~ 180 0
execute as @a[y_rotation=-180..-135] at @s as @n[type=armor_stand,tag=start_summon_rocket] at @s as @n[type=armor_stand,tag=rocket_base] at @s run tp @s ~ ~ ~ 180 0
execute as @a[y_rotation=-135..-45] at @s as @n[type=armor_stand,tag=start_summon_rocket] at @s as @n[type=armor_stand,tag=rocket_base] at @s run tp @s ~ ~ ~ -90 0


execute as @e[type=armor_stand,tag=start_summon_rocket] at @s run summon trader_llama ~ ~19 ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Team:"is_no_collision",DeathLootTable:"is:rocket/empty",PersistenceRequired:1b,NoAI:1b,Tame:1b,Strength:1,ChestedHorse:1b,Tags:["rocket","rocket_seat","rocket_seat1"],body_armor_item:{id:"minecraft:light_gray_carpet",count:1},body_armor_drop_chance:0.000F,active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:500000,show_particles:0b}]}
execute as @e[type=armor_stand,tag=start_summon_rocket] at @s run summon trader_llama ~ ~19 ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Team:"is_no_collision",DeathLootTable:"is:rocket/empty",PersistenceRequired:1b,NoAI:1b,Tame:1b,Tags:["rocket","rocket_seat","rocket_seat2"],body_armor_item:{id:"minecraft:light_gray_carpet",count:1},body_armor_drop_chance:0.000F,active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:500000,show_particles:0b}]}
execute as @e[type=armor_stand,tag=start_summon_rocket] at @s run summon trader_llama ~ ~19 ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Team:"is_no_collision",DeathLootTable:"is:rocket/empty",PersistenceRequired:1b,NoAI:1b,Tame:1b,Tags:["rocket","rocket_seat","rocket_seat3"],body_armor_item:{id:"minecraft:light_gray_carpet",count:1},body_armor_drop_chance:0.000F,active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:500000,show_particles:0b}]}
execute as @e[type=armor_stand,tag=start_summon_rocket] at @s run summon trader_llama ~ ~19 ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Team:"is_no_collision",DeathLootTable:"is:rocket/empty",PersistenceRequired:1b,NoAI:1b,Tame:1b,Tags:["rocket","rocket_seat","rocket_seat4"],body_armor_item:{id:"minecraft:light_gray_carpet",count:1},body_armor_drop_chance:0.000F,active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:500000,show_particles:0b}]}
execute as @e[type=armor_stand,tag=start_summon_rocket] at @s run summon trader_llama ~ ~19 ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Team:"is_no_collision",DeathLootTable:"is:rocket/empty",PersistenceRequired:1b,NoAI:1b,Tame:1b,Tags:["rocket","rocket_seat","rocket_seat5"],body_armor_item:{id:"minecraft:light_gray_carpet",count:1},body_armor_drop_chance:0.000F,active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:500000,show_particles:0b}]}

function is:rocket/update_seat

execute as @e[type=armor_stand,tag=start_summon_rocket] at @s as @n[type=armor_stand,tag=rocket_base] at @s run function is:rocket/place_borders

execute as @e[type=armor_stand,tag=start_summon_rocket] run kill @s
