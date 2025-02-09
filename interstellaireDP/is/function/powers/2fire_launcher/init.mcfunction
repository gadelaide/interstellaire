experience add @s -100 points
summon marker ~ ~ ~ {Tags:["p_fire_launcher","p_attack"]}
scoreboard players operation @n[type=marker,tag=p_fire_launcher] p_playerId = @s p_playerId
execute as @s at @s rotated as @s run tp @n[type=marker,tag=p_fire_launcher] ~ ~1.3 ~ ~ ~
execute as @s at @s run playsound entity.firework_rocket.launch player @a ~ ~ ~ 0.8 
function is:powers/2fire_launcher/main