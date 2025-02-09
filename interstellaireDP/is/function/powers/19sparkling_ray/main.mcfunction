execute as @e[type=area_effect_cloud,tag=p_sparkling_ray] at @s if block ^ ^ ^0.25 #is:airs run tp @s ^ ^ ^0.25
execute as @e[type=area_effect_cloud,tag=p_sparkling_ray] at @s run particle flame ~ ~ ~ 0.1 0.1 0.1 0 1 normal
execute as @e[type=area_effect_cloud,tag=p_sparkling_ray] at @s if block ^ ^ ^0.25 #is:airs run tp @s ^ ^ ^0.25
execute as @e[type=area_effect_cloud,tag=p_sparkling_ray] at @s run particle flame ~ ~ ~ 0.1 0.1 0.1 0 1 normal
execute as @e[type=area_effect_cloud,tag=p_sparkling_ray] at @s if block ^ ^ ^0.25 #is:airs run tp @s ^ ^ ^0.25
execute as @e[type=area_effect_cloud,tag=p_sparkling_ray] at @s run particle flame ~ ~ ~ 0.1 0.1 0.1 0 1 normal
execute as @e[type=area_effect_cloud,tag=p_sparkling_ray] at @s if block ^ ^ ^0.25 #is:airs run tp @s ^ ^ ^0.25
execute as @e[type=area_effect_cloud,tag=p_sparkling_ray] at @s run particle flame ~ ~ ~ 0.1 0.1 0.1 0 1 normal
execute as @e[type=area_effect_cloud,tag=p_sparkling_ray] at @s if block ^ ^ ^1 #is:airs run schedule function is:powers/19sparkling_ray/main 1t
execute as @e[type=area_effect_cloud,tag=p_sparkling_ray] at @s unless block ^ ^ ^1 #is:airs run fill ~ ~-1 ~ ~ ~1 ~ fire replace air
execute as @e[type=area_effect_cloud,tag=p_sparkling_ray] at @s unless block ^ ^ ^1 #is:airs run fill ~ ~-1 ~ ~ ~1 ~ fire replace cave_air
execute as @e[type=area_effect_cloud,tag=p_sparkling_ray] at @s unless block ^ ^ ^1 #is:airs run kill @s


