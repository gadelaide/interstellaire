tellraw camaga {"text":"reload !"}
function is:10sec
function is:1sec

## init team without collisions
team add is_no_collision
team modify is_no_collision collisionRule never

## grant crafts
recipe give @a is:coal
recipe give @a is:rocket
recipe give @a is:genox1
recipe give @a is:genox2
recipe give @a is:genox3

## init team with colors
team add black_team
team modify black_team color black
team add dark_blue_team
team modify dark_blue_team color dark_blue
team add dark_green_team
team modify dark_green_team color dark_green
team add dark_aqua_team
team modify dark_aqua_team color dark_aqua
team add dark_red_team
team modify dark_red_team color dark_red
team add dark_purple_team
team modify dark_purple_team color dark_purple
team add gold_team
team modify gold_team color gold
team add gray_team
team modify gray_team color gray
team add dark_gray_team
team modify dark_gray_team color dark_gray
team add blue_team
team modify blue_team color blue
team add green_team
team modify green_team color green
team add aqua_team
team modify aqua_team color aqua
team add red_team
team modify red_team color red
team add light_purple_team
team modify light_purple_team color light_purple
team add yellow_team
team modify yellow_team color yellow
team add white_team
team modify white_team color white

## init rocket id's
scoreboard objectives add id_rocket dummy
execute unless score is_global id_rocket matches 0.. run scoreboard players set is_global id_rocket 1

## general scores
scoreboard objectives add check_liftoff trigger
scoreboard objectives add takeoff trigger
scoreboard objectives add disassembly trigger
scoreboard objectives add information trigger
scoreboard objectives add just_connect minecraft.custom:minecraft.leave_game

scoreboard objectives add rocket_animation dummy
scoreboard objectives add genox_timer dummy

## powers score
scoreboard objectives add p_playerId dummy
scoreboard objectives add p_cooldown dummy
execute as @a unless score @s p_cooldown matches -1.. run scoreboard players set @s p_cooldown -1
execute unless score is_global p_playerId matches 1.. run scoreboard players set is_global p_playerId 1

scoreboard objectives add p_motion_x1 dummy
scoreboard objectives add p_motion_y1 dummy
scoreboard objectives add p_motion_z1 dummy

scoreboard objectives add p_motion_x2 dummy
scoreboard objectives add p_motion_y2 dummy
scoreboard objectives add p_motion_z2 dummy



