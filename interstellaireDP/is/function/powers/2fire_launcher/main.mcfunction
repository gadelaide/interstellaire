tag @e[type=marker,tag=p_fire_launcher] remove p_stop
execute as @e[type=marker,tag=p_fire_launcher] at @s if entity @e[type=!#is:non_living,distance=..1.5] run tag @s add p_stop
execute as @a at @s as @e[type=marker,tag=p_fire_launcher] if score @s p_playerId = @p p_playerId if entity @s[distance=..1.7] run tag @s remove p_stop
execute as @e[type=marker,tag=p_fire_launcher] at @s unless block ^ ^ ^1 #is:airs run tag @s add p_stop

execute as @e[type=marker,tag=!p_stop,tag=p_fire_launcher] at @s run tp @s ^ ^ ^1
execute as @e[type=marker,tag=!p_stop,tag=p_fire_launcher] at @s run particle flame ~ ~ ~ 0.3 0.3 0.3 0 3 normal
execute as @e[type=marker,tag=!p_stop,tag=p_fire_launcher] at @s run playsound entity.firework_rocket.launch player @a ~ ~ ~ 0.8 1

execute as @e[type=!#is:non_living] at @s if entity @e[type=marker,tag=p_fire_launcher,tag=p_stop,distance=..2.5] as @a if score @n[type=marker,tag=p_fire_launcher,tag=p_stop] p_playerId = @s p_playerId run damage @n[type=!#is:non_living] 0.01 in_fire by @s
execute as @e[type=marker,tag=p_fire_launcher,tag=p_stop] at @s run fill ~2 ~2 ~2 ~-2 ~-2 ~-2 fire replace #is:real_airs
execute as @e[type=!#is:non_living] at @s if entity @e[type=marker,tag=p_fire_launcher,tag=p_stop,distance=..2.5] run data modify entity @s Fire set value 30

execute if entity @e[type=marker,tag=p_fire_launcher,tag=!p_stop] run schedule function is:powers/2fire_launcher/main 1t
execute as @e[type=marker,tag=p_fire_launcher,tag=p_stop] run kill @s
