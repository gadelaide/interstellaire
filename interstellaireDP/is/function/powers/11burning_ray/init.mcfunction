
xp add @s -3 points

summon marker ~ ~ ~ {Tags:["p_burning_ray","p_attack"]}
execute as @s at @s rotated as @s run tp @n[type=marker,tag=p_burning_ray] ~ ~1.4 ~ ~ ~

execute as @e[type=marker,tag=p_burning_ray] at @s if block ^ ^ ^0.4 #is:airs run tp @s ^ ^ ^0.4
execute as @e[type=marker,tag=p_burning_ray] at @s run particle flame ~ ~ ~ 0 0 0 0 1 normal

execute as @e[type=marker,tag=p_burning_ray] at @s if block ^ ^ ^0.4 #is:airs run tp @s ^ ^ ^0.4
execute as @e[type=marker,tag=p_burning_ray] at @s run particle flame ~ ~ ~ 0 0 0 0 1 normal

execute as @e[type=marker,tag=p_burning_ray] at @s if block ^ ^ ^0.4 #is:airs run tp @s ^ ^ ^0.4
execute as @e[type=marker,tag=p_burning_ray] at @s run particle flame ~ ~ ~ 0 0 0 0 1 normal

execute as @e[type=marker,tag=p_burning_ray] at @s if block ^ ^ ^0.4 #is:airs run tp @s ^ ^ ^0.4
execute as @e[type=marker,tag=p_burning_ray] at @s unless block ^ ^ ^0.4 #is:airs run kill @s
execute as @e[type=marker,tag=p_burning_ray] at @s run particle flame ~ ~ ~ 0 0 0 0 1 normal
execute at @e[type=!#is:non_living] positioned ~ ~0.5 ~ if entity @e[type=marker,tag=p_burning_ray,distance=..1] run damage @n[type=!#is:non_living] 4 is:burning_ray by @s
execute as @e[type=marker,tag=p_burning_ray] at @s as @e[type=!#is:non_living,distance=..1] run data modify entity @s Fire set value 20

execute as @e[type=marker,tag=p_burning_ray] at @s if block ^ ^ ^0.4 #is:airs run tp @s ^ ^ ^0.4
execute as @e[type=marker,tag=p_burning_ray] at @s unless block ^ ^ ^0.4 #is:airs run kill @s
execute as @e[type=marker,tag=p_burning_ray] at @s run particle flame ~ ~ ~ 0 0 0 0 1 normal
execute at @e[type=!#is:non_living] positioned ~ ~0.5 ~ if entity @e[type=marker,tag=p_burning_ray,distance=..1] run damage @n[type=!#is:non_living] 4 is:burning_ray by @s
execute as @e[type=marker,tag=p_burning_ray] at @s as @e[type=!#is:non_living,distance=..1] run data modify entity @s Fire set value 20

execute as @e[type=marker,tag=p_burning_ray] at @s if block ^ ^ ^0.4 #is:airs run tp @s ^ ^ ^0.4
execute as @e[type=marker,tag=p_burning_ray] at @s unless block ^ ^ ^0.4 #is:airs run kill @s
execute as @e[type=marker,tag=p_burning_ray] at @s run particle flame ~ ~ ~ 0 0 0 0 1 normal
execute at @e[type=!#is:non_living] positioned ~ ~0.5 ~ if entity @e[type=marker,tag=p_burning_ray,distance=..1.3] run damage @n[type=!#is:non_living] 4 is:burning_ray by @s
execute as @e[type=marker,tag=p_burning_ray] at @s as @e[type=!#is:non_living,distance=..1] run data modify entity @s Fire set value 20

execute as @e[type=marker,tag=p_burning_ray] at @s if block ^ ^ ^0.4 #is:airs run tp @s ^ ^ ^0.4
execute as @e[type=marker,tag=p_burning_ray] at @s unless block ^ ^ ^0.4 #is:airs run kill @s
execute as @e[type=marker,tag=p_burning_ray] at @s run particle flame ~ ~ ~ 0 0 0 0 1 normal
execute at @e[type=!#is:non_living] positioned ~ ~0.5 ~ if entity @e[type=marker,tag=p_burning_ray,distance=..1.3] run damage @n[type=!#is:non_living] 4 is:burning_ray by @s
execute as @e[type=marker,tag=p_burning_ray] at @s as @e[type=!#is:non_living,distance=..1] run data modify entity @s Fire set value 20

execute as @e[type=marker,tag=p_burning_ray] at @s if block ^ ^ ^0.4 #is:airs run tp @s ^ ^ ^0.4
execute as @e[type=marker,tag=p_burning_ray] at @s unless block ^ ^ ^0.4 #is:airs run kill @s
execute as @e[type=marker,tag=p_burning_ray] at @s run particle flame ~ ~ ~ 0 0 0 0 1 normal
execute at @e[type=!#is:non_living] positioned ~ ~0.5 ~ if entity @e[type=marker,tag=p_burning_ray,distance=..1.3] run damage @n[type=!#is:non_living] 4 is:burning_ray by @s
execute as @e[type=marker,tag=p_burning_ray] at @s as @e[type=!#is:non_living,distance=..1] run data modify entity @s Fire set value 20

execute as @e[type=marker,tag=p_burning_ray] at @s if block ^ ^ ^0.4 #is:airs run tp @s ^ ^ ^0.4
execute as @e[type=marker,tag=p_burning_ray] at @s unless block ^ ^ ^0.4 #is:airs run kill @s
execute as @e[type=marker,tag=p_burning_ray] at @s run particle flame ~ ~ ~ 0 0 0 0 1 normal
execute at @e[type=!#is:non_living] positioned ~ ~0.5 ~ if entity @e[type=marker,tag=p_burning_ray,distance=..1.3] run damage @n[type=!#is:non_living] 3 is:burning_ray by @s
execute as @e[type=marker,tag=p_burning_ray] at @s as @e[type=!#is:non_living,distance=..1] run data modify entity @s Fire set value 20

execute as @e[type=marker,tag=p_burning_ray] at @s if block ^ ^ ^0.4 #is:airs run tp @s ^ ^ ^0.4
execute as @e[type=marker,tag=p_burning_ray] at @s unless block ^ ^ ^0.4 #is:airs run kill @s
execute as @e[type=marker,tag=p_burning_ray] at @s run particle flame ~ ~ ~ 0 0 0 0 1 normal
execute at @e[type=!#is:non_living] positioned ~ ~0.5 ~ if entity @e[type=marker,tag=p_burning_ray,distance=..1.3] run damage @n[type=!#is:non_living] 3 is:burning_ray by @s
execute as @e[type=marker,tag=p_burning_ray] at @s as @e[type=!#is:non_living,distance=..1] run data modify entity @s Fire set value 20

execute as @e[type=marker,tag=p_burning_ray] at @s if block ^ ^ ^0.4 #is:airs run tp @s ^ ^ ^0.4
execute as @e[type=marker,tag=p_burning_ray] at @s unless block ^ ^ ^0.4 #is:airs run kill @s
execute as @e[type=marker,tag=p_burning_ray] at @s run particle flame ~ ~ ~ 0 0 0 0 1 normal
execute at @e[type=!#is:non_living] positioned ~ ~0.5 ~ if entity @e[type=marker,tag=p_burning_ray,distance=..1.3] run damage @n[type=!#is:non_living] 3 is:burning_ray by @s
execute as @e[type=marker,tag=p_burning_ray] at @s as @e[type=!#is:non_living,distance=..1] run data modify entity @s Fire set value 20

execute as @e[type=marker,tag=p_burning_ray] at @s if block ^ ^ ^0.4 #is:airs run tp @s ^ ^ ^0.4
execute as @e[type=marker,tag=p_burning_ray] at @s unless block ^ ^ ^0.4 #is:airs run kill @s
execute as @e[type=marker,tag=p_burning_ray] at @s run particle flame ~ ~ ~ 0 0 0 0 1 normal
execute at @e[type=!#is:non_living] positioned ~ ~0.5 ~ if entity @e[type=marker,tag=p_burning_ray,distance=..1.3] run damage @n[type=!#is:non_living] 3 is:burning_ray by @s
execute as @e[type=marker,tag=p_burning_ray] at @s as @e[type=!#is:non_living,distance=..1] run data modify entity @s Fire set value 20

execute as @e[type=marker,tag=p_burning_ray] at @s if block ^ ^ ^0.4 #is:airs run tp @s ^ ^ ^0.4
execute as @e[type=marker,tag=p_burning_ray] at @s unless block ^ ^ ^0.4 #is:airs run kill @s
execute as @e[type=marker,tag=p_burning_ray] at @s run particle flame ~ ~ ~ 0 0 0 0 1 normal
execute as @e[type=marker,tag=p_burning_ray] at @s run fill ~ ~ ~ ~ ~ ~ fire replace #is:real_airs
execute at @e[type=!#is:non_living] positioned ~ ~0.5 ~ if entity @e[type=marker,tag=p_burning_ray,distance=..1.3] run damage @n[type=!#is:non_living] 3 is:burning_ray by @s
execute as @e[type=marker,tag=p_burning_ray] at @s as @e[type=!#is:non_living,distance=..1] run data modify entity @s Fire set value 20

execute as @e[type=marker,tag=p_burning_ray] at @s if block ^ ^ ^0.4 #is:airs run tp @s ^ ^ ^0.4
execute as @e[type=marker,tag=p_burning_ray] at @s unless block ^ ^ ^0.4 #is:airs run kill @s
execute as @e[type=marker,tag=p_burning_ray] at @s run particle flame ~ ~ ~ 0 0 0 0 1 normal
execute as @e[type=marker,tag=p_burning_ray] at @s run fill ~ ~ ~ ~ ~ ~ fire replace #is:real_airs
execute at @e[type=!#is:non_living] positioned ~ ~0.5 ~ if entity @e[type=marker,tag=p_burning_ray,distance=..1.3] run damage @n[type=!#is:non_living] 3 is:burning_ray by @s
execute as @e[type=marker,tag=p_burning_ray] at @s as @e[type=!#is:non_living,distance=..1] run data modify entity @s Fire set value 20

execute as @e[type=marker,tag=p_burning_ray] at @s if block ^ ^ ^0.4 #is:airs run tp @s ^ ^ ^0.4
execute as @e[type=marker,tag=p_burning_ray] at @s unless block ^ ^ ^0.4 #is:airs run kill @s
execute as @e[type=marker,tag=p_burning_ray] at @s run particle flame ~ ~ ~ 0 0 0 0 1 normal
execute as @e[type=marker,tag=p_burning_ray] at @s run fill ~ ~ ~ ~ ~ ~ fire replace #is:real_airs
execute at @e[type=!#is:non_living] positioned ~ ~0.5 ~ if entity @e[type=marker,tag=p_burning_ray,distance=..1.3] run damage @n[type=!#is:non_living] 3 is:burning_ray by @s
execute as @e[type=marker,tag=p_burning_ray] at @s as @e[type=!#is:non_living,distance=..1] run data modify entity @s Fire set value 20

execute as @e[type=marker,tag=p_burning_ray] at @s if block ^ ^ ^0.4 #is:airs run tp @s ^ ^ ^0.4
execute as @e[type=marker,tag=p_burning_ray] at @s unless block ^ ^ ^0.4 #is:airs run kill @s
execute as @e[type=marker,tag=p_burning_ray] at @s run particle flame ~ ~ ~ 0 0 0 0 1 normal
execute as @e[type=marker,tag=p_burning_ray] at @s run fill ~ ~ ~ ~ ~ ~ fire replace #is:real_airs
execute at @e[type=!#is:non_living] positioned ~ ~0.5 ~ if entity @e[type=marker,tag=p_burning_ray,distance=..1.3] run damage @n[type=!#is:non_living] 2 is:burning_ray by @s
execute as @e[type=marker,tag=p_burning_ray] at @s as @e[type=!#is:non_living,distance=..1] run data modify entity @s Fire set value 20

execute as @e[type=marker,tag=p_burning_ray] at @s if block ^ ^ ^0.4 #is:airs run tp @s ^ ^ ^0.4
execute as @e[type=marker,tag=p_burning_ray] at @s unless block ^ ^ ^0.4 #is:airs run kill @s
execute as @e[type=marker,tag=p_burning_ray] at @s run particle flame ~ ~ ~ 0 0 0 0 1 normal
execute as @e[type=marker,tag=p_burning_ray] at @s run fill ~ ~ ~ ~ ~ ~ fire replace #is:real_airs
execute at @e[type=!#is:non_living] positioned ~ ~0.5 ~ if entity @e[type=marker,tag=p_burning_ray,distance=..1.3] run damage @n[type=!#is:non_living] 2 is:burning_ray by @s
execute as @e[type=marker,tag=p_burning_ray] at @s as @e[type=!#is:non_living,distance=..1] run data modify entity @s Fire set value 20

execute as @e[type=marker,tag=p_burning_ray] at @s if block ^ ^ ^0.4 #is:airs run tp @s ^ ^ ^0.4
execute as @e[type=marker,tag=p_burning_ray] at @s unless block ^ ^ ^0.4 #is:airs run kill @s
execute as @e[type=marker,tag=p_burning_ray] at @s run particle flame ~ ~ ~ 0 0 0 0 1 normal
execute as @e[type=marker,tag=p_burning_ray] at @s run fill ~ ~ ~ ~ ~ ~ fire replace #is:real_airs
execute at @e[type=!#is:non_living] positioned ~ ~0.5 ~ if entity @e[type=marker,tag=p_burning_ray,distance=..1.3] run damage @n[type=!#is:non_living] 2 is:burning_ray by @s
execute as @e[type=marker,tag=p_burning_ray] at @s as @e[type=!#is:non_living,distance=..1] run data modify entity @s Fire set value 20

execute as @e[type=marker,tag=p_burning_ray] at @s if block ^ ^ ^0.4 #is:airs run tp @s ^ ^ ^0.4
execute as @e[type=marker,tag=p_burning_ray] at @s unless block ^ ^ ^0.4 #is:airs run kill @s
execute as @e[type=marker,tag=p_burning_ray] at @s run particle flame ~ ~ ~ 0 0 0 0 1 normal
execute as @e[type=marker,tag=p_burning_ray] at @s run fill ~ ~ ~ ~ ~ ~ fire replace #is:real_airs
execute at @e[type=!#is:non_living] positioned ~ ~0.5 ~ if entity @e[type=marker,tag=p_burning_ray,distance=..1.3] run damage @n[type=!#is:non_living] 2 is:burning_ray by @s
execute as @e[type=marker,tag=p_burning_ray] at @s as @e[type=!#is:non_living,distance=..1] run data modify entity @s Fire set value 20

execute as @e[type=marker,tag=p_burning_ray] at @s if block ^ ^ ^0.4 #is:airs run tp @s ^ ^ ^0.4
execute as @e[type=marker,tag=p_burning_ray] at @s unless block ^ ^ ^0.4 #is:airs run kill @s
execute as @e[type=marker,tag=p_burning_ray] at @s run particle flame ~ ~ ~ 0 0 0 0 1 normal
execute as @e[type=marker,tag=p_burning_ray] at @s run fill ~ ~ ~ ~ ~ ~ fire replace #is:real_airs
execute at @e[type=!#is:non_living] positioned ~ ~0.5 ~ if entity @e[type=marker,tag=p_burning_ray,distance=..1.3] run damage @n[type=!#is:non_living] 2 is:burning_ray by @s
execute as @e[type=marker,tag=p_burning_ray] at @s as @e[type=!#is:non_living,distance=..1] run data modify entity @s Fire set value 20

kill @e[type=marker,tag=p_burning_ray]
