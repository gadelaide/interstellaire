execute as @e[type=marker,tag=p_extinguisher] at @s if block ^ ^ ^1 #is:airs run tp @s ^ ^ ^1
execute as @e[type=marker,tag=p_extinguisher] at @s run particle splash ~ ~ ~ 2 2 2 0.5 15 normal
execute as @e[type=marker,tag=p_extinguisher] at @s run fill ~5 ~5 ~5 ~-5 ~-5 ~-5 air replace #fire

execute as @e[type=marker,tag=p_extinguisher] at @s if block ^ ^ ^1 #is:airs run tp @s ^ ^ ^1
execute as @e[type=marker,tag=p_extinguisher] at @s run particle splash ~ ~ ~ 2 2 2 0.5 15 normal
execute as @e[type=marker,tag=p_extinguisher] at @s run fill ~5 ~5 ~5 ~-5 ~-5 ~-5 air replace #fire

execute as @e[type=marker,tag=p_extinguisher] at @s as @e[distance=..6] run data modify entity @s Fire set value -20
execute as @e[type=marker,tag=p_extinguisher] at @s as @e[distance=..6,type=blaze] run effect give @s instant_damage 1 0
execute as @e[type=marker,tag=p_extinguisher] at @s as @e[distance=..6,type=enderman] run effect give @s instant_damage 1 0

execute as @e[type=marker,tag=p_extinguisher] at @s if block ^ ^ ^1 #is:airs run schedule function is:powers/14extinguisher/main 1t

execute as @e[type=marker,tag=p_extinguisher] at @s unless block ^ ^ ^1 #is:airs run playsound minecraft:entity.player.splash player @a ~ ~ ~ 0.5
execute as @e[type=marker,tag=p_extinguisher] at @s unless block ^ ^ ^1 #is:airs run kill @s


