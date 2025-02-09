experience add @s -40 points
summon area_effect_cloud ~ ~ ~ {Duration:5,Tags:["p_sparkling_ray","p_attack"]}
execute as @s at @s rotated as @s run tp @n[type=area_effect_cloud,tag=p_sparkling_ray] ~ ~1.3 ~ ~ ~
execute as @s at @s run playsound minecraft:entity.blaze.shoot player @a ~ ~ ~ 0.8 
function is:powers/19sparkling_ray/main