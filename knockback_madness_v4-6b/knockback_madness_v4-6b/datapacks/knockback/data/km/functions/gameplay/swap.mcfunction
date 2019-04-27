execute as @a run function km:gameplay/swap/copy
scoreboard players reset * dth
execute as @a run function km:gameplay/swap/paste
execute if score %emt% opr matches 1 as @a if score @s dth matches ..0 run scoreboard players reset @s dth