execute at @e[type=marker,tag=p_scanner] if block ~ ~ ~ #is:all_ores run summon block_display ~ ~ ~ {Glowing:1b,Tags:["p_scanned"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]},block_state:{Name:"minecraft:stone"}}
execute as @e[type=marker,tag=p_scanner] at @s if entity @e[type=marker,tag=p_stop_scanner,dx=1,dy=40,dz=1] run tag @e[type=marker,tag=p_stop_scanner,dx=1,dy=40,dz=1,limit=1] add p_scan_done
execute as @e[type=marker,tag=p_scanner] at @s if entity @e[type=marker,tag=p_stop_scanner,dx=1,dy=40,dz=1] run kill @s
execute as @e[type=marker,tag=p_scanner] at @s if entity @e[type=marker,tag=p_stop_scanner,dx=40,dy=40,dz=1] run tp @s ~1 ~ ~-31
execute as @e[type=marker,tag=p_scanner] at @s run tp @s ~ ~ ~1
execute at @e[type=marker,tag=p_scanner] if block ~ ~ ~ #is:all_ores run summon block_display ~ ~ ~ {Glowing:1b,Tags:["p_scanned"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]},block_state:{Name:"minecraft:stone"}}
execute as @e[type=marker,tag=p_scanner] at @s if entity @e[type=marker,tag=p_stop_scanner,dx=1,dy=40,dz=1] run tag @e[type=marker,tag=p_stop_scanner,dx=1,dy=40,dz=1,limit=1] add p_scan_done
execute as @e[type=marker,tag=p_scanner] at @s if entity @e[type=marker,tag=p_stop_scanner,dx=1,dy=40,dz=1] run kill @s
execute as @e[type=marker,tag=p_scanner] at @s if entity @e[type=marker,tag=p_stop_scanner,dx=40,dy=40,dz=1] run tp @s ~1 ~ ~-31
execute as @e[type=marker,tag=p_scanner] at @s run tp @s ~ ~ ~1
execute at @e[type=marker,tag=p_scanner] if block ~ ~ ~ #is:all_ores run summon block_display ~ ~ ~ {Glowing:1b,Tags:["p_scanned"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]},block_state:{Name:"minecraft:stone"}}
execute as @e[type=marker,tag=p_scanner] at @s if entity @e[type=marker,tag=p_stop_scanner,dx=1,dy=40,dz=1] run tag @e[type=marker,tag=p_stop_scanner,dx=1,dy=40,dz=1,limit=1] add p_scan_done
execute as @e[type=marker,tag=p_scanner] at @s if entity @e[type=marker,tag=p_stop_scanner,dx=1,dy=40,dz=1] run kill @s
execute as @e[type=marker,tag=p_scanner] at @s if entity @e[type=marker,tag=p_stop_scanner,dx=40,dy=40,dz=1] run tp @s ~1 ~ ~-31
execute as @e[type=marker,tag=p_scanner] at @s run tp @s ~ ~ ~1
execute at @e[type=marker,tag=p_scanner] if block ~ ~ ~ #is:all_ores run summon block_display ~ ~ ~ {Glowing:1b,Tags:["p_scanned"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]},block_state:{Name:"minecraft:stone"}}
execute as @e[type=marker,tag=p_scanner] at @s if entity @e[type=marker,tag=p_stop_scanner,dx=1,dy=40,dz=1] run tag @e[type=marker,tag=p_stop_scanner,dx=1,dy=40,dz=1,limit=1] add p_scan_done
execute as @e[type=marker,tag=p_scanner] at @s if entity @e[type=marker,tag=p_stop_scanner,dx=1,dy=40,dz=1] run kill @s
execute as @e[type=marker,tag=p_scanner] at @s if entity @e[type=marker,tag=p_stop_scanner,dx=40,dy=40,dz=1] run tp @s ~1 ~ ~-31
execute as @e[type=marker,tag=p_scanner] at @s run tp @s ~ ~ ~1
execute at @e[type=marker,tag=p_scanner] if block ~ ~ ~ #is:all_ores run summon block_display ~ ~ ~ {Glowing:1b,Tags:["p_scanned"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]},block_state:{Name:"minecraft:stone"}}
execute as @e[type=marker,tag=p_scanner] at @s if entity @e[type=marker,tag=p_stop_scanner,dx=1,dy=40,dz=1] run tag @e[type=marker,tag=p_stop_scanner,dx=1,dy=40,dz=1,limit=1] add p_scan_done
execute as @e[type=marker,tag=p_scanner] at @s if entity @e[type=marker,tag=p_stop_scanner,dx=1,dy=40,dz=1] run kill @s
execute as @e[type=marker,tag=p_scanner] at @s if entity @e[type=marker,tag=p_stop_scanner,dx=40,dy=40,dz=1] run tp @s ~1 ~ ~-31
execute as @e[type=marker,tag=p_scanner] at @s run tp @s ~ ~ ~1

execute as @e[type=block_display,tag=p_scanned] at @s if block ~ ~ ~ #minecraft:diamond_ores run team join aqua_team @s
execute as @e[type=block_display,tag=p_scanned] at @s if block ~ ~ ~ #minecraft:iron_ores run team join gray_team @s
execute as @e[type=block_display,tag=p_scanned] at @s if block ~ ~ ~ #minecraft:gold_ores run team join yellow_team @s
execute as @e[type=block_display,tag=p_scanned] at @s if block ~ ~ ~ #minecraft:coal_ores run team join black_team @s
execute as @e[type=block_display,tag=p_scanned] at @s if block ~ ~ ~ #minecraft:emerald_ores run team join green_team @s
execute as @e[type=block_display,tag=p_scanned] at @s if block ~ ~ ~ #minecraft:redstone_ores run team join red_team @s
execute as @e[type=block_display,tag=p_scanned] at @s if block ~ ~ ~ #minecraft:lapis_ores run team join blue_team @s
execute as @e[type=block_display,tag=p_scanned] at @s if block ~ ~ ~ #minecraft:copper_ores run team join gold_team @s
execute as @e[type=block_display,tag=p_scanned] at @s if block ~ ~ ~ minecraft:nether_quartz_ore run team join white_team @s
execute as @e[type=block_display,tag=p_scanned] at @s if block ~ ~ ~ minecraft:ancient_debris run team join dark_gray_team @s

kill @e[type=marker,tag=p_scan_done]

execute as @e[type=marker,tag=p_scanner] at @s run schedule function is:powers/17depth_scan/main 1t

