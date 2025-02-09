execute as @s if entity @s[level=..19] run tellraw @s ["",{"fallback":"[Powers] ","translate":"message.powers.main","bold":true},{"fallback":"Level ","translate":"message.powers.require1","color":"gold"},{"text":"20","color":"gold"},{"fallback":" required","translate":"message.powers.require2","color":"gold"}]
execute as @s if entity @s[level=20..] at @s run function is:powers/11burning_ray/init

execute as @s at @s run function is:powers/11burning_ray/reset