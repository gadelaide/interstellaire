experience add @s -700 points
summon marker ~ ~ ~ {Tags:["p_explo_beam","p_attack"]}
scoreboard players operation @n[type=marker,tag=p_explo_beam] p_playerId = @s p_playerId
execute as @s at @s rotated as @s run tp @n[type=marker,tag=p_explo_beam] ~ ~1.3 ~ ~ ~
execute as @s at @s run playsound entity.firework_rocket.launch player @a ~ ~ ~ 0.8 
function is:powers/3explo_beam/main