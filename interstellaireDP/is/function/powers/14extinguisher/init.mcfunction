experience add @s -50 points
summon marker ~ ~ ~ {Tags:["p_extinguisher"]}
execute as @s at @s rotated as @s run tp @n[type=marker,tag=p_extinguisher] ~ ~1.3 ~ ~ ~
execute as @s at @s run playsound minecraft:block.lava.extinguish player @a ~ ~ ~ 0.8 
function is:powers/14extinguisher/main