experience add @s -100 points
summon area_effect_cloud ~ ~ ~ {Duration:12,Tags:["p_flash"]}
scoreboard players operation @n[type=area_effect_cloud,tag=p_flash] p_playerId = @s p_playerId
execute as @s at @s rotated as @s run tp @n[type=area_effect_cloud,tag=p_flash] ~ ~1.5 ~ ~ ~
effect give @s slow_falling 1 255 true
function is:powers/13flash_move/main