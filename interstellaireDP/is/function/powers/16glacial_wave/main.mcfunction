execute as @e[type=area_effect_cloud,tag=p_glacial_wave] at @s run tp @s ^ ^ ^1
execute as @e[type=area_effect_cloud,tag=p_glacial_wave] at @s run tp @s ^ ^ ^1
execute as @e[type=area_effect_cloud,tag=p_glacial_wave] at @s run tp @s ^ ^ ^1
execute as @e[type=area_effect_cloud,tag=p_glacial_wave] at @s run particle snowflake ~ ~ ~ 2 2 2 0.5 8 normal
execute as @e[type=area_effect_cloud,tag=p_glacial_wave] at @s run playsound entity.player.hurt_freeze player @a ~ ~ ~ 0.5
execute as @e[type=area_effect_cloud,tag=p_glacial_wave] at @s run fill ~5 ~5 ~5 ~-5 ~-5 ~-5 air replace fire
execute as @e[type=area_effect_cloud,tag=p_glacial_wave] at @s run fill ~5 ~1 ~5 ~-5 ~-5 ~-5 snow replace #is:real_airs
execute as @e[type=area_effect_cloud,tag=p_glacial_wave] at @s run fill ~5 ~5 ~5 ~-5 ~-5 ~-5 obsidian replace lava
execute as @e[type=area_effect_cloud,tag=p_glacial_wave] at @s run fill ~5 ~5 ~5 ~-5 ~-5 ~-5 packed_ice replace #leaves
execute as @e[type=area_effect_cloud,tag=p_glacial_wave] at @s run fill ~5 ~5 ~5 ~-5 ~-5 ~-5 ice replace water

execute at @s at @e[type=!#is:non_living,distance=0.2..] if entity @e[type=area_effect_cloud,tag=p_glacial_wave,distance=..7] run damage @n[type=!#is:non_living] 2 is:freezing_wave by @s


execute as @e[type=area_effect_cloud,tag=p_glacial_wave] at @s run schedule function is:powers/16glacial_wave/main 1t


