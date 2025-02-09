execute if score @s p_cooldown matches ..30 run scoreboard players set @s p_cooldown 30
scoreboard players set @s[level=..4] p_cooldown 0
execute as @s if entity @s[level=..4] run tellraw @s ["",{"fallback":"[Powers] ","translate":"message.powers.main","bold":true},{"fallback":"Level ","translate":"message.powers.require1","color":"gold"},{"text":"5","color":"gold"},{"fallback":" required","translate":"message.powers.require2","color":"gold"}]
execute as @s if entity @s[level=5..] at @s run function is:powers/12giant_leap/init

