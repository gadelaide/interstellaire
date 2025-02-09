
execute as @a at @s if predicate is:in_vanilla_like_planet run attribute @s minecraft:generic.max_health base set 20
execute as @a at @s if predicate is:in_vanilla_like_planet run attribute @s minecraft:generic.gravity base set 0.08
execute as @a at @s if predicate is:in_vanilla_like_planet run attribute @s minecraft:generic.safe_fall_distance base set 3
execute as @a at @s if predicate is:in_vanilla_like_planet run attribute @s minecraft:generic.fall_damage_multiplier base set 1
execute as @a at @s if predicate is:in_vanilla_like_planet run attribute @s minecraft:generic.step_height base set 0.6


execute as @a at @s if predicate is:enchant_with_terra_gravity run attribute @s generic.gravity base set 0.08
execute as @a at @s if predicate is:enchant_with_terra_gravity run attribute @s generic.safe_fall_distance base set 3
execute as @a at @s if predicate is:enchant_with_terra_gravity run attribute @s generic.fall_damage_multiplier base set 1
execute as @a at @s if predicate is:enchant_with_terra_gravity run attribute @s generic.step_height base set 0.6

execute as @a at @s if dimension is:amplified run attribute @s generic.max_health base set 20
execute as @a at @s if dimension is:amplified unless predicate is:enchant_with_terra_gravity run attribute @s generic.gravity base set 0.06
execute as @a at @s if dimension is:amplified unless predicate is:enchant_with_terra_gravity run attribute @s generic.safe_fall_distance base set 5
execute as @a at @s if dimension is:amplified unless predicate is:enchant_with_terra_gravity run attribute @s generic.fall_damage_multiplier base set 0.7
execute as @a at @s if dimension is:amplified unless predicate is:enchant_with_terra_gravity run attribute @s generic.step_height base set 0.8

execute as @a at @s if dimension is:moon run attribute @s generic.max_health base set 20
execute as @a at @s if dimension is:moon unless predicate is:enchant_with_terra_gravity run attribute @s generic.gravity base set 0.01455
execute as @a at @s if dimension is:moon unless predicate is:enchant_with_terra_gravity run attribute @s generic.safe_fall_distance base set 10
execute as @a at @s if dimension is:moon unless predicate is:enchant_with_terra_gravity run attribute @s generic.fall_damage_multiplier base set 0.25
execute as @a at @s if dimension is:moon unless predicate is:enchant_with_terra_gravity run attribute @s generic.step_height base set 0.6

