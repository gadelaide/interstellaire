execute if score @s p_cooldown matches ..200 run scoreboard players set @s p_cooldown 200
scoreboard players set @s[level=..49] p_cooldown 0
execute as @s if entity @s[level=..49] run tellraw @s ["",{"fallback":"[Powers] ","translate":"message.powers.main","bold":true},{"fallback":"Level ","translate":"message.powers.require1","color":"gold"},{"text":"50","color":"gold"},{"fallback":" required","translate":"message.powers.require2","color":"gold"}]
execute as @s if entity @s[level=50..] at @s run function is:powers/7storm_invoker/init

