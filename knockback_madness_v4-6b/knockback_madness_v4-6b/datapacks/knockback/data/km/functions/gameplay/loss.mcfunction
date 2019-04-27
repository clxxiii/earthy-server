team join elim
tellraw @a [{"selector":"@s"}, " ", {"text":"has been eliminated","color":"red"}]
execute as @a at @s run playsound minecraft:block.anvil.land player @s ~ ~ ~ 0.3 1.75
execute if score %emt% opr matches 1 run gamemode spectator @s
execute if score %emt% opr matches 1 run scoreboard players reset @s dth