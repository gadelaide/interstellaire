
xp add @s -1 points

particle dust{color:[0.000,0.165,1.000],scale:0.5} ~ ~1 ~ 3 3 3 0 10 normal

summon marker ~ ~ ~3 {Motion:[0.0,-0.3,0.3],Tags:["p_deflector"]}
summon marker ~ ~ ~-3 {Motion:[0.0,-0.3,-0.3],Tags:["p_deflector"]}
summon marker ~3 ~ ~ {Motion:[0.3,-0.3,0.0],Tags:["p_deflector"]}
summon marker ~-3 ~ ~ {Motion:[-0.3,-0.3,0.0],Tags:["p_deflector"]}
summon marker ~ ~3 ~ {Motion:[0.0,0.3,0.0],Tags:["p_deflector"]}
summon marker ~ ~-3 ~ {Motion:[0.0,-0.3,0.0],Tags:["p_deflector"]}
summon marker ~2.12 ~ ~2.12 {Motion:[0.212,-0.3,0.212],Tags:["p_deflector"]}
summon marker ~-2.12 ~ ~2.12 {Motion:[-0.212,-0.3,0.212],Tags:["p_deflector"]}
summon marker ~2.12 ~ ~-2.12 {Motion:[0.212,-0.3,-0.212],Tags:["p_deflector"]}
summon marker ~-2.12 ~ ~-2.12 {Motion:[-0.212,-0.3,-0.212],Tags:["p_deflector"]}

execute as @e[type=#impact_projectiles,distance=..4,tag=!p_stopped] at @s run data modify entity @s Motion[0] set from entity @n[type=marker,tag=p_deflector] Motion[0]
execute as @e[type=#impact_projectiles,distance=..4,tag=!p_stopped] at @s run data modify entity @s Motion[1] set from entity @n[type=marker,tag=p_deflector] Motion[1]
execute as @e[type=#impact_projectiles,distance=..4,tag=!p_stopped] at @s run data modify entity @s Motion[2] set from entity @n[type=marker,tag=p_deflector] Motion[2]
execute as @e[type=#impact_projectiles,distance=..4,tag=!p_stopped] run data merge entity @s {power:[0.0,0.0,0.0]}
execute at @e[type=#impact_projectiles,distance=..4,tag=!p_stopped] run particle dust{color:[0.000,0.165,1.000],scale:2} ~ ~ ~ 0.2 0.2 0.2 0.3 10 normal
execute at @e[type=#impact_projectiles,distance=..4,tag=!p_stopped] run playsound minecraft:item.shield.block player @a ~ ~ ~ 0.8
execute as @e[type=#impact_projectiles,distance=..4] run tag @s add p_stopped

execute at @e[distance=..4,tag=p_attack] run particle dust{color:[0.000,0.165,1.000],scale:2} ~ ~ ~ 0.2 0.2 0.2 0.1 10 normal
kill @e[type=marker,tag=p_deflector]
execute as @e[distance=..4,tag=p_attack] run kill @s


