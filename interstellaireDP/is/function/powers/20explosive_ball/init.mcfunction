experience add @s -80 points
execute at @s anchored eyes run summon fireball ^ ^ ^0.8 {ExplosionPower:1b,Tags:["p_explo_ball","p_attack"]}

execute at @s as @n[type=minecraft:fireball,tag=p_explo_ball] store result score @s p_motion_x1 run data get entity @s Pos[0] 1000
execute at @s as @n[type=minecraft:fireball,tag=p_explo_ball] store result score @s p_motion_y1 run data get entity @s Pos[1] 1000
execute at @s as @n[type=minecraft:fireball,tag=p_explo_ball] store result score @s p_motion_z1 run data get entity @s Pos[2] 1000

execute at @s as @n[type=minecraft:fireball,tag=p_explo_ball] at @s facing entity @p eyes run tp @s ^ ^ ^-0.1

execute at @s as @n[type=minecraft:fireball,tag=p_explo_ball] store result score @s p_motion_x2 run data get entity @s Pos[0] 1000
execute at @s as @n[type=minecraft:fireball,tag=p_explo_ball] store result score @s p_motion_y2 run data get entity @s Pos[1] 1000
execute at @s as @n[type=minecraft:fireball,tag=p_explo_ball] store result score @s p_motion_z2 run data get entity @s Pos[2] 1000

execute at @s as @n[type=minecraft:fireball,tag=p_explo_ball] store result entity @s power[0] double 0.001 run scoreboard players operation @s p_motion_x2 -= @s p_motion_x1
execute at @s as @n[type=minecraft:fireball,tag=p_explo_ball] store result entity @s power[1] double 0.001 run scoreboard players operation @s p_motion_y2 -= @s p_motion_y1
execute at @s as @n[type=minecraft:fireball,tag=p_explo_ball] store result entity @s power[2] double 0.001 run scoreboard players operation @s p_motion_z2 -= @s p_motion_z1

execute at @s as @n[type=minecraft:fireball,tag=p_explo_ball] store result entity @s Motion[0] double 0.019 run scoreboard players get @s p_motion_x2
execute at @s as @n[type=minecraft:fireball,tag=p_explo_ball] store result entity @s Motion[1] double 0.019 run scoreboard players get @s p_motion_y2
execute at @s as @n[type=minecraft:fireball,tag=p_explo_ball] store result entity @s Motion[2] double 0.019 run scoreboard players get @s p_motion_z2


execute as @s at @s run playsound entity.blaze.shoot player @a ~ ~ ~ 0.8 