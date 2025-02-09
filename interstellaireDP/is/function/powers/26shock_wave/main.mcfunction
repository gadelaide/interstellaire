execute at @e[type=armor_stand,tag=p_shockwave] run tp @n[tag=!p_shockwave,distance=..2] ~ ~ ~
execute as @e[type=armor_stand,tag=p_shockwave,nbt={Motion:[0.0,0.0,0.0]}] run kill @s

execute if entity @e[type=armor_stand,tag=p_shockwave] run schedule function is:powers/26shock_wave/main 1t