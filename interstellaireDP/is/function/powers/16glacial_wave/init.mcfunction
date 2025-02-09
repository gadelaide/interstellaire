experience add @s -400 points
summon area_effect_cloud ~ ~ ~ {Duration:6,Tags:["p_glacial_wave","p_attack"]}
execute as @s at @s rotated as @s run tp @e[type=area_effect_cloud,tag=p_glacial_wave] ~ ~1.3 ~ ~ ~
function is:powers/16glacial_wave/main