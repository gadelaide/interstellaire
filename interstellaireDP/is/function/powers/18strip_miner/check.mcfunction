execute if score @s p_cooldown matches ..60 run scoreboard players set @s p_cooldown 60
scoreboard players set @s[level=..19] p_cooldown 0
execute as @s if entity @s[level=..19] run tellraw @s ["",{"fallback":"[Powers] ","translate":"message.powers.main","bold":true},{"fallback":"Level ","translate":"message.powers.require1","color":"gold"},{"text":"20","color":"gold"},{"fallback":" required","translate":"message.powers.require2","color":"gold"}]
execute as @s if entity @s[level=20..] at @s run function is:powers/18strip_miner/init

