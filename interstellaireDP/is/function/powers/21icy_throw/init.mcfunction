experience add @s -50 points
summon marker ~ ~ ~ {Tags:["p_snowball","p_attack"]}
scoreboard players operation @n[type=marker,tag=p_snowball] p_playerId = @s p_playerId
execute as @s at @s rotated as @s run tp @n[type=marker,tag=p_snowball] ~ ~1.3 ~ ~ ~
execute as @s at @s run playsound entity.snowball.throw player @a ~ ~ ~ 0.8
function is:powers/21icy_throw/main

