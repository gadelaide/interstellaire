experience add @s -200 points
summon marker ~ ~ ~ {Tags:["p_lightning","p_attack"]}
scoreboard players operation @n[type=marker,tag=p_lightning] p_playerId = @s p_playerId
execute as @s at @s rotated as @s run tp @n[type=marker,tag=p_lightning] ~ ~1.3 ~ ~ ~
execute as @s at @s run playsound entity.firework_rocket.launch player @a ~ ~ ~ 0.8 
function is:powers/1lightning/main