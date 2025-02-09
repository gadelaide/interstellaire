
execute if block ~ ~-1 ~ #is:liquids run fill ~-2 ~-1 ~-2 ~2 ~-1 ~2 stone replace #is:liquids

tag @s remove ootw1
tag @s remove ootw2
tag @s remove ootw
execute at @s if block ~ ~-1 ~ air run tag @s add ootw1
execute at @s unless block ~ ~-1 ~ air run tag @s add ootw2
tag @s[tag=!ootw1,tag=!ootw2] add ootw
execute as @s[tag=ootw] at @s run fill ~-3 ~1 ~-3 ~3 ~1 ~3 stone replace #is:airs

execute if entity @s[tag=safe_landing] run kill @s