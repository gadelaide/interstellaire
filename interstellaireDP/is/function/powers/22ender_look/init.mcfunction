experience add @s -450 points
summon marker ~ ~ ~ {Tags:["p_enderlook","p_range10"]}
scoreboard players operation @n[type=marker,tag=p_enderlook] p_playerId = @s p_playerId
execute as @s at @s rotated as @s run tp @n[type=marker,tag=p_enderlook] ~ ~1.5 ~ ~ ~
playsound entity.enderman.teleport player @a ~ ~ ~ 0.8 1
particle portal ~ ~1 ~ 0.2 0.5 0.2 0.2 20 normal
function is:powers/22ender_look/main