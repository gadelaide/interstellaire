experience add @s -150 points

playsound entity.enderman.teleport player @a ~ ~ ~ 0.8 1
particle portal ~ ~1 ~ 0.2 0.5 0.2 0.2 20 normal

execute at @s positioned over world_surface run playsound entity.enderman.teleport player @a ~ ~ ~ 0.8 1
execute at @s positioned over world_surface run particle portal ~ ~1 ~ 0.2 0.5 0.2 0.2 20 normal

execute at @s positioned over world_surface run tp @s ~ ~ ~

