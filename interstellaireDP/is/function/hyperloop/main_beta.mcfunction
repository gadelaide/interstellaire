execute as @a at @s if predicate is:hyperloop run effect give @s speed 1 99
execute as @a at @s if predicate is:hyperloop run effect give @s saturation 1 3
execute as @a at @s if predicate is:hyperloop if entity @s[y_rotation=-4..4] run tp @s ~ ~ ~ 0 ~
execute as @a at @s if predicate is:hyperloop if entity @s[y_rotation=86..94] run tp @s ~ ~ ~ 90 ~
execute as @a at @s if predicate is:hyperloop if entity @s[y_rotation=-96..-84] run tp @s ~ ~ ~ -90 ~
execute as @a at @s if predicate is:hyperloop if entity @s[y_rotation=176..180] run tp @s ~ ~ ~ 180 ~
execute as @a at @s if predicate is:hyperloop if entity @s[y_rotation=-180..-176] run tp @s ~ ~ ~ 180 ~
