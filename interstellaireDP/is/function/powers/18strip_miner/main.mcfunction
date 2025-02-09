execute as @e[type=area_effect_cloud,tag=p_strip_miner] at @s if block ^ ^ ^ #is:base_stone run setblock ^ ^ ^ air destroy
execute as @e[type=area_effect_cloud,tag=p_strip_miner] at @s if block ^1 ^ ^ #is:base_stone run setblock ^1 ^ ^ air destroy
execute as @e[type=area_effect_cloud,tag=p_strip_miner] at @s if block ^-1 ^ ^ #is:base_stone run setblock ^-1 ^ ^ air destroy
execute as @e[type=area_effect_cloud,tag=p_strip_miner] at @s if block ^ ^1 ^ #is:base_stone run setblock ^ ^1 ^ air destroy
execute as @e[type=area_effect_cloud,tag=p_strip_miner] at @s if block ^1 ^1 ^ #is:base_stone run setblock ^1 ^1 ^ air destroy
execute as @e[type=area_effect_cloud,tag=p_strip_miner] at @s if block ^-1 ^1 ^ #is:base_stone run setblock ^-1 ^1 ^ air destroy
execute as @e[type=area_effect_cloud,tag=p_strip_miner] at @s if block ^ ^2 ^ #is:base_stone run setblock ^ ^2 ^ air destroy
execute as @e[type=area_effect_cloud,tag=p_strip_miner] at @s if block ^1 ^2 ^ #is:base_stone run setblock ^1 ^2 ^ air destroy
execute as @e[type=area_effect_cloud,tag=p_strip_miner] at @s if block ^-1 ^2 ^ #is:base_stone run setblock ^-1 ^2 ^ air destroy

execute as @e[type=area_effect_cloud,tag=p_strip_miner] at @s run tp @s ^ ^ ^1
execute as @e[type=area_effect_cloud,tag=p_strip_miner] run schedule function is:powers/18strip_miner/main 1t

