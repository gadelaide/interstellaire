execute as @e[type=armor_stand,tag=rocket_base] at @s as @e[type=trader_llama,tag=rocket_seat1] if score @s id_rocket = @n[type=armor_stand,tag=rocket_base,distance=..5] id_rocket run tp @s ^ ^16.125 ^-1.3
execute as @e[type=armor_stand,tag=rocket_base] at @s as @e[type=trader_llama,tag=rocket_seat2] if score @s id_rocket = @n[type=armor_stand,tag=rocket_base,distance=..5] id_rocket run tp @s ^-0.6 ^15.925 ^0.8
execute as @e[type=armor_stand,tag=rocket_base] at @s as @e[type=trader_llama,tag=rocket_seat3] if score @s id_rocket = @n[type=armor_stand,tag=rocket_base,distance=..5] id_rocket run tp @s ^0.6 ^15.925 ^0.8
execute as @e[type=armor_stand,tag=rocket_base] at @s as @e[type=trader_llama,tag=rocket_seat4] if score @s id_rocket = @n[type=armor_stand,tag=rocket_base,distance=..5] id_rocket run tp @s ^-0.6 ^15.925 ^-0.4
execute as @e[type=armor_stand,tag=rocket_base] at @s as @e[type=trader_llama,tag=rocket_seat5] if score @s id_rocket = @n[type=armor_stand,tag=rocket_base,distance=..5] id_rocket run tp @s ^0.6 ^15.925 ^-0.4

execute as @e[type=armor_stand,tag=rocket_base] at @s as @e[type=trader_llama,tag=rocket_seat] if score @s id_rocket = @n[type=armor_stand,tag=rocket_base,distance=..5] id_rocket rotated as @n[type=armor_stand,tag=rocket_base,distance=..5] positioned as @s run tp @s ~ ~ ~ ~180 ~
