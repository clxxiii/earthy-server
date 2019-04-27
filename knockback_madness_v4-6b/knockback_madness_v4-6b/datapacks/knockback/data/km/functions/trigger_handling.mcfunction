execute if score @s opt matches 501 run function km:trigger/deaths_to_lose
execute if score @s opt matches 503 run function km:trigger/fall_distance_death
execute if score @s opt matches 502 run function km:trigger/double_jump_toggle
execute if score @s opt matches 504 run function km:trigger/game_state_timer
scoreboard players reset @a opt
scoreboard players enable @a opt