tag @e[type=armor_stand,tag=genox] remove bottle_refill
tag @e[type=armor_stand,tag=genox] remove bucket_refill
tag @e[type=armor_stand,tag=genox] remove any_refill

execute as @e[type=armor_stand,tag=genox,scores={genox_timer=0..1080}] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:potion",count:1,components:{"minecraft:potion_contents":{potion:"minecraft:water"}}}},distance=..0.6] run tag @s add bottle_refill
tag @e[type=armor_stand,tag=bottle_refill] add any_refill
execute as @e[type=armor_stand,tag=bottle_refill] at @s run data merge entity @n[type=item,nbt={Item:{id:"minecraft:potion",count:1,components:{"minecraft:potion_contents":{potion:"minecraft:water"}}}}] {PickupDelay:5,Item:{id:"minecraft:glass_bottle",Count:1b}}
execute as @e[type=armor_stand,tag=bottle_refill] at @s run scoreboard players add @s genox_timer 120

execute as @e[type=armor_stand,tag=genox,scores={genox_timer=0..1080}] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:water_bucket",count:1}},distance=..0.6] run tag @s add bucket_refill
tag @e[type=armor_stand,tag=bucket_refill] add any_refill
execute as @e[type=armor_stand,tag=bucket_refill] at @s run data merge entity @n[type=item,nbt={Item:{id:"minecraft:water_bucket",count:1}},distance=..0.6] {PickupDelay:5,Item:{id:"minecraft:bucket",Count:1b}}
execute as @e[type=armor_stand,tag=bucket_refill] at @s run scoreboard players add @s genox_timer 600

execute as @e[type=armor_stand,tag=any_refill] at @s run playsound entity.boat.paddle_water block @a[distance=..10] ~ ~ ~ 1 1
execute as @e[type=armor_stand,tag=any_refill] at @s run particle minecraft:bubble_pop ~ ~1 ~ 0.1 0.1 0.1 0 20 normal
execute as @e[type=armor_stand,tag=any_refill] at @s run function is:genox/update

execute as @e[type=armor_stand,tag=genox,scores={genox_timer=1201..}] run scoreboard players set @s genox_timer 1200 
execute as @e[type=armor_stand,tag=genox,scores={genox_timer=1..}] at @s run particle minecraft:bubble_pop ~0.25 ~1.5 ~-0.3 0.05 0.03 0.05 0 1 normal
execute as @e[type=armor_stand,tag=genox,scores={genox_timer=1..}] at @s run particle minecraft:bubble_pop ~-0.25 ~1.5 ~0.3 0.05 0.03 0.05 0 1 normal

execute as @e[type=armor_stand,tag=genox] at @s if block ~ ~-1 ~ air run tag @s add genox_despawn
execute as @e[type=armor_stand,tag=genox] at @s if block ~ ~-1 ~ cave_air run tag @s add genox_despawn

execute as @e[type=armor_stand,tag=genox,tag=genox_despawn] at @s run playsound block.glass.break block @a ~ ~ ~ 0.5 1

execute as @e[type=armor_stand,tag=genox,tag=lvl1,tag=genox_despawn] at @s run loot spawn ~ ~ ~ loot is:genox/genox_lvl1_empty_item
execute as @e[type=armor_stand,tag=genox,tag=lvl2,tag=genox_despawn] at @s run loot spawn ~ ~ ~ loot is:genox/genox_lvl2_empty_item
execute as @e[type=armor_stand,tag=genox,tag=lvl3,tag=genox_despawn] at @s run loot spawn ~ ~ ~ loot is:genox/genox_lvl3_empty_item

kill @e[type=armor_stand,tag=genox_despawn]