execute as @s if entity @s[level=..9] run tellraw @s ["",{"fallback":"[Powers] ","translate":"message.powers.main","bold":true},{"fallback":"Level ","translate":"message.powers.require1","color":"gold"},{"text":"10","color":"gold"},{"fallback":" required","translate":"message.powers.require2","color":"gold"}]
execute as @s if entity @s[level=10..] at @s run function is:powers/9proj_barrier/init

execute as @s at @s run function is:powers/9proj_barrier/reset