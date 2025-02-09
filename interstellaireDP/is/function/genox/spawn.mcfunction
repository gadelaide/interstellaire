execute as @e[type=armor_stand,tag=start_summon_genox1] at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Tags:["genox","lvl1","need_init"],Invulnerable:1b,Invisible:1b,DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:cow_spawn_egg",count:1,components:{"minecraft:custom_model_data":971240}}]}
execute as @e[type=armor_stand,tag=start_summon_genox2] at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Tags:["genox","lvl2","need_init"],Invulnerable:1b,Invisible:1b,DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:cow_spawn_egg",count:1,components:{"minecraft:custom_model_data":971260}}]}
execute as @e[type=armor_stand,tag=start_summon_genox3] at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Tags:["genox","lvl3","need_init"],Invulnerable:1b,Invisible:1b,DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:cow_spawn_egg",count:1,components:{"minecraft:custom_model_data":971280}}]}

execute as @e[type=armor_stand,tag=start_empty] at @s run tag @n[type=armor_stand,tag=genox] remove need_init
execute as @e[type=armor_stand,tag=start_empty] at @s run scoreboard players set @n[type=armor_stand,tag=genox] genox_timer 0
execute if entity @e[type=armor_stand,tag=start_empty] run function is:genox/update 

scoreboard players set @e[type=armor_stand,tag=need_init] genox_timer 1200
tag @e[type=armor_stand,tag=need_init] remove need_init

execute as @e[type=armor_stand,tag=start_summon_genox1] run kill @s
execute as @e[type=armor_stand,tag=start_summon_genox2] run kill @s
execute as @e[type=armor_stand,tag=start_summon_genox3] run kill @s