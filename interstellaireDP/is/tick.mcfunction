execute if entity @e[type=armor_stand,tag=start_summon_rocket] run function is:rocket/spawn
execute if entity @e[type=armor_stand,tag=start_summon_genox1] run function is:genox/spawn
execute if entity @e[type=armor_stand,tag=start_summon_genox2] run function is:genox/spawn
execute if entity @e[type=armor_stand,tag=start_summon_genox3] run function is:genox/spawn
execute if entity @e[type=armor_stand,tag=genox] run function is:genox/main

## ROCKET FLOOR
execute as @e[type=armor_stand,tag=rocket_base] at @s run fill ~-2 ~12 ~-2 ~2 ~15 ~2 air replace barrier
execute as @e[type=armor_stand,tag=rocket_base] at @s run fill ~-2 ~19 ~-2 ~2 ~22 ~2 air replace barrier
execute as @e[type=armor_stand,tag=rocket_base] at @s positioned ~ ~15 ~ as @a[distance=..3,gamemode=!spectator] at @s if block ~ ~0.5 ~ barrier run tp @s ~ ~1 ~

## delet chest when rocket is deleted
execute as @e[type=area_effect_cloud,tag=kill_chest] at @s run kill @n[type=item,nbt={Item:{id:"minecraft:chest",count:1}},distance=..3]


## if players too far from his rocket, end of animation
execute as @e[type=armor_stand,tag=rocket_base] at @s as @a if score @s id_rocket = @n[type=armor_stand,tag=rocket_base] id_rocket if entity @s[distance=70..] unless score @s rocket_animation matches 1000000..1000600 run scoreboard players set @s rocket_animation 0

## LIFTOFF
execute if entity @a[scores={rocket_animation=1..}] run function is:rocket/takeoff_loop

## ROCKET GRAVITY

execute as @e[type=armor_stand,tag=rocket_base] at @s unless entity @a[scores={rocket_animation=1..},distance=..50] if block ~ ~-3.325 ~ #is:airs run tp @s ~ ~-0.05 ~
execute as @e[type=armor_stand,tag=rocket_base] at @s unless entity @a[scores={rocket_animation=1..},distance=..50] if block ~ ~-3.325 ~ #is:airs run tp @s ~ ~-0.05 ~
execute as @e[type=armor_stand,tag=rocket_base] at @s unless entity @a[scores={rocket_animation=1..},distance=..50] if block ~ ~-3.325 ~ #is:airs run tp @s ~ ~-0.05 ~
execute as @e[type=armor_stand,tag=rocket_base] at @s unless entity @a[scores={rocket_animation=1..},distance=..50] if block ~ ~-3.325 ~ #is:airs run tp @s ~ ~-0.05 ~
execute as @e[type=armor_stand,tag=rocket_base] at @s unless entity @a[scores={rocket_animation=1..},distance=..50] if block ~ ~-3.325 ~ #is:airs run tp @s ~ ~-0.05 ~
execute as @e[type=armor_stand,tag=rocket_base] at @s unless entity @a[scores={rocket_animation=1..},distance=..50] if block ~ ~-3.325 ~ #is:airs run tp @s ~ ~-0.05 ~

## if rocket is out of the world, it can go down
tag @e[type=armor_stand,tag=rocket_base] remove ootw1
tag @e[type=armor_stand,tag=rocket_base] remove ootw2
tag @e[type=armor_stand,tag=rocket_base] remove ootw
execute as @e[type=armor_stand,tag=rocket_base] at @s if block ~ ~ ~ air run tag @s add ootw1
execute as @e[type=armor_stand,tag=rocket_base] at @s unless block ~ ~ ~ air run tag @s add ootw2
tag @e[type=armor_stand,tag=rocket_base,tag=!ootw1,tag=!ootw2] add ootw
execute as @e[type=armor_stand,tag=rocket_base,tag=ootw] at @s unless entity @a[scores={rocket_animation=1..100000},distance=..30] run tp @s ~ ~-1 ~

## end of trip
execute as @a[scores={rocket_animation=0}] run tag @s remove on_seat1
execute as @a[scores={rocket_animation=0}] run tag @s remove on_seat2
execute as @a[scores={rocket_animation=0}] run tag @s remove on_seat3
execute as @a[scores={rocket_animation=0}] run tag @s remove on_seat4
execute as @a[scores={rocket_animation=0}] run tag @s remove on_seat5

## landing safely
execute as @e[type=marker,tag=safe_landing] at @s run summon marker ~ ~ ~ {Tags:["safe_landing_old"]}
tag @e[type=marker,tag=safe_landing] remove ootw1
tag @e[type=marker,tag=safe_landing] remove ootw2
tag @e[type=marker,tag=safe_landing] remove ootw
execute as @e[type=marker,tag=safe_landing] at @s if block ~ ~ ~ air run tag @s add ootw1
execute as @e[type=marker,tag=safe_landing] at @s unless block ~ ~ ~ air run tag @s add ootw2
tag @e[type=marker,tag=safe_landing,tag=!ootw1,tag=!ootw2] add ootw
execute as @e[type=marker,tag=safe_landing,tag=ootw] at @s if predicate is:in_upper_world run tp @s ~ ~-1 ~

execute as @e[type=marker,tag=safe_landing] at @s if block ~ ~-1 ~ #is:airs run tp @s ~ ~-1 ~
execute as @e[type=marker,tag=safe_landing] at @s if block ~ ~-1 ~ #is:airs run tp @s ~ ~-1 ~
execute as @e[type=marker,tag=safe_landing] at @s if block ~ ~-1 ~ #is:airs run tp @s ~ ~-1 ~
execute as @e[type=marker,tag=safe_landing] at @s if block ~ ~-1 ~ #is:airs run tp @s ~ ~-1 ~
execute as @e[type=marker,tag=safe_landing] at @s if entity @e[type=marker,tag=safe_landing_old,distance=..0.1] run function is:landing_pad
kill @e[type=marker,tag=safe_landing_old]

## animation rocket with fuel
execute as @e[type=trader_llama,tag=rocket_seat1] at @s if items entity @s horse.* minecraft:coal_block run particle falling_dust{block_state:"minecraft:snow"} ^ ^-10 ^-1.1 1.2 4 1.2 0.0 2 normal

## debug depth scan power
execute as @e[type=block_display,tag=p_scanned] at @s if block ~ ~ ~ air run kill @s
execute as @e[type=block_display,tag=p_scanned] at @s unless entity @p[distance=..64] run kill @s 

## cooldown for powers (doesn't behaves entierly as expected but here to avoid the spam of a unique power)
execute as @a if score @s p_cooldown matches 0 run function is:powers/resets
execute as @a if score @s p_cooldown matches 0.. run scoreboard players remove @s p_cooldown 1
execute as @a if score @s p_cooldown matches 0 run title @s actionbar [{"text":""}]
execute as @a if score @s p_cooldown matches 1..10 run title @s actionbar [{"fallback":"Cooldown for using powers: ","translate":"message.powers.cooldown"},{"bold":true,"text":"|"}]
execute as @a if score @s p_cooldown matches 11..20 run title @s actionbar [{"fallback":"Cooldown for using powers: ","translate":"message.powers.cooldown"},{"bold":true,"text":"||"}]
execute as @a if score @s p_cooldown matches 21..30 run title @s actionbar [{"fallback":"Cooldown for using powers: ","translate":"message.powers.cooldown"},{"bold":true,"text":"|||"}]
execute as @a if score @s p_cooldown matches 31..40 run title @s actionbar [{"fallback":"Cooldown for using powers: ","translate":"message.powers.cooldown"},{"bold":true,"text":"||||"}]
execute as @a if score @s p_cooldown matches 41..50 run title @s actionbar [{"fallback":"Cooldown for using powers: ","translate":"message.powers.cooldown"},{"bold":true,"text":"|||||"}]
execute as @a if score @s p_cooldown matches 51..60 run title @s actionbar [{"fallback":"Cooldown for using powers: ","translate":"message.powers.cooldown"},{"bold":true,"text":"||||||"}]
execute as @a if score @s p_cooldown matches 61..70 run title @s actionbar [{"fallback":"Cooldown for using powers: ","translate":"message.powers.cooldown"},{"bold":true,"text":"|||||||"}]
execute as @a if score @s p_cooldown matches 71..80 run title @s actionbar [{"fallback":"Cooldown for using powers: ","translate":"message.powers.cooldown"},{"bold":true,"text":"||||||||"}]
execute as @a if score @s p_cooldown matches 81..90 run title @s actionbar [{"fallback":"Cooldown for using powers: ","translate":"message.powers.cooldown"},{"bold":true,"text":"|||||||||"}]
execute as @a if score @s p_cooldown matches 91..100 run title @s actionbar [{"fallback":"Cooldown for using powers: ","translate":"message.powers.cooldown"},{"bold":true,"text":"||||||||||"}]
execute as @a if score @s p_cooldown matches 101..110 run title @s actionbar [{"fallback":"Cooldown for using powers: ","translate":"message.powers.cooldown"},{"bold":true,"text":"|||||||||||"}]
execute as @a if score @s p_cooldown matches 111..120 run title @s actionbar [{"fallback":"Cooldown for using powers: ","translate":"message.powers.cooldown"},{"bold":true,"text":"||||||||||||"}]
execute as @a if score @s p_cooldown matches 121..130 run title @s actionbar [{"fallback":"Cooldown for using powers: ","translate":"message.powers.cooldown"},{"bold":true,"text":"|||||||||||||"}]
execute as @a if score @s p_cooldown matches 131..140 run title @s actionbar [{"fallback":"Cooldown for using powers: ","translate":"message.powers.cooldown"},{"bold":true,"text":"||||||||||||||"}]
execute as @a if score @s p_cooldown matches 141..150 run title @s actionbar [{"fallback":"Cooldown for using powers: ","translate":"message.powers.cooldown"},{"bold":true,"text":"|||||||||||||||"}]
execute as @a if score @s p_cooldown matches 151.. run title @s actionbar [{"fallback":"Cooldown for using powers: ","translate":"message.powers.cooldown"},{"bold":true,"text":"||||||||||||||||.."}]
