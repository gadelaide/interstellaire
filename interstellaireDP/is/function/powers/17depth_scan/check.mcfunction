execute if score @s p_cooldown matches ..40 run scoreboard players set @s p_cooldown 40
scoreboard players set @s[level=..49] p_cooldown 0
execute as @s if entity @s[level=..49] run tellraw @s ["",{"fallback":"[Powers] ","translate":"message.powers.main","bold":true},{"fallback":"Level ","translate":"message.powers.require1","color":"gold"},{"text":"50","color":"gold"},{"fallback":" required","translate":"message.powers.require2","color":"gold"}]
execute as @s if entity @s[level=50..] if entity @e[type=marker,tag=p_stop_scanner,distance=..64] run tellraw @s ["",{"fallback":"[Powers] ","translate":"message.powers.main","bold":true},{"fallback":"A near scan is already in progress","translate":"message.powers.fail_scan","color":"gold"}]
execute as @s if entity @s[level=50..] unless entity @e[type=marker,tag=p_stop_scanner,distance=..64] at @s run function is:powers/17depth_scan/init


