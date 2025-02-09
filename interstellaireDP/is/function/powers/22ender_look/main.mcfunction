execute as @e[type=marker,tag=p_enderlook] at @s if block ^ ^ ^1 #is:airs run tp @s ^ ^ ^1
execute as @e[type=marker,tag=p_enderlook] at @s if block ^ ^ ^1 #is:airs run tp @s ^ ^ ^1
execute as @e[type=marker,tag=p_enderlook] at @s if block ^ ^ ^1 #is:airs run tp @s ^ ^ ^1
execute as @e[type=marker,tag=p_enderlook] at @s if block ^ ^ ^1 #is:airs run tp @s ^ ^ ^1
execute as @e[type=marker,tag=p_enderlook] at @s if block ^ ^ ^1 #is:airs run tp @s ^ ^ ^1
execute as @e[type=marker,tag=p_enderlook] at @s if block ^ ^ ^1 #is:airs run tp @s ^ ^ ^1
execute as @e[type=marker,tag=p_enderlook] at @s if block ^ ^ ^1 #is:airs run tp @s ^ ^ ^1
execute as @e[type=marker,tag=p_enderlook] at @s if block ^ ^ ^1 #is:airs run tp @s ^ ^ ^1
execute as @e[type=marker,tag=p_enderlook] at @s if block ^ ^ ^1 #is:airs run tp @s ^ ^ ^1
execute as @e[type=marker,tag=p_enderlook] at @s if block ^ ^ ^1 #is:airs run tp @s ^ ^ ^1

tag @e[type=marker,tag=p_range1] add p_range0
tag @e[type=marker,tag=p_range2] add p_range1
tag @e[type=marker,tag=p_range3] add p_range2
tag @e[type=marker,tag=p_range4] add p_range3
tag @e[type=marker,tag=p_range5] add p_range4
tag @e[type=marker,tag=p_range6] add p_range5
tag @e[type=marker,tag=p_range7] add p_range6
tag @e[type=marker,tag=p_range8] add p_range7
tag @e[type=marker,tag=p_range9] add p_range8
tag @e[type=marker,tag=p_range10] add p_range9

execute at @e[type=marker,tag=p_enderlook] unless block ^ ^ ^1 #is:airs as @a at @s as @e[type=marker,tag=p_enderlook] if score @s p_playerId = @p p_playerId run tp @p @s
execute as @e[type=marker,tag=p_enderlook] at @s unless block ^ ^ ^1 #is:airs run kill @s

execute at @e[type=marker,tag=p_enderlook,tag=p_range0] as @a at @s as @e[type=marker,tag=p_enderlook] if score @s p_playerId = @p p_playerId run tp @p @s
execute as @e[type=marker,tag=p_enderlook,tag=p_range0] run kill @s

execute at @e[type=marker,tag=p_enderlook,tag=!p_range0] run function is:powers/22ender_look/main
