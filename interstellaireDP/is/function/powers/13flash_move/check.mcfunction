execute if score @s p_cooldown matches ..60 run scoreboard players set @s p_cooldown 60
scoreboard players set @s[level=..9] p_cooldown 0
execute as @s if entity @s[level=..9] run tellraw @s ["",{"fallback":"[Powers] ","translate":"message.powers.main","bold":true},{"fallback":"Level ","translate":"message.powers.require1","color":"gold"},{"text":"10","color":"gold"},{"fallback":" required","translate":"message.powers.require2","color":"gold"}]
execute as @s if entity @s[level=10..] at @s run function is:powers/13flash_move/init

