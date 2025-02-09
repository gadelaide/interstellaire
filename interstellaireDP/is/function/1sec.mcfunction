schedule function is:1sec 1s replace

function is:oxygen

## put unique id number for rockets
function is:rocket/id

## dispawn the rocket
function is:rocket/despawn

## check if player can liftoff
function is:rocket/check

## launch init sequence for take off
function is:rocket/takeoff_init

## keep the rocket in one piece
function is:rocket/update_seat

## hyperloop beta version
function is:hyperloop/main_beta

## effects on planets
function is:planets_effects

## ambient sound genox
execute as @e[type=armor_stand,tag=genox,scores={genox_timer=1..}] at @s run playsound minecraft:block.bubble_column.upwards_ambient block @a[distance=..7] ~ ~ ~ 0.2 1

## debut volley arrow
kill @e[type=arrow,nbt={inGround:1b},tag=p_arrow]

execute as @a if score @s information matches 1.. run tellraw @s ["",{"text":"[Interstellaire] ","bold":true},{"text":"\n"},{"fallback":"Welcome on interstellaire !\nSpace is huge and full of planets just waiting to be explored. So craft a rocket, an oxygen generator just in case and tafe-off to explore and acquire unique items.\nYou've been given the ","translate":"message.is.welcome1","color":"gold"},{"fallback":"[Space Navigation Handbook]","translate":"message.is.welcome2","color":"gray"},{"fallback":" in which you'll find every details needed to explore other planets","translate":"message.is.welcome3","color":"gold"},{"text":"\n "}]
execute as @a if score @s information matches 1.. run loot give @s loot is:space_navigation_handbook
scoreboard players set @a information 0
scoreboard players enable @a information

execute as @a unless score @s just_connect matches 0.. run scoreboard players set @s just_connect 1
execute as @a if score @s just_connect matches 1.. run tellraw @s ["",{"text":"[Interstellaire] ","bold":true},{"fallback":"Welcome back ! For any information : ","translate":"message.is.welcome4","color": "gold","bold": false},{"text":"/trigger information","color": "gray","bold": false,"clickEvent":{"action":"suggest_command","value":"/trigger information"}}]
scoreboard players set @a just_connect 0

