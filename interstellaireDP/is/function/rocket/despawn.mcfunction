execute as @a unless score @s rocket_animation matches 1.. run scoreboard players enable @s disassembly

tag @e[tag=rocket_base] remove rocket_flying
execute as @a[scores={rocket_animation=1..}] at @s as @e[tag=rocket_base] if score @s id_rocket = @p id_rocket run tag @s add rocket_flying

execute as @a[scores={disassembly=1..}] at @s unless entity @e[type=armor_stand,tag=rocket_base,distance=..20] run tellraw @s ["",{"text":"[Interstellaire] ","bold": true},{"fallback":"There is no rocket nearby","translate":"message.rocket.no_rocket_nearby","color":"gold"}]
execute as @a[scores={disassembly=1..}] at @s as @n[type=armor_stand,tag=rocket_base,distance=..20] if entity @s[tag=rocket_flying] run tellraw @p ["",{"text":"[Interstellaire] ","bold": true},{"fallback":"This rocket cannot be disassembled now","translate":"message.rocket.error_disassembled","color":"gold"}]
execute as @a[scores={disassembly=1..}] at @s as @n[type=armor_stand,tag=rocket_base,distance=..20] unless entity @s[tag=rocket_flying] run tellraw @p ["",{"text":"[Interstellaire] ","bold": true},{"fallback":"The rocket has been disassembled","translate":"message.rocket.disassembled","color":"dark_green"}]
execute as @a[scores={disassembly=1..}] at @s as @n[type=armor_stand,tag=rocket_base,distance=..20] unless entity @s[tag=rocket_flying] run tag @s add rocket_despawn


execute as @e[type=armor_stand,tag=rocket_despawn] at @s run playsound minecraft:block.stone.break neutral @a ~ ~ ~ 0.5 1
execute as @e[type=armor_stand,tag=rocket_despawn] at @s run fill ~-2 ~13 ~-2 ~2 ~21 ~2 air replace barrier

execute as @e[tag=rocket_despawn] at @s as @e[type=trader_llama,tag=rocket_seat] if score @s id_rocket = @n[tag=rocket_despawn,distance=..5] id_rocket run tag @s add rocket_despawn
execute as @e[tag=rocket_despawn,tag=rocket_seat] at @s as @a[distance=..1] run ride @s dismount
execute as @e[type=armor_stand,tag=rocket_base,tag=rocket_despawn] at @s positioned ~ ~19 ~ unless entity @a[distance=..10,scores={rocket_animation=103..}] at @s run function is:rocket/item
tp @e[tag=rocket_despawn,tag=!rocket_seat1] ~ -500 ~
execute at @e[tag=rocket_despawn,tag=rocket_seat1] run summon area_effect_cloud ~ ~2 ~ {Duration:5,Tags:["kill_chest"]}


kill @e[tag=rocket_despawn]

scoreboard players set @a disassembly 0