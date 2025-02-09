tag @e[type=marker,tag=p_explo_beam] remove p_stop
execute as @e[type=marker,tag=p_explo_beam] at @s if entity @e[type=!#is:non_living,distance=..1.5] run tag @s add p_stop
execute as @a at @s as @e[type=marker,tag=p_explo_beam] if score @s p_playerId = @p p_playerId if entity @s[distance=..1.7] run tag @s remove p_stop
execute as @e[type=marker,tag=p_explo_beam] at @s unless block ^ ^ ^1 #is:fluids run tag @s add p_stop

execute as @e[type=marker,tag=!p_stop,tag=p_explo_beam] at @s run tp @s ^ ^ ^1
execute as @e[type=marker,tag=!p_stop,tag=p_explo_beam] at @s run particle lava ~ ~ ~ 0.3 0.3 0.3 0 3 normal
execute as @e[type=marker,tag=!p_stop,tag=p_explo_beam] at @s run playsound entity.firework_rocket.launch player @a ~ ~ ~ 0.8 1

execute as @e[type=!#is:non_living] at @s if entity @e[type=marker,tag=p_explo_beam,tag=p_stop,distance=..7] as @a if score @n[type=marker,tag=p_explo_beam,tag=p_stop] p_playerId = @s p_playerId run damage @n[type=!#is:non_living] 0.01 explosion by @s
execute as @e[type=marker,tag=p_explo_beam,tag=p_stop] at @s run summon tnt ~ ~ ~

execute if entity @e[type=marker,tag=p_explo_beam,tag=!p_stop] run schedule function is:powers/3explo_beam/main 1t
execute as @e[type=marker,tag=p_explo_beam,tag=p_stop] run kill @s
