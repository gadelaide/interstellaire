tag @e[type=marker,tag=p_lightning] remove p_stop
execute as @e[type=marker,tag=p_lightning] at @s if entity @e[type=!#is:non_living,distance=..1.5] run tag @s add p_stop
execute as @a at @s as @e[type=marker,tag=p_lightning] if score @s p_playerId = @p p_playerId if entity @s[distance=..1.7] run tag @s remove p_stop
execute as @e[type=marker,tag=p_lightning] at @s unless block ^ ^ ^1 #is:airs run tag @s add p_stop

execute as @e[type=marker,tag=!p_stop,tag=p_lightning] at @s run tp @s ^ ^ ^1
execute as @e[type=marker,tag=!p_stop,tag=p_lightning] at @s run particle electric_spark ~ ~ ~ 0.3 0.3 0.3 0 3 normal
execute as @e[type=marker,tag=!p_stop,tag=p_lightning] at @s run playsound entity.firework_rocket.launch player @a ~ ~ ~ 0.8 1

execute as @e[type=!#is:non_living] at @s if entity @e[type=marker,tag=p_lightning,tag=p_stop,distance=..3.5] as @a if score @n[type=marker,tag=p_lightning,tag=p_stop] p_playerId = @s p_playerId run damage @n[type=!#is:non_living] 0.01 lightning_bolt by @s
execute as @e[type=marker,tag=p_lightning,tag=p_stop] at @s run summon lightning_bolt

execute if entity @e[type=marker,tag=p_lightning,tag=!p_stop] run schedule function is:powers/1lightning/main 1t
execute as @e[type=marker,tag=p_lightning,tag=p_stop] run kill @s

