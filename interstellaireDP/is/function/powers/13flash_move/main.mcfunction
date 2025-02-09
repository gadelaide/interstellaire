execute as @e[type=area_effect_cloud,tag=p_flash] at @s if block ^ ^ ^1 #is:fluids run tp @s ^ ^ ^1
execute as @a at @s as @e[type=area_effect_cloud,tag=p_flash] if score @s p_playerId = @p p_playerId run tp @p @s
execute as @e[type=area_effect_cloud,tag=p_flash] at @s run particle dust{color:[1.000,1.000,0.000],scale:1} ~ ~ ~ 0.3 0.3 0.3 0 10 normal
execute as @e[type=area_effect_cloud,tag=p_flash] at @s if block ^ ^ ^1 #is:fluids run tp @s ^ ^ ^1
execute as @a at @s as @e[type=area_effect_cloud,tag=p_flash] if score @s p_playerId = @p p_playerId run tp @p @s
execute as @e[type=area_effect_cloud,tag=p_flash] at @s run particle dust{color:[1.000,1.000,0.000],scale:1} ~ ~ ~ 0.3 0.3 0.3 0 10 normal
execute as @e[type=area_effect_cloud,tag=p_flash] at @s if block ^ ^ ^1 #is:fluids run tp @s ^ ^ ^1
execute as @a at @s as @e[type=area_effect_cloud,tag=p_flash] if score @s p_playerId = @p p_playerId run tp @p @s
execute as @e[type=area_effect_cloud,tag=p_flash] at @s run particle dust{color:[1.000,1.000,0.000],scale:1} ~ ~ ~ 0.3 0.3 0.3 0 10 normal
execute as @e[type=area_effect_cloud,tag=p_flash] at @s if block ^ ^ ^1 #is:fluids run tp @s ^ ^ ^1
execute as @a at @s as @e[type=area_effect_cloud,tag=p_flash] if score @s p_playerId = @p p_playerId run tp @p @s
execute as @e[type=area_effect_cloud,tag=p_flash] at @s run particle dust{color:[1.000,1.000,0.000],scale:1} ~ ~ ~ 0.3 0.3 0.3 0 10 normal
execute as @e[type=area_effect_cloud,tag=p_flash] at @s if block ^ ^ ^1 #is:fluids run schedule function is:powers/13flash_move/main 1t
execute as @e[type=area_effect_cloud,tag=p_flash] at @s unless block ^ ^ ^1 #is:fluids run kill @s
