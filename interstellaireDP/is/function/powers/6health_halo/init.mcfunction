experience add @s -100 points

effect give @a[distance=..5] regeneration 3 4 true

playsound minecraft:block.beacon.ambient player @a ~ ~ ~ 0.8 
summon area_effect_cloud ~ ~ ~ {Radius:5f,RadiusPerTick:0f,Duration:60,potion_contents:{custom_color:16187647}}