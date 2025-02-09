tag @a remove o2
tag @a remove no_o2_if_no_enchant
execute as @a run attribute @s minecraft:generic.knockback_resistance modifier remove 5423687

########    PLANETS
tag @a[predicate=is:o2planets] add o2


########    ROCKET
execute as @a at @s if entity @e[type=trader_llama,tag=rocket_seat,distance=..4] run tag @s add o2

########    OXYGEN GEN 
execute as @a at @s if entity @e[type=armor_stand,tag=genox,tag=lvl1,scores={genox_timer=1..},distance=..50] run tag @s add o2
execute as @a at @s if entity @e[type=armor_stand,tag=genox,tag=lvl2,scores={genox_timer=1..},distance=..150] run tag @s add o2
execute as @a at @s if entity @e[type=armor_stand,tag=genox,tag=lvl3,scores={genox_timer=1..},distance=..1000] run tag @s add o2

########    HYPERLOOP
execute as @a at @s if predicate is:hyperloop run tag @s add o2

########    BREATHING POTION
execute as @a if entity @s[nbt={active_effects:[{id:"minecraft:water_breathing"}]}] run tag @s add o2

########    O2 TANK
tag @a[tag=!o2] add no_o2_if_no_enchant
execute as @a if predicate is:enchant_with_o2_tank run tag @s add o2

########    DAMAGES
execute as @a unless entity @s[tag=o2] run attribute @s minecraft:generic.knockback_resistance modifier add 5423687 1 add_value
execute as @a unless entity @s[tag=o2] run damage @s 2 is:out_of_oxygen