experience add @s -400 points
summon area_effect_cloud ~ ~ ~ {Duration:100,Tags:["p_strip_miner"]}
execute as @s[y_rotation=-45..45] at @s align xyz positioned ~0.5 ~0.5 ~0.5 run tp @n[type=area_effect_cloud,tag=p_strip_miner] ~ ~ ~ 0 0
execute as @s[y_rotation=45..135] at @s align xyz positioned ~0.5 ~0.5 ~0.5 run tp @n[type=area_effect_cloud,tag=p_strip_miner] ~ ~ ~ 90 0
execute as @s[y_rotation=-135..-45] at @s align xyz positioned ~0.5 ~0.5 ~0.5 run tp @n[type=area_effect_cloud,tag=p_strip_miner] ~ ~ ~ -90 0
execute as @s[y_rotation=135..180] at @s align xyz positioned ~0.5 ~0.5 ~0.5 run tp @n[type=area_effect_cloud,tag=p_strip_miner] ~ ~ ~ 180 0
execute as @s[y_rotation=-180..-135] at @s align xyz positioned ~0.5 ~0.5 ~0.5 run tp @n[type=area_effect_cloud,tag=p_strip_miner] ~ ~ ~ 180 0

function is:powers/18strip_miner/main