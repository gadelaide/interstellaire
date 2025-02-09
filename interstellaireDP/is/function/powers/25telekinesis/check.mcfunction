execute as @s if entity @s[level=..19] run tellraw @s ["",{"fallback":"[Powers] ","translate":"message.powers.main","bold":true},{"fallback":"Level ","translate":"message.powers.require1","color":"gold"},{"text":"20","color":"gold"},{"fallback":" required","translate":"message.powers.require2","color":"gold"}]
execute as @s if entity @s[level=20..] run function is:powers/25telekinesis/init

function is:powers/25telekinesis/reset