execute if score @s opt matches 1000 run scoreboard objectives setdisplay sidebar
execute if score @s opt matches 1001 run scoreboard objectives setdisplay sidebar dth
execute if score @s opt matches 1010 run scoreboard objectives setdisplay sidebar opr
execute if score @s opt matches 1011 run scoreboard objectives setdisplay sidebar flt
execute if score @s opt matches 1100 run tag @s add debug
execute if score @s opt matches 1101 run tag @s remove debug
execute if score @s opt matches 1110 run tag @a remove verified
execute if score @s opt matches 1111 run function game:reset
scoreboard players reset @a opt
scoreboard players enable @a opt