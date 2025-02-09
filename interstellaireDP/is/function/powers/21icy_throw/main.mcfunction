tag @e[type=marker,tag=p_snowball] remove p_stop
execute as @e[type=marker,tag=p_snowball] at @s if entity @e[type=!#is:non_living,distance=..1.5] run tag @s add p_stop
execute as @a at @s as @e[type=marker,tag=p_snowball] if score @s p_playerId = @p p_playerId if entity @s[distance=..1.7] run tag @s remove p_stop
execute as @e[type=marker,tag=p_snowball] at @s unless block ^ ^ ^1 #is:airs run tag @s add p_stop

execute as @e[type=marker,tag=!p_stop,tag=p_snowball] at @s run tp @s ^ ^ ^1
execute as @e[type=marker,tag=!p_stop,tag=p_snowball] at @s run particle snowflake ~ ~ ~ 0.3 0.3 0.3 0 3 normal
execute as @e[type=marker,tag=!p_stop,tag=p_snowball] at @s run playsound entity.player.hurt_freeze player @a ~ ~ ~ 0.8 1

execute as @e[type=marker,tag=p_snowball,tag=p_stop] at @s run effect give @n[type=!#is:non_living,distance=..1.5] slowness 2 1 true
execute as @e[type=marker,tag=p_snowball,tag=p_stop] at @s as @a if score @s p_playerId = @n[type=marker,tag=p_snowball,tag=p_stop] p_playerId run damage @n[type=!#is:non_living,distance=..1.5] 2 is:freezing_wave by @s

execute if entity @e[type=marker,tag=p_snowball,tag=!p_stop] run schedule function is:powers/21icy_throw/main 1t
execute as @e[type=marker,tag=p_snowball,tag=p_stop] run kill @s
