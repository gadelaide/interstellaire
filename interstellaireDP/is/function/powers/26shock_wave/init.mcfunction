experience add @s -200 points

execute at @s store success score .glass p_playerId run fill ~-1 ~-1 ~-1 ~1 ~2 ~1 minecraft:air replace #is:shock_wave_sensible
execute at @s if score .glass p_playerId matches 1 run playsound minecraft:block.glass.break player @a ~ ~ ~ 0.8 1
execute at @s run fill ~-4 ~-2 ~-4 ~4 ~2 ~4 minecraft:air replace #minecraft:fire

execute at @s run playsound minecraft:entity.dragon_fireball.explode player @a ~ ~ ~ 0.8 1
execute at @s run particle gust_emitter_small ~ ~ ~

execute at @s at @e[type=!#is:non_movable,distance=0.2..1.5] run summon armor_stand ~ ~ ~ {Invulnerable:1b,Small:1b,Invisible:1b,Tags:["p_shockwave","p_attack","power1"]}
execute at @s at @e[type=!#is:non_movable,distance=1.5..3] run summon armor_stand ~ ~ ~ {Invulnerable:1b,Small:1b,Invisible:1b,Tags:["p_shockwave","p_attack","power2"]}
execute at @s at @e[type=!#is:non_movable,distance=3..6] run summon armor_stand ~ ~ ~ {Invulnerable:1b,Small:1b,Invisible:1b,Tags:["p_shockwave","p_attack","power3"]}

execute at @s at @e[type=!#is:non_living,distance=0.2..6] run damage @n[type=!#is:non_living] 3 explosion by @s

execute at @s as @e[type=armor_stand,tag=p_shockwave,distance=..6] store result score @s p_motion_x1 run data get entity @s Pos[0] 1000
execute at @s as @e[type=armor_stand,tag=p_shockwave,distance=..6] store result score @s p_motion_y1 run data get entity @s Pos[1] 1000
execute at @s as @e[type=armor_stand,tag=p_shockwave,distance=..6] store result score @s p_motion_z1 run data get entity @s Pos[2] 1000

execute at @s at @e[type=armor_stand,tag=p_shockwave,distance=..6] positioned ~ ~2 ~ facing entity @s feet positioned ~ ~-2 ~ run tp @n[type=armor_stand,tag=p_shockwave] ^ ^ ^-0.07

execute at @s as @e[type=armor_stand,tag=p_shockwave,distance=..7] store result score @s p_motion_x2 run data get entity @s Pos[0] 1000
execute at @s as @e[type=armor_stand,tag=p_shockwave,distance=..7] store result score @s p_motion_y2 run data get entity @s Pos[1] 1000
execute at @s as @e[type=armor_stand,tag=p_shockwave,distance=..7] store result score @s p_motion_z2 run data get entity @s Pos[2] 1000

execute at @s as @e[type=armor_stand,tag=p_shockwave,tag=power1,distance=..7] store result entity @s Motion[0] double 0.04 run scoreboard players operation @s p_motion_x2 -= @s p_motion_x1
execute at @s as @e[type=armor_stand,tag=p_shockwave,tag=power1,distance=..7] store result entity @s Motion[1] double 0.02 run scoreboard players operation @s p_motion_y2 -= @s p_motion_y1
execute at @s as @e[type=armor_stand,tag=p_shockwave,tag=power1,distance=..7] store result entity @s Motion[2] double 0.04 run scoreboard players operation @s p_motion_z2 -= @s p_motion_z1

execute at @s as @e[type=armor_stand,tag=p_shockwave,tag=power2,distance=..7] store result entity @s Motion[0] double 0.03 run scoreboard players operation @s p_motion_x2 -= @s p_motion_x1
execute at @s as @e[type=armor_stand,tag=p_shockwave,tag=power2,distance=..7] store result entity @s Motion[1] double 0.015 run scoreboard players operation @s p_motion_y2 -= @s p_motion_y1
execute at @s as @e[type=armor_stand,tag=p_shockwave,tag=power2,distance=..7] store result entity @s Motion[2] double 0.03 run scoreboard players operation @s p_motion_z2 -= @s p_motion_z1

execute at @s as @e[type=armor_stand,tag=p_shockwave,tag=power3,distance=..7] store result entity @s Motion[0] double 0.02 run scoreboard players operation @s p_motion_x2 -= @s p_motion_x1
execute at @s as @e[type=armor_stand,tag=p_shockwave,tag=power3,distance=..7] store result entity @s Motion[1] double 0.01 run scoreboard players operation @s p_motion_y2 -= @s p_motion_y1
execute at @s as @e[type=armor_stand,tag=p_shockwave,tag=power3,distance=..7] store result entity @s Motion[2] double 0.02 run scoreboard players operation @s p_motion_z2 -= @s p_motion_z1

function is:powers/26shock_wave/main