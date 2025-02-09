experience add @s -200 points

execute at @s as @e[distance=0.2..10,type=!#is:non_living] at @s align xz positioned ~0.5 ~ ~0.5 run tp @s ~ ~ ~ 
execute at @s as @e[distance=0.2..10,type=!#is:non_living] at @s run fill ~-1 ~-1 ~-1 ~1 ~2 ~1 ice replace #is:real_airs
execute at @s as @e[distance=0.2..10,type=!#is:non_living] at @s run fill ~ ~ ~ ~ ~1 ~ air replace ice

execute as @s at @s run playsound block.glass.break block @a ~ ~ ~ 0.8