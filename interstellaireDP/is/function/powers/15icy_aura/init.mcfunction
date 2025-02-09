experience add @s -250 points


execute at @s run summon area_effect_cloud ~ ~ ~ {Particle:"snowflake",Radius:10f,Duration:100}
execute at @s run playsound minecraft:block.glass.break ambient @a[distance=..15] ~ ~ ~
execute at @s at @e[type=!#is:non_living,distance=0.2..10] run damage @n[type=!#is:non_living] 3 is:freezing_wave by @s
execute at @s run effect give @e[type=!#is:non_living,distance=0.2..10] slowness 5 255 true
execute at @s run effect give @e[type=!#is:non_living,distance=0.2..10] weakness 5 255 true