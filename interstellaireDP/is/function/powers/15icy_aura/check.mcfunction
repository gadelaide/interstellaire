execute if score @s p_cooldown matches ..80 run scoreboard players set @s p_cooldown 80
scoreboard players set @s[level=..24] p_cooldown 0
execute as @s if entity @s[level=..24] run tellraw @s ["",{"fallback":"[Powers] ","translate":"message.powers.main","bold":true},{"fallback":"Level ","translate":"message.powers.require1","color":"gold"},{"text":"25","color":"gold"},{"fallback":" required","translate":"message.powers.require2","color":"gold"}]
execute as @s if entity @s[level=25..] at @s run function is:powers/15icy_aura/init


