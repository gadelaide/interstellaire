
xp add @s -2 points

summon marker ~ ~ ~ {Tags:["p_telekinesis","p_attack"]}
execute as @s at @s rotated as @s run tp @n[type=marker,tag=p_telekinesis] ~ ~1.3 ~ ~ ~

execute as @e[type=marker,tag=p_telekinesis] at @s run tp @s ^ ^ ^1
execute as @e[type=marker,tag=p_telekinesis] at @s run tp @s ^ ^ ^1
execute as @e[type=marker,tag=p_telekinesis] at @s run tp @s ^ ^ ^1
execute as @e[type=marker,tag=p_telekinesis] at @s unless entity @e[type=!#is:non_movable,distance=..1] run tp @s ^ ^ ^1
execute as @e[type=marker,tag=p_telekinesis] at @s unless entity @e[type=!#is:non_movable,distance=..1] run tp @s ^ ^ ^1
execute as @e[type=marker,tag=p_telekinesis] at @s unless entity @e[type=!#is:non_movable,distance=..1] run tp @s ^ ^ ^1
execute as @e[type=marker,tag=p_telekinesis] at @s unless entity @e[type=!#is:non_movable,distance=..1] run tp @s ^ ^ ^1
execute as @e[type=marker,tag=p_telekinesis] at @s unless entity @e[type=!#is:non_movable,distance=..1] run tp @s ^ ^ ^1
execute as @e[type=marker,tag=p_telekinesis] at @s if block ^ ^ ^0.2 #is:fluids run tp @n[type=!#is:non_movable,distance=..1] ^ ^ ^0.5




