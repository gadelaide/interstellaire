execute if score @s p_cooldown matches ..10 run scoreboard players set @s p_cooldown 10
scoreboard players set @s[level=..9] p_cooldown 0
execute as @s if entity @s[level=..9] run tellraw @s ["",{"fallback":"[Powers] ","translate":"message.powers.main","bold":true},{"fallback":"Level ","translate":"message.powers.require1","color":"gold"},{"text":"10","color":"gold"},{"fallback":" required","translate":"message.powers.require2","color":"gold"}]
execute as @s if entity @s[level=10..] unless entity @e[type=item,distance=..8] run tellraw @s ["",{"fallback":"[Powers] ","translate":"message.powers.main","bold":true},{"fallback":"No item to attract","translate":"message.powers.fail_attractor","color":"gold"}]
execute as @s if entity @s[level=10..] at @s if entity @e[type=item,distance=..8] run function is:powers/10item_attractor/init

